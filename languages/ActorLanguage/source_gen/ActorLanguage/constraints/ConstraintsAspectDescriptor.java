package ActorLanguage.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseConstraintsAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class ConstraintsAspectDescriptor extends BaseConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }

  @Override
  public ConstraintsDescriptor getConstraints(SAbstractConcept concept) {
    SAbstractConcept cncpt = concept;
    switch (conceptIndex.index(cncpt)) {
      case 0:
        return new ChangeFetchPolicy_Constraints();
      case 1:
        return new CreateActor_Constraints();
      case 2:
        return new CreateActorReference_Constraints();
      case 3:
        return new CreateActors_Constraints();
      case 4:
        return new CreateBehavior_Constraints();
      case 5:
        return new CreateEnvelope_Constraints();
      case 6:
        return new CreateMessage_Constraints();
      case 7:
        return new CreatePayload_Constraints();
      case 8:
        return new ExternalType_Constraints();
      case 9:
        return new ForEachActorReferenceStatement_Constraints();
      case 10:
        return new ReturnActorReference_Constraints();
      case 11:
        return new SelectEnvelope_Constraints();
      case 12:
        return new SelectPayload_Constraints();
      case 13:
        return new SendMessage_Constraints();
      case 14:
        return new SendMessageToNeighbors_Constraints();
      case 15:
        return new StatementConstraint_Constraints();
      default:
    }
    return new BaseConstraintsDescriptor(concept);
  }
  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5ef413f8f61f9c04L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e933327617303L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5d890eb3ec029424L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe5743ae753L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e879cff63330806L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x401c50b1e5dbf567L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e9333273d647cL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f26df2L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x338e7da8a4a78ca9L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x61da6c5c2fca56f7L)).seal();
}
