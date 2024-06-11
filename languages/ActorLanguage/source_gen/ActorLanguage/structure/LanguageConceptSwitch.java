package ActorLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int AbstractBehavior = 0;
  public static final int ActorAction = 1;
  public static final int ActorBox = 2;
  public static final int ActorCreation = 3;
  public static final int ActorLink = 4;
  public static final int ActorReference = 5;
  public static final int ActorReferenceList = 6;
  public static final int ActorScript = 7;
  public static final int ActorsGraph = 8;
  public static final int Become = 9;
  public static final int CreateActor = 10;
  public static final int CreateActorReference = 11;
  public static final int CreateActors = 12;
  public static final int CreateBehavior = 13;
  public static final int CreateEnvelope = 14;
  public static final int CreateMessage = 15;
  public static final int CreatePayload = 16;
  public static final int Envelope = 17;
  public static final int Fetch = 18;
  public static final int ForEachActorReference = 19;
  public static final int GetActorsFromReceptionist = 20;
  public static final int MessageQueue = 21;
  public static final int MessageRef = 22;
  public static final int Payload = 23;
  public static final int RandomActor = 24;
  public static final int Receptionist = 25;
  public static final int ReceptionistPolicy = 26;
  public static final int ReturnActorReference = 27;
  public static final int SelectBehavior = 28;
  public static final int SelectEnvelope = 29;
  public static final int SelectPayload = 30;
  public static final int SendMessage = 31;
  public static final int StringBody = 32;
  public static final int SwitchPolicy = 33;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0x10eda99958984cdeL, 0x9416196c5eca1268L);
    builder.put(0x619ceb9024127367L, AbstractBehavior);
    builder.put(0x13974e2681512684L, ActorAction);
    builder.put(0x262cd812cfe57937L, ActorBox);
    builder.put(0x13974e268157ad87L, ActorCreation);
    builder.put(0x262cd812cfe57938L, ActorLink);
    builder.put(0x2e9333277ec5d1L, ActorReference);
    builder.put(0x401c50b1e5ba7cb3L, ActorReferenceList);
    builder.put(0x35a5eccbf2f23376L, ActorScript);
    builder.put(0x262cd812cfe57936L, ActorsGraph);
    builder.put(0x5366e9c2d97392cfL, Become);
    builder.put(0x35a5eccbf2f23364L, CreateActor);
    builder.put(0x2e933327617303L, CreateActorReference);
    builder.put(0x5d890eb3ec029424L, CreateActors);
    builder.put(0x2176abe5743ae753L, CreateBehavior);
    builder.put(0x2176abe574366687L, CreateEnvelope);
    builder.put(0x35a5eccbf2f23371L, CreateMessage);
    builder.put(0x2176abe574366688L, CreatePayload);
    builder.put(0x13974e268151b855L, Envelope);
    builder.put(0x619ceb90241d8975L, Fetch);
    builder.put(0x401c50b1e5dbf567L, ForEachActorReference);
    builder.put(0x13974e2681690352L, GetActorsFromReceptionist);
    builder.put(0x6ac9b580f420bed7L, MessageQueue);
    builder.put(0x6ac9b580f420bedcL, MessageRef);
    builder.put(0x13974e2681521590L, Payload);
    builder.put(0x13974e2681d6dd14L, RandomActor);
    builder.put(0x5d890eb3ebfeaec5L, Receptionist);
    builder.put(0x13974e26817cb5d6L, ReceptionistPolicy);
    builder.put(0x2e9333273d647cL, ReturnActorReference);
    builder.put(0x619ceb9024171024L, SelectBehavior);
    builder.put(0x9de89b125bf6283L, SelectEnvelope);
    builder.put(0x4658738496c93a82L, SelectPayload);
    builder.put(0x35a5eccbf2f26df2L, SendMessage);
    builder.put(0x3db738e392e4ce51L, StringBody);
    builder.put(0x13974e2681a795e5L, SwitchPolicy);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
