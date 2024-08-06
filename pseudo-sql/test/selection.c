#include <test.h>
#include <pseudosql.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

Row *create_row(char *data_line, Schema schema, char *table_name) {
    Row *row = malloc(sizeof(Row));

    row->num_elements = schema.num_cols;
    row->elements = malloc(row->num_elements * sizeof(RowElement));
    if (!row || !row->elements) {
        perror("malloc");
        exit(EXIT_FAILURE);
    } 
    row->table_name = table_name;

    PopulateRow(data_line, row, schema);

    return row;
}

static int test_selection(_unused void *_) {
    /* schema initialization */
    Schema person_schema;
    person_schema.num_cols = 6;
    person_schema.cols_names = malloc(person_schema.num_cols * sizeof(char *));
    if (!person_schema.cols_names) {
        perror("malloc");
        return EXIT_FAILURE;
    }
    person_schema.cols_names[0] = strdup("ID");
    person_schema.cols_names[1] = strdup("name");
    person_schema.cols_names[2] = strdup("birth_date");
    person_schema.cols_names[3] = strdup("height");
    person_schema.cols_names[4] = strdup("weight");
    person_schema.cols_names[5] = strdup("boolean_field");

    char *table_name = "Person";

    /* data row initialization */
    char *data_line = "1,A,2000-01-01 00:00:00,1.80,70.0,1"; 
    Row *person_row1 = create_row(data_line, person_schema, table_name);

    data_line = "2,B,2000-01-02 00:00:00,1.81,71.0,0"; 
    Row *person_row2 = create_row(data_line, person_schema, table_name);

    data_line = "3,C,2000-01-03 00:00:00,1.82,72.0,0"; 
    Row *person_row3 = create_row(data_line, person_schema, table_name);

    data_line = "4,D,2000-01-02 01:00:00,1.78,60.0,0"; 
    Row *person_row4 = create_row(data_line, person_schema, table_name);

    data_line = "5,E,2000-01-02 01:00:00,1.78,65.0,0"; 
    Row *person_row5 = create_row(data_line, person_schema, table_name);

    data_line = "6,F,2000-01-02 01:00:00,1.78,68.3,1"; 
    Row *person_row6 = create_row(data_line, person_schema, table_name);

    RowsList person_rows_list;
    Row person_rows[6] = {*person_row1, *person_row2, *person_row3, *person_row4, *person_row5, *person_row6};
    person_rows_list.num_rows = 6;
    person_rows_list.rows = person_rows;
    
    /* SELECTION */

    RowsList *ret_list;

    char *condition1 = "birth_date >= 2000-01-01 00:00:01";
    char *condition2 = "height > 1.78 && (boolean_field == 1 || weight <= 71.0)";
    char *condition3 = "(ID > 0 && name != A) || (ID != 3 || birth_date >= 2000-01-02 00:10:00)";
    char *condition4 = "ID > 10 || (height > 1.90 || (weight < 60.0 || boolean_field == 1))";
    char *condition5 = "height >= 1.90 || name == Simone";
    char *condition6 = "name == C";

    // malformed conditions
    char *condition7 = "height >= 1.90 & name = Simone";
    char *condition8 = "name != A | boolean_field = 0";
    char *condition9 = "height <= 1.90 && (name != A";
    char *condition10 = "(height >= 1.70)) && name != A";

    Condition *parsed_condition1 = ParseCondition(&condition1);
    Condition *parsed_condition2 = ParseCondition(&condition2);
    Condition *parsed_condition3 = ParseCondition(&condition3);
    Condition *parsed_condition4 = ParseCondition(&condition4);
    Condition *parsed_condition5 = ParseCondition(&condition5);
    Condition *parsed_condition6 = ParseCondition(&condition6);
    Condition *parsed_condition7 = ParseCondition(&condition7);
    Condition *parsed_condition8 = ParseCondition(&condition8);
    Condition *parsed_condition9 = ParseCondition(&condition9);
    Condition *parsed_condition10 = ParseCondition(&condition10);

    test_assert(parsed_condition1 != NULL);
    test_assert(parsed_condition2 != NULL);
    test_assert(parsed_condition3 != NULL);
    test_assert(parsed_condition4 != NULL);
    test_assert(parsed_condition5 != NULL);
    test_assert(parsed_condition6 != NULL);
    test_assert(parsed_condition7 == NULL);
    test_assert(parsed_condition8 == NULL);
    test_assert(parsed_condition9 == NULL);
    test_assert(parsed_condition10 == NULL);

    ret_list = SelectionMultRows(person_rows_list, parsed_condition1);
    test_assert(ret_list->num_rows == 5);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 2);
    test_assert(ret_list->rows[1].elements[0].value.int_value == 3);
    test_assert(ret_list->rows[2].elements[0].value.int_value == 4);
    test_assert(ret_list->rows[3].elements[0].value.int_value == 5);
    test_assert(ret_list->rows[4].elements[0].value.int_value == 6);

    free(ret_list);

    ret_list = SelectionMultRows(person_rows_list, parsed_condition2);
    test_assert(ret_list->num_rows == 2);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 1);
    test_assert(ret_list->rows[1].elements[0].value.int_value == 2);

    free(ret_list);

    ret_list = SelectionMultRows(person_rows_list, parsed_condition3);
    test_assert(ret_list->num_rows == 5);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 2);
    test_assert(ret_list->rows[1].elements[0].value.int_value == 3);
    test_assert(ret_list->rows[2].elements[0].value.int_value == 4);
    test_assert(ret_list->rows[3].elements[0].value.int_value == 5);
    test_assert(ret_list->rows[4].elements[0].value.int_value == 6);

    free(ret_list);

    ret_list = SelectionMultRows(person_rows_list, parsed_condition4);
    test_assert(ret_list->num_rows == 2);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 1);
    test_assert(ret_list->rows[1].elements[0].value.int_value == 6);

    free(ret_list);

    ret_list = SelectionMultRows(person_rows_list, parsed_condition5);
    test_assert(ret_list->num_rows == 0);

    ret_list = SelectionMultRows(person_rows_list, parsed_condition6);
    test_assert(ret_list->num_rows == 1);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 3);

    free(person_schema.cols_names);
    free(ret_list);
    free(parsed_condition1);
    free(parsed_condition2);
    free(parsed_condition3);
    free(parsed_condition4);
    free(parsed_condition5);
    free(parsed_condition6);
    free(parsed_condition7);
    free(parsed_condition8);
    free(parsed_condition9);
    free(parsed_condition10);
    free(person_row1);
    free(person_row2);
    free(person_row3);
    free(person_row4);
    free(person_row5);
    free(person_row6);

    return 0;
}

int main(void) {
	test("SQL Selection", test_selection, NULL);
}