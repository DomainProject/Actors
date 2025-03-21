package ActorLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenAspectBase;
import ActorLanguage.structure.LanguageConceptSwitch;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.text.rt.TextGenDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.text.rt.TextGenModelOutline;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class TextGenAspectDescriptor extends TextGenAspectBase {
  private final LanguageConceptSwitch myIndex = new LanguageConceptSwitch();

  public TextGenAspectDescriptor() {
  }

  @Nullable
  @Override
  public TextGenDescriptor getDescriptor(@NotNull SAbstractConcept concept) {
    switch (myIndex.index(concept)) {
      case LanguageConceptSwitch.ActorScript:
        return new ActorScript_TextGen();
      case LanguageConceptSwitch.ActorsGraph:
        return new ActorsGraph_TextGen();
      case LanguageConceptSwitch.CreateActor:
        return new CreateActor_TextGen();
      case LanguageConceptSwitch.CreateActors:
        return new CreateActors_TextGen();
      case LanguageConceptSwitch.CreateEnvelope:
        return new CreateEnvelope_TextGen();
      case LanguageConceptSwitch.CreateMessage:
        return new CreateMessage_TextGen();
      case LanguageConceptSwitch.CreatePayload:
        return new CreatePayload_TextGen();
      case LanguageConceptSwitch.EmptyLine:
        return new EmptyLine_TextGen();
      case LanguageConceptSwitch.ForEachActorReferenceStatement:
        return new ForEachActorReferenceStatement_TextGen();
      case LanguageConceptSwitch.GetNeighborsFromReceptionist:
        return new GetNeighborsFromReceptionist_TextGen();
      case LanguageConceptSwitch.Receptionist:
        return new Receptionist_TextGen();
      case LanguageConceptSwitch.SendMessage:
        return new SendMessage_TextGen();
      case LanguageConceptSwitch.SendMessageToNeighbors:
        return new SendMessageToNeighbors_TextGen();
      case LanguageConceptSwitch.StringBody:
        return new StringBody_TextGen();
    }
    return null;
  }

  @Override
  public void breakdownToUnits(@NotNull TextGenModelOutline outline) {
    for (SNode root : outline.getModel().getRootNodes()) {
      if (root.getConcept().equals(CONCEPTS.ActorScript$nz)) {
        String fname = getFileName_ActorScript(root);
        String ext = getFileExtension_ActorScript(root);
        outline.registerTextUnit((ext == null ? fname : (fname + '.' + ext)), root);
        continue;
      }
    }
  }
  private static String getFileName_ActorScript(SNode node) {
    return node.getName();
  }
  private static String getFileExtension_ActorScript(SNode node) {
    return "c";
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ActorScript$nz = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, "ActorLanguage.structure.ActorScript");
  }
}
