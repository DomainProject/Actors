#include <ROOT-Sim.h>
#include <ROOT-Sim/topology.h>
#include <pseudosql.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define CHECK_RSMALLOC(ptr)    \
    do {                       \
        if (!(ptr)) {          \
            perror("rs_malloc"); \
            exit(EXIT_FAILURE); \
        }                      \
    } while (0)

#define TERMINATE 2 // custom event type for termination

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
