#pragma once

#include <stdbool.h>
#include <ROOT-Sim.h>
#include <ROOT-Sim/topology.h>

#define CHECK_RSMALLOC(ptr)    \
    do {                       \
        if (!(ptr)) {          \
            perror("rs_malloc"); \
            exit(EXIT_FAILURE); \
        }                      \
    } while (0)

#define EXPORT __attribute__((__visibility__("default")))

#define MAX_CONDITION_LENGTH 1024

#define EVENT 1
#define TERMINATE 2 // custom event type for termination

#define __unused __attribute__((unused))

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


typedef struct {
    bool can_end;
} DataSourceData;

typedef struct {
    Condition *condition;
    char *condition_string;
    bool can_end;
} SelectionData;

typedef struct {
    AttributeList *list;
    char *list_string;
    bool can_end;
} ProjectionData;

typedef struct {
    int window_size;    // in seconds
    RowsList *list;
    int received_tuples;
    long cur_time;
    long max_time;
    bool can_end;
} WindowData;

typedef struct {
    char *attribute;
    bool can_end;
} OrderByData;  

typedef struct {
    char *attribute;
    bool can_end;
} GroupByData;  

typedef struct {
    char *attribute;
    bool can_end;
} AggregateFunctionData;  

typedef struct {
    lp_id_t from_id;
    char *attribute;
    RowsList *list;
} JoinTableData;

typedef struct {
    unsigned int size;
    JoinTableData **tables_data;
    bool can_end;
} JoinData;

typedef struct {
    bool can_end;
} OutputProcessData;

typedef enum {
    GROUPS,
    ROWS
} MessageType;

typedef struct {
    lp_id_t sender;
    float priority;
} Envelope;

typedef struct {
    Envelope *envelope;
    MessageType type;
    union {
        RowsList *rows_list;
        GroupsList *groups_list;
    } content;
} Message;

EXPORT RowsList* CopyAndFreeRowsList(RowsList *list);
EXPORT void SendMessageToAllNeighbors(struct topology *topology, Message *message, simtime_t now);
EXPORT void CreateAndSendRowsMessage(struct topology *topology, lp_id_t sender_id, float priority, RowsList *send_list, simtime_t now);
EXPORT void CreateAndSendGroupsMessage(struct topology *topology, lp_id_t sender_id, float priority, GroupsList *send_list, simtime_t now);
EXPORT long ComputeSleepTime(char *datetime);
EXPORT void DataIngestionInit(lp_id_t me, simtime_t now, FILE **file, char *filename, Schema *schema);
EXPORT void DataIngestion(struct topology *topology, lp_id_t me, simtime_t now, DataSourceData *data, FILE **file, Schema *schema);
EXPORT void WindowInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void Window(struct topology *topology, lp_id_t me, simtime_t now, const void *content, WindowData *data, float priority);
EXPORT void TestWindow(const void *content);
EXPORT void SelectionInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void wSelection(struct topology *topology, lp_id_t me, simtime_t now, const void *content, SelectionData *data, float priority);
EXPORT void ProjectionInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void wProjection(struct topology *topology, lp_id_t me, simtime_t now, const void *content, ProjectionData *data, float priority);
EXPORT void OrderByInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void wOrderBy(struct topology *topology, lp_id_t me, simtime_t now, const void *content, OrderByData *data, float priority);
EXPORT void GroupByInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void wGroupBy(struct topology *topology, lp_id_t me, simtime_t now, const void *content, GroupByData *data, float priority);
EXPORT void AggregateFunctionInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void wAggregateFunction(struct topology *topology, lp_id_t me, simtime_t now, const void *content, AggregateFunctionData *data, float priority, AggregateFunctionType type);
EXPORT void InitJoin(struct topology *topology, lp_id_t from, lp_id_t me, JoinTableData *table_data);
EXPORT void wJoin(struct topology *topology, lp_id_t me, simtime_t now, const void *content, JoinData *data, float priority);
EXPORT void ProcessMessage(lp_id_t me, const void *content);
EXPORT void ForwardTerminationMessage(struct topology *topology, lp_id_t me, simtime_t now);
EXPORT void DataIngestionCleanUp(FILE *file, DataSourceData *data);
EXPORT void WindowCleanUp(WindowData *data);
EXPORT void SelectionCleanUp(SelectionData *data);
EXPORT void ProjectionCleanUp(ProjectionData *data);
EXPORT void GroupByCleanUp(GroupByData *data);
EXPORT void AggFunctionCleanUp(AggFunctionData *data);
EXPORT void OrderByCleanUp(OrderByData *data);
EXPORT void JoinCleanUp(JoinData *data);
EXPORT void OutputCleanUp(OutputProcessData *data);
