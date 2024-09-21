#define _GNU_SOURCE

#include "sql_operations.h"
#include "include/pseudosql.h"

int compare_elements(const RowElementNew *elem1, const RowElementNew *elem2) {
    switch (elem1->type) {
        case TYPE_INT:
            return (elem1->value.int_value > elem2->value.int_value) - (elem1->value.int_value < elem2->value.int_value);
        case TYPE_LONG:
            return (elem1->value.long_value > elem2->value.long_value) - (elem1->value.long_value < elem2->value.long_value);
        case TYPE_FLOAT:
            return (elem1->value.float_value > elem2->value.float_value) - (elem1->value.float_value < elem2->value.float_value);
        case TYPE_STRING:
            return strcmp(elem1->value.string_value, elem2->value.string_value);
        case TYPE_DOUBLE:
            return (elem1->value.double_value > elem2->value.double_value) - (elem1->value.double_value < elem2->value.double_value);
        default:
            fprintf(stderr, "Unsupported type %d\n", elem1->type);
            exit(EXIT_FAILURE);
    }
}

/**
 * @name Projection
 * @param input_row single row of a table
 * @param list list of attributes
 */
RowNew *Projection(RowNew input_row, AttributeList list) {
    int i, j, index;
    RowNew *output_row;

    output_row = malloc(sizeof(RowNew));
    if (!output_row) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    output_row->num_elements = list.num_attributes;
    strcpy(output_row->table_name, strdup(input_row.table_name));

    index = 0;

    for (i = 0; i < input_row.num_elements; i++) {
        for (j = 0; j < list.num_attributes; j++) {
            if (!strncmp(input_row.elements[i].col_name, list.attributes[j].name, strlen(list.attributes[j].name))) {
                strcpy(output_row->elements[index].col_name, input_row.elements[i].col_name);
                
                switch (input_row.elements[i].type) {
                    case TYPE_INT:
                        output_row->elements[index].value.int_value = input_row.elements[i].value.int_value;
                        break;
                    case TYPE_LONG:
                        output_row->elements[index].value.long_value = input_row.elements[i].value.long_value;
                        break;
                    case TYPE_FLOAT:
                        output_row->elements[index].value.float_value = input_row.elements[i].value.float_value;
                        break;
                    case TYPE_STRING:
                        strcpy(output_row->elements[index].value.string_value, input_row.elements[i].value.string_value);
                        break;
                    case TYPE_DOUBLE:
                        output_row->elements[index].value.double_value = input_row.elements[i].value.double_value;
                        break;
                }

                output_row->elements[index].type = input_row.elements[i].type;

                index++;
                break;
            }
        }
    }

    return output_row;
}

/** 
 *  @brief Apply projection to a list of rows, based on a list of attributes
 *  @param input_rows list of rows
 *  @param list list of attributes
 */
RowsLinkedList *ProjectionMultRows(int size, RowNew *input_rows, AttributeList list) {
    int i, j;

    for (i = 0; i < list.num_attributes; i++) {
        int found = 0;
        for (j = 0; j < input_rows[0].num_elements; j++) {
            if (!strncmp(input_rows[0].elements[j].col_name, list.attributes[i].name, strlen(list.attributes[i].name))) 
                found = 1;
        }
        if (!found) {
            fprintf(stderr, "[PROJECTION] Column %s not found\n", list.attributes[i].name);
            return NULL;
        }
    } 

    struct RowsLinkedListElement *head = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(head, "ProjectionMultRows");
    head->row = NULL;
    head->next = NULL;

    for (int i = 0; i < size; i++) {
        AppendRow(head, Projection(input_rows[i], list));
    }

    RowsLinkedList *ret_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(ret_list, "ProjectionMultRows");
    ret_list->head = head;
    ret_list->size = size;

    return ret_list;
}

int Selection(RowNew input_row, Condition *condition) {
    return EvaluateCondition(condition, &input_row);
}


/** 
 *  @brief Apply selection to a list of rows, based on a condition
 *  @param input_rows list of rows
 *  @param condition pointer to a condition struct 
 */
