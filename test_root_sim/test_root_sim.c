#include "test_root_sim.h"

#define __unused __attribute__((unused))

#ifndef NUM_LPS
#define NUM_LPS 256
#endif

#ifndef NUM_THREADS
#define NUM_THREADS 0
#endif

#define EVENT 1

#define DATE_TIME_FORMAT_LENGTH 19
#define MAX_LINE_LENGTH 2048

#define INPUT_FILE "taxi-1.csv"

bool end_of_file = false;

FILE *file;		/* input file */
Schema schema;	/* schema structure */
struct topology *topology;	/* operators topology */

/* TOPOLOGY FUNCTIONS */

void InitTopology() {

	static int window_size = 15;

	/*
	*	QUERY 1:
	*	SELECT VendorID, SUM(total_amount)
	*	FROM stream
	*	WHERE payment_type == 1 && (passenger_count < 3 || trip_distance < 10.0)
	*	GROUP BY VendorID
	*	ORDER BY total_amount
	*/

	char *condition_query1 = "payment_type == 1 && (passenger_count < 3 || trip_distance < 10.0)";
	char *projection_query1 = "VendorID,total_amount";
	char *groupBy_query1 = "VendorID";
	char *agg_function1 = "total_amount";
	char *orderBy_query1 = "total_amount";

	topology = InitializeTopology(TOPOLOGY_GRAPH, 15);

	/* data source to window */
	AddTopologyLink(topology, 0, 1, 1);

	/* window to selection */
    AddTopologyLink(topology, 1, 2, 1);

	/* selection to projection */
    AddTopologyLink(topology, 2, 3, 1);

	/* projection to groupBy */
	AddTopologyLink(topology, 3, 4, 1);

	/* groupBy to aggregate function */
	AddTopologyLink(topology, 4, 5, 1);

	/* aggregate function to orderBy */
	AddTopologyLink(topology, 5, 6, 1);

	/* orderBy to output */
	AddTopologyLink(topology, 6, 7, 1);

	SetTopologyLinkData(topology, 0, 1, (void *)&window_size);
	SetTopologyLinkData(topology, 1, 2, (void *)condition_query1);
	SetTopologyLinkData(topology, 2, 3, (void *)projection_query1);
	SetTopologyLinkData(topology, 3, 4, (void *)groupBy_query1);
	SetTopologyLinkData(topology, 4, 5, (void *)agg_function1);
	SetTopologyLinkData(topology, 5, 6, (void *)orderBy_query1);
}

void SendMessageToAllNeighbors(Message *message, simtime_t now) {
	lp_id_t num_neighbors = CountDirections(topology, message->envelope->sender);
	lp_id_t neighbors[num_neighbors];
	GetAllReceivers(topology, message->envelope->sender, neighbors);

	for (unsigned int i = 0; i < num_neighbors; i++) {
		ScheduleNewEvent(neighbors[i], now + 10, EVENT, message, sizeof(Message));
	}
}

void CreateAndSendRowsMessage(lp_id_t sender_id, float priority, RowsList *send_list, simtime_t now) {
	Envelope *e;
	Message *send_msg;

	// create envelope
	e = rs_malloc(sizeof(Envelope));
	CHECK_RSMALLOC(e);
	e->priority = priority;
	e->sender = sender_id;

	// create and send message
	send_msg = rs_malloc(sizeof(Message));
	CHECK_RSMALLOC(send_msg);
	send_msg->envelope = e;
	send_msg->type = ROWS;
	send_msg->content.rows_list = send_list;

	SendMessageToAllNeighbors(send_msg, now);
}

void CreateAndSendGroupsMessage(lp_id_t sender_id, float priority, GroupsList *send_list, simtime_t now) {
	Envelope *e;
	Message *send_msg; 

	e = rs_malloc(sizeof(Envelope));
	CHECK_RSMALLOC(e);
	e->priority = priority;
	e->sender = sender_id;

	send_msg = rs_malloc(sizeof(Message));
	CHECK_RSMALLOC(send_msg);
	send_msg->envelope = e;
	send_msg->type = GROUPS;
	send_msg->content.groups_list = send_list; 

	SendMessageToAllNeighbors(send_msg, now);
}

