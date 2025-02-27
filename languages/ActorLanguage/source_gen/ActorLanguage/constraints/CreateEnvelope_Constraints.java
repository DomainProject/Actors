package ActorLanguage.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.ArrayList;
import java.util.Map;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseScopeProvider;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.List;
import jetbrains.mps.scope.ListScope;
import org.jetbrains.mps.openapi.language.SConcept;

public class CreateEnvelope_Constraints extends BaseConstraintsDescriptor {
  public CreateEnvelope_Constraints() {
    super(CONCEPTS.CreateEnvelope$OK);
  }

  public static class Name_Property extends BasePropertyConstraintsDescriptor {
    public Name_Property(ConstraintsDescriptor container) {
      super(PROPS.name$MnvL, container, false, false, true);
    }
    @Override
    public boolean validateValue(SNode node, Object propertyValue, CheckingNodeContext checkingNodeContext) {
      boolean result = staticValidateProperty(node, SPropertyOperations.castString(propertyValue));
      if (!(result) && checkingNodeContext != null) {
        checkingNodeContext.setBreakingNode(new SNodePointer("r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)", "1229499084497702851"));
      }
      return result;
    }
    private static boolean staticValidateProperty(SNode node, String propertyValue) {
      for (SNode envelope : ListSequence.fromList(SNodeOperations.getNodeDescendants(SNodeOperations.getParent(node), CONCEPTS.CreateEnvelope$OK, false, new SAbstractConcept[]{})).subtract(ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<>(), node)))) {
        if (SPropertyOperations.getString(envelope, PROPS.name$MnvL) == null) {
          continue;
        }
        if (SPropertyOperations.getString(envelope, PROPS.name$MnvL).equals(propertyValue)) {
          return false;
        }
      }
      return true;
    }
  }
  public static class Priority_Property extends BasePropertyConstraintsDescriptor {
    public Priority_Property(ConstraintsDescriptor container) {
      super(PROPS.priority$YWiN, container, false, false, true);
    }
    @Override
    public boolean validateValue(SNode node, Object propertyValue, CheckingNodeContext checkingNodeContext) {
      boolean result = staticValidateProperty(node, SPropertyOperations.castString(propertyValue));
      if (!(result) && checkingNodeContext != null) {
        checkingNodeContext.setBreakingNode(new SNodePointer("r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)", "7694881003800157413"));
      }
      return result;
    }
    private static boolean staticValidateProperty(SNode node, String propertyValue) {
      if (propertyValue != null) {
        return Double.valueOf(propertyValue) >= 0.0 && Double.valueOf(propertyValue) <= 5.0;
      }
      return true;
    }
  }
  @Override
  protected Map<SProperty, PropertyConstraintsDescriptor> getSpecifiedProperties() {
    Map<SProperty, PropertyConstraintsDescriptor> properties = new HashMap<SProperty, PropertyConstraintsDescriptor>();
    properties.put(PROPS.name$MnvL, new Name_Property(this));
    properties.put(PROPS.priority$YWiN, new Priority_Property(this));
    return properties;
  }
  @Override
  protected Map<SReferenceLink, ReferenceConstraintsDescriptor> getSpecifiedReferences() {
    BaseReferenceConstraintsDescriptor d0 = new BaseReferenceConstraintsDescriptor(LINKS.receiver$OPjH, this, true, false) {
      @Nullable
      @Override
      public ReferenceScopeProvider getScopeProvider() {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return new SNodePointer("r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)", "13109696841420628");
          }
          @Override
          public Scope createScope(final ReferenceConstraintsContext _context) {
            SNode referenceToMyself = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e9333277ec5d1L, "ActorLanguage.structure.ActorReference"));
            SPropertyOperations.assign(referenceToMyself, PROPS.name$MnvL, SPropertyOperations.getString(SNodeOperations.getNodeAncestor(_context.getReferenceNode(), CONCEPTS.CreateActor$Uv, false, false), PROPS.name$MnvL));
            SLinkOperations.setTarget(referenceToMyself, LINKS.actor$BImE, SNodeOperations.getNodeAncestor(_context.getReferenceNode(), CONCEPTS.CreateActor$Uv, false, false));
            List<SNode> actors;
            if ((SNodeOperations.getNodeAncestor(_context.getReferenceNode(), CONCEPTS.Initializer$mM, false, false) != null)) {
              actors = SNodeOperations.getNodeDescendants(SNodeOperations.getNodeAncestor(_context.getReferenceNode(), CONCEPTS.Initializer$mM, false, false), CONCEPTS.ActorReference$Cg, false, new SAbstractConcept[]{});
            } else {
              actors = SNodeOperations.getNodeDescendants(SNodeOperations.getNodeAncestor(_context.getReferenceNode(), CONCEPTS.CreateBehavior$iN, false, false), CONCEPTS.ActorReference$Cg, false, new SAbstractConcept[]{});
            }
            ListSequence.fromList(actors).addElement(referenceToMyself);
            return ListScope.forNamedElements(actors);

          }
        };
      }
    };
    Map<SReferenceLink, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLink, ReferenceConstraintsDescriptor>();
    references.put(d0.getReference(), d0);
    return references;
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept CreateEnvelope$OK = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L, "ActorLanguage.structure.CreateEnvelope");
    /*package*/ static final SConcept CreateActor$Uv = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, "ActorLanguage.structure.CreateActor");
    /*package*/ static final SConcept Initializer$mM = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0xe2178aac28357fL, "ActorLanguage.structure.Initializer");
    /*package*/ static final SConcept ActorReference$Cg = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e9333277ec5d1L, "ActorLanguage.structure.ActorReference");
    /*package*/ static final SConcept CreateBehavior$iN = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe5743ae753L, "ActorLanguage.structure.CreateBehavior");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty priority$YWiN = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L, 0x6ac9b580f468d377L, "priority");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink receiver$OPjH = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L, 0x2176abe57436668bL, "receiver");
    /*package*/ static final SReferenceLink actor$BImE = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e9333277ec5d1L, 0x2e9333277ec5d2L, "actor");
  }
}
