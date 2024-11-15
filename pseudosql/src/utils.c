#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdint.h>
#include <sys/mman.h>


#include "utils.h"

void remove_quotes(char* str) {
    unsigned len = strlen(str);
    int j = 0;

    for (unsigned i = 0; i < len; i++) {
        if (str[i] != '"') {
            str[j++] = str[i];
        }
    }
    str[j] = '\0';
}

int is_integer(const char *str) {
    if (*str == '\0') return 0;

    if (*str == '-' || *str == '+') str++;

    while (*str) {
        if (!isdigit(*str)) return 0;
        str++;
    }
    return 1;
}

int is_float(const char *str) {
    int has_decimal_point = 0;
    int count = 0;

    if (*str == '\0') {
        return 0;
    }

    if (*str == '-' || *str == '+') str++;

    while (*str) {
        if (*str == '.') {
            if (has_decimal_point) {
                return 0;
                count++;
            }
            has_decimal_point = 1;
        } else if (!isdigit(*str) && count == 0) {
            return 0;
        }
        str++;
        count++;
    }

    return has_decimal_point;
}

int is_valid_date_format(const char *str) {
    while (isspace((unsigned char)*str)) {
        str++;
    }

    if (strlen(str) < 19) return 0;

    for (int i = 0; i < 19; i++) {
        if ((i == 4 || i == 7) && str[i] != '-') return 0;
        if ((i == 13 || i == 16) && str[i] != ':') return 0;
        if (i == 10 && str[i] != ' ') return 0;
        if ((i != 4 && i != 7 && i != 10 && i != 13 && i != 16) && !isdigit((unsigned char)str[i])) return 0;
    }

    str += 19;

    while (isspace((unsigned char)*str)) {
        str++;
    }

    if (*str != '\0') return 0;

    return 1;
}

time_t convert_to_unix_timestamp(const char *datetime_str) {
    struct tm time_struct = {0};

    sscanf(datetime_str, "%4d-%2d-%2d %2d:%2d:%2d",
           &time_struct.tm_year,
           &time_struct.tm_mon,
           &time_struct.tm_mday,
           &time_struct.tm_hour,
           &time_struct.tm_min,
           &time_struct.tm_sec);

    time_struct.tm_year -= 1900;
    time_struct.tm_mon -= 1;

    return mktime(&time_struct);
}

void PrintSchema(const Schema *schema) {
    for (int i = 0; i < schema->num_cols; i++) {
        printf("Column %d: %s\n", i + 1, schema->cols_names[i]);
    }
}

void InitializeSchema(Schema *schema, char *header, char *second_line) {
    int num_columns = 0;
    for (int i = 0; header[i] != '\0'; i++) {
        if (header[i] == ',') {
            num_columns++;
        }
    }
    num_columns++;

    schema->num_cols = num_columns;

    char *saveptr = NULL;
    char *saveptr_line = NULL;
    char *header_token = strtok_r(header, ",", &saveptr);
    char *line_token = strtok_r(second_line, ",", &saveptr_line);

    int column_index = 0;

    while (header_token != NULL) {
        remove_quotes(header_token);

        strcpy(schema->cols_names[column_index], header_token);

        if (is_integer(line_token)) {
            schema->types[column_index] = TYPE_INT;
        } else if (is_float(line_token)) {
            schema->types[column_index] = TYPE_FLOAT;
        } else {
            if(is_valid_date_format(line_token)) {
                schema->types[column_index] = TYPE_LONG;
            } else {
                schema->types[column_index] = TYPE_STRING;
            }
        }

        line_token = strtok_r(NULL, ",", &saveptr_line);
        header_token = strtok_r(NULL, ",", &saveptr);
        column_index++;
    }
}

void FreeSchema(Schema *schema) {
    for (int i = 0; i < schema->num_cols; i++) {
        free(schema->cols_names[i]);
    }
    free(schema->cols_names);
}

/*
void PrintRow(const Row *row) {
    for (int i = 0; i < row->num_elements; i++) {
        printf("Name: %s, Table: %s, ", row->elements[i].col_name, row->table_name);
        switch (row->elements[i].type) {
            case TYPE_INT:
                printf("Value: %d, Type: TYPE_INT\n", row->elements[i].value.int_value);
                break;
            case TYPE_LONG:
                printf("Value: %ld, Type: TYPE_LONG\n", row->elements[i].value.long_value);
                break;
            case TYPE_FLOAT:
                printf("Value: %f, Type: TYPE_FLOAT\n", row->elements[i].value.float_value);
                break;
            case TYPE_STRING:
                printf("Value: %s, Type: TYPE_STRING\n", row->elements[i].value.string_value);
                break;
            case TYPE_DOUBLE:
                printf("Value: %f, Type: TYPE_DOUBLE\n", row->elements[i].value.double_value);
                break;
            default:
                break;
        }
    }
    puts("");
}
*/

