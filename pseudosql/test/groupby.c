#include <test.h>
#include <pseudosql.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

Row create_row(char *data_line, Schema schema, char *table_name) {
    Row row;
    row.num_elements = schema.num_cols;
    row.elements = malloc(row.num_elements * sizeof(RowElement));
    if (!row.elements) {
        perror("malloc");
        exit(EXIT_FAILURE);
    } 
    row.table_name = table_name;

    PopulateRow(data_line, &row, schema);
    PrintRow(&row);

    return row;
}

static int test_groupby(_unused void *_) {
    /* schema initialization */
    Schema schema;
    schema.num_cols = 3;
    schema.cols_names = malloc(schema.num_cols * sizeof(char *));
    if (!schema.cols_names) {
        perror("malloc");
        return EXIT_FAILURE;
    }
    schema.cols_names[0] = strdup("ID");
    schema.cols_names[1] = strdup("name");
    schema.cols_names[2] = strdup("city");

    char *table_name = "University";

    /* data row initialization */
    char *data_line = "1,Università degli Studi di Roma Tor Vergata,Rome"; 
    Row row1 = create_row(data_line, schema, table_name);

    data_line = "2,Università degli Studi di Roma Sapienza,Rome"; 
    Row row2 = create_row(data_line, schema, table_name);

    data_line = "3,Università degli Studi di Milano,Milan"; 
    Row row3 = create_row(data_line, schema, table_name);

    data_line = "4,Politecnico di Milano,Milan"; 
    Row row4 = create_row(data_line, schema, table_name);

    data_line = "5,Università degli Studi di Torino,Turin"; 
    Row row5 = create_row(data_line, schema, table_name);

    data_line = "6,Università degli Studi di Napoli,Naples"; 
    Row row6 = create_row(data_line, schema, table_name);

    data_line = "7,Università degli Studi di Pisa,Pisa"; 
    Row row7 = create_row(data_line, schema, table_name);

    RowsList rows_list;
    Row rows[7] = {row1, row2, row3, row4, row5, row6, row7};
    rows_list.num_rows = 7;
    rows_list.rows = rows;
    
    /* GROUP BY */

    GroupsList *ret_list;

    ret_list = GroupBy(&rows_list, "city");

    test_assert(ret_list->num_groups == 5);


    for (int i = 0; i < ret_list->num_groups; i++) {
        if (!strcmp(ret_list->groups[i].rows_list.rows[0].elements[ret_list->col_index].value.string_value, "Milan")) {
            test_assert(ret_list->groups[i].rows_list.num_rows == 2 &&
                !strcmp(ret_list->groups[i].rows_list.rows[1].elements[ret_list->col_index].value.string_value, "Milan"));

        } else if (!strcmp(ret_list->groups[i].rows_list.rows[0].elements[ret_list->col_index].value.string_value, "Rome")) {
            test_assert(ret_list->groups[i].rows_list.num_rows == 2 && 
                !strcmp(ret_list->groups[i].rows_list.rows[1].elements[ret_list->col_index].value.string_value, "Rome"));

        } else if (!strcmp(ret_list->groups[i].rows_list.rows[0].elements[ret_list->col_index].value.string_value, "Turin")) {
            test_assert(ret_list->groups[i].rows_list.num_rows == 1);
        
        } else if (!strcmp(ret_list->groups[i].rows_list.rows[0].elements[ret_list->col_index].value.string_value, "Naples")) {
            test_assert(ret_list->groups[i].rows_list.num_rows == 1);
        
        } else if (!strcmp(ret_list->groups[i].rows_list.rows[0].elements[ret_list->col_index].value.string_value, "Pisa")) {
            test_assert(ret_list->groups[i].rows_list.num_rows == 1);
        }
    }

    return 0;
}

int main(void) {
	test("SQL Group By", test_groupby, NULL);
}