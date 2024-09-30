#include "rootsim_operations.h"

static __thread char line[MAX_LINE_LENGTH] = {0};
static __thread char next_line[MAX_LINE_LENGTH] = {0};

lp_id_t *GetAllNeighbors(struct topology *topology, lp_id_t me, unsigned long *num_neighbors)
{
	*num_neighbors = CountDirections(topology, me);
	lp_id_t *neighbors = malloc(*num_neighbors * sizeof(lp_id_t));
	memset(neighbors, 0xab, *num_neighbors * sizeof(lp_id_t));
	GetAllReceivers(topology, me, neighbors);
	return neighbors;
}

GroupsLinkedList *DeserializeGroupsMessage(GroupsMessage *msg)
{
	GroupsLinkedList *list = rs_malloc(sizeof(GroupsLinkedList));
	CHECK_RSMALLOC(list, "DeserializeGroupsMessage");
	list->head = NULL;
	list->size = 0;

	struct GroupsLinkedListElement *last_group_element = NULL;

	unsigned char *buffer = msg->serialized_array;
	unsigned char *buffer_end = buffer + msg->size;

	memcpy(&list->col_index, buffer, sizeof(int));
	buffer += sizeof(int);

	while(buffer < buffer_end) {
		struct GroupsLinkedListElement *cur_group = rs_malloc(sizeof(struct GroupsLinkedListElement));
		CHECK_RSMALLOC(cur_group, "DeserializeGroupsMessage");
		cur_group->next = NULL;
		cur_group->rows_list = rs_malloc(sizeof(RowsLinkedList));
		CHECK_RSMALLOC(cur_group->rows_list, "DeserializeGroupsMessage");
		cur_group->rows_list->head = NULL;

		memcpy(&cur_group->rows_list->size, buffer, sizeof(int));
		buffer += sizeof(int);

		struct RowsLinkedListElement *last_row_element = NULL;

		unsigned char *buffer_end_rows_list = buffer + cur_group->rows_list->size * sizeof(Row);
		while(buffer < buffer_end_rows_list) {
			struct RowsLinkedListElement *cur_row = rs_malloc(sizeof(struct RowsLinkedListElement));
			CHECK_RSMALLOC(cur_row, "DeserializeGroupsMessage");
			cur_row->next = NULL;

			cur_row->row = rs_malloc(sizeof(Row));
			CHECK_RSMALLOC(cur_row->row, "DeserializeGroupsMessage");
			memcpy(cur_row->row, buffer, sizeof(Row));
			buffer += sizeof(Row);

			if(last_row_element == NULL) {
				cur_group->rows_list->head = cur_row;
			} else {
				last_row_element->next = cur_row;
			}
			last_row_element = cur_row;
		}

		if(last_group_element == NULL) {
			list->head = cur_group;
		} else {
			last_group_element->next = cur_group;
		}
		last_group_element = cur_group;
		list->size++;
	}

	return list;
}

void CreateAndSendMessageFromGroupsList(lp_id_t sender_id, float priority, GroupsLinkedList *list, simtime_t now,
    lp_id_t *receivers, unsigned long num_receivers)
{
	size_t total_size = 0;

	struct GroupsLinkedListElement *group_element = list->head;

	total_size += sizeof(int); // col_index
	while(group_element != NULL) {
		if(group_element->rows_list != NULL)
			total_size += sizeof(int) + group_element->rows_list->size * sizeof(Row);
		group_element = group_element->next;
	}

	Envelope e;
	e.sender = sender_id;
	e.priority = priority;

	GroupsMessage *msg = malloc(sizeof(GroupsMessage) + total_size * sizeof(unsigned char));
	CHECK_RSMALLOC(msg, "CreateAndSendMessageFromGroupsList");
	msg->size = total_size;
	msg->e = e;

	unsigned char *buffer = msg->serialized_array;

	memcpy(buffer, &list->col_index, sizeof(int));
	buffer += sizeof(int);

	group_element = list->head;
	while(group_element != NULL) {
		if(group_element->rows_list != NULL) {
			// copy rows list size
			memcpy(buffer, &group_element->rows_list->size, sizeof(int));
			buffer += sizeof(int);

			struct RowsLinkedListElement *row_element = group_element->rows_list->head;
			while(row_element != NULL) {
				if(row_element->row != NULL) {
					memcpy(buffer, row_element->row, sizeof(Row));
					buffer += sizeof(Row);
				}
				row_element = row_element->next;
			}
		}
		group_element = group_element->next;
	}

	for(size_t i = 0; i < num_receivers; i++) {
		ScheduleNewEvent(receivers[i], now + 0.1, EVENT, msg, sizeof(GroupsMessage) + total_size * sizeof(unsigned char));
	}

	free(msg);
	FreeGroup(list);
}

