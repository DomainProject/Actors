#pragma once

#include <stdbool.h>
#include <ROOT-Sim.h>
#include <ROOT-Sim/topology.h>

#define CHECK_RSMALLOC(ptr, function)    \
    do {                       \
        if (!(ptr)) {          \
            fprintf(stderr, "Cannot allocate memory in function %s\n", function); \
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
    char *table_name;
} JoinTableData;

typedef struct {
    unsigned int size;
    JoinTableData **tables_data;
    bool can_end;
} JoinData;

typedef struct {
    bool can_end;
    char *filename;
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

typedef struct {
	char col_name[32];
	union {
		long long_value;
		int int_value;
		float float_value;
		char string_value[16];
        double double_value;
	} value;
	Type type;
} RowElementNew;

typedef struct {
	int num_elements;
	RowElementNew elements[19];
	char table_name[32];
} RowNew;

typedef struct {
    char *col_name;     // probably useless
    int size;
    RowNew rows[];
} GroupNew;

typedef struct {
    int num_rows;
    RowNew *rows;
} NewRowsList;

typedef union {
    RowNew row;
    GroupNew group;
} MessageEntry;

typedef struct {
    Envelope e;
    MessageType type;
    int size;
    MessageEntry entries[]; 
} NewMessage;

struct RowsLinkedListElement {
    RowNew *row;
    struct RowsLinkedListElement *next;
};

typedef struct {
    int size;
    struct RowsLinkedListElement *head;
} RowsLinkedList;

struct GroupsLinkedListElement {
    RowsLinkedList *rows_list;
    struct GroupsLinkedListElement *next;
};

typedef struct {
    int size;
    struct GroupsLinkedListElement *head;
} GroupsLinkedList;

typedef struct {
    int window_size;    // in seconds
    struct RowsLinkedListElement *list;
    int received_tuples;
    long cur_time;
    long max_time;
    bool can_end;
} WindowData;

/* utils */
EXPORT void PrintRow(const RowNew *row);
EXPORT void FreeList(RowsLinkedList* list);

/* SQL operations */
EXPORT RowsLinkedList *ProjectionMultRows(int size, MessageEntry *input_rows, AttributeList list);
EXPORT RowsLinkedList *SelectionMultRows(int size, MessageEntry *input_rows, Condition *condition);
EXPORT RowsLinkedList *OrderBy(int size, MessageEntry *input_rows, const char *col_name);
EXPORT GroupsLinkedList *GroupBy(int size, MessageEntry *input_rows, const char *col_name);
EXPORT void *AggregateFunction(AggFunctionData input, AggregateFunctionType type);
EXPORT RowsList *Join(RowsList list1, RowsList list2, char *col1_name, char *col2_name);

/* ROOT-Sim management function */
EXPORT RowsList* CopyAndFreeRowsList(RowsList *list);
EXPORT void SendMessageToAllNeighbors(struct topology *topology, Message *message, simtime_t now);
EXPORT Message *CreateMessage(lp_id_t sender_id, float priority, void *list, MessageType type);
EXPORT void CreateAndSendMessage(lp_id_t sender_id, float priority, MessageType type, void *list, simtime_t now, lp_id_t *receivers, int num_receivers);
EXPORT void DataIngestionInit(lp_id_t me, simtime_t now, FILE **file, char *filename, Schema *schema);
EXPORT void DataIngestion(struct topology *topology, lp_id_t me, simtime_t now, DataSourceData *data, FILE **file, Schema *schema);
EXPORT void WindowInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void TestWindow(const void *content);
EXPORT void SelectionInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void ProjectionInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void OrderByInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void GroupByInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void AggregateFunctionInit(struct topology *topology, lp_id_t from, lp_id_t me);
EXPORT void InitJoin(struct topology *topology, lp_id_t from, lp_id_t me, JoinTableData *table_data);
EXPORT void ProcessMessage(lp_id_t me, const void *content);
EXPORT void ForwardTerminationMessage(struct topology *topology, lp_id_t me, simtime_t now);
EXPORT void DataIngestionCleanUp(FILE *file, DataSourceData *data);
EXPORT void WindowCleanUp(WindowData *data);
EXPORT void SelectionCleanUp(SelectionData *data);
EXPORT void ProjectionCleanUp(ProjectionData *data);
EXPORT void GroupByCleanUp(GroupByData *data);
EXPORT void AggFunctionCleanUp(AggregateFunctionData *data);
EXPORT void OrderByCleanUp(OrderByData *data);
EXPORT void JoinCleanUp(JoinData *data);
EXPORT void OutputCleanUp(OutputProcessData *data);
EXPORT lp_id_t *GetAllNeighbors(struct topology *topology, lp_id_t me, int *num_neighbors);
EXPORT void AggregateFunctionRowsInput(Message *rcv_msg, char *attribute, AggregateFunctionType type);
EXPORT RowsList *AggregateFunctionGroupedInput(Message *rcv_msg, char *attribute, AggregateFunctionType type);
EXPORT RowsLinkedList *wSelection(NewMessage *rcv_msg, void *data);
EXPORT RowsLinkedList *wProjection(NewMessage *rcv_msg, void *data);
EXPORT RowsLinkedList *wOrderBy(NewMessage *rcv_msg, void *data);
EXPORT GroupsLinkedList *wGroupBy(NewMessage *rcv_msg, void *data);
EXPORT RowsList *wAggregateFunction(Message *rcv_msg, void *data, AggregateFunctionType type);
EXPORT RowsLinkedList *ExecuteWindow(NewMessage *rcv_msg, WindowData *data);
EXPORT RowsList *wJoin(Message *msg, void *data);
EXPORT void ProcessMessage(lp_id_t me, const void *content);
EXPORT void TerminateWindow(struct topology *topology, WindowData *window_data, lp_id_t me, simtime_t now);
EXPORT void JoinInit(struct topology *topology, lp_id_t from1, lp_id_t from2, lp_id_t me);
EXPORT void WriteToOutputFile(lp_id_t me, const void *content, OutputProcessData *data);
EXPORT void CreateAndSendMessageFromList(lp_id_t sender_id, float priority, RowsLinkedList *list, simtime_t now, lp_id_t *receivers, int num_receivers);
