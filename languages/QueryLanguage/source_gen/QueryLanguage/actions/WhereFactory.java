package QueryLanguage.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.NodeFactory;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public class WhereFactory {
  public static class NodeFactory_1229499084499928992 implements NodeFactory {
    public void setup(SNode newNode, SNode sampleNode, SNode enclosingNode, int index, SModel model) {
      SLinkOperations.setTarget(newNode, LINKS.table$h9ml, SLinkOperations.getTarget(SNodeOperations.cast(enclosingNode, CONCEPTS.Select$Te), LINKS.table$ahE2));
    }
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink table$h9ml = MetaAdapterFactory.getReferenceLink(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x619ceb902420e37bL, 0x11100ee737494799L, "table");
    /*package*/ static final SReferenceLink table$ahE2 = MetaAdapterFactory.getReferenceLink(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x619ceb902420e379L, 0x11100ee7374516b6L, "table");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Select$Te = MetaAdapterFactory.getConcept(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x619ceb902420e379L, "QueryLanguage.structure.Select");
  }
}