long ComputeSleepTime(char *datetime) {

	int hours, minutes, seconds;
	char *time_str;
    
    if (strlen(datetime) < DATE_TIME_FORMAT_LENGTH) {
        perror("Invalid date time format");
        exit(EXIT_FAILURE);
    }

    // Time starts after 11 chars
    time_str = datetime + 11;

    sscanf(time_str, "%2d:%2d:%2d", &hours, &minutes, &seconds);

    return hours * 3600 + minutes * 60 + seconds;
}

/**
 * @brief Initializer for the DataIngestion process
 * @param me DataIngestion process id
 * @param now Current simulation time
 */
void DataIngestionInit(lp_id_t me, simtime_t now) {
	char header[MAX_LINE_LENGTH];
	DataSourceData *data;

	data = rs_malloc(sizeof(DataSourceData));
	CHECK_RSMALLOC(data);
	data->can_end = false;

	SetState(data);

	file = fopen(INPUT_FILE, "r");
	if (!file) {
		perror("Error in opening CSV file");
        exit(EXIT_FAILURE);
	}

	if (!fgets(header, sizeof(header), file)) {
		fclose(file);
		abort();
	}

	InitializeSchema(&schema, header);

	ScheduleNewEvent(me, now + 1, EVENT, NULL, 0);

	#ifdef DEBUG
	printf("Data ingestion initialized\n");
	#endif
}

/**
 * @brief DataIngestion process, that reads tuples from the input files and forwards them to its neighbors, based on the tuple's actual time
 * @param me DataIngestion process id
 * @param now Current simulation time
 */
void DataIngestion(lp_id_t me, simtime_t now, DataSourceData *data) {
    char line[MAX_LINE_LENGTH];
    long new_time = 0;
    char *cols;
	RowElement *elements;
	Row *row;
	RowsList *list;

	// read line from the input file
	if (!fgets(line, sizeof(line), file)) {
		// create and send termination message
		lp_id_t num_neighbors = CountDirections(topology, me);
		lp_id_t neighbors[num_neighbors];
		GetAllReceivers(topology, me, neighbors);

		for (unsigned int i = 0; i < num_neighbors; i++) {
			ScheduleNewEvent(neighbors[i], now + 10, TERMINATE, NULL, 0);
		}

		data->can_end = true;

		return;
	}

	// create and populate Row struct from the input line
	elements = rs_malloc(schema.num_cols * sizeof(RowElement));
	CHECK_RSMALLOC(elements);
	row = rs_malloc(sizeof(Row));	
	CHECK_RSMALLOC(row);
	row->elements = elements;
	row->num_elements = schema.num_cols;
	row->table_name = "Taxis";
	PopulateRow(line, row, schema);

	// create single row list
	list = rs_malloc(sizeof(RowsList));
	CHECK_RSMALLOC(list);
	list->num_rows = 1;
	list->rows = row;

	CreateAndSendRowsMessage(me, 5.0, list, now);

	// get next tuple time, and schedule next DataIngestion process' execution
	int count = 0;
	cols = strtok(line, ",");

	while(cols != NULL) {
		if (count == 1) {
			new_time = ComputeSleepTime(cols);
			break;
		}
		cols = strtok(NULL, ",");
		count++;
	}
	
	ScheduleNewEvent(me, now + new_time + 10, EVENT, NULL, 0);
}

