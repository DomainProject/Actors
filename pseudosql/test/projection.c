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

static int test_projection(_unused void *_) {
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
    
    /* PROJECTION */

    RowsList *ret_list;

    AttributeList attribute_list;
    Attribute *attributes;

    attributes = malloc(sizeof(Attribute) * 2);
    attributes[0].name = "ID";
    attributes[1].name = "name";
    attribute_list.attributes = attributes;
    attribute_list.num_attributes = 2;

    ret_list = ProjectionMultRows(person_rows_list, attribute_list);

    test_assert(ret_list->num_rows == 6);
    test_assert(ret_list->rows[0].num_elements == 2);
    test_assert(ret_list->rows[1].num_elements == 2);
    test_assert(ret_list->rows[2].num_elements == 2);
    test_assert(ret_list->rows[3].num_elements == 2);
    test_assert(ret_list->rows[4].num_elements == 2);
    test_assert(ret_list->rows[5].num_elements == 2);

    test_assert(!strcmp(ret_list->rows[0].elements[0].col_name, "ID"));
    test_assert(!strcmp(ret_list->rows[0].elements[1].col_name, "name"));
    test_assert(!strcmp(ret_list->rows[1].elements[0].col_name, "ID"));
    test_assert(!strcmp(ret_list->rows[1].elements[1].col_name, "name"));
    test_assert(!strcmp(ret_list->rows[2].elements[0].col_name, "ID"));
    test_assert(!strcmp(ret_list->rows[2].elements[1].col_name, "name"));
    test_assert(!strcmp(ret_list->rows[3].elements[0].col_name, "ID"));
    test_assert(!strcmp(ret_list->rows[3].elements[1].col_name, "name"));
    test_assert(!strcmp(ret_list->rows[4].elements[0].col_name, "ID"));
    test_assert(!strcmp(ret_list->rows[4].elements[1].col_name, "name"));
    test_assert(!strcmp(ret_list->rows[5].elements[0].col_name, "ID"));
    test_assert(!strcmp(ret_list->rows[5].elements[1].col_name, "name"));

    test_assert(ret_list->rows[0].elements[0].value.int_value == 1);
    test_assert(ret_list->rows[1].elements[0].value.int_value == 2);
    test_assert(ret_list->rows[2].elements[0].value.int_value == 3);
    test_assert(ret_list->rows[3].elements[0].value.int_value == 4);
    test_assert(ret_list->rows[4].elements[0].value.int_value == 5);
    test_assert(ret_list->rows[5].elements[0].value.int_value == 6);

    test_assert(!strcmp(ret_list->rows[0].elements[1].value.string_value, "A"));
    test_assert(!strcmp(ret_list->rows[1].elements[1].value.string_value, "B"));
    test_assert(!strcmp(ret_list->rows[2].elements[1].value.string_value, "C"));
    test_assert(!strcmp(ret_list->rows[3].elements[1].value.string_value, "D"));
    test_assert(!strcmp(ret_list->rows[4].elements[1].value.string_value, "E"));
    test_assert(!strcmp(ret_list->rows[5].elements[1].value.string_value, "F"));

    free(ret_list);

    /* test with non-existent attributes */
    attributes[0].name = "address";
    attributes[1].name = "city";

    ret_list = ProjectionMultRows(person_rows_list, attribute_list);
    test_assert(ret_list == NULL);

    free(person_schema.cols_names);
    free(attributes);
    free(person_row1);
    free(person_row2);
    free(person_row3);
    free(person_row4);
    free(person_row5);
    free(person_row6);

    return 0;
}

int main(void) {
	test("SQL Projection", test_projection, NULL);
}