static __thread char *populate_save_ptr = NULL;

void PopulateRow(char *row_string, Row *row, Schema schema) {
    char *copy = strdup(row_string);
    char *token = strtok_r(copy, ",", &populate_save_ptr);

    row->num_elements = NUM_ELEMENTS_ROW;

    int column_index = 0;
    while (token != NULL && column_index < schema.num_cols) {
        char *value_str = strdup(token);

        if (is_integer(value_str)) {
            row->elements[column_index].int_value = atoi(value_str);
        } else if (is_float(value_str)) {
            row->elements[column_index].float_value = atof(value_str);
        } else {
            /* if value_str represents a date, save it as UNIX timestamp */
            if(is_valid_date_format(value_str)) {
                row->elements[column_index].long_value = convert_to_unix_timestamp(value_str);
            } else {
                strcpy(row->elements[column_index].string_value, value_str);
            }
        }

        free(value_str);
        token = strtok_r(NULL, ",", &populate_save_ptr);
        column_index++;
    }

    free(copy);
}

int get_index(Row row, char *col_name, Schema schema) {
    for (int i = 0; i < row.num_elements; i++) {
        if (!strncmp(schema.cols_names[i], col_name, strlen(col_name)))
            return i;
    }

    fprintf(stderr, "Column %s not found\n", col_name);
    exit(EXIT_FAILURE);
}

double compute_average(int size, Row *list, char *col_name) {
    int count = 0, index, i;
    double sum = 0.0;
/*
    index = get_index(list[0], col_name);

    if (list[0].elements[index].type == TYPE_STRING) {
        fprintf(stderr, "Average is not defined for strings\n");
        return -1.0;
    }

    for (i = 0; i < size; i++) {
        count++;
        switch(list[i].elements[index].type) {
            case TYPE_FLOAT:
                sum += (double)list[i].elements[index].value.float_value;
                break;
            case TYPE_INT:
                sum += (double)list[i].elements[index].value.int_value;
                break;
            case TYPE_LONG:
                sum += (double)list[i].elements[index].value.long_value;
                break;
            case TYPE_DOUBLE:
                sum += list[i].elements[index].value.double_value;
                break;
            default:
                break;
        }
    }
*/
    //return sum / count;
    return sum;
}

double compute_sum(int size, Row *list, char *col_name) {
    int index, i;
    double sum = 0.0;
/*
    index = get_index(list[0], col_name);

    if (list[0].elements[index].type == TYPE_STRING) {
        fprintf(stderr, "Sum is not defined for strings\n");
        return -1.0;
    }

    for (i = 0; i < size; i++) {
        switch(list[i].elements[index].type) {
            case TYPE_FLOAT:
                sum += (double)list[i].elements[index].value.float_value;
                break;
            case TYPE_INT:
                sum += (double)list[i].elements[index].value.int_value;
                break;
            case TYPE_LONG:
                sum += (double)list[i].elements[index].value.long_value;
                break;
            case TYPE_DOUBLE:
                sum += (double)list[i].elements[index].value.long_value;
                break;
            default:
                break;
        }
    }
*/
    return sum;
}


int are_equals(Row *row1, Row *row2, char *col1_name, char *col2_name) {
    int index1, index2;

    //index1 = get_index(*row1, col1_name);
    //index2 = get_index(*row2, col2_name);

    if (index1 == -1 || index2 == -1) {
        return -1;
    }

/*
    switch(row1->elements[index1].type) {
        case TYPE_INT:
            return row1->elements[index1].value.int_value == row2->elements[index2].value.int_value;
        case TYPE_LONG:
            return row1->elements[index1].value.long_value == row2->elements[index2].value.long_value;
        case TYPE_FLOAT:
            return row1->elements[index1].value.float_value == row2->elements[index2].value.float_value;
        case TYPE_STRING:
            if (!strcmp(row1->elements[index1].value.string_value, row2->elements[index2].value.string_value))
                return 1;
            return 0;
        default:
            fprintf(stderr, "Unexpected type\n");
            exit(EXIT_FAILURE);
    }
    */
   return 0;
}


