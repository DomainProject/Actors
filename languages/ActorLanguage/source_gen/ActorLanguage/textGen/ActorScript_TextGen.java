package ActorLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.traceable.behavior.UnitConcept__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public class ActorScript_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.createUnitInfo();

    int maxAddress = 0;
    for (SNode actor : ListSequence.fromList(SNodeOperations.getNodeDescendants(ctx.getPrimaryInput(), CONCEPTS.CreateActor$Uv, false, new SAbstractConcept[]{}))) {
      if (SPropertyOperations.getInteger(actor, PROPS.address$DqJ_) > maxAddress) {
        maxAddress = SPropertyOperations.getInteger(actor, PROPS.address$DqJ_);
      }
    }

    // includes
    List<String> headers = ListSequence.fromList(new ArrayList<String>());
    ListSequence.fromList(headers).addElement("ROOT-Sim");
    ListSequence.fromList(headers).addElement("ROOT-Sim/topology");

    tgs.append("#include <ROOT-Sim.h>");
    tgs.newLine();
    tgs.append("#include <ROOT-Sim/topology.h>");
    tgs.newLine();
    tgs.append("#include <stdio.h>");
    tgs.newLine();
    tgs.append("#include <string.h>");
    tgs.newLine();
    tgs.append("#include <unistd.h>");
    tgs.newLine();
    tgs.newLine();

    for (SNode type : Sequence.fromIterable(SNodeOperations.ofConcept(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.types$lVcp), CONCEPTS.ExternalType$Bi))) {
      if (!(ListSequence.fromList(headers).contains(SPropertyOperations.getString(type, PROPS.header$COBH)))) {
        ListSequence.fromList(headers).addElement(SPropertyOperations.getString(type, PROPS.header$COBH));
      }
    }
    for (SNode function : Sequence.fromIterable(SNodeOperations.ofConcept(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.externalFunctions$bWTb), CONCEPTS.ExternalFunctionPrototype$n3))) {
      if (!(ListSequence.fromList(headers).contains(SPropertyOperations.getString(function, PROPS.header$7lfc)))) {
        ListSequence.fromList(headers).addElement(SPropertyOperations.getString(function, PROPS.header$7lfc));
      }
    }

    // define number of LPs
    tgs.append("#ifndef NUM_LPS");
    tgs.newLine();
    tgs.append("#define NUM_LPS ");
    tgs.append(String.valueOf(maxAddress + 1));
    tgs.newLine();
    tgs.append("#endif");
    tgs.newLine();
    tgs.newLine();

    // define number of threads to 0 (max threads available)
    tgs.append("#ifndef NUM_THREADS");
    tgs.newLine();
    tgs.append("#define NUM_THREADS 0");
    tgs.newLine();
    tgs.append("#endif");
    tgs.newLine();
    tgs.newLine();

    // todo it would be useful to create some "parameter-related" concepts, in order to input parameters to the simulation
    tgs.append("#define INPUT_FILE \"taxi.csv\"");
    tgs.newLine();
    tgs.newLine();

    // todo the following two variables are model-specific
    tgs.append("FILE *file = NULL;");
    tgs.newLine();
    tgs.append("Schema schema = {0};");
    tgs.newLine();

    tgs.append("struct topology *topology = NULL;");
    tgs.newLine();

    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc));

    tgs.newLine();
    tgs.newLine();

    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.behaviors$VQhG)) {
      tgs.appendNode(item);
    }

    tgs.append("void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size, void *s)");
    tgs.newLine();
    tgs.append("{");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    // todo the following variables are model-specific
    tgs.indent();
    tgs.append("WindowData *window_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("SelectionData *selection_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("ProjectionData *projection_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("OrderByData *orderBy_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("GroupByData *groupBy_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("AggregateFunctionData *agg_function_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("OutputProcessData *output_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("JoinData *join_data;");
    tgs.newLine();
    tgs.newLine();

    tgs.indent();
    tgs.append("switch(me) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    // todo DataSource actor is not defined in ActorLanguage
    tgs.indent();
    tgs.append("case 0:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("/* DATA SOURCE */");
    tgs.newLine();
    tgs.indent();
    tgs.append("switch(event_type) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("case LP_INIT:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataIngestionInit(me, now, &file, INPUT_FILE, &schema);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("case EVENT:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataIngestion(topology, me, now, (DataSourceData *)s, &file, &schema);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("case LP_FINI:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataIngestionCleanUp(file, (DataSourceData *)s, &schema);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("default:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("fprintf(stderr, \"Unknown event type\");");
    tgs.newLine();
    tgs.indent();
    tgs.append("puts(\"\");");
    tgs.newLine();
    tgs.indent();
    tgs.append("abort();");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("}");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();

    ctx.getBuffer().area().decreaseIndent();

    // todo in the following code, for each actor's behavior, an hardcoded switch-case is appended (we don't have a way to define the init, cleanup and terminate handlers, for each family of actors)

    for (final SNode actor : ListSequence.fromList(SNodeOperations.getNodeDescendants(ctx.getPrimaryInput(), CONCEPTS.CreateActor$Uv, false, new SAbstractConcept[]{}))) {
      if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("window")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        WindowSwitchCase.AppendWindow(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("selection")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        SelectionSwitchCase.AppendSelection(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("projection")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        ProjectionSwitchCase.AppendProjection(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("groupBy")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        GroupBySwitchCase.AppendGroupBy(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("orderBy")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        OrderBySwitchCase.AppendOrderBy(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("joinColumns")) {
        Iterable<SNode> links = ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).where((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_));
        int[] from = {SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(Sequence.fromIterable(links).toList()).getElement(0), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_), SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(Sequence.fromIterable(links).toList()).getElement(1), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_)};
        JoinSwitchCase.AppendJoin(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Min")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "Min", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Max")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "Max", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Average")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "Average", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Sum")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "Sum", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Count")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "Count", ctx);
      }
    }

    tgs.indent();
    tgs.append("}");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
    tgs.newLine();
    tgs.newLine();

    tgs.append("bool CanEnd(lp_id_t me, const void *snapshot) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataSourceData *source_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("WindowData *window_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("SelectionData *selection_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("ProjectionData *projection_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("GroupByData *groupBy_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("OrderByData *orderBy_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("OutputProcessData *output_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("JoinData *join_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("AggregateFunctionData *agg_function_data;");
    tgs.newLine();

    tgs.indent();
    tgs.append("switch(me) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();

    tgs.indent();
    tgs.append("case 0:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("source_data = (DataSourceData *)snapshot;");
    tgs.newLine();
    tgs.indent();
    tgs.append("return source_data->can_end;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    for (SNode actor : ListSequence.fromList(SNodeOperations.getNodeDescendants(ctx.getPrimaryInput(), CONCEPTS.CreateActor$Uv, false, new SAbstractConcept[]{}))) {
      if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("window")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("window_data = (WindowData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return window_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("selection")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("selection_data = (SelectionData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return selection_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("projection")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("projection_data = (ProjectionData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return projection_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("groupBy")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("groupBy_data = (GroupByData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return groupBy_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("orderBy")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("orderBy_data = (OrderByData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return orderBy_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("joinColumns")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("join_data = (JoinData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return join_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Min") || SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Max") || SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Average") || SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Sum") || SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$2M8g), PROPS.name$MnvL).equals("Count")) {
        tgs.indent();
        tgs.append("case ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)));
        tgs.append(":");
        tgs.newLine();
        ctx.getBuffer().area().increaseIndent();
        tgs.indent();
        tgs.append("agg_function_data = (AggregateFunctionData *)snapshot;");
        tgs.newLine();
        tgs.indent();
        tgs.append("return agg_function_data->can_end;");
        tgs.newLine();
        ctx.getBuffer().area().decreaseIndent();
      }
    }
    tgs.indent();
    tgs.append("default:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("return true;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("}");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
    tgs.newLine();
    tgs.newLine();


    // configure simulation
    tgs.append("struct simulation_configuration conf = {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append(".n_threads = 1,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".termination_time = 0,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".gvt_period = 1000,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".log_level = LOG_INFO,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".stats_file = \"stats\",");
    tgs.newLine();
    tgs.indent();
    tgs.append(".ckpt_interval = 0,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".core_binding = true,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".serial = false,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".dispatcher = ProcessEvent,");
    tgs.newLine();
    tgs.indent();
    tgs.append(".committed = CanEnd,");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("};");
    tgs.newLine();
    tgs.newLine();

    // main function
    tgs.append("int main(void) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    // todo handle input parameters in a configurable way (defined by the overlying model)
    tgs.indent();
    tgs.append("if (argc != 2) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("printf(\"Usage: %s <n_threads>\", argv[0]);");
    tgs.newLine();
    tgs.indent();
    tgs.append("exit(1);");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("}");
    tgs.newLine();
    tgs.indent();
    tgs.append("conf.n_threads = atoi(argv[1]);");
    tgs.newLine();
    tgs.indent();
    tgs.append("InitTopology();");
    tgs.newLine();
    tgs.indent();
    tgs.append("RootsimInit(&conf);");
    tgs.newLine();
    tgs.indent();
    tgs.append("int ret = RootsimRun();");
    tgs.newLine();
    tgs.indent();
    tgs.append("ReleaseTopology(topology);");
    tgs.newLine();
    tgs.indent();
    tgs.append("return ret;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
    tgs.newLine();
    tgs.newLine();

    if (tgs.needPositions()) {
      tgs.fillUnitInfo(UnitConcept__BehaviorDescriptor.getUnitName_id4pl5GY7LKmR.invoke(SNodeOperations.cast(ctx.getPrimaryInput(), CONCEPTS.UnitConcept$1g)));
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty address$DqJ_ = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, 0x13974e2681512c34L, "address");
    /*package*/ static final SProperty header$COBH = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e879cff63330806L, 0x2e879cff63463a13L, "header");
    /*package*/ static final SProperty header$7lfc = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884e7a5fe9L, 0x6065ca884e7a6002L, "header");
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept CreateActor$Uv = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, "ActorLanguage.structure.CreateActor");
    /*package*/ static final SConcept ExternalType$Bi = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e879cff63330806L, "ActorLanguage.structure.ExternalType");
    /*package*/ static final SConcept ExternalFunctionPrototype$n3 = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884e7a5fe9L, "ActorLanguage.structure.ExternalFunctionPrototype");
    /*package*/ static final SConcept ActorLink$sB = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, "ActorLanguage.structure.ActorLink");
    /*package*/ static final SInterfaceConcept UnitConcept$1g = MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a4L, "jetbrains.mps.lang.traceable.structure.UnitConcept");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink types$lVcp = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x754f4cb23a308c63L, "types");
    /*package*/ static final SContainmentLink externalFunctions$bWTb = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x61da6c5c302ab136L, "externalFunctions");
    /*package*/ static final SContainmentLink topology$GORc = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x262cd812cfe6cc9dL, "topology");
    /*package*/ static final SContainmentLink behaviors$VQhG = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x5d890eb3ebfeaec2L, "behaviors");
    /*package*/ static final SReferenceLink actorTo$3d9g = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57976L, "actorTo");
    /*package*/ static final SReferenceLink actor$8xF = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L, 0x262cd812cfe57939L, "actor");
    /*package*/ static final SReferenceLink actorFrom$3cFe = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57974L, "actorFrom");
    /*package*/ static final SReferenceLink behavior$2M8g = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884ef595cdL, 0x47ae2b741b264b70L, "behavior");
  }
}
