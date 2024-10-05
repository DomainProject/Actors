#define _GNU_SOURCE

#include "sql_operations.h"
#include "include/pseudosql.h"


int compare_elements(RowValue elem1, RowValue elem2, Type type) {
    switch (type) {
        case TYPE_INT:
            return (elem1.int_value > elem2.int_value) - (elem1.int_value < elem2.int_value);
        case TYPE_LONG:
            return (elem1.long_value > elem2.long_value) - (elem1.long_value < elem2.long_value);
        case TYPE_FLOAT:
            return (elem1.float_value > elem2.float_value) - (elem1.float_value < elem2.float_value);
        case TYPE_STRING:
            return strcmp(elem1.string_value, elem2.string_value);
        case TYPE_DOUBLE:
            return (elem1.double_value > elem2.double_value) - (elem1.double_value < elem2.double_value);
        default:
            fprintf(stderr, "Unsupported type %d\n", type);
            exit(EXIT_FAILURE);
    }
}

/**
 * @name Projection
 * @param input_row single row of a table
 * @param list list of attributes
 */
Row *Projection(Row input_row, AttributeList list, Schema schema) {
    int i, index;
    Row *output_row;

    output_row = rs_malloc(sizeof(Row));
    if (!output_row) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    memset(output_row, 0, sizeof(Row));

    output_row->num_elements = list.num_attributes;

    index = 0;

    for (i = 0; i < list.num_attributes; i++) {
        Type type = {0};
        RowValue value = get_element_from_row(&input_row, list.attributes[i].name, schema, &type);

        switch (type) {
            case TYPE_INT:
                output_row->elements[index].int_value = input_row.elements[i].int_value;
                break;
            case TYPE_LONG:
                output_row->elements[index].long_value = input_row.elements[i].long_value;
                break;
            case TYPE_FLOAT:
                output_row->elements[index].float_value = input_row.elements[i].float_value;
                break;
            case TYPE_STRING:
                strncpy(output_row->elements[index].string_value, input_row.elements[i].string_value, strlen(input_row.elements[i].string_value));
                break;
            case TYPE_DOUBLE:
                output_row->elements[index].double_value = input_row.elements[i].double_value;
                break;
        }

        index++;
    }

    return output_row;
}

/**
 *  @brief Apply projection to a list of rows, based on a list of attributes
 *  @param input_rows list of rows
 *  @param list list of attributes
 */
RowsLinkedList *ProjectionMultRows(int size, Row *input_rows, AttributeList list, Schema schema) {
    int i, j;
    Row *result;

    Schema new_schema;
    new_schema.num_cols = list.num_attributes;

    int index = 0;

    for (i = 0; i < list.num_attributes; i++) {
        int found = 0;
        for (j = 0; j < schema.num_cols; j++) {
            if (!strncmp(schema.cols_names[j], list.attributes[i].name, strlen(list.attributes[i].name))) {
                found = 1;
                strncpy(new_schema.cols_names[index], schema.cols_names[j], strlen(schema.cols_names[j]));
                new_schema.cols_names[index][strlen(schema.cols_names[j])] = '\0';
                new_schema.types[index] = schema.types[j];
                index++;
            }
        }
        if (!found) {
            fprintf(stderr, "[PROJECTION] Column %s not found\n", list.attributes[i].name);
            return NULL;
        }
    }

    struct RowsLinkedListElement *head = NULL;

    for (i = 0; i < size; i++) {

        result = Projection(input_rows[i], list, schema);
        struct RowsLinkedListElement *e = rs_malloc(sizeof(struct RowsLinkedListElement));
            CHECK_RSMALLOC(e, "ProjectionMultRows");
            e->next = NULL;
            e->row = result;

        if (head == NULL) {
            head = e;
        } else {
            // append row
            struct RowsLinkedListElement *cur = head;
            while (cur->next != NULL) {
                cur = cur->next;
            }
            cur->next = e;
        }

    }

    RowsLinkedList *ret_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(ret_list, "ProjectionMultRows");
    ret_list->schema = new_schema;
    ret_list->head = head;
    ret_list->size = size;

    return ret_list;
}

int Selection(Row input_row, Condition *condition, Schema schema) {
    return EvaluateCondition(condition, &input_row, schema);
}


/**
 *  @brief Apply selection to a list of rows, based on a condition
 *  @param input_rows list of rows
 *  @param condition pointer to a condition struct
 */
RowsLinkedList *SelectionMultRows(int size, Row *input_rows, Condition *condition, Schema schema) {
    int i, count = 0;

    struct RowsLinkedListElement *head = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(head, "SelectionMultRows");
    head->next = NULL;
    head->row = NULL;

    for (i = 0; i < size; i++) {
        if (Selection(input_rows[i], condition, schema)) {
            AppendRow(head, &input_rows[i]);
            count++;
        }
    }

    RowsLinkedList *list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(list, "SelectionMultRows");
    list->head = head;
    list->size = count;
    list->schema = schema;

    return list;
}

