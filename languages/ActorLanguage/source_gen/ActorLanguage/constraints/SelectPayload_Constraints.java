package ActorLanguage.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import java.util.Map;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseScopeProvider;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.scope.ListScope;
import java.util.HashMap;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class SelectPayload_Constraints extends BaseConstraintsDescriptor {
  public SelectPayload_Constraints() {
    super(CONCEPTS.SelectPayload$Hf);
  }

  @Override
  protected Map<SReferenceLink, ReferenceConstraintsDescriptor> getSpecifiedReferences() {
    BaseReferenceConstraintsDescriptor d0 = new BaseReferenceConstraintsDescriptor(LINKS.payload$ZT3H, this, true, false) {
      @Nullable
      @Override
      public ReferenceScopeProvider getScopeProvider() {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return new SNodePointer("r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)", "5068928393908488180");
          }
          @Override
          public Scope createScope(final ReferenceConstraintsContext _context) {
            final Iterable<SNode> payloads = SNodeOperations.getNodeDescendants(SNodeOperations.getNodeAncestor(_context.getContextNode(), CONCEPTS.AbstractBehavior$Dm, false, false), CONCEPTS.CreatePayload$Pf, false, new SAbstractConcept[]{});
            return ListScope.forNamedElements(payloads);
          }
        };
      }
    };
    Map<SReferenceLink, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLink, ReferenceConstraintsDescriptor>();
    references.put(d0.getReference(), d0);
    return references;
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept SelectPayload$Hf = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L, "ActorLanguage.structure.SelectPayload");
    /*package*/ static final SConcept AbstractBehavior$Dm = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x619ceb9024127367L, "ActorLanguage.structure.AbstractBehavior");
    /*package*/ static final SConcept CreatePayload$Pf = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L, "ActorLanguage.structure.CreatePayload");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink payload$ZT3H = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L, 0x4658738496c93a91L, "payload");
  }
}
