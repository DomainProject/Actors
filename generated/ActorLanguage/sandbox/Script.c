#include <ROOT-Sim.h>
#include <ROOT-Sim/topology.h>
#include <pseudosql.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#ifndef NUM_LPS
#define NUM_LPS 1
#endif

#ifndef NUM_THREADS
#define NUM_THREADS 0
#endif

#define INPUT_FILE "taxi.csv"

FILE *file = NULL;
Schema schema = {0};
struct topology *topology = NULL;
???

void b1(lp_id_t me, simtime_t now, const void *content, void *data) {
();  unsigned long num_refs;
  lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
  for (int i = 0; i < num_refs; i++)
{
      
      ScheduleNewEvent(, now + 10, EVENT, m, sizeof(Message));

    }
}



void b2(lp_id_t me, simtime_t now, const void *content, void *data) {
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
          DataIngestionCleanUp(file, (DataSourceData *)s, &schema);
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
    case 0:
      source_data = (DataSourceData *)snapshot;
      return source_data->can_end;
    default:
      return true;
  }
}

struct simulation_configuration conf = {
  .n_threads = 1,
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
  if (argc != 2) {
    printf("Usage: %s <n_threads>", argv[0]);
    exit(1);
  }
  conf.n_threads = atoi(argv[1]);
  InitTopology();
  RootsimInit(&conf);
  int ret = RootsimRun();
  ReleaseTopology(topology);
  return ret;
}

