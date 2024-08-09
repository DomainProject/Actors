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

bool end_of_file = false;

FILE *file;		/* input file */
Schema schema;	/* schema structure */
struct topology *topology;

/* TOPOLOGY FUNCTIONS */

void InitTopology() {

	static int window_size = 15;

	/*
	*	QUERY 1:
	*	SELECT VendorID, SUM(total_amount)
	*	FROM stream
	*	WHERE payment_type == 1 && (passenger_count < 3 || trip_distance < 10.0)
	*	GROUP BY VendorID
	*	ORDER BY total_amount
	*/

	char *condition_query1 = "payment_type == 1 && (passenger_count < 3 || trip_distance < 10.0)";
	char *projection_query1 = "VendorID,total_amount";
	char *groupBy_query1 = "VendorID";
	char *agg_function1 = "total_amount";
	char *orderBy_query1 = "total_amount";

	topology = InitializeTopology(TOPOLOGY_GRAPH, 15);

	/* data source to window */
	AddTopologyLink(topology, 0, 1, 1);

	/* window to selection */
    AddTopologyLink(topology, 1, 2, 1);

	/* selection to projection */
    AddTopologyLink(topology, 2, 3, 1);

	/* projection to groupBy */
	AddTopologyLink(topology, 3, 4, 1);

	/* groupBy to aggregate function */
	AddTopologyLink(topology, 4, 5, 1);

	/* aggregate function to orderBy */
	AddTopologyLink(topology, 5, 6, 1);

	/* orderBy to output */
	AddTopologyLink(topology, 6, 7, 1);

	SetTopologyLinkData(topology, 0, 1, (void *)&window_size);
	SetTopologyLinkData(topology, 1, 2, (void *)condition_query1);
	SetTopologyLinkData(topology, 2, 3, (void *)projection_query1);
	SetTopologyLinkData(topology, 3, 4, (void *)groupBy_query1);
	SetTopologyLinkData(topology, 4, 5, (void *)agg_function1);
	SetTopologyLinkData(topology, 5, 6, (void *)orderBy_query1);
}
 
