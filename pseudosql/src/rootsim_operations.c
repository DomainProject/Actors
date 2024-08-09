#include "rootsim_operations.h"

RowsList* CopyAndFreeRowsList(RowsList *list) {
    RowsList *copy_list = rs_malloc(sizeof(RowsList));
    if (copy_list == NULL) {
        fprintf(stderr, "Failed to allocate memory for RowsList\n");
        exit(EXIT_FAILURE);
    }

    copy_list->num_rows = list->num_rows;

    copy_list->rows = rs_malloc(sizeof(Row) * copy_list->num_rows);
    if (copy_list->rows == NULL) {
        fprintf(stderr, "Failed to allocate memory for Rows in RowsList\n");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < copy_list->num_rows; i++) {
        Row *src_row = &list->rows[i];
        Row *dest_row = &copy_list->rows[i];

        dest_row->num_elements = src_row->num_elements;

        dest_row->elements = rs_malloc(sizeof(RowElement) * dest_row->num_elements);
        if (dest_row->elements == NULL) {
            fprintf(stderr, "Failed to allocate memory for RowElements in Row\n");
            exit(EXIT_FAILURE);
        }

        for (int j = 0; j < dest_row->num_elements; j++) {
            dest_row->elements[j] = src_row->elements[j];

            if (src_row->elements[j].type == TYPE_STRING) {
                dest_row->elements[j].value.string_value = strdup(src_row->elements[j].value.string_value);
            }
        }

        dest_row->table_name = strdup(src_row->table_name);
    }

    rs_free(list->rows);
    rs_free(list);

    return copy_list;
}

void SendMessageToAllNeighbors(struct topology *topology, Message *message, simtime_t now) {
	lp_id_t num_neighbors = CountDirections(topology, message->envelope->sender);
	lp_id_t neighbors[num_neighbors];
	GetAllReceivers(topology, message->envelope->sender, neighbors);

	for (unsigned int i = 0; i < num_neighbors; i++) {
		ScheduleNewEvent(neighbors[i], now + 10, EVENT, message, sizeof(Message));
	}
}

void CreateAndSendRowsMessage(struct topology *topology, lp_id_t sender_id, float priority, RowsList *send_list, simtime_t now) {
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

	SendMessageToAllNeighbors(topology, send_msg, now);
}

