#include "ROOT-Sim.h"
#include "ROOT-Sim/topology.h"
#include "pseudosql.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <assert.h>

#ifndef NUM_LPS
#define NUM_LPS 25
#endif

#ifndef NUM_THREADS
#define NUM_THREADS 0
#endif

#define INPUT_FILE "taxi.csv"

FILE *file = NULL;
Schema schema = {0};
struct topology *topology = NULL;

void InitTopology(void)
{
	topology = InitializeTopology(TOPOLOGY_GRAPH, 25);

	AddTopologyLink(topology, 0, 6, 1);
	static int window0to6 = 3600;
	SetTopologyLinkData(topology, 0, 6, (void *)&window0to6);
	AddTopologyLink(topology, 0, 7, 1);
	static int window0to7 = 3600;
	SetTopologyLinkData(topology, 0, 7, (void *)&window0to7);
	AddTopologyLink(topology, 0, 8, 1);
	static int window0to8 = 3600;
	SetTopologyLinkData(topology, 0, 8, (void *)&window0to8);
	AddTopologyLink(topology, 1, 9, 1);
	SetTopologyLinkData(topology, 1, 9, (void *)"payment_type,total_amount");
	AddTopologyLink(topology, 2, 16, 1);
	SetTopologyLinkData(topology, 2, 16, (void *)"PULocationID,congestion_surcharge");
	AddTopologyLink(topology, 3, 24, 1);
	SetTopologyLinkData(topology, 3, 24, (void *)"PULocationID,DOLocationID");
	AddTopologyLink(topology, 6, 1, 1);
	SetTopologyLinkData(topology, 6, 1, (void *)"Airport_fee != 0.0");
	AddTopologyLink(topology, 7, 12, 1);
	SetTopologyLinkData(topology, 7, 12, (void *)"PULocationID,passenger_count");
	AddTopologyLink(topology, 6, 2, 1);
	SetTopologyLinkData(topology, 6, 2, (void *)"PULocationID == 161 || DOLocationID == 161");
	AddTopologyLink(topology, 8, 20, 1);
	SetTopologyLinkData(topology, 8, 20, (void *)"PULocationID,trip_distance");
	AddTopologyLink(topology, 6, 3, 1);
	SetTopologyLinkData(topology, 6, 3, (void *)"tip_amount > 10.0");
	AddTopologyLink(topology, 6, 4, 1);
	SetTopologyLinkData(topology, 6, 4, (void *)"passenger_count > 4");
	AddTopologyLink(topology, 6, 5, 1);
	SetTopologyLinkData(topology, 6, 5, (void *)"payment_type == 1 && total_amount > 100.0");
	AddTopologyLink(topology, 9, 10, 1);
	SetTopologyLinkData(topology, 9, 10, (void *)"payment_type");
	AddTopologyLink(topology, 12, 13, 1);
	SetTopologyLinkData(topology, 12, 13, (void *)"PULocationID");
	AddTopologyLink(topology, 16, 17, 1);
	SetTopologyLinkData(topology, 16, 17, (void *)"PULocationID");
	AddTopologyLink(topology, 20, 21, 1);
	SetTopologyLinkData(topology, 20, 21, (void *)"PULocationID");
	AddTopologyLink(topology, 10, 11, 1);
	SetTopologyLinkData(topology, 10, 11, (void *)"total_amount");
	AddTopologyLink(topology, 13, 15, 1);
	SetTopologyLinkData(topology, 13, 15, (void *)"passenger_count");
	AddTopologyLink(topology, 17, 19, 1);
	SetTopologyLinkData(topology, 17, 19, (void *)"congestion_surcharge");
	AddTopologyLink(topology, 21, 23, 1);
	SetTopologyLinkData(topology, 21, 23, (void *)"trip_distance");
	AddTopologyLink(topology, 15, 14, 1);
	SetTopologyLinkData(topology, 15, 14, (void *)"SUM(passenger_count)");
	AddTopologyLink(topology, 19, 18, 1);
	SetTopologyLinkData(topology, 19, 18, (void *)"AVG(congestion_surcharge)");
	AddTopologyLink(topology, 23, 22, 1);
	SetTopologyLinkData(topology, 23, 22, (void *)"SUM(trip_distance)");
}


