#pragma once 

#include "include/pseudosql.h"

extern void print_condition(Condition *condition);
extern int EvaluateCondition(Condition *condition, RowNew *row);
extern Condition *ParseCondition(char **condition_string);