void CreateAndSendGroupsMessage(struct topology *topology, lp_id_t sender_id, float priority, GroupsList *send_list, simtime_t now) {
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

	SendMessageToAllNeighbors(topology, send_msg, now);
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
void DataIngestionInit(lp_id_t me, simtime_t now, FILE **file, char *filename, Schema *schema) {
	char header[MAX_LINE_LENGTH];
	DataSourceData *data;

	data = rs_malloc(sizeof(DataSourceData));
	CHECK_RSMALLOC(data);
	data->can_end = false;

	SetState(data);

	*file = fopen(filename, "r");
	if (!*file) {
		perror("Error in opening CSV file");
        exit(EXIT_FAILURE);
	}

	if (!fgets(header, sizeof(header), *file)) {
		fclose(*file);
		abort();
	}

	InitializeSchema(schema, header);

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
void DataIngestion(struct topology *topology, lp_id_t me, simtime_t now, DataSourceData *data, FILE **file, Schema *schema) {
    char line[MAX_LINE_LENGTH];
    long new_time = 0;
    char *cols;
	RowElement *elements;
	Row *row;
	RowsList *list;

	// read line from the input file
	if (!fgets(line, sizeof(line), *file)) {
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
	elements = rs_malloc(schema->num_cols * sizeof(RowElement));
	CHECK_RSMALLOC(elements);
	row = rs_malloc(sizeof(Row));	
	CHECK_RSMALLOC(row);
	row->elements = elements;
	row->num_elements = schema->num_cols;
	row->table_name = "Taxis";
	PopulateRow(line, row, *schema);

	// create single row list
	list = rs_malloc(sizeof(RowsList));
	CHECK_RSMALLOC(list);
	list->num_rows = 1;
	list->rows = row;

	CreateAndSendRowsMessage(topology, me, 5.0, list, now);

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
void WindowInit(struct topology *topology, lp_id_t from, lp_id_t me) {
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
void Window(struct topology *topology, lp_id_t me, simtime_t now, const void *content, WindowData *data, float priority) {

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
        RowsList *copy_list = CopyAndFreeRowsList(data->list);

        CreateAndSendRowsMessage(topology, me, priority, copy_list, now);

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
void SelectionInit(struct topology *topology, lp_id_t from, lp_id_t me) {
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
void wSelection(struct topology *topology, lp_id_t me, simtime_t now, const void *content, SelectionData *data, float priority) {
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

	CreateAndSendRowsMessage(topology, me, priority, send_list, now);
}

/**
 * @brief Initializer for the Projection processes, which creates an AttributeList struct from a textual list of attributes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void ProjectionInit(struct topology *topology, lp_id_t from, lp_id_t me) {
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

	//rs_free(attributes_cp);

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
void wProjection(struct topology *topology, lp_id_t me, simtime_t now, const void *content, ProjectionData *data, float priority) {
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

	CreateAndSendRowsMessage(topology, me, priority, send_list, now);
}

/**
 * @brief Initializer for the OrderBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void OrderByInit(struct topology *topology, lp_id_t from, lp_id_t me) {
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
void wOrderBy(struct topology *topology, lp_id_t me, simtime_t now, const void *content, OrderByData *data, float priority) {
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

	CreateAndSendRowsMessage(topology, me, priority, send_list, now);
}

/**
 * @brief Initializer for the GroupBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void GroupByInit(struct topology *topology, lp_id_t from, lp_id_t me) {
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
void wGroupBy(struct topology *topology, lp_id_t me, simtime_t now, const void *content, GroupByData *data, float priority) {
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

	CreateAndSendGroupsMessage(topology, me, priority, groups_list, now);
}

/**
 * @brief Initializer for the Aggregate function processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void AggregateFunctionInit(struct topology *topology, lp_id_t from, lp_id_t me) {
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
void wAggregateFunction(struct topology *topology, lp_id_t me, simtime_t now, const void *content, AggregateFunctionData *data, float priority, AggregateFunctionType type) {
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

			CreateAndSendRowsMessage(topology, me, priority, result_rows_list, now);

			break;
	}
}

/**
 * @brief Initializer for the Join processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 * @param table_data Pointer to the state structure
 */
void InitJoin(struct topology *topology, lp_id_t from, lp_id_t me, JoinTableData *table_data) {
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
void wJoin(struct topology *topology, lp_id_t me, simtime_t now, const void *content, JoinData *data, float priority) {
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
		
		CreateAndSendRowsMessage(topology, me, priority, joined_list, now);
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

void ForwardTerminationMessage(struct topology *topology, lp_id_t me, simtime_t now) {
	// create and send termination message
	lp_id_t num_neighbors = CountDirections(topology, me);
	lp_id_t neighbors[num_neighbors];
	GetAllReceivers(topology, me, neighbors);

	for (unsigned int i = 0; i < num_neighbors; i++) {
		ScheduleNewEvent(neighbors[i], now + 10, TERMINATE, NULL, 0);
	}
}

void DataIngestionCleanUp(FILE *file, __unused DataSourceData *data) {
	fclose(file);
	//rs_free(data);
}

void WindowCleanUp(__unused WindowData *data) {
	//rs_free(data->list->rows);
	//rs_free(data->list);
	//rs_free(data);
}

void SelectionCleanUp(__unused SelectionData *data) {
	//rs_free(data->condition);
	//rs_free(data);
}

void ProjectionCleanUp(__unused ProjectionData *data) {
	//rs_free(data->list->attributes);
	//rs_free(data->list);
	//rs_free(data);
}

void GroupByCleanUp(__unused GroupByData *data) {
	//rs_free(data);
}

void AggFunctionCleanUp(__unused AggFunctionData *data) {
	//rs_free(data);
}

void OrderByCleanUp(__unused OrderByData *data) {
	//rs_free(data);
}

void JoinCleanUp(__unused JoinData *data) {
	//rs_free(*data->tables_data);
	//rs_free(data);
}

void OutputCleanUp(__unused OutputProcessData *data) {
	//rs_free(data);
}
