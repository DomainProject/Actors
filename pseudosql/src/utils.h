#pragma once

#include <sys/types.h>

#include "include/pseudosql.h"

extern int is_valid_date_format(const char *str);
extern time_t convert_to_unix_timestamp(const char *datetime_str);
extern int is_valid_date_format(const char *str);
extern int is_float(const char *str);
extern int is_integer(const char *str);
extern int get_index(Row row, char *col_name, Schema schema);
extern double compute_average(int size, Row *list, char *col_name);
extern double compute_sum(int size, Row *list, char *col_name);
extern int are_equals(Row *row1, Row *row2, char *col1_name, char *col2_name);
extern void InitializeSchema(Schema *schema, char *header, char *second_line);
extern void PopulateRow(char *row_string, Row *row, Schema schema);
extern void AppendRow(struct RowsLinkedListElement* head, Row *row);
extern void AppendGroup(struct GroupsLinkedListElement* head, RowsLinkedList *rows);
extern Row *GetRowsArrayFromRowsLinkedList(RowsLinkedList *list);
extern double ComputeSumFromLinkedList(RowsLinkedList *list, int col_index);
extern double ComputeAverageFromLinkedList(RowsLinkedList *list, int col_index);
extern Row *FindMaxFromLinkedList(RowsLinkedList *list, int col_index);
extern Row *FindMinFromLinkedList(RowsLinkedList *list, int col_index);
extern void FreeSchema(Schema *schema);
extern RowValue get_element_from_row(const Row *row, const char *col_name, Schema schema, Type *type);
