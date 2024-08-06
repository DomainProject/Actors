#pragma once

#define EXPORT __attribute__((__visibility__("default")))

#define MAX_CONDITION_LENGTH 1024

typedef struct {
	int num_cols;
	char **cols_names;
} Schema;

typedef enum {
	TYPE_INT,
	TYPE_LONG,
	TYPE_FLOAT,
	TYPE_STRING,
    TYPE_DOUBLE
} Type;

typedef struct {
	char *col_name;
	union {
		long long_value;
		int int_value;
		float float_value;
		char *string_value;
        double double_value;
	} value;
	Type type;
} RowElement;

typedef struct {
	int num_elements;
	RowElement *elements;
	char *table_name;
} Row;

typedef struct {
	char *name;
} Attribute;

typedef struct {
	int num_attributes;
	Attribute *attributes;
} AttributeList;

struct message {
	Row *row;
};

typedef struct {
	int num_rows;
	Row* rows;
} RowsList;


typedef enum {
    OPERATOR_INVALID,
    OPERATOR_GR,    // >
    OPERATOR_LO,    // <
    OPERATOR_GE,    // >=
    OPERATOR_LE,    // <=
    OPERATOR_EQ,    // ==
    OPERATOR_NE     // !=
} Operator;

typedef enum {
    LOPERATOR_AND,   // &&
    LOPERATOR_OR,    // ||
    LOPERATOR_INVALID
} LogicalOperator;  

typedef enum {
    SIMPLE_CONDITION,
    MULTIPLE_CONDITION
} ConditionType;

typedef struct Condition Condition;

typedef struct {
    char *column;
    Operator operator;
    char *value;
} SimpleCondition;

typedef struct {
    Condition *left;
    LogicalOperator logical_operator;
    Condition *right;
} MultipleCondition;

typedef struct Condition {
    ConditionType type;
    union {
        SimpleCondition simple_condition;
        MultipleCondition multiple_condition;
    } condition;
} Condition;

typedef struct {
    char *col_name;     // probably useless
    RowsList rows_list;
} Group;

typedef struct {
    int num_groups;
    Group* groups;
    int col_index;
} GroupsList;

typedef enum {
    TYPE_ROWS,      // rows input (list of rows)
    TYPE_GROUPS     // grouped input (produced by groupBy execution)
} AggFunctionInputType;

typedef struct {
    AggFunctionInputType type;
    union {
        GroupsList groups;
        RowsList rows;
    } input_data;
    char *col_name;
} AggFunctionData;  

typedef enum {
    MIN,
    MAX,
    AVG,
    COUNT,
    SUM
} AggregateFunctionType;

typedef struct {
    Type type;
    union {
        int int_value;
        long long_value;
        char *string_value;
        float float_value;
        double double_value;
    } value;
} AggFunctionResultValue;

/* schema/row management */
EXPORT void InitializeSchema(Schema *schema, char *header);
EXPORT void PrintSchema(const Schema *schema);
EXPORT void PrintRow(const Row *row);
EXPORT void PopulateRow(char *row_string, Row *row, Schema schema);

/* sql operations */
EXPORT Row *Projection(Row input_row, AttributeList list);
EXPORT RowsList *ProjectionMultRows(RowsList input_rows, AttributeList list);
EXPORT int Selection(Row input_row, Condition *condition);
EXPORT RowsList *SelectionMultRows(RowsList input_rows, Condition *condition);
EXPORT RowsList *OrderBy(RowsList input_rows, const char *col_name);
EXPORT GroupsList *GroupBy(RowsList *rows_list, const char *attribute_name);
EXPORT void *AggregateFunction(AggFunctionData input_data, AggregateFunctionType type);
EXPORT RowsList *Join(RowsList list1, RowsList list2, char *col1_name, char *col2_name);

/* conditions */
EXPORT Condition *ParseCondition(char **condition_string);
EXPORT int EvaluateCondition(Condition *condition, Row *row);