/**
 * @brief Initializer for the Window processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void WindowInit(lp_id_t from, lp_id_t me) {
	int *size = (int *)GetTopologyLinkData(topology, from, me);

	WindowData *data = rs_malloc(sizeof(WindowData));
	CHECK_RSMALLOC(data);
	Row *rows = rs_malloc(sizeof(Row) * *size);		// todo fix size
	CHECK_RSMALLOC(rows);
	RowsList *list = rs_malloc(sizeof(RowsList));
	CHECK_RSMALLOC(list);

	list->num_rows = 0;
	list->rows = rows;

	data->window_size = *size;
	data->list = list;
	data->received_tuples = 0;
	data->cur_time = 0L;
	data->max_time = 0L;

	SetState(data);

	#ifdef DEBUG
	printf("Window initialized\n");
	#endif
}

/**
 * @brief Window process: it receives one tuple at a time from the DataInjection process, gathers as many tuples as the window size, 
 * 	and forwards the resulting list to its neighbors
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 */
void Window(lp_id_t me, simtime_t now, const void *content, WindowData *data, float priority) {

	// get row from message
	Message *rcv_msg = (Message *)content;

	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "Windowing can be applied only on lists of rows\n");
		exit(EXIT_FAILURE);
	}

	RowsList *list = rcv_msg->content.rows_list;	// this should always be a single element list
	if (list->num_rows != 1) {
		fprintf(stderr, "Window operator received more than one tuple in a single message\n");
		exit(EXIT_FAILURE);
	}

	// get tuple time
	data->cur_time = list->rows[0].elements[1].value.long_value;

	if (data->max_time == 0) {
		// first tuple, set max_time
		data->max_time = data->cur_time + data->window_size;
	} 

	// if this tuple's time exceeds the max_time, send all messages in the window and create the next window
	if (data->cur_time > data->max_time) {

		data->list->num_rows = data->received_tuples;

		// Create a copy of the current list
        RowsList *copy_list = rs_malloc(sizeof(RowsList));
        CHECK_RSMALLOC(copy_list);

        copy_list->num_rows = data->received_tuples;
        copy_list->rows = rs_malloc(sizeof(Row) * data->window_size);
        CHECK_RSMALLOC(copy_list->rows);

        // Copy the rows
        for (int i = 0; i < data->list->num_rows; i++) {
            copy_list->rows[i] = data->list->rows[i];
        }

        CreateAndSendRowsMessage(me, priority, copy_list, now);

		rs_free(data->list->rows);
		rs_free(data->list);

		data->list = rs_malloc(sizeof(RowsList));
		CHECK_RSMALLOC(data->list);
		data->list->rows = rs_malloc(sizeof(Row) * data->window_size);		// todo fix rows size
		CHECK_RSMALLOC(data->list->rows);

		data->received_tuples = 0;
		data->max_time = data->cur_time + data->window_size;
	}

	data->list->rows[data->received_tuples++] = list->rows[0];
}

void TestWindow(const void *content) {
    Message *msg = (Message *)content;

    printf("Number of rows: %d\n", msg->content.rows_list->num_rows);
    for (int i = 0; i < msg->content.rows_list->num_rows; i++) {
        if (msg->content.rows_list->rows == NULL) {
            fprintf(stderr, "TestWindow encountered NULL row at index %d\n", i);
            return;
        }
        printf("Row %d, Element 1 Value: %ld\n", i, msg->content.rows_list->rows[i].elements[1].value.long_value);
    }
    puts("");
}

/**
 * @brief Initializer for the selection process, which converts the textual 
 * 	condition associated to a specific edge in the topology, incident to the process node, into a Condition struct.
 * @param from Id of the source node, in the topology
 * @param me Selection process id
 */
void SelectionInit(lp_id_t from, lp_id_t me) {
	// allocate struct for state
	SelectionData *data = rs_malloc(sizeof(SelectionData));
	CHECK_RSMALLOC(data);

	// get textual condition and parse it to a Condition struct
	char *condition = (char *)GetTopologyLinkData(topology, from, me);
	Condition *parsed_condition = ParseCondition(&condition);

	// set state
	data->condition = parsed_condition;
	data->condition_string = condition;
	SetState(data);

	#ifdef DEBUG
	printf("Selection initialized\n");
	#endif
}

/**
 * @brief Selection process: given a list of rows, it applies its associated condition to each row and forwards the resulting list to its neighbors 
 * @param me Selection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Selection process state
 * @param priority Priority of the messages to be sent
 */
void wSelection(lp_id_t me, simtime_t now, const void *content, SelectionData *data, float priority) {
	Message *rcv_msg;
	Condition *condition;
	RowsList *rcv_list, *send_list;

	condition = data->condition;
	rcv_msg = (Message *)content;

	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "Selection on grouped rows is not supported yet\n");
		exit(EXIT_FAILURE);
	}
	rcv_list = rcv_msg->content.rows_list;

	// select rows based on the condition
	send_list = SelectionMultRows(*rcv_list, condition);

	#ifdef DEBUG
	printf("Selection output:\n");
	for (int i = 0; i < send_list->num_rows; i++) {
		PrintRow(&send_list->rows[i]);
	}
	#endif

	CreateAndSendRowsMessage(me, priority, send_list, now);
}

