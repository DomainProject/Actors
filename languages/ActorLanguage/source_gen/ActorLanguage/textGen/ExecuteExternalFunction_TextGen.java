package ActorLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.traceable.behavior.TraceableConcept__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

public class ExecuteExternalFunction_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.createPositionInfo();
    if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("selection")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wSelection((Message *)content, data);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("projection")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wProjection((Message *)content, data);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("orderBy")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wOrderBy((Message *)content, data);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("groupBy")) {
      tgs.indent();
      tgs.append("GroupsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wGroupBy((Message *)content, data);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("join")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wJoin((Message *)content, data);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("count")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wAggregateFunction((Message *)content, data, COUNT);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("sum")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wAggregateFunction((Message *)content, data, SUM);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("min")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wAggregateFunction((Message *)content, data, MIN);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("max")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wAggregateFunction((Message *)content, data, MAX);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("average")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= wAggregateFunction((Message *)content, data, AVG);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    } else if (SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.function$3XqE), PROPS.name$MnvL).equals("window")) {
      tgs.indent();
      tgs.append("RowsList *");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append("= ExecuteWindow((Message *)content, (WindowData *)data);");
      tgs.newLine();
      tgs.indent();
      tgs.append("if (!");
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.resultName$LVZv));
      tgs.append(") return;");
      tgs.newLine();
      tgs.newLine();

    }
    if (tgs.needPositions()) {
      tgs.fillPositionInfo(TraceableConcept__BehaviorDescriptor.getTraceableProperty_id4pl5GY7LKmH.invoke(SNodeOperations.cast(ctx.getPrimaryInput(), CONCEPTS.TraceableConcept$L)));
    }
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink function$3XqE = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x61da6c5c302ab0f2L, 0x61da6c5c302ab0f3L, "function");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty resultName$LVZv = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x61da6c5c302ab0f2L, 0x338e7da8a4f37b27L, "resultName");
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept TraceableConcept$L = MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a3L, "jetbrains.mps.lang.traceable.structure.TraceableConcept");
  }
}