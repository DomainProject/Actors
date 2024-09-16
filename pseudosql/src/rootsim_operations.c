#include "rootsim_operations.h"

#define GROWTH_FACTOR 2

unsigned long initial_size = 500;

RowsList* CopyAndFreeRowsList(RowsList *list) {
    RowsList *copy_list = malloc(sizeof(RowsList));
    if (copy_list == NULL) {
        fprintf(stderr, "Failed to allocate memory for RowsList\n");
        exit(EXIT_FAILURE);
    }

    copy_list->num_rows = list->num_rows;

    copy_list->rows = malloc(sizeof(Row) * copy_list->num_rows);
    if (copy_list->rows == NULL) {
        fprintf(stderr, "Failed to allocate memory for Rows in RowsList\n");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < copy_list->num_rows; i++) {
        Row *src_row = &list->rows[i];
        Row *dest_row = &copy_list->rows[i];

        dest_row->num_elements = src_row->num_elements;

        dest_row->elements = malloc(sizeof(RowElement) * dest_row->num_elements);
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

void SendMessage(Message *message, simtime_t now, lp_id_t *receivers, int num_receivers) {
	for (int i = 0; i < num_receivers; i++) {
		ScheduleNewEvent(receivers[i], now + 1.0, EVENT, message, sizeof(Message));
	}
}

lp_id_t *GetAllNeighbors(struct topology *topology, lp_id_t me, int *num_neighbors) {
	*num_neighbors = CountDirections(topology, me);
	lp_id_t *neighbors = malloc(*num_neighbors * sizeof(lp_id_t)); 
	GetAllReceivers(topology, me, neighbors);
	return neighbors;
}

Message *CreateMessage(lp_id_t sender_id, float priority, void *list, MessageType type) {
	Envelope *e;
	Message *msg;

	// create envelope
	e = malloc(sizeof(Envelope));
	CHECK_RSMALLOC(e, "CreateMessage");
	e->priority = priority;
	e->sender = sender_id;

	// create message
	msg = malloc(sizeof(Message));
	CHECK_RSMALLOC(msg, "CreateMessage");
	msg->envelope = e;
	msg->type = type;
	if (type == ROWS)
		msg->content.rows_list = (RowsList *)list;
	else 
		msg->content.groups_list = (GroupsList *)list;

	return msg;
}

void CreateAndSendRowsMessage(lp_id_t sender_id, float priority, RowsList *send_list, simtime_t now, lp_id_t *receivers, int num_receivers) {
	
	Envelope *e;
	Message *send_msg;

	// create envelope
	e = malloc(sizeof(Envelope));
	CHECK_RSMALLOC(e, "CreateAndSendRowsMessage");
	e->priority = priority;
	e->sender = sender_id;

	// create and send message
	send_msg = malloc(sizeof(Message));
	CHECK_RSMALLOC(send_msg, "CreateAndSendRowsMessage");
	send_msg->envelope = e;
	send_msg->type = ROWS;
	send_msg->content.rows_list = send_list;

	SendMessage(send_msg, now, receivers, num_receivers);
}

void CreateAndSendGroupsMessage(lp_id_t sender_id, float priority, GroupsList *send_list, simtime_t now, lp_id_t *receivers, int num_receivers) {

	Envelope *e;
	Message *send_msg; 

	e = malloc(sizeof(Envelope));
	CHECK_RSMALLOC(e, "CreateAndSendGroupsMessage");
	e->priority = priority;
	e->sender = sender_id;

	send_msg = malloc(sizeof(Message));
	CHECK_RSMALLOC(send_msg, "CreateAndSendGroupsMessage");
	send_msg->envelope = e;
	send_msg->type = GROUPS;
	send_msg->content.groups_list = send_list; 

	SendMessage(send_msg, now, receivers, num_receivers);
}

void CreateAndSendMessage(lp_id_t sender_id, float priority, MessageType type, void *list, simtime_t now, lp_id_t *receivers, int num_receivers) {
	switch(type) {
		case ROWS:
			CreateAndSendRowsMessage(sender_id, priority, (RowsList *)list, now, receivers, num_receivers);
			break;
		case GROUPS:
			CreateAndSendGroupsMessage(sender_id, priority, (GroupsList *)list, now, receivers, num_receivers);
			break;
		default:
			fprintf(stderr, "Unknown message type\n");
			abort();
	}

}

simtime_t ComputeSleepTime(const char *cur_datetime, const char *next_datetime) {
    struct tm cur_tm = {0}, next_tm = {0};
    time_t cur_time, next_time;
    int parsed;

    // Verifica che i datetime siano della lunghezza corretta
    if (strlen(cur_datetime) < DATE_TIME_FORMAT_LENGTH || strlen(next_datetime) < DATE_TIME_FORMAT_LENGTH) {
        fprintf(stderr, "Invalid date time format\n");
        exit(EXIT_FAILURE);
    }

    // Analizza la stringa datetime usando sscanf
    parsed = sscanf(cur_datetime, "%d-%d-%d %d:%d:%d",
                    &cur_tm.tm_year, &cur_tm.tm_mon, &cur_tm.tm_mday,
                    &cur_tm.tm_hour, &cur_tm.tm_min, &cur_tm.tm_sec);
    if (parsed != 6) {
        fprintf(stderr, "Failed to parse cur_datetime with sscanf. Parsed %d elements\n", parsed);
        exit(EXIT_FAILURE);
    }

    parsed = sscanf(next_datetime, "%d-%d-%d %d:%d:%d",
                    &next_tm.tm_year, &next_tm.tm_mon, &next_tm.tm_mday,
                    &next_tm.tm_hour, &next_tm.tm_min, &next_tm.tm_sec);
    if (parsed != 6) {
        fprintf(stderr, "Failed to parse next_datetime with sscanf. Parsed %d elements\n", parsed);
        exit(EXIT_FAILURE);
    }

    // `tm_year` è l'anno dal 1900, `tm_mon` è il mese da 0 a 11
    cur_tm.tm_year -= 1900;
    cur_tm.tm_mon -= 1;
    next_tm.tm_year -= 1900;
    next_tm.tm_mon -= 1;

    // Converti struct tm in time_t
    cur_time = mktime(&cur_tm);
    next_time = mktime(&next_tm);

    // Controlla che mktime non abbia fallito
    if (cur_time == -1 || next_time == -1) {
        perror("mktime failed");
        exit(EXIT_FAILURE);
    }

    // Calcola la differenza tra i due timestamp in secondi
    simtime_t difference = difftime(next_time, cur_time);

    return difference;
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
	CHECK_RSMALLOC(data, "DataIngestionInit");
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
    char next_line[MAX_LINE_LENGTH];
    simtime_t new_time = 0.0;
    char *cur_datetime, *next_datetime;
    RowElement *elements;
    Row *row;
    RowsList *list;
    lp_id_t *neighbors;
    int num_neighbors;

    // read line from the input file
    if (fgets(line, sizeof(line), *file) == NULL) {
        // create and send termination message
        lp_id_t num_neighbors = CountDirections(topology, me);
        lp_id_t neighbors[num_neighbors];
        GetAllReceivers(topology, me, neighbors);

        for (unsigned int i = 0; i < num_neighbors; i++) {
            ScheduleNewEvent(neighbors[i], now + 10.0, TERMINATE, NULL, 0);
        }

        data->can_end = true;
        return;
    }

    line[strcspn(line, "\n")] = '\0'; 
    line[sizeof(line) - 1] = '\0';

    // create and populate Row struct from the input line
    elements = malloc(schema->num_cols * sizeof(RowElement));
    CHECK_RSMALLOC(elements, "DataIngestion");
    row = malloc(sizeof(Row));    
    CHECK_RSMALLOC(row, "DataIngestion");
    row->elements = elements;
    row->num_elements = schema->num_cols;
    row->table_name = "Taxis";

    PopulateRow(line, row, *schema);

    // create single row list
    list = malloc(sizeof(RowsList));
    CHECK_RSMALLOC(list, "DataIngestion");
    list->num_rows = 1;
    list->rows = row;
    
    neighbors = GetAllNeighbors(topology, me, &num_neighbors);
    CreateAndSendRowsMessage(me, 5.0, list, now, neighbors, num_neighbors);

	// Check if there is a next line to compute the sleep time
    long current_position = ftell(*file);

    if (fgets(next_line, sizeof(next_line), *file) != NULL) {
        next_line[strcspn(next_line, "\n")] = '\0';
        next_line[sizeof(next_line) - 1] = '\0';

        // get the time from the next line
        int count = 0;
        char *cur_saveptr, *next_saveptr;
        cur_datetime = strtok_r(line, ",", &cur_saveptr);
        next_datetime = strtok_r(next_line, ",", &next_saveptr);

        while (cur_datetime != NULL && next_datetime != NULL) {
            if (count == 1) {
                new_time = ComputeSleepTime(cur_datetime, next_datetime);
                break;
            }
            cur_datetime = strtok_r(NULL, ",", &cur_saveptr);
            next_datetime = strtok_r(NULL, ",", &next_saveptr);
            count++;
        }
    } else {
        // create and send termination message
        lp_id_t num_neighbors = CountDirections(topology, me);
        lp_id_t neighbors[num_neighbors];
        GetAllReceivers(topology, me, neighbors);

        for (unsigned int i = 0; i < num_neighbors; i++) {
            ScheduleNewEvent(neighbors[i], now + 10.0, TERMINATE, NULL, 0);
        }

        data->can_end = true;
        return;
    }

    // Torna alla posizione precedente nel file
    fseek(*file, current_position, SEEK_SET);

    // schedule next DataIngestion process' execution with the computed sleep time
    ScheduleNewEvent(me, now + new_time, EVENT, NULL, 0);
}


/**
 * @brief Initializer for the Window processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void WindowInit(struct topology *topology, lp_id_t from, lp_id_t me) {
	int *size = (int *)GetTopologyLinkData(topology, from, me);

	WindowData *data = rs_malloc(sizeof(WindowData));
	CHECK_RSMALLOC(data, "WindowInit");
	Row *rows = rs_malloc(sizeof(Row) * initial_size);
	CHECK_RSMALLOC(rows, "WindowInit");
	RowsList *list = rs_malloc(sizeof(RowsList));
	CHECK_RSMALLOC(list, "WindowInit");

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

void TestWindow(const void *content) {

    // Controllo su content
    if (!content) {
        printf("content is null\n");
        return;
    }

    Message *msg = (Message *)content;

    if (!msg->content.rows_list) {
        fprintf(stderr, "TestWindow encountered NULL rows_list in message\n");
        return;
    }

    int size = msg->content.rows_list->num_rows;
    if (size <= 0) {
        fprintf(stderr, "TestWindow encountered invalid or zero number of rows\n");
        return;
    }

    for (int i = 0; i < size; i++) {
        if (!msg->content.rows_list->rows) {
            fprintf(stderr, "TestWindow encountered NULL rows array\n");
            return;
        }

        if (!msg->content.rows_list->rows[i].elements) {
            fprintf(stderr, "TestWindow encountered NULL elements array in row %d\n", i);
            return;
        }

        if (msg->content.rows_list->rows[i].num_elements <= 1) {
            fprintf(stderr, "TestWindow encountered insufficient elements in row %d\n", i);
            return;
        }

        if (msg->content.rows_list->rows[i].elements[1].type != TYPE_LONG) {
            fprintf(stderr, "TestWindow encountered unexpected element type in row %d, element 1\n", i);
            return;
        }

        long val = msg->content.rows_list->rows[i].elements[1].value.long_value;
        printf("Row %d, Element 1 Value: %ld\n", i, val);
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
	CHECK_RSMALLOC(data, "SelectionInit");

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
 * @brief Initializer for the Projection processes, which creates an AttributeList struct from a textual list of attributes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void ProjectionInit(struct topology *topology, lp_id_t from, lp_id_t me) {
	AttributeList *list;
    char *token;
    int count = 0;

	list = rs_malloc(sizeof(AttributeList));
	CHECK_RSMALLOC(list, "ProjectionInit");

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
	CHECK_RSMALLOC(list->attributes, "ProjectionInit");

	// populate AttributeList struct with attributes
    token = strtok(attributes_cp, ",");
    for (int i = 0; i < count; i++) {
        list->attributes[i].name = strdup(token);
        token = strtok(NULL, ",");
    }

	// create and set state
	ProjectionData *projection_data = rs_malloc(sizeof(ProjectionData));
	CHECK_RSMALLOC(projection_data, "ProjectionInit");

	projection_data->list = list;
	projection_data->list_string = attributes;

	SetState((void *)projection_data);

	//rs_free(attributes_cp);

	#ifdef DEBUG
	printf("Projection initialized\n");
	#endif
}

/**
 * @brief Initializer for the OrderBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void OrderByInit(struct topology *topology, lp_id_t from, lp_id_t me) {
	char *attribute = (char *)GetTopologyLinkData(topology, from, me);

	OrderByData *data = rs_malloc(sizeof(OrderByData));
	CHECK_RSMALLOC(data, "OrderByInit");
	data->attribute = attribute;

	SetState(data);

	#ifdef DEBUG
	printf("OrderBy initialized\n");
	#endif
}

/**
 * @brief Initializer for the GroupBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void GroupByInit(struct topology *topology, lp_id_t from, lp_id_t me) {
	char *attribute = (char *)GetTopologyLinkData(topology, from, me);

	GroupByData *data = rs_malloc(sizeof(GroupByData));
	CHECK_RSMALLOC(data, "GroupByInit");
	data->attribute = attribute;

	SetState(data);

	#ifdef DEBUG
	printf("GroupBy initialized\n");
	#endif
}

/**
 * @brief Initializer for the Aggregate function processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void AggregateFunctionInit(struct topology *topology, lp_id_t from, lp_id_t me) {
	char *attribute = (char *)GetTopologyLinkData(topology, from, me);

	AggregateFunctionData *data = rs_malloc(sizeof(AggregateFunctionData));
	CHECK_RSMALLOC(data, "AggregateFunctionInit");
	data->attribute = attribute;
	data->can_end = false;

	SetState(data);

	#ifdef DEBUG
	printf("Aggregate function initialized\n");
	#endif
}

/**
 * @brief Initializer for the Join processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 * @param table_data Pointer to the state structure
 */
void InitJoin(struct topology *topology, lp_id_t from, lp_id_t me, JoinTableData *table_data) {

	char *attribute_name = (char *)GetTopologyLinkData(topology, from, me);

	char *buffer = strdup(attribute_name);

    // Usa strtok per dividere la stringa, verifica che i token siano validi
    char *parsed_name = strtok(buffer, ".");
    
    // Verifica se il primo token è valido
    if (parsed_name != NULL) {
        table_data->table_name = parsed_name;
    } else {
        printf("Error: table_name is NULL\n");
        return;
    }

    // Estrai il secondo token
    parsed_name = strtok(NULL, ".");
    
    // Verifica se il secondo token è valido
    if (parsed_name != NULL) {
        table_data->attribute = parsed_name;
    } else {
        printf("Error: attribute is NULL\n");
        return;
    }

    table_data->from_id = from;
    table_data->list = NULL;

    #ifdef DEBUG
    printf("Join initialized: table_name = %s, attribute = %s\n", table_data->table_name, table_data->attribute);
    #endif
}

void AggregateFunctionRowsInput(Message *rcv_msg, char *attribute, AggregateFunctionType type) {
	AggFunctionData input_data;
	RowsList *rcv_rows_list;
	AggFunctionResultValue *result_single_value;

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
}


RowsList *AggregateFunctionGroupedInput(Message *rcv_msg, char *attribute, AggregateFunctionType type) {
	GroupsList *rcv_groups_list;
	AggFunctionData input_data;
	RowsList *result_rows_list;

	rcv_groups_list = rcv_msg->content.groups_list;

	input_data.col_name = attribute;
	input_data.type = TYPE_GROUPS;
	input_data.input_data.groups = *rcv_groups_list;

	result_rows_list = (RowsList *)AggregateFunction(input_data, type);

	return result_rows_list;	
}

/**
 * @brief Selection process: given a list of rows, it applies its associated condition to each row and forwards the resulting list to its neighbors 
 * @param me Selection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Selection process state
 * @param priority Priority of the messages to be sent
 */
RowsList *wSelection(Message *rcv_msg, void *data) {
	Condition *condition;
	RowsList *rcv_list, *send_list;
	SelectionData *selection_data = (SelectionData *)data;

	condition = selection_data->condition;

	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "Selection on grouped rows is not supported yet\n");
		exit(EXIT_FAILURE);
	}
	rcv_list = rcv_msg->content.rows_list;

	// select rows based on the condition
	send_list = SelectionMultRows(*rcv_list, condition);

	if (send_list->num_rows == 0) {
		printf("[SELECTION] No tuples were found that satisfy the specified selection condition.\n");
		return NULL;
	}

	#ifdef DEBUG
	if (!send_list) {
		return NULL;
	}
	printf("Selection output:\n");
	for (int i = 0; i < send_list->num_rows; i++) {
		PrintRow(&send_list->rows[i]);
	}
	#endif

	return send_list;
}