/**
 * @brief Initializer for the Projection processes, which creates an AttributeList struct from a textual list of attributes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void ProjectionInit(lp_id_t from, lp_id_t me) {
	AttributeList *list;
    char *token;
    int count = 0;

	list = rs_malloc(sizeof(AttributeList));
	CHECK_RSMALLOC(list);

	// get string representation of attributes ("attr1,attr2,...,attrN")
	char *attributes = (char *)GetTopologyLinkData(topology, from, me);
	char *attributes_cp = strdup(attributes);
	if (!attributes_cp) {
		perror("strdup");
		exit(EXIT_FAILURE);
	}

	// count the attributes
    for (int i = 0; attributes_cp[i]; i++) {
        if (attributes_cp[i] == ',') count++;
    }
    count++;

	// allocate AttributeList struct
	list->num_attributes = count;
    list->attributes = rs_malloc(sizeof(Attribute) * count);
	CHECK_RSMALLOC(list->attributes);

	// populate AttributeList struct with attributes
    token = strtok(attributes_cp, ",");
    for (int i = 0; i < count; i++) {
        list->attributes[i].name = strdup(token);
        token = strtok(NULL, ",");
    }

	// create and set state
	ProjectionData *projection_data = rs_malloc(sizeof(ProjectionData));
	CHECK_RSMALLOC(projection_data);

	projection_data->list = list;
	projection_data->list_string = attributes;

	SetState((void *)projection_data);

	#ifdef DEBUG
	printf("Projection initialized\n");
	#endif
}

/**
 * @brief Projection process: given a list of rows, it extracts the specified columns from each row and forwards the resulting list to its neighbors
 * @param me Projection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Projection process state
 * @param priority Priority of the messages to be sent
 */
void wProjection(lp_id_t me, simtime_t now, const void *content, ProjectionData *data, float priority) {
	Message *rcv_msg;
	RowsList *rcv_list, *send_list;

	AttributeList *list = data->list;

	rcv_msg = (Message *)content;
	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "Projection on grouped rows is not supported yet\n");
	}
	rcv_list = rcv_msg->content.rows_list;

	send_list = ProjectionMultRows(*rcv_list, *list);

	#ifdef DEBUG
	printf("Projection output:\n");
	for (int i = 0; i < send_list->num_rows; i++) {
		PrintRow(&send_list->rows[i]);
	}
	#endif

	CreateAndSendRowsMessage(me, priority, send_list, now);
}

/**
 * @brief Initializer for the OrderBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void OrderByInit(lp_id_t from, lp_id_t me) {
	char *attribute = (char *)GetTopologyLinkData(topology, from, me);

	OrderByData *data = rs_malloc(sizeof(OrderByData));
	CHECK_RSMALLOC(data);
	data->attribute = attribute;

	SetState(data);

	#ifdef DEBUG
	printf("OrderBy initialized\n");
	#endif
}

/**
 * @brief Projection process: given a list of rows, it extracts the specified columns from each row and forwards the resulting list to its neighbors
 * @param me Projection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Projection process state
 * @param priority Priority of the messages to be sent
 */
void wOrderBy(lp_id_t me, simtime_t now, const void *content, OrderByData *data, float priority) {
	Message *rcv_msg;
	RowsList *rcv_list, *send_list;

	char *attribute = data->attribute;

	rcv_msg = (Message *)content;
	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "OrderBy can only be performed on a list of rows\n");
	}
	rcv_list = rcv_msg->content.rows_list;

	send_list = OrderBy(*rcv_list, attribute);

	#ifdef DEBUG
	printf("OrderBy output:\n");
	for (int i = 0; i < send_list->num_rows; i++) {
		PrintRow(&send_list->rows[i]);
	}
	#endif

	CreateAndSendRowsMessage(me, priority, send_list, now);
}