RowsLinkedList *SelectionMultRows(int size, RowNew *input_rows, Condition *condition) {
    int i, count = 0;

    struct RowsLinkedListElement *head = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(head, "SelectionMultRows");
    head->next = NULL;
    head->row = NULL;

    for (i = 0; i < size; i++) {
        if (Selection(input_rows[i], condition)) {
            AppendRow(head, &input_rows[i]);
            count++;
        }
    }

    RowsLinkedList *list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(list, "SelectionMultRows");
    list->head = head;
    list->size = count;

    return list;
}

int compare_rows(const void *a, const void *b, void *arg) {
    const RowNew *entry1 = (const RowNew *)a;
    const RowNew *entry2 = (const RowNew *)b;
    char *col_name = (char *)arg;
    const RowElementNew *elem1 = NULL;
    const RowElementNew *elem2 = NULL;

    for (int i = 0; i < entry1->num_elements; i++) {
        if (strncmp(entry1->elements[i].col_name, col_name, strlen(col_name)) == 0) {
            elem1 = &entry1->elements[i];
            break;
        }
    }

    for (int i = 0; i < entry2->num_elements; i++) {
        if (strncmp(entry2->elements[i].col_name, col_name, strlen(col_name)) == 0) {
            elem2 = &entry2->elements[i];
            break;
        }
    }

    if (!elem1 || !elem2) {
        fprintf(stderr, "Column %s not found\n", col_name);
        exit(EXIT_FAILURE);
    }

    return compare_elements(elem1, elem2);
}


/** 
 *  @brief Order a list of rows, based on the value of an attribute
 *  @param input_rows list of rows
 *  @param col_name name of the aOrderttribute
 */
RowsLinkedList *OrderBy(int size, RowNew *input_rows, const char *col_name) {
    int attribute_exists = 0, i;

    for (i = 0; i < input_rows[0].num_elements; i++) {
        if (!strncmp(input_rows[0].elements[i].col_name, col_name, strlen(col_name))) 
            attribute_exists = 1;
    }

    if (!attribute_exists) {
        fprintf(stderr, "[ORDER BY] Column %s not found\n", col_name);
        return NULL;
    }

    struct RowsLinkedListElement *head = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(head, "OrderBy");
    head->row = NULL;
    head->next = NULL;

    qsort_r(input_rows, size, sizeof(RowNew), compare_rows, (void *)col_name);

    for (int i = 0; i < size; i++) {
        AppendRow(head, &input_rows[i]);
    }

    RowsLinkedList *ret_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(ret_list, "OrderBy");
    ret_list->head = head;
    ret_list->size = size;

    return ret_list;
}

Row deep_copy_row(Row *original_row) {
    Row new_row;
    new_row.num_elements = original_row->num_elements;
    new_row.elements = malloc(new_row.num_elements * sizeof(RowElement));
    
    if (!new_row.elements) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    
    for (int i = 0; i < new_row.num_elements; i++) {
        new_row.elements[i].col_name = strdup(original_row->elements[i].col_name);
        if (original_row->elements[i].type == TYPE_STRING) {
            new_row.elements[i].value.string_value = strdup(original_row->elements[i].value.string_value);
        } else {
            new_row.elements[i].value = original_row->elements[i].value;
        }
    }

    return new_row;
}


/** 
 *  @brief Group a list of rows, based on different values of an attribute
 *  @param input_rows list of rows
 *  @param col_name name of the attribute
 */
