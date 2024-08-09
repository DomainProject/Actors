#pragma once

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "condition_parser.h"
#include "utils.h"

extern RowsList *ProjectionMultRows(RowsList input_rows, AttributeList list);
extern RowsList *SelectionMultRows(RowsList input_rows, Condition *condition);
extern RowsList *OrderBy(RowsList input_rows, const char *col_name);
extern GroupsList *GroupBy(RowsList *rows_list, const char *col_name);
extern void *AggregateFunction(AggFunctionData input, AggregateFunctionType type);
RowsList *Join(RowsList list1, RowsList list2, char *col1_name, char *col2_name);
