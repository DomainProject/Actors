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

#define INPUT_FILE "taxi-1.csv"

FILE *file;
Schema schema;
struct topology *topology;
void InitTopology() {
  topology = InitializeTopology(TOPOLOGY_GRAPH, 12);

  AddTopologyLink(topology, 2, 4, 1);
  static int window2to4 = 15;
  SetTopologyLinkData(topology, 2, 4, (void *)&window2to4);
  AddTopologyLink(topology, 4, 3, 1);
  SetTopologyLinkData(topology, 4, 3, (void *)"congestion_surcharge == 0.0 && extra <= 1.0 || fare_amount < 10.0");
  AddTopologyLink(topology, 3, 7, 1);
  SetTopologyLinkData(topology, 3, 7, (void *)"VendorID,trip_distance,passenger_count,total_amount");
  AddTopologyLink(topology, 4, 5, 1);
  SetTopologyLinkData(topology, 4, 5, (void *)"VendorID == 2");
  AddTopologyLink(topology, 5, 8, 1);
  SetTopologyLinkData(topology, 5, 8, (void *)"extra,PULocationID");
  AddTopologyLink(topology, 8, 9, 1);
  SetTopologyLinkData(topology, 8, 9, (void *)"PULocationID");
  AddTopologyLink(topology, 9, 11, 1);
  SetTopologyLinkData(topology, 9, 11, (void *)"extra");
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
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)result, ROWS);
    ScheduleNewEvent(refs[i], now + 10, EVENT, msg, sizeof(Message));
  }
}

void selection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wSelection((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)result, ROWS);
    ScheduleNewEvent(refs[i], now + 10, EVENT, msg, sizeof(Message));
  }
}

void Average(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wAggregateFunction((Message *)content, data, AVG);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)result, ROWS);
    ScheduleNewEvent(refs[i], now + 10, EVENT, msg, sizeof(Message));
  }
}

void groupBy(lp_id_t me, simtime_t now, const void *content, void *data) {
  GroupsList *result= wGroupBy((Message *)content, data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)result, GROUPS);
    ScheduleNewEvent(refs[i], now + 10, EVENT, msg, sizeof(Message));
  }
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

  switch(me) {
    case 2:
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
    case 4:
      /* WINDOW */
      switch(event_type) {
        case LP_INIT:
          WindowInit(topology, 2, me);
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
    case 3:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 4, me);
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
          SelectionInit(topology, 4, me);
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
    case 8:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 5, me);
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
    case 9:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 8, me);
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
    case 11:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 9, me);
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
    case 2:
      source_data = (DataSourceData *)snapshot;
      return source_data->can_end;
    case 4:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 3:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 5:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 7:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 8:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 9:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 11:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
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

