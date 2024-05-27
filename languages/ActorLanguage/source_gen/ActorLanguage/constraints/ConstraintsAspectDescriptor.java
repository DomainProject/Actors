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
        return new AbstractActor_Constraints();
      case 1:
        return new Actor_Constraints();
      case 2:
        return new CreateBehavior_Constraints();
      case 3:
        return new CreateEnvelope_Constraints();
      case 4:
        return new CreateMessage_Constraints();
      case 5:
        return new CreatePayload_Constraints();
      case 6:
        return new Envelope_Constraints();
      case 7:
        return new Fetch_Constraints();
      case 8:
        return new ReplyToMessage_Constraints();
      case 9:
        return new SelectEnvelope_Constraints();
      case 10:
        return new SelectPayload_Constraints();
      case 11:
        return new SendMessage_Constraints();
      default:
    }
    return new BaseConstraintsDescriptor(concept);
  }
  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23308L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe5743ae753L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125c73205L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x619ceb90241d8975L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x272ee8379674297cL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f26df2L)).seal();
}