void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size,
    void *s)
{
	WindowData *window_data;
	SelectionData *selection_data;
	ProjectionData *projection_data;
	OrderByData *orderBy_data;
	GroupByData *groupBy_data;
	AggregateFunctionData *agg_function_data;
	OutputProcessData *output_data;

	switch (me) {
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
					fprintf(stderr, "Unknown event type\n");
					abort();
			}

			break;
		
		case 1:
			/* WINDOW */
			switch(event_type) {
				case LP_INIT:
					WindowInit(topology, 0, me);
					break;
				case LP_FINI:
					WindowCleanUp((WindowData *)s);
					break;
				case EVENT:
					Window(topology, me, now, content, s, 5.0);
					break;
				case TERMINATE:
					window_data = (WindowData *)s;
					window_data->can_end = true;
					
					// flush window
					window_data->list->num_rows = window_data->received_tuples;

					RowsList *copy_list = rs_malloc(sizeof(RowsList));
					CHECK_RSMALLOC(copy_list);

					copy_list->num_rows = window_data->received_tuples;
					copy_list->rows = rs_malloc(sizeof(Row) * window_data->window_size);
					CHECK_RSMALLOC(copy_list->rows);

					for (int i = 0; i < window_data->list->num_rows; i++) {
						copy_list->rows[i] = window_data->list->rows[i];
					}

					CreateAndSendRowsMessage(topology, me, 5.0, copy_list, now);

					rs_free(window_data->list->rows);
					rs_free(window_data->list);

					ForwardTerminationMessage(topology, me, now);
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 2:
			/* SELECTION */
			switch(event_type) {
				case LP_INIT:
					SelectionInit(topology, 1, me);
					break;
				case LP_FINI:
					SelectionCleanUp((SelectionData *)s);
					break;
				case EVENT:
					wSelection(topology, me, now, content, (SelectionData *)s, 5.0);
					break;
				case TERMINATE:
					selection_data = (SelectionData *)s;
					selection_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;
		
		case 3:
			/* PROJECTION */
			switch(event_type) {
				case LP_INIT:
					ProjectionInit(topology, 2, me);
					break;
				case LP_FINI:
					ProjectionCleanUp((ProjectionData *)s);
					break;
				case EVENT:
					wProjection(topology, me, now, content, (ProjectionData *)s, 5.0);
					break;
				case TERMINATE:
					projection_data = (ProjectionData *)s;
					projection_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 4:
			/* GROUP BY */
			switch(event_type) {
				case LP_INIT:
					GroupByInit(topology, 3, me);
					break;
				case LP_FINI:
					GroupByCleanUp((GroupByData *)s);
					break;
				case EVENT:
					wGroupBy(topology, me, now, content, (GroupByData *)s, 5.0);
					break;
				case TERMINATE:
					groupBy_data = (GroupByData *)s;
					groupBy_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 5:
			/* AGGREGATE FUNCTION (SUM) */
			switch(event_type) {
				case LP_INIT:
					AggregateFunctionInit(topology, 4, me);
					break;
				case LP_FINI:
					AggFunctionCleanUp((AggFunctionData *)s);
					break;
				case EVENT:
					wAggregateFunction(topology, me, now, content, (AggregateFunctionData *)s, 5.0, SUM);
					break;
				case TERMINATE:
					agg_function_data = (AggregateFunctionData *)s;
					agg_function_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 6:
		/* ORDER BY */
		switch(event_type) {
				case LP_INIT:
					OrderByInit(topology, 5, me);
					break;
				case LP_FINI:
					OrderByCleanUp((OrderByData *)s);
					break;
				case EVENT:
					wOrderBy(topology, me, now, content, (OrderByData *)s, 5.0);
					break;
				case TERMINATE:
					orderBy_data = (OrderByData *)s;
					orderBy_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

			break;

		case 7:
			/* OUTPUT */
			switch(event_type) {
				case LP_INIT:
					output_data = rs_malloc(sizeof(OutputProcessData));
					CHECK_RSMALLOC(output_data);
					output_data->can_end = false;
					SetState(output_data);
					break;
				case LP_FINI:
					OutputCleanUp((OutputProcessData *)s);
					break;
				case EVENT:
					ProcessMessage(me, content);
					break;
				case TERMINATE:
					output_data = (OutputProcessData *)s;
					output_data->can_end = true;
					break;
				default:
					fprintf(stderr, "Unknown event type\n");
					exit(EXIT_FAILURE);
			}

		break;
	}
}

bool CanEnd(lp_id_t me, const void *snapshot)
{
	DataSourceData *source_data;
	WindowData *window_data;
	SelectionData *selection_data;
	ProjectionData *projection_data;
	GroupByData *groupBy_data;
	AggregateFunctionData *agg_function_data;
	OrderByData *orderBy_data;
	OutputProcessData *output_data;

	switch(me) {
		case 0:
			source_data = (DataSourceData *)snapshot;
			return source_data->can_end;
		case 1:
			window_data = (WindowData *)snapshot;
			return window_data->can_end;
		case 2:
			selection_data = (SelectionData *)snapshot;
			return selection_data->can_end;
		case 3:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		case 4:
			groupBy_data = (GroupByData *)snapshot;
			return groupBy_data->can_end;
		case 5:
			agg_function_data = (AggregateFunctionData *)snapshot;
			return agg_function_data->can_end;
		case 6:
			orderBy_data = (OrderByData *)snapshot;
			return orderBy_data->can_end;
		case 7:
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
    .stats_file = "test",
    .ckpt_interval = 0,
    .core_binding = true,
    .serial = false,
    .dispatcher = ProcessEvent,
    .committed = CanEnd,
};

int main(void)
{
	InitTopology();
	RootsimInit(&conf);
	return RootsimRun();
}