void CreateAndSendMessageFromList(lp_id_t sender_id, float priority, RowsLinkedList *list, simtime_t now,
    lp_id_t *receivers, unsigned long num_receivers)
{
	Envelope e = {0};
	RowsMessage *msg = NULL;
	int i = 0;
	RowsLinkedList *rows_list = NULL;

	e.priority = priority;
	e.sender = sender_id;
	rows_list = (RowsLinkedList *)list;

	msg = malloc(sizeof(RowsMessage) + rows_list->size * sizeof(Row));
	CHECK_RSMALLOC(msg, "CreateAndSendMessageFromList");
	memset(msg, 0, sizeof(RowsMessage) + rows_list->size * sizeof(Row));
	msg->e = e;
	msg->size = rows_list->size;

	struct RowsLinkedListElement *rows_tmp = rows_list->head;

	while(rows_tmp != NULL) {
		if(i >= rows_list->size) {
			fprintf(stderr, "CreateAndSendMessageFromList: Exceeded the limits of "
					"the entries array\n");
			free(msg);
			exit(EXIT_FAILURE);
		}

		if(rows_tmp->row != NULL) {
			msg->rows[i] = *rows_tmp->row;
			i++;
		}
		rows_tmp = rows_tmp->next;
	}

	for(size_t j = 0; j < num_receivers; j++) {
		if(receivers == NULL) {
			fprintf(stderr, "Unexpected!");
			abort();
		}
		ScheduleNewEvent(receivers[j], now + 0.1, EVENT, msg, sizeof(RowsMessage) + sizeof(Row) * msg->size);
	}

	FreeList(rows_list);
	free(msg);
}

