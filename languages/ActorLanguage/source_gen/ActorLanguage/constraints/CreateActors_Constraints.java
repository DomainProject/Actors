package ActorLanguage.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import ActorLanguage.behavior.CreateActors__BehaviorDescriptor;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.smodel.SNodePointer;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Map;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class CreateActors_Constraints extends BaseConstraintsDescriptor {
  public CreateActors_Constraints() {
    super(CONCEPTS.CreateActors$rc);
  }

  public static class Number_Property extends BasePropertyConstraintsDescriptor {
    public Number_Property(ConstraintsDescriptor container) {
      super(PROPS.number$$XD7, container, false, true, true);
    }
    @Override
    public void setPropertyValue(SNode node, Object propertyValue) {
      staticSetPropertyValue(node, SPropertyOperations.castInteger(propertyValue));
    }
    private static void staticSetPropertyValue(SNode node, int propertyValue) {
      SPropertyOperations.assign(node, PROPS.number$$XD7, propertyValue);
      CreateActors__BehaviorDescriptor.createActors_idI$NcBTsrE.invoke(node);
    }
    @Override
    public boolean validateValue(SNode node, Object propertyValue, CheckingNodeContext checkingNodeContext) {
      boolean result = staticValidateProperty(node, SPropertyOperations.castInteger(propertyValue));
      if (!(result) && checkingNodeContext != null) {
        checkingNodeContext.setBreakingNode(new SNodePointer("r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)", "13109696846452862"));
      }
      return result;
    }
    private static boolean staticValidateProperty(SNode node, int propertyValue) {
      return propertyValue > 0;
    }
  }
  public static class BaseName_Property extends BasePropertyConstraintsDescriptor {
    public BaseName_Property(ConstraintsDescriptor container) {
      super(PROPS.baseName$$Y79, container, false, true, true);
    }
    @Override
    public void setPropertyValue(SNode node, Object propertyValue) {
      staticSetPropertyValue(node, SPropertyOperations.castString(propertyValue));
    }
    private static void staticSetPropertyValue(SNode node, String propertyValue) {
      SPropertyOperations.assign(node, PROPS.baseName$$Y79, propertyValue);
      CreateActors__BehaviorDescriptor.createActors_idI$NcBTsrE.invoke(node);
    }
    @Override
    public boolean validateValue(SNode node, Object propertyValue, CheckingNodeContext checkingNodeContext) {
      boolean result = staticValidateProperty(node, SPropertyOperations.castString(propertyValue));
      if (!(result) && checkingNodeContext != null) {
        checkingNodeContext.setBreakingNode(new SNodePointer("r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)", "6839590609874005035"));
      }
      return result;
    }
    private static boolean staticValidateProperty(SNode node, String propertyValue) {
      List<SNode> thisNode = ListSequence.fromList(new ArrayList<SNode>());
      ListSequence.fromList(thisNode).addElement(node);
      for (SNode creation : ListSequence.fromList(SNodeOperations.getNodeDescendants(SNodeOperations.getNodeAncestor(node, CONCEPTS.ActorScript$nz, false, false), CONCEPTS.CreateActors$rc, false, new SAbstractConcept[]{})).subtract(ListSequence.fromList(thisNode))) {
        if (propertyValue.equals(SPropertyOperations.getString(creation, PROPS.baseName$$Y79))) {
          return false;
        }
      }
      return true;
    }
  }
  @Override
  protected Map<SProperty, PropertyConstraintsDescriptor> getSpecifiedProperties() {
    Map<SProperty, PropertyConstraintsDescriptor> properties = new HashMap<SProperty, PropertyConstraintsDescriptor>();
    properties.put(PROPS.number$$XD7, new Number_Property(this));
    properties.put(PROPS.baseName$$Y79, new BaseName_Property(this));
    return properties;
  }
  @Override
  protected Map<SReferenceLink, ReferenceConstraintsDescriptor> getSpecifiedReferences() {
    BaseReferenceConstraintsDescriptor d0 = new BaseReferenceConstraintsDescriptor(LINKS.behavior$2M8g, this, false, true) {
      @Override
      public boolean validate(final SNode referenceNode, final SNode oldReferentNode, final SNode newReferentNode) {
        return true;
      }
      @Override
      public void onReferenceSet(final SNode referenceNode, final SNode oldReferentNode, final SNode newReferentNode) {
        CreateActors__BehaviorDescriptor.createActors_idI$NcBTsrE.invoke(referenceNode);
      }
    };
    Map<SReferenceLink, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLink, ReferenceConstraintsDescriptor>();
    references.put(d0.getReference(), d0);
    return references;
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept CreateActors$rc = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5d890eb3ec029424L, "ActorLanguage.structure.CreateActors");
    /*package*/ static final SConcept ActorScript$nz = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, "ActorLanguage.structure.ActorScript");
  }

  private static final class PROPS {
    /*package*/ static final SProperty number$$XD7 = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5d890eb3ec029424L, 0x5d890eb3ec029443L, "number");
    /*package*/ static final SProperty baseName$$Y79 = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5d890eb3ec029424L, 0x5d890eb3ec029445L, "baseName");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink behavior$2M8g = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884ef595cdL, 0x47ae2b741b264b70L, "behavior");
  }
}
