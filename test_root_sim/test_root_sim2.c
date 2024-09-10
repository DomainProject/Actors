#include <ROOT-Sim.h>
#include <ROOT-Sim/topology.h>
#include <pseudosql.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#ifndef NUM_LPS
#define NUM_LPS 256
#endif

#ifndef NUM_THREADS
#define NUM_THREADS 0
#endif

#define INPUT_FILE "taxi_1000.csv"

FILE *file;
Schema schema;
struct topology *topology;
void InitTopology() {
  topology = InitializeTopology(TOPOLOGY_GRAPH, 36);

  AddTopologyLink(topology, 0, 7, 1);
  static int window0to7 = 302;
  SetTopologyLinkData(topology, 0, 7, (void *)&window0to7);
  AddTopologyLink(topology, 0, 8, 1);
  static int window0to8 = 302;
  SetTopologyLinkData(topology, 0, 8, (void *)&window0to8);
  AddTopologyLink(topology, 0, 9, 1);
  static int window0to9 = 302;
  SetTopologyLinkData(topology, 0, 9, (void *)&window0to9);
  AddTopologyLink(topology, 0, 10, 1);
  static int window0to10 = 302;
  SetTopologyLinkData(topology, 0, 10, (void *)&window0to10);
  AddTopologyLink(topology, 1, 11, 1);
  SetTopologyLinkData(topology, 1, 11, (void *)"payment_type,total_amount");
  AddTopologyLink(topology, 2, 18, 1);
  SetTopologyLinkData(topology, 2, 18, (void *)"*");
  AddTopologyLink(topology, 3, 19, 1);
  SetTopologyLinkData(topology, 3, 19, (void *)"PULocationID,congestion_surcharge");
  AddTopologyLink(topology, 4, 27, 1);
  SetTopologyLinkData(topology, 4, 27, (void *)"PULocationID,DOLocationID");
  AddTopologyLink(topology, 7, 1, 1);
  SetTopologyLinkData(topology, 7, 1, (void *)"Airport_fee != 0.0");
  AddTopologyLink(topology, 8, 14, 1);
  SetTopologyLinkData(topology, 8, 14, (void *)"PULocationID,passenger_count");
  AddTopologyLink(topology, 9, 2, 1);
  SetTopologyLinkData(topology, 9, 2, (void *)"tpep_pickup_datetime >= 2024-12-25 00:00:00 && tpep_pickup_datetime <= 2024-12-25 23:59:59");
  AddTopologyLink(topology, 7, 3, 1);
  SetTopologyLinkData(topology, 7, 3, (void *)"PULocationID == 161 || DOLocationID == 161");
  AddTopologyLink(topology, 10, 23, 1);
  SetTopologyLinkData(topology, 10, 23, (void *)"PULocationID,trip_distance");
  AddTopologyLink(topology, 7, 4, 1);
  SetTopologyLinkData(topology, 7, 4, (void *)"tip_amount > 10.0");
  AddTopologyLink(topology, 7, 5, 1);
  SetTopologyLinkData(topology, 7, 5, (void *)"passenger_count > 4");
  AddTopologyLink(topology, 7, 6, 1);
  SetTopologyLinkData(topology, 7, 6, (void *)"payment_type == 1 && total_amount > 100.0");
  AddTopologyLink(topology, 11, 12, 1);
  SetTopologyLinkData(topology, 11, 12, (void *)"payment_type");
  AddTopologyLink(topology, 14, 15, 1);
  SetTopologyLinkData(topology, 14, 15, (void *)"PULocationID");
  AddTopologyLink(topology, 19, 20, 1);
  SetTopologyLinkData(topology, 19, 20, (void *)"PULocationID");
  AddTopologyLink(topology, 23, 24, 1);
  SetTopologyLinkData(topology, 23, 24, (void *)"PULocationID");
  AddTopologyLink(topology, 12, 13, 1);
  SetTopologyLinkData(topology, 12, 13, (void *)"total_amount");
  AddTopologyLink(topology, 15, 17, 1);
  SetTopologyLinkData(topology, 15, 17, (void *)"passenger_count");
  AddTopologyLink(topology, 20, 22, 1);
  SetTopologyLinkData(topology, 20, 22, (void *)"congestion_surcharge");
  AddTopologyLink(topology, 24, 26, 1);
  SetTopologyLinkData(topology, 24, 26, (void *)"trip_distance");
  AddTopologyLink(topology, 17, 16, 1);
  SetTopologyLinkData(topology, 17, 16, (void *)"passenger_count");
  AddTopologyLink(topology, 22, 21, 1);
  SetTopologyLinkData(topology, 22, 21, (void *)"congestion_surcharge");
  AddTopologyLink(topology, 26, 25, 1);
  SetTopologyLinkData(topology, 26, 25, (void *)"trip_distance");

  AddTopologyLink(topology, 18, 28, 1);
  SetTopologyLinkData(topology, 18, 29, (void *)"Query1.csv");
  AddTopologyLink(topology, 16, 29, 1);
  SetTopologyLinkData(topology, 16, 29, (void *)"Query2.csv");
  AddTopologyLink(topology, 25, 30, 1);
  SetTopologyLinkData(topology, 25, 30, (void *)"Query3.csv");
  AddTopologyLink(topology, 6, 31, 1);
  SetTopologyLinkData(topology, 6, 31, (void *)"Query4.csv");
  AddTopologyLink(topology, 5, 32, 1);
  SetTopologyLinkData(topology, 5, 32, (void *)"Query5.csv");
  AddTopologyLink(topology, 21, 33, 1);
  SetTopologyLinkData(topology, 21, 33, (void *)"Query6.csv");
  AddTopologyLink(topology, 13, 34, 1);
  SetTopologyLinkData(topology, 13, 34, (void *)"Query7.csv");
  AddTopologyLink(topology, 27, 35, 1);
  SetTopologyLinkData(topology, 27, 35, (void *)"Query8.csv");
}



