#include <test.h>
#include <pseudosql.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define DELTA 0.00001

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

static int test_aggregate_functions(_unused void *_) {
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
    
    /* ROWS INPUT (no GROUP BY) */

    AggFunctionResultValue *avg_result, *sum_result, *count_result, *min_result, *max_result;

    AggFunctionData data = {.col_name = "GPA", .input_data.rows = rows_list, .type = TYPE_ROWS};
    avg_result = (AggFunctionResultValue *)AggregateFunction(data, AVG);
    sum_result = (AggFunctionResultValue *)AggregateFunction(data, SUM);
    count_result = (AggFunctionResultValue *)AggregateFunction(data, COUNT);
    min_result = (AggFunctionResultValue *)AggregateFunction(data, MIN);
    max_result = (AggFunctionResultValue *)AggregateFunction(data, MAX);

    test_assert(avg_result->type == TYPE_DOUBLE && fabs(avg_result->value.double_value - 26.7625) < DELTA);
    test_assert(sum_result->type == TYPE_DOUBLE && fabs(sum_result->value.double_value - 214.1) < DELTA);
    test_assert(count_result->type == TYPE_INT && count_result->value.int_value == 8);
    test_assert(min_result->type == TYPE_FLOAT && fabs(min_result->value.float_value - 21.9) < DELTA);
    test_assert(max_result->type == TYPE_FLOAT && fabs(max_result->value.float_value - 29.4) < DELTA);

    free(avg_result);
    free(sum_result);
    free(count_result);
    free(min_result);
    free(max_result);

    data.col_name = "full_name";

    avg_result = (AggFunctionResultValue *)AggregateFunction(data, AVG);
    sum_result = (AggFunctionResultValue *)AggregateFunction(data, SUM);
    count_result = (AggFunctionResultValue *)AggregateFunction(data, COUNT);
    min_result = (AggFunctionResultValue *)AggregateFunction(data, MIN);
    max_result = (AggFunctionResultValue *)AggregateFunction(data, MAX);

    test_assert(avg_result == NULL);
    test_assert(sum_result == NULL);
    test_assert(count_result->type == TYPE_INT && count_result->value.int_value == 8);
    test_assert(min_result->type == TYPE_STRING && !strcmp(min_result->value.string_value, "Giovanni Bianchi"));
    test_assert(max_result->type == TYPE_STRING && !strcmp(max_result->value.string_value, "Simone Rossi"));

    free(count_result);
    free(min_result);
    free(max_result);


    data.col_name = "address";

    avg_result = (AggFunctionResultValue *)AggregateFunction(data, AVG);
    sum_result = (AggFunctionResultValue *)AggregateFunction(data, SUM);
    count_result = (AggFunctionResultValue *)AggregateFunction(data, COUNT);
    min_result = (AggFunctionResultValue *)AggregateFunction(data, MIN);
    max_result = (AggFunctionResultValue *)AggregateFunction(data, MAX);

    test_assert(avg_result == NULL);
    test_assert(sum_result == NULL);
    test_assert(count_result == NULL);
    test_assert(min_result == NULL);
    test_assert(max_result == NULL);

    /* GROUPED INPUT */

    GroupsList *groups_list = GroupBy(&rows_list, "university_city");

    data.col_name = "GPA";
    data.type = TYPE_GROUPS;
    data.input_data.groups = *groups_list;

    RowsList *avg_list = (RowsList *)AggregateFunction(data, AVG);
    RowsList *sum_list = (RowsList *)AggregateFunction(data, SUM);
    RowsList *count_list = (RowsList *)AggregateFunction(data, COUNT);
    RowsList *min_list = (RowsList *)AggregateFunction(data, MIN);
    RowsList *max_list = (RowsList *)AggregateFunction(data, MAX);

    test_assert(avg_list->num_rows == 5);
    test_assert(sum_list->num_rows == 5);
    test_assert(count_list->num_rows == 5);
    test_assert(min_list->num_rows == 5);
    test_assert(max_list->num_rows == 5 );

    for (int i = 0; i < 5; i++) {
        /* AVG */
        if (!strcmp(avg_list->rows[i].elements[0].value.string_value, "Rome")) {
            test_assert(avg_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(avg_list->rows[i].elements[1].value.double_value - 28.033333) < DELTA);

        } else if (!strcmp(avg_list->rows[i].elements[0].value.string_value, "Milan")) {
            test_assert(avg_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(avg_list->rows[i].elements[1].value.double_value - 29.35) < DELTA);

        } else if (!strcmp(avg_list->rows[i].elements[0].value.string_value, "Turin")) {
            test_assert(avg_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(avg_list->rows[i].elements[1].value.double_value - 21.9) < DELTA);

        } else if (!strcmp(avg_list->rows[i].elements[0].value.string_value, "Naples")) {
            test_assert(avg_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(avg_list->rows[i].elements[1].value.double_value - 22.7) < DELTA);

        } if (!strcmp(avg_list->rows[i].elements[0].value.string_value, "Pisa")) {
            test_assert(avg_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(avg_list->rows[i].elements[1].value.double_value - 26.7) < DELTA);
        }

        /* SUM */
        if (!strcmp(sum_list->rows[i].elements[0].value.string_value, "Rome")) {
            test_assert(sum_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(sum_list->rows[i].elements[1].value.double_value - 84.1) < DELTA);

        } else if (!strcmp(sum_list->rows[i].elements[0].value.string_value, "Milan")) {
            test_assert(sum_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(sum_list->rows[i].elements[1].value.double_value - 58.7) < DELTA);

        } else if (!strcmp(sum_list->rows[i].elements[0].value.string_value, "Turin")) {
            test_assert(sum_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(sum_list->rows[i].elements[1].value.double_value - 21.9) < DELTA);

        } else if (!strcmp(sum_list->rows[i].elements[0].value.string_value, "Naples")) {
            test_assert(sum_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(sum_list->rows[i].elements[1].value.double_value - 22.7) < DELTA);

        } if (!strcmp(sum_list->rows[i].elements[0].value.string_value, "Pisa")) {
            test_assert(sum_list->rows[i].elements[1].type == TYPE_DOUBLE &&
                fabs(sum_list->rows[i].elements[1].value.double_value - 26.7) < DELTA);
        }

        /* COUNT */
        if (!strcmp(count_list->rows[i].elements[0].value.string_value, "Rome")) {
            test_assert(count_list->rows[i].elements[1].type == TYPE_INT &&
                count_list->rows[i].elements[1].value.int_value == 3);

        } else if (!strcmp(count_list->rows[i].elements[0].value.string_value, "Milan")) {
            test_assert(count_list->rows[i].elements[1].type == TYPE_INT &&
                count_list->rows[i].elements[1].value.int_value == 2);

        } else if (!strcmp(count_list->rows[i].elements[0].value.string_value, "Turin")) {
            test_assert(count_list->rows[i].elements[1].type == TYPE_INT &&
                count_list->rows[i].elements[1].value.int_value == 1);

        } else if (!strcmp(count_list->rows[i].elements[0].value.string_value, "Naples")) {
            test_assert(count_list->rows[i].elements[1].type == TYPE_INT &&
                count_list->rows[i].elements[1].value.int_value == 1);

        } if (!strcmp(count_list->rows[i].elements[0].value.string_value, "Pisa")) {
            test_assert(count_list->rows[i].elements[1].type == TYPE_INT &&
                count_list->rows[i].elements[1].value.int_value == 1);
        }

        /* MIN */
        if (!strcmp(min_list->rows[i].elements[0].value.string_value, "Rome")) {
            test_assert(min_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(min_list->rows[i].elements[1].value.float_value - 26.4) < DELTA);

        } else if (!strcmp(min_list->rows[i].elements[0].value.string_value, "Milan")) {
            test_assert(min_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(min_list->rows[i].elements[1].value.float_value - 29.3) < DELTA);

        } else if (!strcmp(min_list->rows[i].elements[0].value.string_value, "Turin")) {
            test_assert(min_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(min_list->rows[i].elements[1].value.float_value - 21.9) < DELTA);

        } else if (!strcmp(min_list->rows[i].elements[0].value.string_value, "Naples")) {
            test_assert(min_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(min_list->rows[i].elements[1].value.float_value - 22.7) < DELTA);

        } if (!strcmp(min_list->rows[i].elements[0].value.string_value, "Pisa")) {
            test_assert(min_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(min_list->rows[i].elements[1].value.float_value - 26.7) < DELTA);
        }

        /* MAX */
        if (!strcmp(max_list->rows[i].elements[0].value.string_value, "Rome")) {
            test_assert(max_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(max_list->rows[i].elements[1].value.float_value - 29.0) < DELTA);

        } else if (!strcmp(max_list->rows[i].elements[0].value.string_value, "Milan")) {
            test_assert(max_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(max_list->rows[i].elements[1].value.float_value - 29.4) < DELTA);

        } else if (!strcmp(max_list->rows[i].elements[0].value.string_value, "Turin")) {
            test_assert(max_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(max_list->rows[i].elements[1].value.float_value - 21.9) < DELTA);

        } else if (!strcmp(max_list->rows[i].elements[0].value.string_value, "Naples")) {
            test_assert(max_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(max_list->rows[i].elements[1].value.float_value - 22.7) < DELTA);

        } if (!strcmp(max_list->rows[i].elements[0].value.string_value, "Pisa")) {
            test_assert(max_list->rows[i].elements[1].type == TYPE_FLOAT &&
                fabs(max_list->rows[i].elements[1].value.float_value - 26.7) < DELTA);
        }
    }


    free(avg_result);
    free(sum_result);
    free(count_result);
    free(min_result);
    free(max_result);


    data.col_name = "address";

    avg_list = (RowsList *)AggregateFunction(data, AVG);
    sum_list = (RowsList *)AggregateFunction(data, SUM);
    count_list = (RowsList *)AggregateFunction(data, COUNT);
    min_list = (RowsList *)AggregateFunction(data, MIN);
    max_list = (RowsList *)AggregateFunction(data, MAX);

    test_assert(avg_result == NULL);
    test_assert(sum_result == NULL);
    test_assert(count_result == NULL);
    test_assert(min_result == NULL);
    test_assert(max_result == NULL);


    free(groups_list);
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
	test("SQL Aggregate Functions", test_aggregate_functions, NULL);
}