int compare_rows(const void *a, const void *b, void *arg) {
    const Row *entry1 = (const Row *)a;
    const Row *entry2 = (const Row *)b;
    struct CompareRowsData *data = (struct CompareRowsData *)arg;

    Type type1 = 0;
    Type type2 = 0;
    RowValue elem1 = get_element_from_row(entry1, data->col_name, data->schema, &type1);
    RowValue elem2 = get_element_from_row(entry2, data->col_name, data->schema, &type2);

    if (type1 != type2) {
        fprintf(stderr, "Comparing different types!");
        exit(EXIT_FAILURE);
    }

    return compare_elements(elem1, elem2, type1);
}

/**
 *  @brief Order a list of rows, based on the value of an attribute
 *  @param input_rows list of rows
 *  @param col_name name of the aOrderttribute
 */
RowsLinkedList *OrderBy(int size, Row *input_rows, const char *col_name, Schema schema) {
    int attribute_exists = 0, i;

    for (i = 0; i < input_rows[0].num_elements; i++) {
        if (!strncmp(schema.cols_names[i], col_name, strlen(col_name)))
            attribute_exists = 1;
    }

    if (!attribute_exists) {
        fprintf(stderr, "[ORDER BY] Column %s not found\n", col_name);
        return NULL;
    }

    struct CompareRowsData data = {.col_name = col_name, .schema = schema};

    struct RowsLinkedListElement *head = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(head, "OrderBy");
    head->row = NULL;
    head->next = NULL;

    qsort_r(input_rows, size, sizeof(Row), compare_rows, (void *)&data);

    for (int i = 0; i < size; i++) {
        AppendRow(head, &input_rows[i]);
    }

    RowsLinkedList *ret_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(ret_list, "OrderBy");
    ret_list->head = head;
    ret_list->size = size;
    ret_list->schema = schema;

    return ret_list;
}


/**
 *  @brief Group a list of rows, based on different values of an attribute
 *  @param input_rows list of rows
 *  @param col_name name of the attribute
 */
GroupsLinkedList *GroupBy(int size, Row *input_rows, const char *col_name, Schema schema) {
    RowsLinkedList *rows_list;
    RowValue last_value;
    int rows_count = 1, groups_count = 1, col_index = -1;
    struct GroupsLinkedListElement *groups_head;
    struct RowsLinkedListElement *rows_head;
    GroupsLinkedList *groups_list;

    Type type = 0;
    RowValue value = get_element_from_row(&input_rows[0], col_name, schema, &type); 

    struct CompareRowsData data = {.col_name = col_name, .schema = schema};

    // Order rows by the value of the specified attribute
    qsort_r(input_rows, size, sizeof(Row), compare_rows, (void *)&data);

    groups_head = rs_malloc(sizeof(struct GroupsLinkedListElement));
    CHECK_RSMALLOC(groups_head, "GroupBy");
    groups_head->rows_list = NULL;
    groups_head->next = NULL;

    rows_head = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(rows_head, "GroupBy");
    rows_head->row = NULL;
    rows_head->next = NULL;

    // first row goes in the first group
    AppendRow(rows_head, &input_rows[0]);
    last_value = input_rows[0].elements[col_index];

    for (int i = 1; i < size; i++) {
        if (compare_elements(input_rows[i].elements[col_index], last_value, type) == 0) {
            AppendRow(rows_head, &input_rows[i]);
            rows_count++;
            last_value = input_rows[i].elements[col_index];
        } else {
            // save group and create new one
            rows_list = rs_malloc(sizeof(RowsLinkedList));
            CHECK_RSMALLOC(rows_list, "GroupBy");
            rows_list->head = rows_head;
            rows_list->size = rows_count;

            AppendGroup(groups_head, rows_list);
            groups_count++;

            // reset variables
            rows_count = 0;
            rows_head = rs_malloc(sizeof(struct RowsLinkedListElement));
            CHECK_RSMALLOC(rows_head, "GroupBy");
            rows_head->row = NULL;
            rows_head->next = NULL;

            AppendRow(rows_head, &input_rows[i]);
            rows_count++;
            last_value = input_rows[i].elements[col_index];
        }
    }

    // save last group
    rows_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(rows_list, "GroupBy");
    rows_list->head = rows_head;
    rows_list->size = rows_count;
    rows_list->schema = schema;

    AppendGroup(groups_head, rows_list);

    groups_list = rs_malloc(sizeof(GroupsLinkedList));
    CHECK_RSMALLOC(groups_list, "GroupBy");
    groups_list->size = groups_count;
    groups_list->head = groups_head;
    groups_list->col_index = col_index;

    return groups_list;
}