void window(lp_id_t me, simtime_t now, const void *content, void *data)
{
	RowsLinkedList *result = ExecuteWindow((RowsMessage *)content, (WindowData *)data);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

	free(refs);
}

void projection(lp_id_t me, simtime_t now, const void *content, void *data)
{
	RowsLinkedList *result = wProjection((RowsMessage *)content, data);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

	free(refs);
}

void selection(lp_id_t me, simtime_t now, const void *content, void *data)
{
	RowsLinkedList *result = wSelection((RowsMessage *)content, data);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

	free(refs);
}

void joinColumns(lp_id_t me, simtime_t now, const void *content, void *data)
{
	RowsLinkedList *result = wJoin((RowsMessage *)content, data);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

	free(refs);
}

void Count(lp_id_t me, simtime_t now, const void *content, void *data)
{
	GroupsLinkedList *list = DeserializeGroupsMessage((GroupsMessage *)content);
	RowsLinkedList *result = AggregateFunctionGroupedInput(list, (AggregateFunctionData *)data, COUNT);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

    FreeGroup(list);
	free(refs);
}

void Average(lp_id_t me, simtime_t now, const void *content, void *data)
{
	GroupsLinkedList *list = DeserializeGroupsMessage((GroupsMessage *)content);
	RowsLinkedList *result = AggregateFunctionGroupedInput(list, (AggregateFunctionData *)data, AVG);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

    FreeGroup(list);
	free(refs);
}

void Sum(lp_id_t me, simtime_t now, const void *content, void *data)
{
	GroupsLinkedList *list = DeserializeGroupsMessage((GroupsMessage *)content);
	RowsLinkedList *result = AggregateFunctionGroupedInput(list, (AggregateFunctionData *)data, SUM);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

    FreeGroup(list);
	free(refs);
}

void groupBy(lp_id_t me, simtime_t now, const void *content, void *data)
{
	GroupsLinkedList *result = wGroupBy((RowsMessage *)content, data);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromGroupsList(me, 5.0f, result, now, refs, num_refs);

	free(refs);
}

void orderBy(lp_id_t me, simtime_t now, const void *content, void *data)
{
	RowsLinkedList *result = wOrderBy((RowsMessage *)content, data);
	if(!result)
		return;

	unsigned long num_refs;
	lp_id_t *refs = GetAllNeighbors(topology, me, &num_refs);
	CreateAndSendMessageFromList(me, 5.0f, result, now, refs, num_refs);

	free(refs);
}

void DataSource(__unused lp_id_t me, __unused simtime_t now, __unused const void *content, __unused void *data) {}

