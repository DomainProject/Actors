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
  topology = InitializeTopology(TOPOLOGY_GRAPH, 35);

  AddTopologyLink(topology, 22, 18, 1);
  SetTopologyLinkData(topology, 22, 18, (void *)"passenger_count");
  AddTopologyLink(topology, 0, 17, 1);
  static int window0to17 = 60;
  SetTopologyLinkData(topology, 0, 17, (void *)&window0to17);
  AddTopologyLink(topology, 17, 15, 1);
  SetTopologyLinkData(topology, 17, 15, (void *)"PULocationID == 230");
  AddTopologyLink(topology, 17, 16, 1);
  SetTopologyLinkData(topology, 17, 16, (void *)"PULocationID == 1 || (PULocationID == 132 || PULocationID == 138)");
  AddTopologyLink(topology, 17, 23, 1);
  SetTopologyLinkData(topology, 17, 23, (void *)"PULocationID,total_amount");
  AddTopologyLink(topology, 17, 26, 1);
  SetTopologyLinkData(topology, 17, 26, (void *)"PULocationID,passenger_count");
  AddTopologyLink(topology, 15, 19, 1);
  SetTopologyLinkData(topology, 15, 19, (void *)"tpep_pickup_datetime");
  AddTopologyLink(topology, 16, 21, 1);
  SetTopologyLinkData(topology, 16, 21, (void *)"PULocationID,passenger_count");
  AddTopologyLink(topology, 19, 20, 1);
  SetTopologyLinkData(topology, 19, 20, (void *)"tpep_pickup_datetime");
  AddTopologyLink(topology, 21, 22, 1);
  SetTopologyLinkData(topology, 21, 22, (void *)"PULocationID");
  AddTopologyLink(topology, 23, 24, 1);
  SetTopologyLinkData(topology, 23, 24, (void *)"PULocationID");
  AddTopologyLink(topology, 26, 27, 1);
  SetTopologyLinkData(topology, 26, 27, (void *)"PULocationID");
  AddTopologyLink(topology, 24, 25, 1);
  SetTopologyLinkData(topology, 24, 25, (void *)"total_amount");
  AddTopologyLink(topology, 27, 28, 1);
  SetTopologyLinkData(topology, 27, 28, (void *)"passenger_count");
  AddTopologyLink(topology, 28, 30, 1);
  SetTopologyLinkData(topology, 28, 30, (void *)"AvgPassengersByPUZone.PULocationID");
  AddTopologyLink(topology, 25, 30, 1);
  SetTopologyLinkData(topology, 25, 30, (void *)"AvgTotalAmountByPUZone.PULocationID");
  AddTopologyLink(topology, 30, 29, 1);
  SetTopologyLinkData(topology, 30, 29, (void *)"AvgPassengersByPUZone.PULocationID,AvgPassengersByPUZone.passenger_count,AvgTotalAmountByPUZone.total_amount");

  AddTopologyLink(topology, 20, 31, 1);
  SetTopologyLinkData(topology, 20, 31, (void *)"Query1.csv");
  AddTopologyLink(topology, 22, 32, 1);
  SetTopologyLinkData(topology, 22, 32, (void *)"Query2.csv");
  AddTopologyLink(topology, 29, 33, 1);
  SetTopologyLinkData(topology, 29, 33, (void *)"Query3.csv");
}



void window(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= ExecuteWindow((Message *)content, (WindowData *)data);
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

void projection(lp_id_t me, simtime_t now, const void *content, void *data) {
  RowsList *result= wProjection((Message *)content, data);
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
    case 18:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 22, me);
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
    case 15:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 17, me);
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
    case 16:
      /* SELECTION */
      switch(event_type) {
        case LP_INIT:
          SelectionInit(topology, 17, me);
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
    case 17:
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
    case 19:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 15, me);
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
      /* AGGREGATE FUNCTION (Count) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 19, me);
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
    case 21:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 16, me);
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
    case 22:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 21, me);
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
    case 23:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 17, me);
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
    case 25:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 24, me);
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
    case 26:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 17, me);
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
    case 27:
      /* GROUP BY */
      switch(event_type) {
        case LP_INIT:
          GroupByInit(topology, 26, me);
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
    case 28:
      /* AGGREGATE FUNCTION (Average) */
      switch(event_type) {
        case LP_INIT:
          AggregateFunctionInit(topology, 27, me);
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
    case 29:
      /* PROJECTION */
      switch(event_type) {
        case LP_INIT:
          ProjectionInit(topology, 30, me);
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
      /* JOIN */
      switch(event_type) {
        case LP_INIT:
          JoinInit(topology, 28, 25, me);
          break;
        case EVENT:
          joinColumns(me, now, content, s);
          break;
        case LP_FINI:
          JoinCleanUp((JoinData *)s);
          break;
        case TERMINATE:
          join_data = (JoinData *)s;
          if (!join_data->can_end) {
            join_data->can_end = true;
            ForwardTerminationMessage(topology, me, now);
          }
          break;
        default:
          fprintf(stderr, "Unknown event type");
          puts("");
          abort();
      }
      break;

    case 31:
		/* OUTPUT */
		switch(event_type) {
        case LP_INIT:
		      output_data = rs_malloc(sizeof(OutputProcessData));
		      output_data->can_end = false;
          output_data->filename = (char *)GetTopologyLinkData(topology, 20, 31);
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
          output_data->filename = (char *)GetTopologyLinkData(topology, 22, 32);
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
          output_data->filename = (char *)GetTopologyLinkData(topology, 29, 33);
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
    case 15:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 16:
      selection_data = (SelectionData *)snapshot;
      return selection_data->can_end;
    case 17:
      window_data = (WindowData *)snapshot;
      return window_data->can_end;
    case 18:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 19:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 20:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 21:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 22:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 23:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 24:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 25:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 26:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 27:
      groupBy_data = (GroupByData *)snapshot;
      return groupBy_data->can_end;
    case 28:
      agg_function_data = (AggregateFunctionData *)snapshot;
      return agg_function_data->can_end;
    case 29:
      projection_data = (ProjectionData *)snapshot;
      return projection_data->can_end;
    case 30:
      join_data = (JoinData *)snapshot;
      return join_data->can_end;
    case 31 ... 33:
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