/**
 * @brief Projection process: given a list of rows, it extracts the specified columns from each row and forwards the resulting list to its neighbors
 * @param me Projection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Projection process state
 * @param priority Priority of the messages to be sent
 */
RowsList *wProjection(Message *rcv_msg, void *data) {
	RowsList *rcv_list, *send_list;
	ProjectionData *proj_data = (ProjectionData *)data;
	AttributeList *list = proj_data->list;

	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "Projection on grouped rows is not supported yet\n");
	}
	rcv_list = rcv_msg->content.rows_list;

	send_list = ProjectionMultRows(*rcv_list, *list);

	#ifdef DEBUG
	if (!send_list) {
		return NULL;
	}
	printf("Projection output:\n");
	for (int i = 0; i < send_list->num_rows; i++) {
		PrintRow(&send_list->rows[i]);
	}
	#endif

	return send_list;	
}

/**
 * @brief Projection process: given a list of rows, it extracts the specified columns from each row and forwards the resulting list to its neighbors
 * @param me Projection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Projection process state
 * @param priority Priority of the messages to be sent
 */
RowsList *wOrderBy(Message *rcv_msg, void *data) {
	RowsList *rcv_list, *send_list;
	OrderByData *orderBy_data = (OrderByData *)data;

	char *attribute = orderBy_data->attribute;

	if (rcv_msg->type != ROWS) {
		fprintf(stderr, "OrderBy can only be performed on a list of rows\n");
	}
	rcv_list = rcv_msg->content.rows_list;

	send_list = OrderBy(*rcv_list, attribute);

	#ifdef DEBUG
	if (!send_list) {
		return NULL;
	}
	printf("OrderBy output:\n");
	for (int i = 0; i < send_list->num_rows; i++) {
		PrintRow(&send_list->rows[i]);
	}
	#endif

	return send_list;
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
GroupsList *wGroupBy(Message *rcv_msg, void *data) {
	RowsList *rcv_list;
	GroupsList *groups_list;
	GroupByData *groupBy_data = (GroupByData *)data;

	char *attribute = groupBy_data->attribute;

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
	if (!groups_list) {
		return NULL;
	}
	printf("GroupBy output:\n");
	for (int i = 0; i < groups_list->num_groups; i++) {
		printf("Group %d\n", i);
		for (int j = 0; j < groups_list->groups[i].rows_list.num_rows; j++) {
			PrintRow(&groups_list->groups[i].rows_list.rows[j]);
		}
		puts("");
	}
	#endif

	return groups_list;
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
RowsList *wAggregateFunction(Message *rcv_msg, void *data, AggregateFunctionType type) {
	RowsList *result_rows_list = NULL;
	AggregateFunctionData *agg_function_data = (AggregateFunctionData *)data;

	char *attribute = agg_function_data->attribute;

	switch(rcv_msg->type) {
		case ROWS:
			AggregateFunctionRowsInput(rcv_msg, attribute, type);
			break;

		case GROUPS:
			result_rows_list = AggregateFunctionGroupedInput(rcv_msg, attribute, type);
			break;
	}

	return result_rows_list;
}

void AddRow(WindowData *data) {
    RowsList *list = data->list;

    // Se l'array di righe è pieno, rialloca più spazio
    if ((unsigned long)list->num_rows == initial_size) {
        unsigned long new_size = initial_size * GROWTH_FACTOR;
        list->rows = rs_realloc(list->rows, sizeof(Row) * new_size);
        CHECK_RSMALLOC(list->rows, "AddRow");
        initial_size = new_size;
    }
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
RowsList *ExecuteWindow(Message *rcv_msg, WindowData *data) {
	RowsList *copy_list = NULL;

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

	// if this tuple's time exceeds the max_time, create the next window and return the current one
	if (data->cur_time > data->max_time) {
	
		data->max_time = data->cur_time + data->window_size;

		data->list->num_rows = data->received_tuples;

		// Create a copy of the current list
        copy_list = CopyAndFreeRowsList(data->list);

		data->list = rs_malloc(sizeof(RowsList));
		CHECK_RSMALLOC(data->list, "ExecuteWindow");
		data->list->rows = rs_malloc(sizeof(Row) * data->window_size * 2);		// todo fix rows size
		CHECK_RSMALLOC(data->list->rows, "ExecuteWindow");

		data->received_tuples = 0;
	}

	if (data->received_tuples + 1 > data->window_size) {
		// the window is out of memory, allocate new space
		AddRow(data);
	}

	data->list->rows[data->received_tuples++] = list->rows[0];

	return copy_list;
}

void TerminateWindow(struct topology *topology, WindowData *window_data, lp_id_t me, simtime_t now) {
	lp_id_t *neighbors;
	int num_neighbors;

	window_data->can_end = true;
	
	// flush window
	window_data->list->num_rows = window_data->received_tuples;

	RowsList *copy_list = malloc(sizeof(RowsList));
	CHECK_RSMALLOC(copy_list, "TerminateWindow");

	copy_list->num_rows = window_data->received_tuples;
	copy_list->rows = malloc(sizeof(Row) * window_data->list->num_rows);
	CHECK_RSMALLOC(copy_list->rows, "TerminateWindow");

	for (int i = 0; i < window_data->list->num_rows; i++) {
		copy_list->rows[i] = window_data->list->rows[i];
	}

	neighbors = GetAllNeighbors(topology, me, &num_neighbors);

	CreateAndSendMessage(me, 5.0, ROWS, copy_list, now, neighbors, num_neighbors);

	rs_free(window_data->list->rows);
	rs_free(window_data->list);

	ForwardTerminationMessage(topology, me, now);
}

void JoinInit(struct topology *topology, lp_id_t from1, lp_id_t from2, lp_id_t me) {
	JoinData *join_data = rs_malloc(sizeof(JoinData));
	JoinTableData *table1_data = rs_malloc(sizeof(JoinTableData));
	JoinTableData *table2_data = rs_malloc(sizeof(JoinTableData));
	CHECK_RSMALLOC(join_data, "JoinInit");
	CHECK_RSMALLOC(table1_data, "JoinInit");
	CHECK_RSMALLOC(table2_data, "JoinInit");

	join_data->can_end = false;
	join_data->size = 2;
	join_data->tables_data = rs_malloc(2 * sizeof(JoinTableData *));
	CHECK_RSMALLOC(join_data->tables_data, "JoinInit");
	join_data->tables_data[0] = table1_data;
	join_data->tables_data[1] = table2_data;

	InitJoin(topology, from1, me, table1_data);
	InitJoin(topology, from2, me, table2_data);

	SetState(join_data);
}

/**
 * @brief Join process: it merges two incoming streams
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 */
RowsList *wJoin(Message *msg, void *data) {
	unsigned int i;
	bool can_execute = true;
	RowsList *joined_list;
	JoinData *join_data = (JoinData *)data;

	for (i = 0; i < join_data->size; i++) {
		if (join_data->tables_data[i]->from_id == msg->envelope->sender) {
			msg->content.rows_list->rows->table_name = strdup(join_data->tables_data[i]->table_name);
			join_data->tables_data[i]->list = msg->content.rows_list;
		} else {
			if (!join_data->tables_data[i]->list) {
				can_execute = false;
			}
		}
	}

	if (can_execute) {
		joined_list = Join(*join_data->tables_data[0]->list, 
				*join_data->tables_data[1]->list, 
				join_data->tables_data[0]->attribute, 
				join_data->tables_data[1]->attribute);

		// free tables lists
		for (i = 0; i < join_data->size; i++) {
			join_data->tables_data[i]->list = NULL;
		}

		#ifdef DEBUG
		for (int i = 0; i < joined_list->num_rows; i++) {
			PrintRow(&joined_list->rows[i]);
		}
		#endif
		
		return joined_list;
	} 

	return NULL;
}

/**
 * @brief Prints the header (column names) to the CSV file
 * @param row Pointer to the row to extract column names from
 * @param file File pointer to the open file
 */
void PrintHeaderCSV(Row *row, FILE *file) {
    for (int i = 0; i < row->num_elements; i++) {
        fprintf(file, "%s", row->elements[i].col_name);
        if (i < row->num_elements - 1) {
            fprintf(file, ",");
        }
    }
    fprintf(file, "\n");
}

/**
 * @brief Prints a row in CSV format
 * @param row Pointer to the row to be printed
 * @param file File pointer to the open file
 */
void PrintRowCSV(Row *row, FILE *file) {
    for (int i = 0; i < row->num_elements; i++) {
        RowElement *element = &row->elements[i];
        
        switch (element->type) {
            case TYPE_INT:
                fprintf(file, "%d", element->value.int_value);
                break;
            case TYPE_LONG:
                fprintf(file, "%ld", element->value.long_value);
                break;
            case TYPE_FLOAT:
                fprintf(file, "%f", element->value.float_value);
                break;
            case TYPE_DOUBLE:
                fprintf(file, "%lf", element->value.double_value);
                break;
            case TYPE_STRING:
                fprintf(file, "%s", element->value.string_value);
                break;
        }

        if (i < row->num_elements - 1) {
            fprintf(file, ",");
        }
    }
    fprintf(file, "\n");
}

/**
 * @brief Generic output process, that writes the received messages to a CSV file
 *        If it's the first time writing, it also writes the header.
 * @param me Process id
 * @param now Current simulation time
 * @param content Pointer to the received message
 */
void WriteToOutputFile(lp_id_t me, const void *content, OutputProcessData *data) {
    Message *msg;
    int i, j;
    
    msg = (Message *)content;

    FILE *file = fopen(data->filename, "a+");
    if (!file) {
        perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);

    if (file_size == 0) {
        if (msg->type == ROWS && msg->content.rows_list->num_rows > 0) {
            PrintHeaderCSV(&msg->content.rows_list->rows[0], file);
        } else if (msg->type == GROUPS && msg->content.groups_list->num_groups > 0) {
            if (msg->content.groups_list->groups[0].rows_list.num_rows > 0) {
                PrintHeaderCSV(&msg->content.groups_list->groups[0].rows_list.rows[0], file);
            }
        }
    }

    switch (msg->type) {
        case ROWS:
            for (i = 0; i < msg->content.rows_list->num_rows; i++) {
                PrintRowCSV(&msg->content.rows_list->rows[i], file);
            }
            break;
        case GROUPS:
            for (i = 0; i < msg->content.groups_list->num_groups; i++) {
                fprintf(file, "Group %d\n", i);
                for (j = 0; j < msg->content.groups_list->groups[i].rows_list.num_rows; j++) {
                    PrintRowCSV(&msg->content.groups_list->groups[i].rows_list.rows[j], file);
                }
            }
            break;
    }

	printf("[INFO] Output process %ld has written the query result in the file %s\n", me, data->filename);
    fclose(file);
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
		ScheduleNewEvent(neighbors[i], now + 10.0, TERMINATE, NULL, 0);
	}
}

void DataIngestionCleanUp(FILE *file, __unused DataSourceData *data) {
	fclose(file);
	rs_free(data);
}

void WindowCleanUp(__unused WindowData *data) {
	rs_free(data->list->rows);
	rs_free(data->list);
	rs_free(data);
}

void SelectionCleanUp(__unused SelectionData *data) {
	rs_free(data->condition);
	rs_free(data);
}

void ProjectionCleanUp(__unused ProjectionData *data) {
	rs_free(data->list->attributes);
	rs_free(data->list);
	rs_free(data);
}

void GroupByCleanUp(__unused GroupByData *data) {
	rs_free(data);
}

void AggFunctionCleanUp(__unused AggregateFunctionData *data) {
	rs_free(data);
}

void OrderByCleanUp(__unused OrderByData *data) {
	rs_free(data);
}

void JoinCleanUp(__unused JoinData *data) {
	rs_free(*data->tables_data);
	rs_free(data);
}

void OutputCleanUp(__unused OutputProcessData *data) {
	rs_free(data);
}