void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size, void *s)
{
	WindowData *window_data = NULL;
	SelectionData *selection_data = NULL;
	ProjectionData *projection_data = NULL;
	OrderByData *orderBy_data = NULL;
	GroupByData *groupBy_data = NULL;
	AggregateFunctionData *agg_function_data = NULL;
	OutputProcessData *output_data = NULL;
	JoinData *join_data = NULL;

	switch(me) {
		case 0:
			/* DATA SOURCE */
			switch(event_type) {
				case LP_INIT:
					DataIngestionInit(me, now, &file, INPUT_FILE, &schema);
					break;
				case EVENT:
					assert(file != NULL);
					DataIngestion(topology, me, now, (DataSourceData *)s, file, &schema);
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
		case 1:
			/* SELECTION */
			switch(event_type) {
				case LP_INIT:
					SelectionInit(topology, 6, me);
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
					SelectionInit(topology, 6, me);
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
					SelectionInit(topology, 6, me);
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
					SelectionInit(topology, 6, me);
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
					SelectionInit(topology, 6, me);
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
		case 10:
			/* GROUP BY */
			switch(event_type) {
				case LP_INIT:
					GroupByInit(topology, 9, me);
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
					AggregateFunctionInit(topology, 10, me);
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
		case 12:
			/* PROJECTION */
			switch(event_type) {
				case LP_INIT:
					ProjectionInit(topology, 7, me);
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
		case 13:
			/* GROUP BY */
			switch(event_type) {
				case LP_INIT:
					GroupByInit(topology, 12, me);
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
		case 14:
			/* ORDER BY */
			switch(event_type) {
				case LP_INIT:
					OrderByInit(topology, 15, me);
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
		case 15:
			/* AGGREGATE FUNCTION (Sum) */
			switch(event_type) {
				case LP_INIT:
					AggregateFunctionInit(topology, 13, me);
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
		case 16:
			/* PROJECTION */
			switch(event_type) {
				case LP_INIT:
					ProjectionInit(topology, 2, me);
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
		case 17:
			/* GROUP BY */
			switch(event_type) {
				case LP_INIT:
					GroupByInit(topology, 16, me);
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
		case 18:
			/* ORDER BY */
			switch(event_type) {
				case LP_INIT:
					OrderByInit(topology, 19, me);
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
		case 19:
			/* AGGREGATE FUNCTION (Average) */
			switch(event_type) {
				case LP_INIT:
					AggregateFunctionInit(topology, 17, me);
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
		case 20:
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
		case 21:
			/* GROUP BY */
			switch(event_type) {
				case LP_INIT:
					GroupByInit(topology, 20, me);
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
		case 22:
			/* ORDER BY */
			switch(event_type) {
				case LP_INIT:
					OrderByInit(topology, 23, me);
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
		case 23:
			/* AGGREGATE FUNCTION (Sum) */
			switch(event_type) {
				case LP_INIT:
					AggregateFunctionInit(topology, 21, me);
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
		case 24:
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

		default:
			abort();
	}
}

bool CanEnd(lp_id_t me, const void *snapshot)
{
	DataSourceData *source_data = NULL;
	WindowData *window_data = NULL;
	SelectionData *selection_data = NULL;
	ProjectionData *projection_data = NULL;
	GroupByData *groupBy_data = NULL;
	OrderByData *orderBy_data = NULL;
	OutputProcessData *output_data = NULL;
	JoinData *join_data = NULL;
	AggregateFunctionData *agg_function_data = NULL;
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
			window_data = (WindowData *)snapshot;
			return window_data->can_end;
		case 7:
			window_data = (WindowData *)snapshot;
			return window_data->can_end;
		case 8:
			window_data = (WindowData *)snapshot;
			return window_data->can_end;
		case 9:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		case 10:
			groupBy_data = (GroupByData *)snapshot;
			return groupBy_data->can_end;
		case 11:
			agg_function_data = (AggregateFunctionData *)snapshot;
			return agg_function_data->can_end;
		case 12:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		case 13:
			groupBy_data = (GroupByData *)snapshot;
			return groupBy_data->can_end;
		case 14:
			orderBy_data = (OrderByData *)snapshot;
			return orderBy_data->can_end;
		case 15:
			agg_function_data = (AggregateFunctionData *)snapshot;
			return agg_function_data->can_end;
		case 16:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		case 17:
			groupBy_data = (GroupByData *)snapshot;
			return groupBy_data->can_end;
		case 18:
			orderBy_data = (OrderByData *)snapshot;
			return orderBy_data->can_end;
		case 19:
			agg_function_data = (AggregateFunctionData *)snapshot;
			return agg_function_data->can_end;
		case 20:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		case 21:
			groupBy_data = (GroupByData *)snapshot;
			return groupBy_data->can_end;
		case 22:
			orderBy_data = (OrderByData *)snapshot;
			return orderBy_data->can_end;
		case 23:
			agg_function_data = (AggregateFunctionData *)snapshot;
			return agg_function_data->can_end;
		case 24:
			projection_data = (ProjectionData *)snapshot;
			return projection_data->can_end;
		default:
			return true;
	}
}

struct simulation_configuration conf = {.lps = NUM_LPS,
    .n_threads = 1,
    .termination_time = 0,
    .gvt_period = 1000,
    .log_level = LOG_INFO,
    .stats_file = "stats",
    .ckpt_interval = 0,
    .core_binding = true,
    .serial = false,
    .dispatcher = ProcessEvent,
    .committed = CanEnd
};

int main(int argc, char **argv)
{
	if(argc != 2) {
		printf("Usage: %s <n_thread>", argv[0]);
		exit(1);
	}
	conf.n_threads = atoi(argv[1]);
	InitTopology();
	RootsimInit(&conf);
	int ret = RootsimRun();
	ReleaseTopology(topology);
	return ret;
}