/**
 * @brief Initializer for the GroupBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void GroupByInit(lp_id_t from, lp_id_t me) {
	char *attribute = (char *)GetTopologyLinkData(topology, from, me);

	GroupByData *data = rs_malloc(sizeof(GroupByData));
	CHECK_RSMALLOC(data);
	data->attribute = attribute;

	SetState(data);

	#ifdef DEBUG
	printf("GroupBy initialized\n");
	#endif
}

/**
 * @brief GroupBy process: it receives a list of rows and groups them based on the value of an attribute, 
 * 	forwarding the resulting list of groups to its neighbors
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 */
void wGroupBy(lp_id_t me, simtime_t now, const void *content, GroupByData *data, float priority) {
	Message *rcv_msg;
	RowsList *rcv_list;
	GroupsList *groups_list;

	char *attribute = data->attribute;

	rcv_msg = (Message *)content;
	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "Unexpected input message type for GroupBy\n");
		exit(EXIT_FAILURE);
	}
	rcv_list = rcv_msg->content.rows_list;

	groups_list = GroupBy(rcv_list, attribute);
	if (groups_list == NULL) {
		exit(EXIT_FAILURE);
	}

	#ifdef DEBUG
	printf("GroupBy output:\n");
	for (int i = 0; i < groups_list->num_groups; i++) {
		printf("Group %d\n", i);
		for (int j = 0; j < groups_list->groups[i].rows_list.num_rows; j++) {
			PrintRow(&groups_list->groups[i].rows_list.rows[j]);
		}
		puts("");
	}
	#endif

	CreateAndSendGroupsMessage(me, priority, groups_list, now);
}

/**
 * @brief Initializer for the Aggregate function processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void AggregateFunctionInit(lp_id_t from, lp_id_t me) {
	char *attribute = (char *)GetTopologyLinkData(topology, from, me);

	AggregateFunctionData *data = rs_malloc(sizeof(AggregateFunctionData));
	CHECK_RSMALLOC(data);
	data->attribute = attribute;

	SetState(data);

	#ifdef DEBUG
	printf("Aggregate function initialized\n");
	#endif
}

/**
 * @brief AggregateFunction process: it applies a specific aggregate function to a list of rows/groups
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 * @param type Aggregate function to be executed, it can be MIN, MAX, COUNT, SUM, AVG
 */
void wAggregateFunction(lp_id_t me, simtime_t now, const void *content, AggregateFunctionData *data, float priority, AggregateFunctionType type) {
	Message *rcv_msg;
	RowsList *rcv_rows_list;
	GroupsList *rcv_groups_list;
	AggFunctionResultValue *result_single_value;
	RowsList *result_rows_list;
	AggFunctionData input_data;

	char *attribute = data->attribute;
	rcv_msg = (Message *)content;

	switch(rcv_msg->type) {
		case ROWS:
			rcv_rows_list = rcv_msg->content.rows_list;

			input_data.col_name = attribute;
			input_data.type = TYPE_ROWS;
			input_data.input_data.rows = *rcv_rows_list;

			result_single_value = (AggFunctionResultValue *)AggregateFunction(input_data, type);
			
			switch(result_single_value->type) {
				case TYPE_INT:
					printf("Result value is %d\n", result_single_value->value.int_value);
					break;
				case TYPE_FLOAT:
					printf("Result value is %f\n", result_single_value->value.float_value);
					break;
				case TYPE_LONG:
					printf("Result value is %ld\n", result_single_value->value.long_value);
					break;
				case TYPE_STRING:
					printf("Result value is %s\n", result_single_value->value.string_value);
					break;
				default:
					break;
			}

			break;

		case GROUPS:
			rcv_groups_list = rcv_msg->content.groups_list;

			input_data.col_name = attribute;
			input_data.type = TYPE_GROUPS;
			input_data.input_data.groups = *rcv_groups_list;

			result_rows_list = (RowsList *)AggregateFunction(input_data, type);

			#ifdef DEBUG
			printf("Aggregate function output:\n");
			for (int i = 0; i < result_rows_list->num_rows; i++) {
				PrintRow(&result_rows_list->rows[i]);
			}
			#endif

			CreateAndSendRowsMessage(me, priority, result_rows_list, now);
			break;
	}
}

/**
 * @brief Initializer for the Join processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 * @param table_data Pointer to the state structure
 */
void InitJoin(lp_id_t from, lp_id_t me, JoinTableData *table_data) {
	table_data->from_id = from;
	table_data->attribute = (char *)GetTopologyLinkData(topology, from, me);
	table_data->list = NULL;

	#ifdef DEBUG
	printf("Join initialized\n");
	#endif
}

