package ActorLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.traceable.behavior.TraceableConcept__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SProperty;

public class CreateMessage_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.createPositionInfo();
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.payload$N_RC), CONCEPTS.CreatePayload$Pf)) {
      tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.payload$N_RC));
    }

    {
      final SNode e = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.envelope$eoPh);
      if (SNodeOperations.isInstanceOf(e, CONCEPTS.CreateEnvelope$OK)) {
        {
          final SNode p = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.payload$N_RC);
          if (SNodeOperations.isInstanceOf(p, CONCEPTS.CreatePayload$Pf)) {
            tgs.append("Message *");
            tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.name$MnvL));
            tgs.append(" = CreateMessage(me, ");
            tgs.append(SPropertyOperations.getString(e, PROPS.priority$YWiN));
            tgs.append(", (void *)");
            tgs.append(SPropertyOperations.getString(p, PROPS.name$MnvL));
            tgs.append(", ");
            tgs.appendNode(SLinkOperations.getTarget(p, LINKS.type$1_kc));
            tgs.append(");");
            tgs.newLine();
          }
        }
        {
          final SNode p = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.payload$N_RC);
          if (SNodeOperations.isInstanceOf(p, CONCEPTS.SelectPayload$Hf)) {
          }
        }
      }
    }
    {
      final SNode e = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.envelope$eoPh);
      if (SNodeOperations.isInstanceOf(e, CONCEPTS.SelectEnvelope$S6)) {
        {
          final SNode p = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.payload$N_RC);
          if (SNodeOperations.isInstanceOf(p, CONCEPTS.CreatePayload$Pf)) {
            tgs.append("Message *");
            tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.name$MnvL));
            tgs.append(" = CreateMessage(me, ");
            tgs.append(SPropertyOperations.getString(SLinkOperations.getTarget(e, LINKS.envelope$EmhE), PROPS.priority$YWiN));
            tgs.append(", (void *)");
            tgs.append(SPropertyOperations.getString(p, PROPS.name$MnvL));
            tgs.append(", ");
            tgs.appendNode(SLinkOperations.getTarget(p, LINKS.type$1_kc));
            tgs.append(");");
            tgs.newLine();
          }
        }
        {
          final SNode p = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.payload$N_RC);
          if (SNodeOperations.isInstanceOf(p, CONCEPTS.SelectPayload$Hf)) {
          }
        }

      }
    }
    if (tgs.needPositions()) {
      tgs.fillPositionInfo(TraceableConcept__BehaviorDescriptor.getTraceableProperty_id4pl5GY7LKmH.invoke(SNodeOperations.cast(ctx.getPrimaryInput(), CONCEPTS.TraceableConcept$L)));
    }
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink payload$N_RC = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L, 0x9de89b125a71571L, "payload");
    /*package*/ static final SContainmentLink envelope$eoPh = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L, 0x2d5fc2c1e9650052L, "envelope");
    /*package*/ static final SReferenceLink type$1_kc = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L, 0x5fab333ad8631dc8L, "type");
    /*package*/ static final SReferenceLink envelope$EmhE = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L, 0x9de89b125bf6284L, "envelope");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept CreatePayload$Pf = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L, "ActorLanguage.structure.CreatePayload");
    /*package*/ static final SConcept CreateEnvelope$OK = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L, "ActorLanguage.structure.CreateEnvelope");
    /*package*/ static final SConcept SelectPayload$Hf = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L, "ActorLanguage.structure.SelectPayload");
    /*package*/ static final SConcept SelectEnvelope$S6 = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L, "ActorLanguage.structure.SelectEnvelope");
    /*package*/ static final SInterfaceConcept TraceableConcept$L = MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a3L, "jetbrains.mps.lang.traceable.structure.TraceableConcept");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty priority$YWiN = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L, 0x6ac9b580f468d377L, "priority");
  }
}
