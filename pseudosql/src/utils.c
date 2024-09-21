#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdint.h>
#include <sys/mman.h>

#include "utils.h"

void remove_quotes(char* str) {
    int len = strlen(str);
    int j = 0;

    for (int i = 0; i < len; i++) {
        if (str[i] != '"') {
            str[j++] = str[i];
        }
    }
    str[j] = '\0'; 
}

char *trim_whitespace(char *str) {
    char *end;

    while (isspace((unsigned char)*str)) str++;

    if (*str == 0) 
        return str;

    end = str + strlen(str) - 1;
    while (end > str && isspace((unsigned char)*end)) end--;

    *(end + 1) = 0;

    return str;
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

char* remove_newline_and_copy(char *str) {
    int new_len = 0;
    for (const char *p = str; *p != '\0'; p++) {
        if (*p != '\n') {
            new_len++;
        }
    }
    
    char *new_str = (char *)malloc(new_len + 1);  
    if (new_str == NULL) {
        return NULL;  
    }

    char *dest = new_str;
    for (const char *p = str; *p != '\0'; p++) {
        if (*p != '\n') {
            *dest++ = *p;
        }
    }
    *dest = '\0';

    free(str);
    return new_str;
}

void PrintSchema(const Schema *schema) {
    for (int i = 0; i < schema->num_cols; i++) {
        printf("Column %d: %s\n", i + 1, schema->cols_names[i]);
    }
}

void InitializeSchema(Schema *schema, char *header) {
    int num_columns = 0;
    for (int i = 0; header[i] != '\0'; i++) {
        if (header[i] == ',') {
            num_columns++;
        }
    }
    num_columns++;

    schema->num_cols = num_columns;
    schema->cols_names = malloc(num_columns * sizeof(char *));

    char *header_token = strtok(header, ",");
    int column_index = 0;

    while (header_token != NULL) {
        char *cur_name = strdup(header_token);
        remove_quotes(cur_name);
        
        schema->cols_names[column_index] = cur_name;

        header_token = strtok(NULL, ",");
        column_index++;
    }
}

void PrintRow(const RowNew *row) {
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

void PopulateRow(char *row_string, RowNew *row, Schema schema) {  
    char *copy = strdup(row_string);
    char *token = strtok(copy, ",");  

    int column_index = 0;
    while (token != NULL && column_index < schema.num_cols) {
        strcpy(row->elements[column_index].col_name, schema.cols_names[column_index]);
        char *value_str = strdup(token);

        if (is_integer(value_str)) {
            row->elements[column_index].type = TYPE_INT;
            row->elements[column_index].value.int_value = atoi(value_str);
        } else if (is_float(value_str)) {
            row->elements[column_index].type = TYPE_FLOAT;
            row->elements[column_index].value.float_value = atof(value_str);
        } else {
            /* if value_str represents a date, save it as UNIX timestamp */
            if(is_valid_date_format(value_str)) {
                row->elements[column_index].type = TYPE_LONG;
                row->elements[column_index].value.long_value = convert_to_unix_timestamp(value_str);
            } else {
                row->elements[column_index].type = TYPE_STRING;
                strcpy(row->elements[column_index].value.string_value, value_str);
            }
        }

        token = strtok(NULL, ",");
        column_index++;
    }

    free(copy);
}

int get_index(RowNew row, char *col_name) {
    for (int i = 0; i < row.num_elements; i++) {
        if (!strncmp(row.elements[i].col_name, col_name, strlen(col_name)))
            return i;
    }

    fprintf(stderr, "Column %s not found\n", col_name);
    return -1;
}

double compute_average(int size, RowNew *list, char *col_name) {
    int count = 0, index, i;
    double sum = 0.0;

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

    return sum / count;
}

double compute_sum(int size, RowNew *list, char *col_name) {
    int index, i;
    double sum = 0.0;

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
                sum += list[i].elements[index].value.long_value;
                break;
            default:
                break;
        }
    }

    return sum;
}

int are_equals(Row row1, Row row2, char *col1_name, char *col2_name) {
    int index1, index2;

    //index1 = get_index(row1, col1_name);
    //index2 = get_index(row2, col2_name);

    if (index1 == -1 || index2 == -1) {
        return -1;
    }

    if (row1.elements[index1].type != row2.elements[index2].type) {
        fprintf(stderr, "Comparing columns with different types\n");
        return 0;
    }

    switch(row1.elements[index1].type) {
        case TYPE_INT:
            return row1.elements[index1].value.int_value == row2.elements[index2].value.int_value;
        case TYPE_LONG:
            return row1.elements[index1].value.long_value == row2.elements[index2].value.long_value;
        case TYPE_FLOAT:
            return row1.elements[index1].value.float_value == row2.elements[index2].value.float_value;
        case TYPE_STRING:
            if (!strcmp(row1.elements[index1].value.string_value, row2.elements[index2].value.string_value))
                return 1;
            return 0;
        default:
            fprintf(stderr, "Unexpected type\n");
            exit(EXIT_FAILURE);
    }
}

void AppendRow(struct RowsLinkedListElement* head, RowNew *row) {
    if (head == NULL) {
        fprintf(stderr, "invalid list head\n");
        return;
    }
  
    // Allocate memory for node
    struct RowsLinkedListElement* new_node = (struct RowsLinkedListElement*)rs_malloc(sizeof(struct RowsLinkedListElement));
    CHECK_RSMALLOC(new_node, "AppendRow");

    new_node->row = rs_malloc(sizeof(RowNew));
    CHECK_RSMALLOC(new_node->row, "AppendRow");
    new_node->next = NULL;

    // Copy contents of data to newly allocated memory.
    memcpy(new_node->row, row, sizeof(RowNew));

    // append row
    struct RowsLinkedListElement* last = head;
    while (last->next != NULL) {
        last = last->next;
    }
    last->next = new_node;
}

void AppendGroup(struct GroupsLinkedListElement* head, RowsLinkedList *rows) {
    if (head == NULL) {
        fprintf(stderr, "invalid list head\n");
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
        fprintf(stderr, "Invalid list pointer\n");
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

RowNew *GetRowsArrayFromRowsLinkedList(RowsLinkedList *list) {
    RowNew *array = mmap(NULL, list->size * sizeof(RowNew), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
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
