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
  topology = InitializeTopology(TOPOLOGY_GRAPH, 11);


  AddTopologyLink(topology, 0, 1, 1);
  static int window0to17 = 300;
  SetTopologyLinkData(topology, 0, 1, (void *)&window0to17);
  AddTopologyLink(topology, 0, 2, 1);
  static int window0to2 = 60;
  SetTopologyLinkData(topology, 0, 2, (void *)&window0to2);
  AddTopologyLink(topology, 0, 3, 1);
  static int window0to3 = 90;
  SetTopologyLinkData(topology, 0, 3, (void *)&window0to3);
  AddTopologyLink(topology, 0, 4, 1);
  static int window0to4 = 120;
  SetTopologyLinkData(topology, 0, 4, (void *)&window0to4);
  AddTopologyLink(topology, 1, 6, 1);
  AddTopologyLink(topology, 2, 7, 1);
  AddTopologyLink(topology, 3, 8, 1);
  AddTopologyLink(topology, 4, 9, 1);
}



void window(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= ExecuteWindow((Message *)content, (WindowData *)data);
  if (!result) return;

  int num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  CreateAndSendMessage(me, 5.0, ROWS, result, now, refs, num_refs);
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
    case 1 ... 4:
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
    case 6 ... 9:
      switch(event_type) {
        case LP_INIT:
          break;
        case EVENT:
          printf("[%ld] Testing window:\n", me);
          TestWindow(content);
          break;
        case LP_FINI:
          break;
        case TERMINATE:
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
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
    case 1 ... 3:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    default:
      return false;
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

