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

static int test_orderby(_unused void *_) {
    /* schema initialization */
    Schema schema;
    schema.num_cols = 6;
    schema.cols_names = malloc(schema.num_cols * sizeof(char *));
    if (!schema.cols_names) {
        perror("malloc");
        return EXIT_FAILURE;
    }
    schema.cols_names[0] = strdup("ID");
    schema.cols_names[1] = strdup("full_name");
    schema.cols_names[2] = strdup("birth_date");
    schema.cols_names[3] = strdup("university_name");
    schema.cols_names[4] = strdup("university_city");
    schema.cols_names[5] = strdup("GPA");

    char *table_name = "Student";

    /* data row initialization */
    char *data_line = "1,Mario Rossi,2000-01-01 00:00:00,Università degli Studi di Roma Tor Vergata,Rome,29.0"; 
    Row *row1 = create_row(data_line, schema, table_name);

    data_line = "2,Mario Bianchi,2002-05-01 10:30:00,Università degli Studi di Roma Tor Vergata,Rome,28.7"; 
    Row *row2 = create_row(data_line, schema, table_name);

    data_line = "3,Mario Rossi,1998-06-25 10:03:09,Università degli Studi di Roma Sapienza,Rome,26.4"; 
    Row *row3 = create_row(data_line, schema, table_name);

    data_line = "4,Simone Bauco,2000-12-01 00:00:00,Università degli Studi di Milano,Milan,29.4"; 
    Row *row4 = create_row(data_line, schema, table_name);

    data_line = "5,Simone Rossi,1990-01-01 00:00:00,Politecnico di Milano,Milan,29.3"; 
    Row *row5 = create_row(data_line, schema, table_name);

    data_line = "6,Simone Bianchi,1995-07-30 00:00:00,Università degli Studi di Torino,Turin,21.9"; 
    Row *row6 = create_row(data_line, schema, table_name);

    data_line = "7,Giovanni Bianchi,1989-01-01 00:00:00,Università degli Studi di Napoli,Naples,22.7"; 
    Row *row7 = create_row(data_line, schema, table_name);

    data_line = "8,Luigi Bianchi,2000-05-24 19:00:09,Università degli Studi di Pisa,Pisa,26.7"; 
    Row *row8 = create_row(data_line, schema, table_name);

    RowsList rows_list;
    Row rows[8] = {*row1, *row2, *row3, *row4, *row5, *row6, *row7, *row8};
    rows_list.num_rows = 8;
    rows_list.rows = rows;
    
    /* ORDER BY */

    RowsList *ret_list;

    ret_list = OrderBy(rows_list, "birth_date");

    test_assert(ret_list != NULL);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 7 &&
        ret_list->rows[1].elements[0].value.int_value == 5 &&
        ret_list->rows[2].elements[0].value.int_value == 6 &&
        ret_list->rows[3].elements[0].value.int_value == 3 &&
        ret_list->rows[4].elements[0].value.int_value == 1 &&
        ret_list->rows[5].elements[0].value.int_value == 8 &&
        ret_list->rows[6].elements[0].value.int_value == 4 &&
        ret_list->rows[7].elements[0].value.int_value == 2);


    free(ret_list);

    ret_list = OrderBy(rows_list, "GPA");
    test_assert(ret_list != NULL);
    test_assert(ret_list->rows[0].elements[0].value.int_value == 6 &&
        ret_list->rows[1].elements[0].value.int_value == 7 &&
        ret_list->rows[2].elements[0].value.int_value == 3 &&
        ret_list->rows[3].elements[0].value.int_value == 8 &&
        ret_list->rows[4].elements[0].value.int_value == 2 &&
        ret_list->rows[5].elements[0].value.int_value == 1 &&
        ret_list->rows[6].elements[0].value.int_value == 5 &&
        ret_list->rows[7].elements[0].value.int_value == 4);

    free(ret_list);

    ret_list = OrderBy(rows_list, "address");
    test_assert(ret_list == NULL);

    free(schema.cols_names);
    free(row1);
    free(row2);
    free(row3);
    free(row4);
    free(row5);
    free(row6);
    free(row7);
    free(row8);

    return 0;
}

int main(void) {
	test("SQL Order By", test_orderby, NULL);
}