simtime_t ComputeSleepTime(const char *cur_datetime, const char *next_datetime)
{
	struct tm cur_tm = {0}, next_tm = {0};
	time_t cur_time, next_time;
	int parsed;

	// Verifica che i datetime siano della lunghezza corretta
	if(strlen(cur_datetime) < DATE_TIME_FORMAT_LENGTH || strlen(next_datetime) < DATE_TIME_FORMAT_LENGTH) {
		fprintf(stderr, "Invalid date time format\n");
		exit(EXIT_FAILURE);
	}

	// Analizza la stringa datetime usando sscanf
	parsed = sscanf(cur_datetime, "%d-%d-%d %d:%d:%d", &cur_tm.tm_year, &cur_tm.tm_mon, &cur_tm.tm_mday,
	    &cur_tm.tm_hour, &cur_tm.tm_min, &cur_tm.tm_sec);
	if(parsed != 6) {
		fprintf(stderr, "Failed to parse cur_datetime with sscanf. Parsed %d elements\n", parsed);
		exit(EXIT_FAILURE);
	}

	parsed = sscanf(next_datetime, "%d-%d-%d %d:%d:%d", &next_tm.tm_year, &next_tm.tm_mon, &next_tm.tm_mday,
	    &next_tm.tm_hour, &next_tm.tm_min, &next_tm.tm_sec);
	if(parsed != 6) {
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
	if(cur_time == -1 || next_time == -1) {
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
void DataIngestionInit(lp_id_t me, simtime_t now, FILE **file, char *filename, Schema *schema)
{
	char header[MAX_LINE_LENGTH] = {0};
	DataSourceData *data;

	data = rs_malloc(sizeof(DataSourceData));
	CHECK_RSMALLOC(data, "DataIngestionInit");
	memset(data, 0, sizeof(DataSourceData));
	data->can_end = false;

	SetState(data);

	*file = fopen(filename, "r");
	if(!*file) {
		perror("Error in opening CSV file");
		exit(EXIT_FAILURE);
	}

	if(!fgets(header, sizeof(header), *file)) {
		fclose(*file);
		abort();
	}

	InitializeSchema(schema, header);

	ScheduleNewEvent(me, now + 1, EVENT, NULL, 0);

#ifdef DEBUG
	printf("Data ingestion initialized\n");
#endif
}

void CreateAndSendTerminationMessage(struct topology *topology, lp_id_t me, simtime_t now, DataSourceData *data)
{
	unsigned long num_neighbors;
	lp_id_t *neighbors = GetAllNeighbors(topology, me, &num_neighbors);

	for(size_t i = 0; i < num_neighbors; i++) {
		ScheduleNewEvent(neighbors[i], now + 10.0, TERMINATE, NULL, 0);
	}

	data->can_end = true;
	free(neighbors);
}

simtime_t GetNextTupleTime(char *line, char *next_line)
{
	simtime_t new_time = 0.;
	char *cur_datetime, *next_datetime;

	next_line[strcspn(next_line, "\n")] = '\0';
	next_line[sizeof(next_line) - 1] = '\0';

	char next_line_copy[MAX_LINE_LENGTH];
	strcpy(next_line_copy, next_line);

	// get the time from the next line
	int count = 0;
	char *cur_saveptr, *next_saveptr;
	cur_datetime = strtok_r(line, ",", &cur_saveptr);
	next_datetime = strtok_r(next_line_copy, ",", &next_saveptr);

	while(cur_datetime != NULL && next_datetime != NULL) {
		if(count == 1) {
			new_time = ComputeSleepTime(cur_datetime, next_datetime);
			break;
		}
		cur_datetime = strtok_r(NULL, ",", &cur_saveptr);
		next_datetime = strtok_r(NULL, ",", &next_saveptr);
		count++;
	}

	return new_time;
}

/**
 * @brief DataIngestion process, that reads tuples from the input files and
 * forwards them to its neighbors, based on the tuple's actual time
 * @param me DataIngestion process id
 * @param now Current simulation time
 */
void DataIngestion(struct topology *topology, lp_id_t me, simtime_t now, DataSourceData *data, FILE *file, Schema *schema)
{
	lp_id_t *neighbors;
	unsigned long num_neighbors = 0;
	simtime_t new_time = 0.;
	bool is_next_time_different = false;
	long current_position = -1;
	char *cur_datetime = NULL, *next_datetime = NULL;

	// read line from the input file
	line[0] = line[1] = '\0';
	if(fgets(line, MAX_LINE_LENGTH, file) == NULL) {
		CreateAndSendTerminationMessage(topology, me, now, data);
		return;
	}

	// remove newline
	line[strcspn(line, "\n")] = '\0';

	int num_rows = 0;
	struct RowsLinkedListElement *head = NULL;

	while(!is_next_time_different) {
		// create and populate Row struct from the input line
		Row *cur_row = rs_malloc(sizeof(Row));
		CHECK_RSMALLOC(cur_row, "DataIngestion");
		memset(cur_row, 0, sizeof(*cur_row));
		cur_row->num_elements = schema->num_cols;
		strcpy(cur_row->table_name, "Taxis");
		PopulateRow(line, cur_row, *schema);

		if(head == NULL) {
			struct RowsLinkedListElement *cur_element = rs_malloc(sizeof(struct RowsLinkedListElement));
			CHECK_RSMALLOC(cur_element, "DataIngestion");
			memset(cur_element, 0, sizeof(*cur_element));
			cur_element->next = NULL;
			cur_element->row = cur_row;
			head = cur_element;
		} else {
			AppendRow(head, cur_row);
		}
		num_rows++;

		// Check if there is a next line to compute the sleep time
		current_position = ftell(file);

		if(fgets(next_line, sizeof(next_line), file) != NULL) {
			// get next tuple time
			next_line[strcspn(next_line, "\n")] = '\0';
			next_line[sizeof(next_line) - 1] = '\0';

			char next_line_copy[MAX_LINE_LENGTH] = {0};
			strcpy(next_line_copy, next_line);

			// get the time from the next line
			int count = 0;
			char *cur_saveptr = NULL, *next_saveptr = NULL;
			cur_datetime = strtok_r(line, ",", &cur_saveptr);
			next_datetime = strtok_r(next_line_copy, ",", &next_saveptr);

			while(cur_datetime != NULL && next_datetime != NULL) {
				if(count == 1) {
					new_time = ComputeSleepTime(cur_datetime, next_datetime);
					break;
				}
				cur_datetime = strtok_r(NULL, ",", &cur_saveptr);
				next_datetime = strtok_r(NULL, ",", &next_saveptr);
				count++;
			}

			if(!strcmp(cur_datetime, next_datetime)) {
				strcpy(line, next_line);
			} else {
				is_next_time_different = true;
			}

		} else {
			CreateAndSendTerminationMessage(topology, me, now, data);
			return;
		}
	}

	// create and send message
	neighbors = GetAllNeighbors(topology, me, &num_neighbors);

	Envelope e;
	e.sender = me;
	e.priority = 5.0f;

	RowsMessage *msg = malloc(sizeof(RowsMessage) + num_rows * sizeof(Row));
	CHECK_RSMALLOC(msg, "DataIngestion");
	memset(msg, 0, sizeof(RowsMessage) + num_rows * sizeof(Row));
	msg->e = e;
	msg->size = num_rows;

	int i = 0;
	struct RowsLinkedListElement *cur_element = head;
	while(cur_element != NULL) {
		msg->rows[i++] = *cur_element->row;
		cur_element = cur_element->next;
	}

	for(size_t j = 0; j < num_neighbors; j++) {
		ScheduleNewEvent(neighbors[j], now, EVENT, msg, sizeof(RowsMessage) + num_rows * sizeof(Row));
	}

	// back to current_position (one line back)
	fseek(file, current_position, SEEK_SET);

	// cleanup
	free(msg);
	free(neighbors);
	struct RowsLinkedListElement *tmp = head;
	while(tmp != NULL) {
		struct RowsLinkedListElement *next = tmp->next;
		if(tmp->row != NULL) {
			rs_free(tmp->row);
		}
		rs_free(tmp);
		tmp = next;
	}

	// schedule next DataIngestion process' execution with the computed sleep time
	ScheduleNewEvent(me, now + new_time, EVENT, NULL, 0);
}

/**
 * @brief Initializer for the Window processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void WindowInit(struct topology *topology, lp_id_t from, lp_id_t me)
{
	int *size = (int *)GetTopologyLinkData(topology, from, me);

	WindowData *data = rs_malloc(sizeof(WindowData));
	CHECK_RSMALLOC(data, "WindowInit");
	memset(data, 0, sizeof(*data));

	struct RowsLinkedListElement *head = (struct RowsLinkedListElement *)rs_malloc(sizeof(struct RowsLinkedListElement));
	CHECK_RSMALLOC(head, "WindowInit");
	memset(head, 0, sizeof(*head));

	data->window_size = *size;
	data->list = head;
	data->received_tuples = 0;
	data->cur_time = 0L;
	data->max_time = 0L;

	SetState(data);

#ifdef DEBUG
	printf("Window initialized\n");
#endif
}

/**
 * @brief Initializer for the selection process, which converts the textual
 * 	condition associated to a specific edge in the topology, incident to the
 * process node, into a Condition struct.
 * @param from Id of the source node, in the topology
 * @param me Selection process id
 */
void SelectionInit(struct topology *topology, lp_id_t from, lp_id_t me)
{
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
 * @brief Initializer for the Projection processes, which creates an
 * AttributeList struct from a textual list of attributes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void ProjectionInit(struct topology *topology, lp_id_t from, lp_id_t me)
{
	AttributeList *list = NULL;
	char *token = NULL;
	int count = 0;

	list = rs_malloc(sizeof(AttributeList));
	CHECK_RSMALLOC(list, "ProjectionInit");
	memset(list, 0, sizeof(AttributeList));

	// get string representation of attributes ("attr1,attr2,...,attrN")
	char *attributes = (char *)GetTopologyLinkData(topology, from, me);

	char *attributes_cp = strdup(attributes);
	if(!attributes_cp) {
		perror("strdup");
		exit(EXIT_FAILURE);
	}

	// count the attributes
	for(int i = 0; attributes_cp[i]; i++) {
		if(attributes_cp[i] == ',')
			count++;
	}
	count++;

	// allocate AttributeList struct
	list->num_attributes = count;
	list->attributes = rs_malloc(sizeof(Attribute) * count);
	CHECK_RSMALLOC(list->attributes, "ProjectionInit");
	memset(list->attributes, 0, sizeof(Attribute) * count);

	// populate AttributeList struct with attributes
	token = strtok(attributes_cp, ",");
	for(int i = 0; i < count; i++) {
		list->attributes[i].name = strdup(token);
		token = strtok(NULL, ",");
	}

	// create and set state
	ProjectionData *projection_data = rs_malloc(sizeof(ProjectionData));
	CHECK_RSMALLOC(projection_data, "ProjectionInit");
	memset(projection_data, 0, sizeof(ProjectionData));

	projection_data->list = list;
	projection_data->list_string = attributes;

	SetState((void *)projection_data);

	free(attributes_cp);

#ifdef DEBUG
	printf("Projection initialized\n");
#endif
}

/**
 * @brief Initializer for the OrderBy processes
 * @param from Id of the source node, in the topology
 * @param me Projection process id
 */
void OrderByInit(struct topology *topology, lp_id_t from, lp_id_t me)
{
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
void GroupByInit(struct topology *topology, lp_id_t from, lp_id_t me)
{
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
void AggregateFunctionInit(struct topology *topology, lp_id_t from, lp_id_t me)
{
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
void InitJoin(struct topology *topology, lp_id_t from, lp_id_t me, JoinTableData *table_data)
{
	char *attribute_name = (char *)GetTopologyLinkData(topology, from, me);

	char *buffer = strdup(attribute_name);

	char *parsed_name = strtok(buffer, ".");

	if(parsed_name != NULL) {
		table_data->table_name = parsed_name;
	} else {
		printf("Error: table_name is NULL\n");
		return;
	}

	parsed_name = strtok(NULL, ".");

	if(parsed_name != NULL) {
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

void AggregateFunctionRowsInput(RowsMessage *msg, AggregateFunctionData *data, AggregateFunctionType type)
{
	AggFunctionData input_data;
	AggFunctionResultValue *result_single_value;

	input_data.col_name = data->attribute;
	input_data.type = TYPE_ROWS;
	input_data.input_data.rows_list = msg->rows;
	input_data.size = msg->size;

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

RowsLinkedList *AggregateFunctionGroupedInput(GroupsLinkedList *groups, AggregateFunctionData *data,
    AggregateFunctionType type)
{
	AggFunctionData input_data;
	RowsLinkedList *result_rows_list;

	input_data.col_name = data->attribute;
	input_data.type = TYPE_GROUPS;
	input_data.input_data.groups_list = groups;

	result_rows_list = (RowsLinkedList *)AggregateFunction(input_data, type);

	return result_rows_list;
}

/**
 * @brief Selection process: given a list of rows, it applies its associated
 * condition to each row and forwards the resulting list to its neighbors
 * @param me Selection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Selection process state
 * @param priority Priority of the messages to be sent
 */
RowsLinkedList *wSelection(RowsMessage *rcv_msg, void *data)
{
	Condition *condition;
	RowsLinkedList *ret_list;
	SelectionData *selection_data = (SelectionData *)data;

	condition = selection_data->condition;

	ret_list = SelectionMultRows(rcv_msg->size, rcv_msg->rows, condition);
	if(ret_list->size == 0) {
		// printf("[SELECTION] No tuples were found that satisfy the specified
		// selection condition.\n");
		return NULL;
	}

	return ret_list;
}

/**
 * @brief Projection process: given a list of rows, it extracts the specified
 * columns from each row and forwards the resulting list to its neighbors
 * @param me Projection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Projection process state
 * @param priority Priority of the messages to be sent
 */
RowsLinkedList *wProjection(RowsMessage *rcv_msg, void *data)
{
	RowsLinkedList *ret_list;
	ProjectionData *proj_data = (ProjectionData *)data;
	AttributeList *list = proj_data->list;

	ret_list = ProjectionMultRows(rcv_msg->size, rcv_msg->rows, *list);

	return ret_list;
}

/**
 * @brief Projection process: given a list of rows, it extracts the specified
 * columns from each row and forwards the resulting list to its neighbors
 * @param me Projection process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Projection process state
 * @param priority Priority of the messages to be sent
 */
RowsLinkedList *wOrderBy(RowsMessage *rcv_msg, void *data)
{
	RowsLinkedList *ret_list;
	OrderByData *orderBy_data = (OrderByData *)data;

	char *attribute = orderBy_data->attribute;

	ret_list = OrderBy(rcv_msg->size, rcv_msg->rows, attribute);

	return ret_list;
}

/**
 * @brief GroupBy process: it receives a list of rows and groups them based on
 * the value of an attribute, forwarding the resulting list of groups to its
 * neighbors
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 */
GroupsLinkedList *wGroupBy(RowsMessage *rcv_msg, void *data)
{
	GroupsLinkedList *groups_list;
	GroupByData *groupBy_data = (GroupByData *)data;

	char *attribute = groupBy_data->attribute;

	groups_list = GroupBy(rcv_msg->size, rcv_msg->rows, attribute);
	if(groups_list == NULL) {
		exit(EXIT_FAILURE);
	}

	return groups_list;
}

/**
 * @brief AggregateFunction process: it applies a specific aggregate function to
 * a list of rows/groups
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 * @param type Aggregate function to be executed, it can be MIN, MAX, COUNT,
 * SUM, AVG
 */

/**
 * @brief Window process: it receives one tuple at a time from the DataInjection
 * process, gathers as many tuples as the window size, and forwards the
 * resulting list to its neighbors
 * @param me Process id
 * @param now Current simulation time
 * @param content Received message
 * @param data Process state
 * @param priority Priority of the messages to be sent
 */
RowsLinkedList *ExecuteWindow(RowsMessage *rcv_msg, WindowData *data)
{
	RowsLinkedList *ret_list = NULL;

	// get tuple time
	data->cur_time = rcv_msg->rows[0].elements[1].value.long_value;

	if(data->max_time == 0) {
		// first tuple, set max_time
		data->max_time = data->cur_time + data->window_size;
	}

	// if this tuple's time exceeds the max_time, create the next window and
	// return the current one
	if(data->cur_time > data->max_time) {
		data->max_time = data->max_time + data->window_size;

		ret_list = (RowsLinkedList *)rs_malloc(sizeof(RowsLinkedList));
		CHECK_RSMALLOC(ret_list, "ExecuteWindow");
		ret_list->head = data->list;
		ret_list->size = data->received_tuples;

		// initialize new list
		data->list = (struct RowsLinkedListElement *)rs_malloc(sizeof(struct RowsLinkedListElement));
		CHECK_RSMALLOC(data->list, "ExecuteWindow");
		data->list->next = NULL;
		data->list->row = NULL;

		data->received_tuples = 0;
	}

	for(int i = 0; i < rcv_msg->size; i++) {
		AppendRow(data->list, &rcv_msg->rows[i]);
	}
	data->received_tuples += rcv_msg->size;

	return ret_list;
}

void TerminateWindow(struct topology *topology, WindowData *window_data, lp_id_t me, simtime_t now)
{
	lp_id_t *neighbors;
	unsigned long num_neighbors;

	window_data->can_end = true;

	// flush window
	RowsLinkedList *list = rs_malloc(sizeof(RowsLinkedList));
	CHECK_RSMALLOC(list, "TerminateWindow");
	list->size = window_data->received_tuples;

	list->head = window_data->list;

	neighbors = GetAllNeighbors(topology, me, &num_neighbors);
	CreateAndSendMessageFromList(me, 5.0f, list, now, neighbors, num_neighbors);

	ForwardTerminationMessage(topology, me, now);

	free(neighbors);
}

void JoinInit(struct topology *topology, lp_id_t from1, lp_id_t from2, lp_id_t me)
{
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

RowsLinkedList *wJoin(RowsMessage *msg, void *data)
{
	unsigned int i;
	bool can_execute = true;
	RowsLinkedList *joined_list;
	JoinData *join_data = (JoinData *)data;

	for(i = 0; i < join_data->size; i++) {
		if(join_data->tables_data[i]->from_id == msg->e.sender) {
			// populate linked list from flexible array
			for(int j = 0; j < msg->size; j++) {
				strcpy(msg->rows[j].table_name, join_data->tables_data[i]->table_name);

				if(join_data->tables_data[i]->list == NULL) {
					struct RowsLinkedListElement *elem =
					    rs_malloc(sizeof(struct RowsLinkedListElement));
					CHECK_RSMALLOC(elem, "wJoin");
					elem->next = NULL;
					elem->row = rs_malloc(sizeof(Row));
					CHECK_RSMALLOC(elem->row, "wJoin");
					memcpy(elem->row, &msg->rows[j], sizeof(Row));

					join_data->tables_data[i]->list = elem;
				} else {
					AppendRow(join_data->tables_data[i]->list, &msg->rows[j]);
				}
			}
		} else {
			if(!join_data->tables_data[i]->list) {
				can_execute = false;
			}
		}
	}

	if(can_execute) {
		joined_list = Join(join_data->tables_data[0]->list, join_data->tables_data[1]->list,
		    join_data->tables_data[0]->attribute, join_data->tables_data[1]->attribute);

		// free tables lists
		for(i = 0; i < join_data->size; i++) {
			struct RowsLinkedListElement *tmp = join_data->tables_data[i]->list;
			while(tmp != NULL) {
				struct RowsLinkedListElement *next = tmp->next;

				if(tmp->row != NULL) {
					rs_free(tmp->row);
				}
				rs_free(tmp);

				tmp = next;
			}

			join_data->tables_data[i]->list = NULL;
		}

		return joined_list;
	}

	return NULL;
}

/**
 * @brief Prints the header (column names) to the CSV file
 * @param row Pointer to the row to extract column names from
 * @param file File pointer to the open file
 */
void PrintHeaderCSV(Row *row, FILE *file)
{
	for(int i = 0; i < row->num_elements; i++) {
		fprintf(file, "%s", row->elements[i].col_name);
		if(i < row->num_elements - 1) {
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
void PrintRowCSV(Row *row, FILE *file)
{
	for(int i = 0; i < row->num_elements; i++) {
		RowElement element = row->elements[i];

		switch(element.type) {
			case TYPE_INT:
				fprintf(file, "%d", element.value.int_value);
				break;
			case TYPE_LONG:
				fprintf(file, "%ld", element.value.long_value);
				break;
			case TYPE_FLOAT:
				fprintf(file, "%f", element.value.float_value);
				break;
			case TYPE_DOUBLE:
				fprintf(file, "%lf", element.value.double_value);
				break;
			case TYPE_STRING:
				fprintf(file, "%s", element.value.string_value);
				break;
		}

		if(i < row->num_elements - 1) {
			fprintf(file, ",");
		}
	}
	fprintf(file, "\n");
}

/**
 * @brief Generic output process, that writes the received messages to a CSV
 * file If it's the first time writing, it also writes the header.
 * @param me Process id
 * @param now Current simulation time
 * @param content Pointer to the received message
 */
void WriteToOutputFile(lp_id_t me, const void *content, OutputProcessData *data)
{
	RowsMessage *msg;
	int i;

	msg = (RowsMessage *)content;

	FILE *file = fopen(data->filename, "a+");
	if(!file) {
		perror("Error opening file");
		exit(EXIT_FAILURE);
	}

	fseek(file, 0, SEEK_END);
	long file_size = ftell(file);

	if(file_size == 0) {
		if(msg->size > 0) {
			PrintHeaderCSV(&msg->rows[0], file);
		}
	}

	for(i = 0; i < msg->size; i++) {
		PrintRowCSV(&msg->rows[i], file);
	}

	printf("[INFO] Output process %ld has written the query result in the file %s\n", me, data->filename);
	fclose(file);
}

void ForwardTerminationMessage(struct topology *topology, lp_id_t me, simtime_t now)
{
	// create and send termination message
	unsigned long num_neighbors = CountDirections(topology, me);
	lp_id_t *neighbors = GetAllNeighbors(topology, me, &num_neighbors);

	for(size_t i = 0; i < num_neighbors; i++) {
		ScheduleNewEvent(neighbors[i], now + 1.0, TERMINATE, NULL, 0);
	}

	free(neighbors);
}

void DataIngestionCleanUp(FILE *file, DataSourceData *data, Schema *schema)
{
	fclose(file);
	FreeSchema(schema);
	rs_free(data);
}

void WindowCleanUp(WindowData *data)
{
	rs_free(data);
}

void ConditionCleanup(Condition *condition)
{
	if(!condition)
		return;

	switch(condition->type) {
		case SIMPLE_CONDITION:
			free(condition->condition.simple_condition.column);
			free(condition->condition.simple_condition.value);
			break;
		case MULTIPLE_CONDITION:
			ConditionCleanup(condition->condition.multiple_condition.left);
			ConditionCleanup(condition->condition.multiple_condition.right);
			break;
	}
	rs_free(condition);
}

void SelectionCleanUp(SelectionData *data)
{
	if(!data)
		return;

	ConditionCleanup(data->condition);
	rs_free(data);
}

void ProjectionCleanUp(ProjectionData *data)
{
	for(int i = 0; i < data->list->num_attributes; i++) {
		free(data->list->attributes[i].name);
	}
	rs_free(data->list->attributes);
	rs_free(data->list);
	rs_free(data);
}

void GroupByCleanUp(GroupByData *data)
{
	rs_free(data);
}

void AggFunctionCleanUp(AggregateFunctionData *data)
{
	rs_free(data);
}

void OrderByCleanUp(OrderByData *data)
{
	rs_free(data);
}

void JoinCleanUp(JoinData *data)
{
	rs_free(*data->tables_data);
	rs_free(data);
}

void OutputCleanUp(OutputProcessData *data)
{
	rs_free(data);
}