void AppendRow(struct RowsLinkedListElement* head, Row *row) {

    if (head == NULL) {
        fprintf(stderr, "invalid list head\n");
        return;
    }

    // Allocate memory for node
    struct RowsLinkedListElement* new_node = rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(new_node, "AppendRow");
    memset(new_node, 0, sizeof(*new_node));
    new_node->next = NULL;

    new_node->row = rs_malloc(sizeof(Row));
    CHECK_RSMALLOC(new_node->row, "AppendRow");

    // Copy contents of data to newly allocated memory.
    memcpy(new_node->row, row, sizeof(Row));

    // append row
    struct RowsLinkedListElement* last = head;
    while (last->next != NULL) {
        last = last->next;
    }
    last->next = new_node;
}

void AppendGroup(struct GroupsLinkedListElement* head, RowsLinkedList *rows) {
    if (head == NULL) {
        return;
    }

    // Allocate memory for node
    struct GroupsLinkedListElement* new_node = (struct GroupsLinkedListElement*)rs_malloc(sizeof(struct GroupsLinkedListElement));
    CHECK_RSMALLOC(new_node, "AppendGroup");

    new_node->rows_list = rows;
    new_node->next = NULL;

    struct GroupsLinkedListElement* last = head;
    while (last->next != NULL) {
        last = last->next;
    }
    last->next = new_node;
}

void FreeList(RowsLinkedList* list) {
    if (list == NULL) {
        return;
    }

    struct RowsLinkedListElement *tmp = list->head;

    while(tmp != NULL) {
        struct RowsLinkedListElement *next = tmp->next;

        if (tmp->row != NULL) {
            rs_free(tmp->row);
        }
        rs_free(tmp);

        tmp = next;
    }

    rs_free(list);
}

void FreeGroup(GroupsLinkedList *list) {
    if (list == NULL) {
        fprintf(stderr, "Invalid list pointer\n");
        return;
    }

    struct GroupsLinkedListElement *tmp = list->head;

    while (tmp != NULL) {
        struct GroupsLinkedListElement *next = tmp->next;

        FreeList(tmp->rows_list);
        rs_free(tmp);

        tmp = next;
    }

    rs_free(list);
}

