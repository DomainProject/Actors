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
  topology = InitializeTopology(TOPOLOGY_GRAPH, 31);

  AddTopologyLink(topology, 0, 28, 1);
  SetTopologyLinkData(topology, 0, 28, (void *)"tpep_pickup_datetime >= 2024-01-01 00:00:00 && tpep_dropoff_datetime <= 2024-01-01 23:59:59");
  AddTopologyLink(topology, 28, 29, 1);
  SetTopologyLinkData(topology, 28, 29, (void *)"DOLocationID,PULocationID");
  AddTopologyLink(topology, 29, 30, 1);
  SetTopologyLinkData(topology, 29, 30, (void *)"Query.csv");
}



void window(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= ExecuteWindow((Message *)content, (WindowData *)data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
}

void projection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *projectionResult= wProjection((Message *)content, data);
  if (!projectionResult) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)projectionResult, ROWS);
    ScheduleNewEvent(refs[i], now + 10, EVENT, msg, sizeof(Message));
  }
}

void selection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *selectionResult= wSelection((Message *)content, data);
  if (!selectionResult) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)selectionResult, ROWS);
    ScheduleNewEvent(refs[i], now + 10, EVENT, msg, sizeof(Message));
  }
}

void joinColumns(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *joinResult= wJoin((Message *)content, data);
  if (!joinResult) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++) {
    Message *msg = CreateMessage(me, 5.0, (void *)joinResult, ROWS);
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
    case 28:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 0, me);
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
    case 29:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 28, me);
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
      case 30:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 29, 30);
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
    case 28:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 29:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 30:
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