/**
 * @brief Join process: it merges two incoming streams
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 */
void wJoin(lp_id_t me, simtime_t now, const void *content, JoinData *data, float priority) {
	unsigned int i;
	bool can_execute = true;
	Message *msg = (Message *)content;
	RowsList *joined_list;

	printf("Join actor received message from %ld\n", msg->envelope->sender);

	for (i = 0; i < data->size; i++) {
		if (data->tables_data[i]->from_id == msg->envelope->sender) {
			data->tables_data[i]->list = msg->content.rows_list;
		} else {
			if (!data->tables_data[i]->list) {
				can_execute = false;
			}
		}
	}

	if (can_execute) {
		joined_list = Join(*data->tables_data[0]->list, 
				*data->tables_data[1]->list, 
				data->tables_data[0]->attribute, 
				data->tables_data[1]->attribute);
		
		CreateAndSendRowsMessage(me, priority, joined_list, now);
	} 
}

/**
 * @brief Generic output process, that simply prints out the messages it receives
 * @param me Process id
 * @param now Current simulation time
 * @param content Pointer to the received message
 */
void ProcessMessage(lp_id_t me, const void *content) {
	Message *msg;
	int i, j;
	
	msg = (Message *)content;

	printf("[%ld] Printing result:\n", me);
	switch(msg->type) {
		case ROWS:
			for (i = 0; i < msg->content.rows_list->num_rows; i++) {
				PrintRow(&msg->content.rows_list->rows[i]);
			}
			break;
		case GROUPS:
			for (i = 0; i < msg->content.groups_list->num_groups; i++) {
				printf("Group %d\n", i);
				for (j = 0; j < msg->content.groups_list->groups[i].rows_list.num_rows; j++) {
					PrintRow(&msg->content.groups_list->groups[i].rows_list.rows[j]);
				}
			}
			break;
	}
}

void ForwardTerminationMessage(lp_id_t me, simtime_t now) {
	// create and send termination message
	lp_id_t num_neighbors = CountDirections(topology, me);
	lp_id_t neighbors[num_neighbors];
	GetAllReceivers(topology, me, neighbors);

	for (unsigned int i = 0; i < num_neighbors; i++) {
		ScheduleNewEvent(neighbors[i], now + 10, TERMINATE, NULL, 0);
	}
}

void DataSourceCleanUp() {
	fclose(file);
}

void WindowCleanUp() {}

void SelectionCleanUp() {}

void ProjectionCleanUp() {}

void GroupByCleanUp() {}

void AggFunctionCleanUp() {}

void OrderByCleanUp() {}

void JoinCleanUp() {}

void OutputCleanUp() {}
 