void window(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= ExecuteWindow((Message *)content, (WindowData *)data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void projection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wProjection((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void selection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wSelection((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void joinColumns(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wJoin((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void Sum(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, SUM);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void Count(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, COUNT);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void Average(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, AVG);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void groupBy(lp_id_t me, simtime_t now, const void *content, void *data) {
  GroupsList *result= wGroupBy((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, GROUPS, result, now, refs, num_refs);
}

void orderBy(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wOrderBy((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void DataSource(lp_id_t me, simtime_t now, const void *content, void *data) {
}

void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size, void *s)
{
  WindowData *window_data;
  SelectionData *selection_data;
  ProjectionData *projection_data;
  OrderByData *orderBy_data;
  GroupByData *groupBy_data;
  AggregateFunctionData *agg_function_data;
  OutputProcessData *output_data;
  JoinData *join_data;

  switch(me) {
    case 0:
      /* DATA SOURCE */
      switch(event_type) {
        case LP_INIT:
          DataIngestionInit(me, now, &file, INPUT_FILE, &schema);
          break;
        case EVENT:
          DataIngestion(topology, me, now, (DataSourceData *)s, &file, &schema);
          break;
        case LP_FINI:
          DataIngestionCleanUp(file, (DataSourceData *)s);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 1:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 7, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 2:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 9, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 3:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 7, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 4:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 7, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 5:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 7, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 6:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 7, me);
          break;
        case EVENT:
          selection(me, now, content, s);
          break;
        case LP_FINI:
          SelectionCleanUp((SelectionData *)s);
          break;
        case TERMINATE:
          selection_data = (SelectionData *)s;
          selection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 7:
      /* WINDOW */
      switch(event_type) {
        case LP_INIT:
          WindowInit(topology, 0, me);
          break;
        case EVENT:
          window(me, now, content, s);
          break;
        case LP_FINI:
          WindowCleanUp((WindowData *)s);
          break;
        case TERMINATE:
          TerminateWindow(topology, (WindowData *)s, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 8:
      /* WINDOW */
      switch(event_type) {
        case LP_INIT:
          WindowInit(topology, 0, me);
          break;
        case EVENT:
          window(me, now, content, s);
          break;
        case LP_FINI:
          WindowCleanUp((WindowData *)s);
          break;
        case TERMINATE:
          TerminateWindow(topology, (WindowData *)s, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 9:
      /* WINDOW */
      switch(event_type) {
        case LP_INIT:
          WindowInit(topology, 0, me);
          break;
        case EVENT:
          window(me, now, content, s);
          break;
        case LP_FINI:
          WindowCleanUp((WindowData *)s);
          break;
        case TERMINATE:
          TerminateWindow(topology, (WindowData *)s, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 10:
      /* WINDOW */
      switch(event_type) {
        case LP_INIT:
          WindowInit(topology, 0, me);
          break;
        case EVENT:
          window(me, now, content, s);
          break;
        case LP_FINI:
          WindowCleanUp((WindowData *)s);
          break;
        case TERMINATE:
          TerminateWindow(topology, (WindowData *)s, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 11:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 1, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 12:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 11, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 13:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 12, me);
          break;
        case EVENT:
          Average(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 14:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 8, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 15:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 14, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 16:
      /* ORDER BY */
      switch(event_type) {
        case LP_INIT:
          OrderByInit(topology, 17, me);
          break;
        case EVENT:
          orderBy(me, now, content, s);
          break;
        case LP_FINI:
          OrderByCleanUp((OrderByData *)s);
          break;
        case TERMINATE:
          orderBy_data = (OrderByData *)s;
          orderBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 17:
      /* AGGREGATE FUNCTION (Sum) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 15, me);
          break;
        case EVENT:
          Sum(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 18:
      /* AGGREGATE FUNCTION (Count) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 2, me);
          break;
        case EVENT:
          Count(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 19:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 3, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 20:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 19, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 21:
      /* ORDER BY */
      switch(event_type) {
        case LP_INIT:
          OrderByInit(topology, 22, me);
          break;
        case EVENT:
          orderBy(me, now, content, s);
          break;
        case LP_FINI:
          OrderByCleanUp((OrderByData *)s);
          break;
        case TERMINATE:
          orderBy_data = (OrderByData *)s;
          orderBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 22:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 20, me);
          break;
        case EVENT:
          Average(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 23:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 10, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 25:
      /* ORDER BY */
      switch(event_type) {
        case LP_INIT:
          OrderByInit(topology, 26, me);
          break;
        case EVENT:
          orderBy(me, now, content, s);
          break;
        case LP_FINI:
          OrderByCleanUp((OrderByData *)s);
          break;
        case TERMINATE:
          orderBy_data = (OrderByData *)s;
          orderBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 24:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 23, me);
          break;
        case EVENT:
          groupBy(me, now, content, s);
          break;
        case LP_FINI:
          GroupByCleanUp((GroupByData *)s);
          break;
        case TERMINATE:
          groupBy_data = (GroupByData *)s;
          groupBy_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 26:
      /* AGGREGATE FUNCTION (Sum) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 24, me);
          break;
        case EVENT:
          Sum(me, now, content, s);
          break;
        case LP_FINI:
          AggFunctionCleanUp((AggregateFunctionData *)s);
          break;
        case TERMINATE:
          agg_function_data = (AggregateFunctionData *)s;
          agg_function_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 27:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 4, me);
          break;
        case EVENT:
          projection(me, now, content, s);
          break;
        case LP_FINI:
          ProjectionCleanUp((ProjectionData *)s);
          break;
        case TERMINATE:
          projection_data = (ProjectionData *)s;
          projection_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;
    case 28:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 18, 28);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 29:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 16, 29);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 30:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 25, 30);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 31:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 6, 31);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 32:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 5, 32);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 33:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 21, 33);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 34:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 13, 34);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
      case 35:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 27, 35);
		      SetState(output_data);
          break;
        case EVENT:
          WriteToOutputFile(me, content, (OutputProcessData *)s);
          break;
        case LP_FINI:
          OutputCleanUp((OutputProcessData *)s);
          break;
        case TERMINATE:
          output_data = (OutputProcessData *)s;
          output_data->can_end = true;
          ForwardTerminationMessage(topology, me, now);
          break;
        default:
          fprintf(stderr, "Unknown event type\n");
          abort();
      }
      break;
  }
}

bool CanEnd(lp_id_t me, const void *snapshot) {
  DataSourceData *source_data;
  WindowData *window_data;
  SelectionData *selection_data;
  ProjectionData *projection_data;
  GroupByData *groupBy_data;
  OrderByData *orderBy_data;
  OutputProcessData *output_data;
  JoinData *join_data;
  AggregateFunctionData *agg_function_data;
  switch(me) {
    case 0:
      source_data = (DataSourceData *)snapshot;
      return source_data->can_end;
    case 1:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 2:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 3:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 4:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 5:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 6:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 7:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 8:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 9:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 10:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 11:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 12:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 13:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 14:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 15:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 16:
      orderBy_data = (OrderByData *)snapshot;
      return orderBy_data->can_end;
    case 17:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 18:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 19:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 20:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 21:
      orderBy_data = (OrderByData *)snapshot;
      return orderBy_data->can_end;
    case 22:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 23:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 25:
      orderBy_data = (OrderByData *)snapshot;
      return orderBy_data->can_end;
    case 24:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 26:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 27:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 28 ... 35:
        output_data = (OutputProcessData *)snapshot;
        return output_data->can_end;
    default:
      return true;
  }
}

struct simulation_configuration conf = {
  .lps = NUM_LPS,
  .n_threads = NUM_THREADS,
  .termination_time = 0,
  .gvt_period = 1000,
  .log_level = LOG_INFO,
  .stats_file = "stats",
  .ckpt_interval = 0,
  .core_binding = true,
  .serial = false,
  .dispatcher = ProcessEvent,
  .committed = CanEnd,
};

int main(void) {
  InitTopology();
  RootsimInit(&conf);
  return RootsimRun();
}