Row *GetRowsArrayFromRowsLinkedList(RowsLinkedList *list) {
    Row *array = mmap(NULL, list->size * sizeof(Row), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
    if (array == MAP_FAILED) {
        perror("Error in mmap");
        exit(EXIT_FAILURE);
    }
    CHECK_RSMALLOC(array, "GetRowsArrayFromRowsLinkedList");
    int i = 0;

    struct RowsLinkedListElement *e = list->head;
    while (e != NULL) {
        array[i++] = *e->row;
        e = e->next;
    }

    return array;
}


Row *FindMinFromLinkedList(RowsLinkedList *list, int col_index) {
    if (list == NULL || list->head == NULL) {
        fprintf(stderr, "FindMinFromLinkedList: invalid parameter (list is NULL)\n");
        return NULL;
    }

    Row *min_row = NULL;

    // Inizio dal primo elemento della lista
    struct RowsLinkedListElement *current_element = list->head;

    while (current_element != NULL) {

        RowValue *cur_element = &current_element->row->elements[col_index];

        if (min_row == NULL) {
            min_row = current_element->row;
        } else {
            // Confronta il tipo dell'elemento attuale con il tipo dell'elemento minimo
            switch (list->schema.types[col_index]) {
                case TYPE_INT:
                    if (cur_element->int_value < min_row->elements[col_index].int_value) {
                        min_row = current_element->row;
                    }
                    break;

                case TYPE_LONG:
                    if (cur_element->long_value < min_row->elements[col_index].long_value) {
                        min_row = current_element->row;
                    }
                    break;

                case TYPE_FLOAT:
                    if (cur_element->float_value < min_row->elements[col_index].float_value) {
                        min_row = current_element->row;
                    }
                    break;

                case TYPE_DOUBLE:
                    if (cur_element->double_value < min_row->elements[col_index].double_value) {
                        min_row = current_element->row;
                    }
                    break;

                case TYPE_STRING:
                    if (strcmp(cur_element->string_value, min_row->elements[col_index].string_value) < 0) {
                        min_row = current_element->row;
                    }
                    break;

                default:
                    fprintf(stderr, "FindMinFromLinkedList: Unexpected type\n");
                    break;
            }

        }
        current_element = current_element->next;
    }

    return min_row;
}

Row *FindMaxFromLinkedList(RowsLinkedList *list, int col_index) {
    if (list == NULL || list->head == NULL) {
        fprintf(stderr, "FindMaxFromLinkedList: invalid parameter (list is NULL)\n");
        return NULL;
    }

    Row *max_row = NULL;

    // Inizio dal primo elemento della lista
    struct RowsLinkedListElement *current_element = list->head;

    while (current_element != NULL) {

        RowValue *cur_element = &current_element->row->elements[col_index];

        if (max_row == NULL) {
            max_row = current_element->row;
        } else {
            // Confronta il tipo dell'elemento attuale con il tipo dell'elemento minimo
            switch (list->schema.types[col_index]) {
                case TYPE_INT:
                    if (cur_element->int_value > max_row->elements[col_index].int_value) {
                        max_row = current_element->row;
                    }
                    break;

                case TYPE_LONG:
                    if (cur_element->long_value > max_row->elements[col_index].long_value) {
                        max_row = current_element->row;
                    }
                    break;

                case TYPE_FLOAT:
                    if (cur_element->float_value > max_row->elements[col_index].float_value) {
                        max_row = current_element->row;
                    }
                    break;

                case TYPE_DOUBLE:
                    if (cur_element->double_value > max_row->elements[col_index].double_value) {
                        max_row = current_element->row;
                    }
                    break;

                case TYPE_STRING:
                    if (strcmp(cur_element->string_value, max_row->elements[col_index].string_value) > 0) {
                        max_row = current_element->row;
                    }
                    break;

                default:
                    fprintf(stderr, "FindMinFromLinkedList: Unexpected type\n");
                    break;
            }

        }
        current_element = current_element->next;
    }

    return max_row;
}

double ComputeAverageFromLinkedList(RowsLinkedList *list, int col_index) {
    if (list == NULL || list->head == NULL) {
        fprintf(stderr, "ComputeAverageFromLinkedList: invalid parameter (list is NULL)\n");
        return -1.0;
    }

    struct RowsLinkedListElement *current_element = list->head;
    double sum = 0.0;
    int count = 0;

    while (current_element != NULL) {
        RowValue *cur_value = &current_element->row->elements[col_index];

        switch (list->schema.types[col_index]) {
            case TYPE_INT:
                sum += (double)cur_value->int_value;
                break;

            case TYPE_LONG:
                sum += (double)cur_value->long_value;
                break;

            case TYPE_FLOAT:
                sum += (double)cur_value->float_value;
                break;

            case TYPE_DOUBLE:
                sum += cur_value->double_value;
                break;

            case TYPE_STRING:
                fprintf(stderr, "ComputeAverageFromLinkedList: cannot compute average of strings\n");
                exit(EXIT_FAILURE);

            default:
                fprintf(stderr, "ComputeAverageFromLinkedList: unexpected type\n");
                exit(EXIT_FAILURE);
        }

        count++;
        current_element = current_element->next;
    }

    return sum / count;
}

double ComputeSumFromLinkedList(RowsLinkedList *list, int col_index) {
    if (list == NULL || list->head == NULL) {
        fprintf(stderr, "ComputeSumFromLinkedList: invalid parameter (list is NULL)\n");
        return -1.0;
    }

    struct RowsLinkedListElement *current_element = list->head;
    double sum = 0.0;

    while (current_element != NULL) {
        RowValue *cur_value = &current_element->row->elements[col_index];

        switch (list->schema.types[col_index]) {
            case TYPE_INT:
                sum += (double)cur_value->int_value;
                break;

            case TYPE_LONG:
                sum += (double)cur_value->long_value;
                break;

            case TYPE_FLOAT:
                sum += (double)cur_value->float_value;
                break;

            case TYPE_DOUBLE:
                sum += cur_value->double_value;
                break;

            case TYPE_STRING:
                fprintf(stderr, "ComputeSumFromLinkedList: cannot compute average of strings\n");
                exit(EXIT_FAILURE);

            default:
                fprintf(stderr, "ComputeSumFromLinkedList: unexpected type\n");
                exit(EXIT_FAILURE);
        }

        current_element = current_element->next;
    }

    return sum;
}

RowValue get_element_from_row(const Row *row, const char *col_name, Schema schema, Type *type) {
    for (int i = 0; i < row->num_elements; ++i) {
        if (strncmp(schema.cols_names[i], col_name, strlen(col_name)) == 0) {
            *type = schema.types[i];
            return row->elements[i];
        }
    }

    fprintf(stderr, "get_element_from_row: column %s not found!\n", col_name);
    exit(EXIT_FAILURE);
}