void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size,
    void *s)
{
	WindowData *window_data;
	SelectionData *selection_data;
	ProjectionData *projection_data;
	OrderByData *orderBy_data;
	GroupByData *groupBy_data;
	AggregateFunctionData *agg_function_data;
	OutputProcessData *output_data;

	switch (me) {
		case 0:
			/* DATA SOURCE */
			switch(event_type) {
				case LP_INIT:
					DataIngestionInit(me, now);
					break;
				case EVENT:
					DataIngestion(me, now, (DataSourceData *)s);
					break;
				case LP_FINI:
					DataSourceCleanUp();
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					abort();
			}

			break;
		
		case 1:
			/* WINDOW */
			switch(event_type) {
				case LP_INIT:
					WindowInit(0, me);
					break;
				case LP_FINI:
					WindowCleanUp();
					break;
				case EVENT:
					Window(me, now, content, s, 5.0);
					break;
				case TERMINATE:
					window_data = (WindowData *)s;
					window_data->can_end = true;
					
					// flush window
					window_data->list->num_rows = window_data->received_tuples;

					RowsList *copy_list = rs_malloc(sizeof(RowsList));
					CHECK_RSMALLOC(copy_list);

					copy_list->num_rows = window_data->received_tuples;
					copy_list->rows = rs_malloc(sizeof(Row) * window_data->window_size);
					CHECK_RSMALLOC(copy_list->rows);

					for (int i = 0; i < window_data->list->num_rows; i++) {
						copy_list->rows[i] = window_data->list->rows[i];
					}

					CreateAndSendRowsMessage(me, 5.0, copy_list, now);

					rs_free(window_data->list->rows);
					rs_free(window_data->list);

					ForwardTerminationMessage(me, now);
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 2:
			/* SELECTION */
			switch(event_type) {
				case LP_INIT:
					SelectionInit(1, me);
					break;
				case LP_FINI:
					SelectionCleanUp();
					break;
				case EVENT:
					wSelection(me, now, content, (SelectionData *)s, 5.0);
					break;
				case TERMINATE:
					selection_data = (SelectionData *)s;
					selection_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;
		
		case 3:
			/* PROJECTION */
			switch(event_type) {
				case LP_INIT:
					ProjectionInit(2, me);
					break;
				case LP_FINI:
					ProjectionCleanUp();
					break;
				case EVENT:
					wProjection(me, now, content, (ProjectionData *)s, 5.0);
					break;
				case TERMINATE:
					projection_data = (ProjectionData *)s;
					projection_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 4:
			/* GROUP BY */
			switch(event_type) {
				case LP_INIT:
					GroupByInit(3, me);
					break;
				case LP_FINI:
					GroupByCleanUp();
					break;
				case EVENT:
					wGroupBy(me, now, content, (GroupByData *)s, 5.0);
					break;
				case TERMINATE:
					groupBy_data = (GroupByData *)s;
					groupBy_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 5:
			/* AGGREGATE FUNCTION (SUM) */
			switch(event_type) {
				case LP_INIT:
					AggregateFunctionInit(4, me);
					break;
				case LP_FINI:
					AggFunctionCleanUp();
					break;
				case EVENT:
					wAggregateFunction(me, now, content, (AggregateFunctionData *)s, 5.0, SUM);
					break;
				case TERMINATE:
					agg_function_data = (AggregateFunctionData *)s;
					agg_function_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 6:
		/* ORDER BY */
		switch(event_type) {
				case LP_INIT:
					OrderByInit(5, me);
					break;
				case LP_FINI:
					OrderByCleanUp();
					break;
				case EVENT:
					wOrderBy(me, now, content, (OrderByData *)s, 5.0);
					break;
				case TERMINATE:
					orderBy_data = (OrderByData *)s;
					orderBy_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 7:
			/* OUTPUT */
			switch(event_type) {
				case LP_INIT:
					output_data = rs_malloc(sizeof(OutputProcessData));
					CHECK_RSMALLOC(output_data);
					output_data->can_end = false;
					SetState(output_data);
					break;
				case LP_FINI:
					OutputCleanUp();
					break;
				case EVENT:
					ProcessMessage(me, content);
					break;
				case TERMINATE:
					output_data = (OutputProcessData *)s;
					output_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

		break;
	}
}

bool CanEnd(lp_id_t me, const void *snapshot)
{
	DataSourceData *source_data;
	WindowData *window_data;
	SelectionData *selection_data;
	ProjectionData *projection_data;
	GroupByData *groupBy_data;
	AggregateFunctionData *agg_function_data;
	OrderByData *orderBy_data;
	OutputProcessData *output_data;

	switch(me) {
		case 0:
			source_data = (DataSourceData *)snapshot;
			return source_data->can_end;
		case 1:
			window_data = (WindowData *)snapshot;
			return window_data->can_end;
		case 2:
			selection_data = (SelectionData *)snapshot;
			return selection_data->can_end;
		case 3:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		case 4:
			groupBy_data = (GroupByData *)snapshot;
			return groupBy_data->can_end;
		case 5:
			agg_function_data = (AggregateFunctionData *)snapshot;
			return agg_function_data->can_end;
		case 6:
			orderBy_data = (OrderByData *)snapshot;
			return orderBy_data->can_end;
		case 7:
			output_data = (OutputProcessData *)snapshot;
			return output_data->can_end;
		default:	
			return true;
	}
}

struct simulation_configuration conf = {
    .lps = NUM_LPS,
    .n_threads = NUM_THREADS,
    .termination_time = 0,
    .gvt_period = 1000,
    .log_level = LOG_INFO,
    .stats_file = "test",
    .ckpt_interval = 0,
    .core_binding = true,
    .serial = false,
    .dispatcher = ProcessEvent,
    .committed = CanEnd,
};

int main(void)
{
	InitTopology();
	RootsimInit(&conf);
	return RootsimRun();
}