/**
 *  @brief Apply an aggregate function to either a list of rows or a list of groups
 *  @param AggFunctionData input data, where TYPE_STD indicates a list of rows, while TYPE_GROUPED stands for a list of groups
 *  @param type aggregate function to be applied, it can be MIN, MAX, AVG, COUNT, SUM
 */
void *AggregateFunction(AggFunctionData input, AggregateFunctionType type, Schema schema) {
    int i, col_index;
    Row *input_list;
    double avg, sum, cnt;
    int index = 0;
    int attribute_exists = 0;

    RowsLinkedList *ret_list;
    AggFunctionResultValue *ret_value;

    switch (input.type) {
        case TYPE_ROWS:
/*
            ret_value = malloc(sizeof(AggFunctionResultValue));
            if (!ret_value) {
                perror("malloc");
                exit(EXIT_FAILURE);
            }

            input_list = input.input_data.rows_list;

            Type t = 0;
            RowValue val = get_element_from_row(&input_list[0], input.col_name, schema, &t);

            switch(type) {

                case MIN:
                    qsort_r(input_list, input.size, sizeof(Row), compare_rows, (void *)input.col_name);
                    index = get_index(input_list[0], input.col_name);
                    ret_value->type = input_list[0].elements[index].type;
                    switch(ret_value->type) {
                        case TYPE_INT:
                            ret_value->value.int_value = input_list[0].elements[index].value.int_value;
                            break;
                        case TYPE_LONG:
                            ret_value->value.long_value = input_list[0].elements[index].value.long_value;
                            break;
                        case TYPE_FLOAT:
                            ret_value->value.float_value = input_list[0].elements[index].value.float_value;
                            break;
                        case TYPE_STRING:
                            ret_value->value.string_value = input_list[0].elements[index].value.string_value;
                            break;
                        default:
                            fprintf(stderr, "Unknown type\n");
                            exit(EXIT_FAILURE);
                    }
                    return (void *)ret_value;
                case MAX:
                    qsort_r(input_list, input.size, sizeof(Row), compare_rows, (void *)input.col_name);
                    index = get_index(input_list[input.size - 1], input.col_name);
                    ret_value->type = input_list[input.size - 1].elements[index].type;
                    switch(ret_value->type) {
                        case TYPE_INT:
                            ret_value->value.int_value = input_list[input.size - 1].elements[index].value.int_value;
                            break;
                        case TYPE_LONG:
                            ret_value->value.long_value = input_list[input.size - 1].elements[index].value.long_value;
                            break;
                        case TYPE_FLOAT:
                            ret_value->value.float_value = input_list[input.size - 1].elements[index].value.float_value;
                            break;
                        case TYPE_STRING:
                            ret_value->value.string_value = input_list[input.size - 1].elements[index].value.string_value;
                            break;
                        default:
                            fprintf(stderr, "Unknown type\n");
                            exit(EXIT_FAILURE);
                    }
                    return (void *)ret_value;

                case AVG:
                    avg = compute_average(input.size, input_list, input.col_name);
                    if (avg < 0)
                        return NULL;
                    ret_value->type = TYPE_DOUBLE;
                    ret_value->value.double_value = avg;
                    return (void *)ret_value;

                case SUM:
                    sum = compute_sum(input.size, input_list, input.col_name);
                    if (sum < 0)
                        return NULL;
                    ret_value->type = TYPE_DOUBLE;
                    ret_value->value.double_value = sum;
                    return (void *)ret_value;

                case COUNT:
                    cnt = input.size;
                    ret_value->type = TYPE_INT;
                    ret_value->value.int_value = cnt;
                    return (void *)ret_value;

                default:
                    fprintf(stderr, "Unsupported aggregate function\n");
                    exit(EXIT_FAILURE);
            }

            return NULL;
*/
        case TYPE_GROUPS:

            col_index = get_index(*input.input_data.groups_list->head->rows_list->head->row, input.col_name, schema);

            ret_list = rs_malloc(sizeof(RowsLinkedList));
            CHECK_RSMALLOC(ret_list, "AggregateFunction");
            ret_list->head = NULL;
            ret_list->size = input.input_data.groups_list->size;
            ret_list->schema = schema;

            struct RowsLinkedListElement *last_row_element = NULL;
            struct GroupsLinkedListElement *group = input.input_data.groups_list->head;

            while (group != NULL) {

                // allocate new row
                Row *row = rs_malloc(sizeof(Row));
                CHECK_RSMALLOC(row, "AggregateFunction");
                memset(row, 0, sizeof(Row));

                RowValue group_row_element = group->rows_list->head->row->elements[input.input_data.groups_list->col_index];
                RowValue result_row_element;
                memset(&result_row_element, 0, sizeof(RowValue));
                Row *result;

                switch(type) {
                    case MIN:
                        result = FindMinFromLinkedList(group->rows_list, col_index);

                        result_row_element = result->elements[col_index];
                        break;

                    case MAX:
                        result = FindMaxFromLinkedList(group->rows_list, col_index);

                        result_row_element = result->elements[col_index];
                        break;

                    case AVG:
                        avg = ComputeAverageFromLinkedList(group->rows_list, col_index);

                        result_row_element.double_value = avg;
                        break;

                    case SUM:
                        sum = ComputeSumFromLinkedList(group->rows_list, col_index);

                        result_row_element.double_value = sum;
                        break;

                    case COUNT:
                        result_row_element.int_value = group->rows_list->size;
                        break;

                    default:
                        fprintf(stderr, "Unsupported aggregate function\n");
                        exit(EXIT_FAILURE);
                }

                row->elements[0] = group_row_element;
                row->elements[1] = result_row_element;
                row->num_elements = 2;

                struct RowsLinkedListElement *row_element = rs_malloc(sizeof(struct RowsLinkedListElement));
                CHECK_RSMALLOC(row_element, "AggregateFunction");
                row_element->row = row;
                row_element->next = NULL;

                if (last_row_element == NULL) {
                    ret_list->head = row_element;
                } else {
                    last_row_element->next = row_element;
                }
                last_row_element = row_element;

                group = group->next;
            }

            return (void *)ret_list;

        default:
            fprintf(stderr, "Unexpected input data type\n");
            exit(EXIT_FAILURE);
    }
}


