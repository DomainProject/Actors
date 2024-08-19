package ActorLanguage.textGen;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SProperty;

public abstract class TopologyLinks {
  public static void createTopology(SNode link, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    {
      final SNode actorLink = link;
      if (SNodeOperations.isInstanceOf(actorLink, CONCEPTS.ActorLink$sB)) {
        TopologyLinks.appendActorLink(actorLink, ctx);
      }
    }
    {
      final SNode linksList = link;
      if (SNodeOperations.isInstanceOf(linksList, CONCEPTS.ActorLinksList$l3)) {
        TopologyLinks.appendLinksList(linksList, ctx);
      }
    }
  }
  protected static void appendLinksList(SNode linksList, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    for (SNode link : ListSequence.fromList(SLinkOperations.getChildren(linksList, LINKS.links$O5ec))) {
      {
        final SNode actorLink = link;
        if (SNodeOperations.isInstanceOf(actorLink, CONCEPTS.ActorLink$sB)) {
          TopologyLinks.appendActorLink(actorLink, ctx);
        }
      }
      {
        final SNode list = link;
        if (SNodeOperations.isInstanceOf(list, CONCEPTS.ActorLinksList$l3)) {
          TopologyLinks.appendLinksList(list, ctx);
        }
      }
    }
  }
  protected static void appendActorLink(SNode actorLink, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.append("AddTopologyLink(topology, ");
    tgs.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_)));
    tgs.append(", ");
    tgs.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_)));
    tgs.append(", 1);");
    tgs.newLine();

    if (SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorTo$3d9g), LINKS.actor$8xF), LINKS.behavior$QgnL), PROPS.name$MnvL).equals("window")) {
      String sizeName = "window" + SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_) + "to" + SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_);
      tgs.indent();
      tgs.append("static int ");
      tgs.append(sizeName);
      tgs.append(" = ");
      tgs.append(SPropertyOperations.getString(SNodeOperations.cast(SLinkOperations.getTarget(actorLink, LINKS.data$Kmlt), CONCEPTS.StringBody$hM), PROPS.body$$37E));
      tgs.append(";");
      tgs.newLine();
      tgs.indent();
      tgs.append("SetTopologyLinkData(topology, ");
      tgs.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_)));
      tgs.append(", ");
      tgs.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_)));
      tgs.append(", (void *)&");
      tgs.append(sizeName);
      tgs.append(");");
      tgs.newLine();
    } else {
      if (SLinkOperations.getTarget(actorLink, LINKS.data$Kmlt) != null) {
        tgs.indent();
        tgs.append("SetTopologyLinkData(topology, ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_)));
        tgs.append(", ");
        tgs.append(String.valueOf(SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(actorLink, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_)));
        tgs.append(", (void *)\"");
        tgs.append(SPropertyOperations.getString(SNodeOperations.cast(SLinkOperations.getTarget(actorLink, LINKS.data$Kmlt), CONCEPTS.StringBody$hM), PROPS.body$$37E));
        tgs.append("\");");
        tgs.newLine();
      }
    }
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ActorLink$sB = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, "ActorLanguage.structure.ActorLink");
    /*package*/ static final SConcept ActorLinksList$l3 = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6b33cca6412e20a5L, "ActorLanguage.structure.ActorLinksList");
    /*package*/ static final SConcept StringBody$hM = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x3db738e392e4ce51L, "ActorLanguage.structure.StringBody");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink links$O5ec = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6b33cca6412e20a5L, 0x6b33cca6412e20a8L, "links");
    /*package*/ static final SReferenceLink actorFrom$3cFe = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57974L, "actorFrom");
    /*package*/ static final SReferenceLink actor$8xF = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L, 0x262cd812cfe57939L, "actor");
    /*package*/ static final SReferenceLink actorTo$3d9g = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57976L, "actorTo");
    /*package*/ static final SContainmentLink data$Kmlt = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x779e899a2deb7c19L, "data");
    /*package*/ static final SReferenceLink behavior$QgnL = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, 0x13974e2681516c72L, "behavior");
  }

  private static final class PROPS {
    /*package*/ static final SProperty address$DqJ_ = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, 0x13974e2681512c34L, "address");
    /*package*/ static final SProperty body$$37E = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x3db738e392e4ce51L, 0x3db738e392e4ce52L, "body");
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}