GroupsLinkedList *GroupBy(int size, RowNew *input_rows, const char *col_name) {
    RowsLinkedList *rows_list;
    RowElementNew last_element;
    int rows_count = 1, groups_count = 1, col_index = -1;
    struct GroupsLinkedListElement *groups_head;
    struct RowsLinkedListElement *rows_head;
    GroupsLinkedList *groups_list;

    for (int i = 0; i < input_rows[0].num_elements; i++) {
        if (strncmp(input_rows[0].elements[i].col_name, col_name, strlen(col_name)) == 0) {
            col_index = i;
            break;
        }
    }

    if (col_index == -1) {
        fprintf(stderr, "[GROUP BY] Column %s not found\n", col_name);
        return NULL;
    }

    // Order rows by the value of the specified attribute
    qsort_r(input_rows, size, sizeof(RowNew), compare_rows, (void *)col_name);

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
    last_element = input_rows[0].elements[col_index];

    for (int i = 1; i < size; i++) {
        if (compare_elements(&input_rows[i].elements[col_index], &last_element) == 0) {
            AppendRow(rows_head, &input_rows[i]);
            rows_count++;
            last_element = input_rows[i].elements[col_index];
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
            last_element = input_rows[i].elements[col_index];
        }
    }

    // save last group
    rows_list = rs_malloc(sizeof(RowsLinkedList));
    CHECK_RSMALLOC(rows_list, "GroupBy");
    rows_list->head = rows_head;
    rows_list->size = rows_count;

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
void *AggregateFunction(AggFunctionData input, AggregateFunctionType type) {
    int i;
    RowNew *input_list;
    double avg, sum, cnt;
    int index = 0;
    int attribute_exists = 0;

    RowsLinkedList *ret_list;
    AggFunctionResultValue *ret_value;

    switch (input.type) {
        case TYPE_ROWS:

            ret_value = malloc(sizeof(AggFunctionResultValue));
            if (!ret_value) {
                perror("malloc");
                exit(EXIT_FAILURE);
            }

            input_list = input.input_data.rows_list;

            for (i = 0; i < input.size; i++) {
                if (!strncmp(input_list[0].elements[i].col_name, input.col_name, strlen(input.col_name))) {
                    attribute_exists = 1;
                }
            }

            if (!attribute_exists) {
                free(ret_value);
                fprintf(stderr, "[AGGREGATE FUNCTION] Column %s not found\n", input.col_name);
                return NULL;
            }
        
            switch(type) {

                case MIN:
                    qsort_r(input_list, input.size, sizeof(RowNew), compare_rows, (void *)input.col_name);
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
                    qsort_r(input_list, input.size, sizeof(RowNew), compare_rows, (void *)input.col_name);
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

        case TYPE_GROUPS:

            for (i = 0; i < input.input_data.groups_list->head->rows_list->head->row->num_elements; i++) {
                if (!strncmp(input.input_data.groups_list->head->rows_list->head->row->elements[i].col_name, input.col_name, strlen(input.col_name))) {
                    attribute_exists = 1;
                    break;
                }
            }

            int col_index = get_index(*input.input_data.groups_list->head->rows_list->head->row, input.col_name);

            if (!attribute_exists) {
                fprintf(stderr, "[AGGREGATE FUNCTION] Column %s not found\n", input.col_name);
                return NULL;
            }

            ret_list = rs_malloc(sizeof(RowsLinkedList));
            CHECK_RSMALLOC(ret_list, "AggregateFunction");
            ret_list->head = NULL;
            ret_list->size = input.input_data.groups_list->size;

            struct RowsLinkedListElement *last_row_element = NULL;
            struct GroupsLinkedListElement *group = input.input_data.groups_list->head;

            while (group != NULL) {

                // allocate new row
                RowNew *row = rs_malloc(sizeof(RowNew));
                CHECK_RSMALLOC(row, "AggregateFunction");

                RowElementNew group_row_element = group->rows_list->head->row->elements[input.input_data.groups_list->col_index];
                RowElementNew result_row_element;

                RowNew *rows_list = GetRowsArrayFromRowsLinkedList(group->rows_list);

                switch(type) {
                    case MIN:
                        qsort_r(rows_list, group->rows_list->size, sizeof(RowNew), compare_rows, (void *)input.col_name);
                        
                        result_row_element.type = rows_list[0].elements[col_index].type;
                        result_row_element.value = rows_list[0].elements[col_index].value;
                        sprintf(result_row_element.col_name, "MIN(%s)", input.col_name);
                        break;
                    
                    case MAX:
                        qsort_r(rows_list, group->rows_list->size, sizeof(RowNew), compare_rows, (void *)input.col_name);
                        
                        result_row_element.type = rows_list[group->rows_list->size - 1].elements[col_index].type;
                        result_row_element.value = rows_list[group->rows_list->size - 1].elements[col_index].value;      
                        sprintf(result_row_element.col_name, "MAX(%s)", input.col_name);
                        break;

                    case AVG:
                        avg = compute_average(group->rows_list->size, rows_list, input.col_name);
                        
                        result_row_element.type = TYPE_DOUBLE;
                        result_row_element.value.double_value = avg;
                        sprintf(result_row_element.col_name, "AVG(%s)", input.col_name);
                        break;
                    
                    case SUM:
                        sum = compute_sum(group->rows_list->size, rows_list, input.col_name);

                        result_row_element.type = TYPE_DOUBLE;
                        result_row_element.value.double_value = sum;
                        sprintf(result_row_element.col_name, "SUM(%s)", input.col_name);
                        break;
                    
                    case COUNT:
                        result_row_element.type = TYPE_INT;
                        result_row_element.value.int_value = group->rows_list->size;
                        sprintf(result_row_element.col_name, "COUNT(%s)", input.col_name);
                        break;

                    default:
                        fprintf(stderr, "Unsupported aggregate function\n");
                        exit(EXIT_FAILURE);
                }

                row->elements[0] = group_row_element;
                row->elements[1] = result_row_element;
                row->num_elements = 2; 
                strcpy(row->table_name, group->rows_list->head->row->table_name);

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

                munmap(ret_list, ret_list->size * sizeof(RowNew));
                group = group->next;
            }

            return (void *)ret_list;

        default:
            fprintf(stderr, "Unexpected input data type\n");
            exit(EXIT_FAILURE);
    } 
}

Row join_single_rows(Row row1, Row row2) {
    Row row;
    return row;
    /*
    int i, j;

    RowElement *elements = malloc((row1.num_elements + row2.num_elements) * sizeof(RowElement));
    if (!elements) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    Row *row = malloc(sizeof(Row));
    if (!row) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    row->num_elements = row1.num_elements + row2.num_elements;
    
    // Create table name in the format "row1.table_name join row2.table_name"
    size_t table_name_len = strlen(row1.table_name) + strlen(row2.table_name) + 6 + 2; 
    row->table_name = malloc(table_name_len);
    if (!row->table_name) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    strcpy(row->table_name, row1.table_name);
    strcat(row->table_name, " join ");
    strcat(row->table_name, row2.table_name);

    for (i = 0; i < row1.num_elements; i++) {
        elements[i] = row1.elements[i];

        size_t prefix_len = strlen(row1.table_name) + 1; // +1 for the '.'
        size_t col_name_len = strlen(row1.elements[i].col_name);
        elements[i].col_name = malloc(prefix_len + col_name_len + 1); // +1 for the '\0'
        if (!elements[i].col_name) {
            perror("malloc");
            exit(EXIT_FAILURE);
        }
        strcpy(elements[i].col_name, row1.table_name);
        strcat(elements[i].col_name, ".");
        strcat(elements[i].col_name, row1.elements[i].col_name);

        if (elements[i].type == TYPE_STRING) {
            elements[i].value.string_value = strdup(row1.elements[i].value.string_value);
        }
    }

    for (j = 0; j < row2.num_elements; j++) {
        elements[i + j] = row2.elements[j];

        size_t prefix_len = strlen(row2.table_name) + 1; // +1 for the '.'
        size_t col_name_len = strlen(row2.elements[j].col_name);
        elements[i + j].col_name = malloc(prefix_len + col_name_len + 1); // +1 for the '\0'
        if (!elements[i + j].col_name) {
            perror("malloc");
            exit(EXIT_FAILURE);
        }
        strcpy(elements[i + j].col_name, row2.table_name);
        strcat(elements[i + j].col_name, ".");
        strcat(elements[i + j].col_name, row2.elements[j].col_name);

        if (elements[i + j].type == TYPE_STRING) {
            elements[i + j].value.string_value = strdup(row2.elements[j].value.string_value);
        }
    }

    row->elements = elements;
    return *row;
    */
}

/**
 * @brief Join two tables
 * @param list1 list of rows belonging to the first table
 * @param list2 list of rows belonging to the second table
 * @param schema joined schema, that merges the two tables schemas
 */
RowsList *Join(RowsList list1, RowsList list2, char *col1_name, char *col2_name) {

    int ret;

    Row *rows = malloc(list1.num_rows * list2.num_rows * sizeof(Row));
    if (!rows) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    int i, j, count = 0;

    for (i = 0; i < list1.num_rows; i++) {
        for (j = 0; j < list2.num_rows; j++) {

            ret = are_equals(list1.rows[i], list2.rows[j], col1_name, col2_name);

            if (ret == -1) {
                return NULL;
            } else if (ret) {
                rows[count++] = join_single_rows(list1.rows[i], list2.rows[j]);
            }
        }
    }

    rows = realloc(rows, count * sizeof(Row));

    RowsList *list = malloc(sizeof(RowsList));
    if (!list) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    list->num_rows = count;
    list->rows = rows;

    return list;
}
