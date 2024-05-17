package ActorLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int AbstractActor = 0;
  public static final int Actor = 1;
  public static final int ActorAction = 2;
  public static final int ActorScript = 3;
  public static final int Behavior = 4;
  public static final int CreateMessage = 5;
  public static final int Envelope = 6;
  public static final int Payload = 7;
  public static final int SendMessage = 8;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0x10eda99958984cdeL, 0x9416196c5eca1268L);
    builder.put(0x35a5eccbf2f23308L, AbstractActor);
    builder.put(0x35a5eccbf2f23364L, Actor);
    builder.put(0x35a5eccbf2f8e44bL, ActorAction);
    builder.put(0x35a5eccbf2f23376L, ActorScript);
    builder.put(0x2176abe5743ae753L, Behavior);
    builder.put(0x35a5eccbf2f23371L, CreateMessage);
    builder.put(0x2176abe574366687L, Envelope);
    builder.put(0x2176abe574366688L, Payload);
    builder.put(0x35a5eccbf2f26df2L, SendMessage);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