Row *join_single_rows(Row *row1, Row *row2) {
    /*
    int i, j;

    Row *result_row = rs_malloc(sizeof(Row));
    CHECK_RSMALLOC(result_row, "join_single_rows");

    if (row1->num_elements + row2->num_elements > 19) {
        fprintf(stderr, "Join is currently not supported when the total size of elements in each row exceeds 19\n");
        exit(EXIT_FAILURE);
    }

    // Create table name in the format "row1.table_name join row2.table_name"
    strcpy(result_row->table_name, "joined table");

    for (i = 0; i < row1->num_elements; i++) {
        result_row->elements[i] = row1->elements[i];

        strcpy(result_row->elements[i].col_name, row1->table_name);
        strcat(result_row->elements[i].col_name, ".");
        strcat(result_row->elements[i].col_name, row1->elements[i].col_name);

        if (result_row->elements[i].type == TYPE_STRING) {
            strcpy(result_row->elements[i].value.string_value, row1->elements[i].value.string_value);
        }
    }

    for (j = 0; j < row2->num_elements; j++) {
        result_row->elements[i + j] = row2->elements[j];

        strcpy(result_row->elements[i + j].col_name, row2->table_name);
        strcat(result_row->elements[i + j].col_name, ".");
        strcat(result_row->elements[i + j].col_name, row2->elements[j].col_name);

        if (result_row->elements[i + j].type == TYPE_STRING) {
            strcpy(result_row->elements[i + j].value.string_value, row2->elements[j].value.string_value);
        }
    }

    result_row->num_elements = row1->num_elements + row2->num_elements;

    return result_row;
    */
}


/**
 * @brief Join two tables
 * @param list1 list of rows belonging to the first table
 * @param list2 list of rows belonging to the second table
 * @param schema joined schema, that merges the two tables schemas
 */
RowsLinkedList *Join(struct RowsLinkedListElement *head1, struct RowsLinkedListElement *head2, char *col1_name, char *col2_name) {
    int ret, count = 0;

    RowsLinkedList *ret_list;
    Row *result;

    struct RowsLinkedListElement *head = NULL;

    struct RowsLinkedListElement *list1_cur = head1;
    struct RowsLinkedListElement *list2_cur = head2;

    while (list1_cur != NULL) {
        while (list2_cur != NULL) {

            ret = are_equals(list1_cur->row, list2_cur->row, col1_name, col2_name);

            if (ret == -1) {
                return NULL;
            } else if (ret) {
                result = join_single_rows(list1_cur->row, list2_cur->row);

                if (head == NULL) {
                    head = rs_malloc(sizeof(struct RowsLinkedListElement));
                    CHECK_RSMALLOC(head, "Join");
                    head->next = NULL;
                    head->row = result;
                } else {
                    // append row
                    struct RowsLinkedListElement *new_elem = rs_malloc(sizeof(struct RowsLinkedListElement));
                    CHECK_RSMALLOC(new_elem, "Join");
                    new_elem->next = NULL;
                    new_elem->row = result;

                    struct RowsLinkedListElement* last = head;
                    while (last->next != NULL) {
                        last = last->next;
                    }
                    last->next = new_elem;
                }

                count++;
            }

            list2_cur = list2_cur->next;
        }
        list1_cur = list1_cur->next;
    }

    ret_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(ret_list, "Join");
    ret_list->head = head;
    ret_list->size = count;

    return ret_list;
}
