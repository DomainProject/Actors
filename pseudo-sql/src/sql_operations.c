#define _GNU_SOURCE

#include "sql_operations.h"
#include "include/pseudosql.h"

int compare_elements(const RowElement *elem1, const RowElement *elem2) {
    switch (elem1->type) {
        case TYPE_INT:
            return (elem1->value.int_value > elem2->value.int_value) - (elem1->value.int_value < elem2->value.int_value);
        case TYPE_LONG:
            return (elem1->value.long_value > elem2->value.long_value) - (elem1->value.long_value < elem2->value.long_value);
        case TYPE_FLOAT:
            return (elem1->value.float_value > elem2->value.float_value) - (elem1->value.float_value < elem2->value.float_value);
        case TYPE_STRING:
            return strcmp(elem1->value.string_value, elem2->value.string_value);
        default:
            fprintf(stderr, "Unsupported type\n");
            exit(EXIT_FAILURE);
    }
}

/**
 * @name Projection
 * @param input_row single row of a table
 * @param list list of attributes
 */
Row *Projection(Row input_row, AttributeList list) {
    int i, j, index;
    RowElement *row_elements;
    Row *output_row;

    row_elements = malloc(sizeof(RowElement) * list.num_attributes);
    if (!row_elements) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    output_row = malloc(sizeof(Row));
    if (!output_row) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    output_row->elements = row_elements;
    output_row->num_elements = list.num_attributes;
    output_row->table_name = input_row.table_name;

    index = 0;

    for (i = 0; i < input_row.num_elements; i++) {
        for (j = 0; j < list.num_attributes; j++) {
            if (!strcmp(input_row.elements[i].col_name, list.attributes[j].name)) {
                output_row->elements[index].col_name = strdup(input_row.elements[i].col_name);
                
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
                        output_row->elements[index].value.string_value = strdup(input_row.elements[i].value.string_value);
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
RowsList *ProjectionMultRows(RowsList input_rows, AttributeList list) {

    int i, j;

    for (i = 0; i < list.num_attributes; i++) {
        int found = 0;
        for (j = 0; j < input_rows.rows[0].num_elements; j++) {
            if (!strcmp(input_rows.rows[0].elements[j].col_name, list.attributes[i].name)) 
                found = 1;
        }
        if (!found) {
            fprintf(stderr, "Column %s not found\n", list.attributes[i].name);
            return NULL;
        }
    } 

    Row *rows = malloc(sizeof(Row) * input_rows.num_rows);
    if (!rows) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < input_rows.num_rows; i++) {
        rows[i] = *Projection(input_rows.rows[i], list);
    }

    RowsList *ret_list = malloc(sizeof(RowsList));
    if (!ret_list) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    ret_list->num_rows = input_rows.num_rows;
    ret_list->rows = rows;

    return ret_list;
}

int Selection(Row input_row, Condition *condition) {
    return EvaluateCondition(condition, &input_row);
}


/** 
 *  @brief Apply selection to a list of rows, based on a condition
 *  @param input_rows list of rows
 *  @param condition pointer to a condition struct 
 */
RowsList *SelectionMultRows(RowsList input_rows, Condition *condition) {

    int i, count = 0;

    Row *rows = malloc(sizeof(Row) * input_rows.num_rows);
    if (!rows) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    for (i = 0; i < input_rows.num_rows; i++) {
        if (Selection(input_rows.rows[i], condition)) {
            rows[count] = input_rows.rows[i];
            count++;
        }
    }

    RowsList *ret_list = malloc(sizeof(RowsList));
    if (!ret_list) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    ret_list->num_rows = count;
    ret_list->rows = rows;

    return ret_list;
}

int compare_rows(const void *a, const void *b, void *arg) {
    const Row *row1 = a;
    const Row *row2 = b;
    const char *col_name = (const char *)arg;
    RowElement *elem1 = NULL;
    RowElement *elem2 = NULL;

    for (int i = 0; i < row1->num_elements; i++) {
        if (strcmp(row1->elements[i].col_name, col_name) == 0) {
            elem1 = &row1->elements[i];
            break;
        }
    }

    for (int i = 0; i < row2->num_elements; i++) {
        if (strcmp(row2->elements[i].col_name, col_name) == 0) {
            elem2 = &row2->elements[i];
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
RowsList *OrderBy(RowsList input_rows, const char *col_name) {
    int attribute_exists = 0, i;

    for (i = 0; i < input_rows.rows[0].num_elements; i++) {
        if (!strcmp(input_rows.rows[0].elements[i].col_name, col_name)) 
            attribute_exists = 1;
    }

    if (!attribute_exists) {
        fprintf(stderr, "Attribute %s not found in OrderBy\n", col_name);
        return NULL;
    }

    Row *sorted_rows = malloc(sizeof(Row) * input_rows.num_rows);
    if (!sorted_rows) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    // keep the original input unchanged
    memcpy(sorted_rows, input_rows.rows, sizeof(Row) * input_rows.num_rows);

    qsort_r(sorted_rows, input_rows.num_rows, sizeof(Row), compare_rows, (void *)col_name);

    RowsList *ret_list = malloc(sizeof(RowsList));
    if (!ret_list) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    ret_list->num_rows = input_rows.num_rows;
    ret_list->rows = sorted_rows;

    return ret_list;
}


/** 
 *  @brief Group a list of rows, based on different values of an attribute
 *  @param input_rows list of rows
 *  @param col_name name of the attribute
 */
GroupsList *GroupBy(RowsList *rows_list, const char *col_name) {
    
    int col_index = -1;
    for (int i = 0; i < rows_list->rows[0].num_elements; i++) {
        if (strcmp(rows_list->rows[0].elements[i].col_name, col_name) == 0) {
            col_index = i;
            break;
        }
    }

    if (col_index == -1) {
        fprintf(stderr, "Attribute not found\n");
        return NULL;
    }

    // Order rows by the value of the specified attribute
    qsort_r(rows_list->rows, rows_list->num_rows, sizeof(Row), compare_rows, (void *)col_name);

    // Allocate memory for the groups
    Group *groups = malloc(rows_list->num_rows * sizeof(Group));
    if (!groups) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    int num_groups = 0;
    int current_group_index = 0;

    // Allocate first group
    groups[current_group_index].rows_list.rows = malloc(rows_list->num_rows * sizeof(Row));
    if (!groups[current_group_index].rows_list.rows) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    groups[current_group_index].rows_list.num_rows = 0;

    for (int i = 0; i < rows_list->num_rows; i++) {
        if (i == 0) {
            groups[current_group_index].rows_list.rows[groups[current_group_index].rows_list.num_rows++] = rows_list->rows[i];
        } else {
            if (compare_elements(&rows_list->rows[i].elements[col_index], &rows_list->rows[i - 1].elements[col_index]) == 0) {
                groups[current_group_index].rows_list.rows[groups[current_group_index].rows_list.num_rows++] = rows_list->rows[i];
            } else {
                current_group_index++;
                groups[current_group_index].rows_list.rows = malloc(rows_list->num_rows * sizeof(Row));
                if (!groups[current_group_index].rows_list.rows) {
                    perror("malloc");
                    exit(EXIT_FAILURE);
                }
                groups[current_group_index].rows_list.num_rows = 0;
                groups[current_group_index].rows_list.rows[groups[current_group_index].rows_list.num_rows++] = rows_list->rows[i];
            }
        }
    }

    num_groups = current_group_index + 1;

    groups = realloc(groups, num_groups * sizeof(Group));
    if (!groups) {
        perror("realloc");
        exit(EXIT_FAILURE);
    }

    GroupsList *groups_list = malloc(sizeof(GroupsList));
    if (!groups_list) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    groups_list->col_index = col_index;
    groups_list->num_groups = num_groups;
    groups_list->groups = groups;

    return groups_list;
}


/** 
 *  @brief Apply an aggregate function to either a list of rows or a list of groups
 *  @param AggFunctionData input data, where TYPE_STD indicates a list of rows, while TYPE_GROUPED stands for a list of groups
 *  @param type aggregate function to be applied, it can be MIN, MAX, AVG, COUNT, SUM
 */
void *AggregateFunction(AggFunctionData input, AggregateFunctionType type) {
    int i;
    Row *rows;
    int row_index = 0;
    RowsList input_list;
    double *avg = malloc(sizeof(double));
    double *sum = malloc(sizeof(double));
    int *cnt = malloc(sizeof(int));
    int index = 0;
    int attribute_exists = 0;

    AggFunctionResultValue *ret_value = malloc(sizeof(AggFunctionResultValue));
    if (!ret_value) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    if (!avg || !sum || !cnt) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    switch (input.type) {
        case TYPE_ROWS:
        input_list = input.input_data.rows;

        for (i = 0; i < input_list.rows[0].num_elements; i++) {
            if (!strcmp(input_list.rows[0].elements[i].col_name, input.col_name)) {
                attribute_exists = 1;
            }
        }

        if (!attribute_exists) {
            free(ret_value);
            free(avg);
            free(sum);
            free(cnt);

            fprintf(stderr, "Attribute %s not found\n", input.col_name);
            return NULL;
        }
        
            switch(type) {

                case MIN:
                    qsort_r(input_list.rows, input_list.num_rows, sizeof(Row), compare_rows, (void *)input.col_name);
                    index = get_index(input_list.rows[0], input.col_name);
                    ret_value->type = input_list.rows[0].elements[index].type;
                    switch(ret_value->type) {
                        case TYPE_INT:
                            ret_value->value.int_value = input_list.rows[0].elements[index].value.int_value;
                            break;
                        case TYPE_LONG:
                            ret_value->value.long_value = input_list.rows[0].elements[index].value.long_value;
                            break;
                        case TYPE_FLOAT:
                            ret_value->value.float_value = input_list.rows[0].elements[index].value.float_value;
                            break;
                        case TYPE_STRING:
                            ret_value->value.string_value = input_list.rows[0].elements[index].value.string_value;
                            break;
                        default:
                            fprintf(stderr, "Unknown type\n");
                            exit(EXIT_FAILURE);
                    }
                    return (void *)ret_value;
                case MAX:
                    qsort_r(input_list.rows, input_list.num_rows, sizeof(Row), compare_rows, (void *)input.col_name);
                    index = get_index(input_list.rows[input_list.num_rows - 1], input.col_name);
                    ret_value->type = input_list.rows[input_list.num_rows - 1].elements[index].type;
                    switch(ret_value->type) {
                        case TYPE_INT:
                            ret_value->value.int_value = input_list.rows[input_list.num_rows - 1].elements[index].value.int_value;
                            break;
                        case TYPE_LONG:
                            ret_value->value.long_value = input_list.rows[input_list.num_rows - 1].elements[index].value.long_value;
                            break;
                        case TYPE_FLOAT:
                            ret_value->value.float_value = input_list.rows[input_list.num_rows - 1].elements[index].value.float_value;
                            break;
                        case TYPE_STRING:
                            ret_value->value.string_value = input_list.rows[input_list.num_rows - 1].elements[index].value.string_value;
                            break;
                        default:
                            fprintf(stderr, "Unknown type\n");
                            exit(EXIT_FAILURE);
                    }
                    return (void *)ret_value;

                case AVG:
                    *avg = compute_average(input_list, input.col_name);
                    if (*avg < 0) 
                        return NULL;
                    ret_value->type = TYPE_DOUBLE;
                    ret_value->value.double_value = *avg;
                    return (void *)ret_value;

                case SUM:
                    *sum = compute_sum(input_list, input.col_name);
                    if (*sum < 0)
                        return NULL;
                    ret_value->type = TYPE_DOUBLE;
                    ret_value->value.double_value = *sum;
                    return (void *)ret_value;

                case COUNT:
                    cnt = &input_list.num_rows;
                    ret_value->type = TYPE_INT;
                    ret_value->value.int_value = *cnt;
                    return (void *)ret_value;

                default:
                    fprintf(stderr, "Unsupported aggregate function\n");
                    exit(EXIT_FAILURE);
            }

        case TYPE_GROUPS:

            for (i = 0; i < input.input_data.groups.groups[0].rows_list.rows[0].num_elements; i++) {
                if (!strcmp(input.input_data.groups.groups[0].rows_list.rows[0].elements[i].col_name, input.col_name)) {
                    attribute_exists = 1;
                }
            }

            if (!attribute_exists) {
                free(ret_value);
                free(avg);
                free(sum);
                free(cnt);

                fprintf(stderr, "Attribute %s not found\n", input.col_name);
                return NULL;
            }

            rows = malloc(input.input_data.groups.num_groups * sizeof(Row));   

            for (i = 0; i < input.input_data.groups.num_groups; i++) {
                Group cur_group = input.input_data.groups.groups[i];

                RowElement *elements = malloc(2 * sizeof(RowElement));
                if (!elements) {
                    perror("malloc");
                    exit(EXIT_FAILURE);
                }

                RowElement group_row_element = cur_group.rows_list.rows[0].elements[input.input_data.groups.col_index]; 
                RowElement result_row_element;

                int index = get_index(cur_group.rows_list.rows[0], input.col_name);

                // aggregate function element
                result_row_element.col_name = input.col_name;

                switch(type) {
                    case MIN:
                        qsort_r(cur_group.rows_list.rows, cur_group.rows_list.num_rows, sizeof(Row), compare_rows, (void *)input.col_name);
                        
                        result_row_element.type = cur_group.rows_list.rows[0].elements[index].type;
                        result_row_element.value = cur_group.rows_list.rows[0].elements[index].value;
                        break;
                    
                    case MAX:
                        qsort_r(cur_group.rows_list.rows, cur_group.rows_list.num_rows, sizeof(Row), compare_rows, (void *)input.col_name);
                        
                        result_row_element.type = cur_group.rows_list.rows[0].elements[index].type;
                        result_row_element.value = cur_group.rows_list.rows[cur_group.rows_list.num_rows - 1].elements[index].value;      
                        break;

                    case AVG:
                        *avg = compute_average(cur_group.rows_list, input.col_name);
                        
                        result_row_element.type = TYPE_DOUBLE;
                        result_row_element.value.double_value = *avg;
                        break;
                    
                    case SUM:
                        *sum = compute_sum(cur_group.rows_list, input.col_name);

                        result_row_element.type = TYPE_DOUBLE;
                        result_row_element.value.double_value = *sum;
                        break;
                    
                    case COUNT:
                        result_row_element.type = TYPE_INT;
                        result_row_element.value.int_value = cur_group.rows_list.num_rows;
                        break;

                    default:
                        fprintf(stderr, "Unsupported aggregate function\n");
                        exit(EXIT_FAILURE);
                }

                elements[0] = group_row_element;
                elements[1] = result_row_element;

                Row row = {.elements = elements, .num_elements = 2, .table_name = cur_group.rows_list.rows[0].table_name};

                rows[row_index] = row;
                row_index++;
            }

            RowsList *ret_list = malloc(sizeof(RowsList));
            if (!ret_list) {
                perror("malloc");
                exit(EXIT_FAILURE);
            }

            ret_list->num_rows = row_index;
            ret_list->rows = rows;

            return ret_list;

        default:
            fprintf(stderr, "Unexpected input data type\n");
            exit(EXIT_FAILURE);
    } 
}

Row join_single_rows(Row row1, Row row2) {
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
