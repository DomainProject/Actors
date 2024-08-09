#include <test.h>
#include <pseudosql.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define DELTA 0.00001

time_t convert_to_unix_tstamp(const char *datetime_str) {
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

static int test_join(_unused void *_) {
    /* first schema initialization */
    Schema student_schema;
    student_schema.num_cols = 5;
    student_schema.cols_names = malloc(student_schema.num_cols * sizeof(char *));
    if (!student_schema.cols_names) {
        perror("malloc");
        return EXIT_FAILURE;
    }
    student_schema.cols_names[0] = strdup("ID");
    student_schema.cols_names[1] = strdup("full_name");
    student_schema.cols_names[2] = strdup("birth_date");
    student_schema.cols_names[3] = strdup("university_ID");
    student_schema.cols_names[4] = strdup("GPA");

    char *table_name = "Student";

    /* data row initialization */
    char *data_line = "1,Mario Rossi,2000-01-01 00:00:00,1,29.0"; 
    Row *student_row1 = create_row(data_line, student_schema, table_name);

    data_line = "2,Mario Bianchi,2002-05-01 10:30:00,1,28.7"; 
    Row *student_row2 = create_row(data_line, student_schema, table_name);

    data_line = "3,Mario Rossi,1998-06-25 10:03:09,2,26.4"; 
    Row *student_row3 = create_row(data_line, student_schema, table_name);

    data_line = "4,Simone Bauco,2000-12-01 00:00:00,3,29.4"; 
    Row *student_row4 = create_row(data_line, student_schema, table_name);

    data_line = "5,Simone Rossi,1990-01-01 00:00:00,4,29.3"; 
    Row *student_row5 = create_row(data_line, student_schema, table_name);

    data_line = "6,Simone Bianchi,1995-07-30 00:00:00,5,21.9"; 
    Row *student_row6 = create_row(data_line, student_schema, table_name);

    data_line = "7,Giovanni Bianchi,1989-01-01 00:00:00,6,22.7"; 
    Row *student_row7 = create_row(data_line, student_schema, table_name);

    data_line = "8,Luigi Bianchi,2000-05-24 19:00:09,7,26.7"; 
    Row *student_row8 = create_row(data_line, student_schema, table_name);

    RowsList student_rows_list;
    Row student_rows[8] = {*student_row1, *student_row2, *student_row3, *student_row4, *student_row5, *student_row6, *student_row7, *student_row8};
    student_rows_list.num_rows = 8;
    student_rows_list.rows = student_rows;

    /* second schema initialization */
    Schema uni_schema;
    uni_schema.num_cols = 3;
    uni_schema.cols_names = malloc(uni_schema.num_cols * sizeof(char *));
    if (!uni_schema.cols_names) {
        perror("malloc");
        return EXIT_FAILURE;
    }
    uni_schema.cols_names[0] = strdup("ID");
    uni_schema.cols_names[1] = strdup("name");
    uni_schema.cols_names[2] = strdup("city");

    table_name = "University";

    /* data row initialization */
    data_line = "1,Università degli Studi di Roma Tor Vergata,Rome"; 
    Row *uni_row1 = create_row(data_line, uni_schema, table_name);

    data_line = "2,Università degli Studi di Roma Sapienza,Rome"; 
    Row *uni_row2 = create_row(data_line, uni_schema, table_name);

    data_line = "3,Università degli Studi di Milano,Milan"; 
    Row *uni_row3 = create_row(data_line, uni_schema, table_name);

    data_line = "4,Politecnico di Milano,Milan"; 
    Row *uni_row4 = create_row(data_line, uni_schema, table_name);

    data_line = "5,Università degli Studi di Torino,Turin"; 
    Row *uni_row5 = create_row(data_line, uni_schema, table_name);

    data_line = "6,Università degli Studi di Napoli,Naples"; 
    Row *uni_row6 = create_row(data_line, uni_schema, table_name);

    data_line = "7,Università degli Studi di Pisa,Pisa"; 
    Row *uni_row7 = create_row(data_line, uni_schema, table_name);

    RowsList uni_rows_list;
    Row uni_rows[7] = {*uni_row1, *uni_row2, *uni_row3, *uni_row4, *uni_row5, *uni_row6, *uni_row7};
    uni_rows_list.num_rows = 7;
    uni_rows_list.rows = uni_rows;

    /* JOIN */

    int i;
    RowsList *ret_list;

    ret_list = Join(student_rows_list, uni_rows_list, "university_ID", "ID");

    test_assert(ret_list->num_rows == 8);
    for (i = 0; i < ret_list->num_rows; i++) {
        test_assert(ret_list->rows[i].num_elements == 8);
    }

    test_assert(ret_list->rows[0].elements[0].value.int_value == 1);
    test_assert(!strcmp(ret_list->rows[0].elements[1].value.string_value, "Mario Rossi"));
    test_assert(ret_list->rows[0].elements[2].value.long_value == convert_to_unix_tstamp("2000-01-01 00:00:00"));
    test_assert(ret_list->rows[0].elements[3].value.int_value == 1);
    test_assert(fabs(ret_list->rows[0].elements[4].value.float_value - 29.0) < DELTA);
    test_assert(ret_list->rows[0].elements[5].value.int_value == 1);
    test_assert(!strcmp(ret_list->rows[0].elements[6].value.string_value, "Università degli Studi di Roma Tor Vergata"));
    test_assert(!strcmp(ret_list->rows[0].elements[7].value.string_value, "Rome"));

    test_assert(ret_list->rows[1].elements[0].value.int_value == 2);
    test_assert(!strcmp(ret_list->rows[1].elements[1].value.string_value, "Mario Bianchi"));
    test_assert(ret_list->rows[1].elements[2].value.long_value == convert_to_unix_tstamp("2002-05-01 10:30:00"));
    test_assert(ret_list->rows[1].elements[3].value.int_value == 1);
    test_assert(fabs(ret_list->rows[1].elements[4].value.float_value - 28.7) < DELTA);
    test_assert(ret_list->rows[1].elements[5].value.int_value == 1);
    test_assert(!strcmp(ret_list->rows[1].elements[6].value.string_value, "Università degli Studi di Roma Tor Vergata"));
    test_assert(!strcmp(ret_list->rows[1].elements[7].value.string_value, "Rome"));

    test_assert(ret_list->rows[2].elements[0].value.int_value == 3);
    test_assert(!strcmp(ret_list->rows[2].elements[1].value.string_value, "Mario Rossi"));
    test_assert(ret_list->rows[2].elements[2].value.long_value == convert_to_unix_tstamp("1998-06-25 10:03:09"));
    test_assert(ret_list->rows[2].elements[3].value.int_value == 2);
    test_assert(fabs(ret_list->rows[2].elements[4].value.float_value - 26.4) < DELTA);
    test_assert(ret_list->rows[2].elements[5].value.int_value == 2);
    test_assert(!strcmp(ret_list->rows[2].elements[6].value.string_value, "Università degli Studi di Roma Sapienza"));
    test_assert(!strcmp(ret_list->rows[2].elements[7].value.string_value, "Rome"));

    test_assert(ret_list->rows[3].elements[0].value.int_value == 4);
    test_assert(!strcmp(ret_list->rows[3].elements[1].value.string_value, "Simone Bauco"));
    test_assert(ret_list->rows[3].elements[2].value.long_value == convert_to_unix_tstamp("2000-12-01 00:00:00"));
    test_assert(ret_list->rows[3].elements[3].value.int_value == 3);
    test_assert(fabs(ret_list->rows[3].elements[4].value.float_value - 29.4) < DELTA);
    test_assert(ret_list->rows[3].elements[5].value.int_value == 3);
    test_assert(!strcmp(ret_list->rows[3].elements[6].value.string_value, "Università degli Studi di Milano"));
    test_assert(!strcmp(ret_list->rows[3].elements[7].value.string_value, "Milan"));

    test_assert(ret_list->rows[4].elements[0].value.int_value == 5);
    test_assert(!strcmp(ret_list->rows[4].elements[1].value.string_value, "Simone Rossi"));
    test_assert(ret_list->rows[4].elements[2].value.long_value == convert_to_unix_tstamp("1990-01-01 00:00:00"));
    test_assert(ret_list->rows[4].elements[3].value.int_value == 4);
    test_assert(fabs(ret_list->rows[4].elements[4].value.float_value - 29.3) < DELTA);
    test_assert(ret_list->rows[4].elements[5].value.int_value == 4);
    test_assert(!strcmp(ret_list->rows[4].elements[6].value.string_value, "Politecnico di Milano"));
    test_assert(!strcmp(ret_list->rows[4].elements[7].value.string_value, "Milan"));

    test_assert(ret_list->rows[5].elements[0].value.int_value == 6);
    test_assert(!strcmp(ret_list->rows[5].elements[1].value.string_value, "Simone Bianchi"));
    test_assert(ret_list->rows[5].elements[2].value.long_value == convert_to_unix_tstamp("1995-07-30 00:00:00"));
    test_assert(ret_list->rows[5].elements[3].value.int_value == 5);
    test_assert(fabs(ret_list->rows[5].elements[4].value.float_value - 21.9) < DELTA);
    test_assert(ret_list->rows[5].elements[5].value.int_value == 5);
    test_assert(!strcmp(ret_list->rows[5].elements[6].value.string_value, "Università degli Studi di Torino"));
    test_assert(!strcmp(ret_list->rows[5].elements[7].value.string_value, "Turin"));

    test_assert(ret_list->rows[6].elements[0].value.int_value == 7);
    test_assert(!strcmp(ret_list->rows[6].elements[1].value.string_value, "Giovanni Bianchi"));
    test_assert(ret_list->rows[6].elements[2].value.long_value == convert_to_unix_tstamp("1989-01-01 00:00:00"));
    test_assert(ret_list->rows[6].elements[3].value.int_value == 6);
    test_assert(fabs(ret_list->rows[6].elements[4].value.float_value - 22.7) < DELTA);
    test_assert(ret_list->rows[6].elements[5].value.int_value == 6);
    test_assert(!strcmp(ret_list->rows[6].elements[6].value.string_value, "Università degli Studi di Napoli"));
    test_assert(!strcmp(ret_list->rows[6].elements[7].value.string_value, "Naples"));

    test_assert(ret_list->rows[7].elements[0].value.int_value == 8);
    test_assert(!strcmp(ret_list->rows[7].elements[1].value.string_value, "Luigi Bianchi"));
    test_assert(ret_list->rows[7].elements[2].value.long_value == convert_to_unix_tstamp("2000-05-24 19:00:09"));
    test_assert(ret_list->rows[7].elements[3].value.int_value == 7);
    test_assert(fabs(ret_list->rows[7].elements[4].value.float_value - 26.7) < DELTA);
    test_assert(ret_list->rows[7].elements[5].value.int_value == 7);
    test_assert(!strcmp(ret_list->rows[7].elements[6].value.string_value, "Università degli Studi di Pisa"));
    test_assert(!strcmp(ret_list->rows[7].elements[7].value.string_value, "Pisa"));

    free(ret_list);

    ret_list = Join(student_rows_list, uni_rows_list, "dummy", "ID");

    test_assert(ret_list == NULL);

    ret_list = Join(student_rows_list, uni_rows_list, "university_ID", "dummy");

    test_assert(ret_list == NULL);

    free(student_schema.cols_names);
    free(uni_schema.cols_names);
    free(student_row1);
    free(student_row2);
    free(student_row3);
    free(student_row4);
    free(student_row5);
    free(student_row6);
    free(student_row7);
    free(student_row8);
    free(uni_row1);
    free(uni_row2);
    free(uni_row3);
    free(uni_row4);
    free(uni_row5);
    free(uni_row6);
    free(uni_row7);

    return 0;
}

int main(void) {
	test("SQL Join", test_join, NULL);
}