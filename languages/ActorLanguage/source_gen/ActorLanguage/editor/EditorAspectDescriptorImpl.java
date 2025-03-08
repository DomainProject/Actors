package ActorLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import jetbrains.mps.openapi.editor.descriptor.EditorHintsProvider;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorHint;
import java.util.Arrays;
import jetbrains.mps.editor.runtime.descriptor.ConceptEditorHintImpl;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;
import jetbrains.mps.openapi.editor.descriptor.SubstituteMenu;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase implements EditorHintsProvider {
  private Collection<ConceptEditorHint> myHints = Arrays.<ConceptEditorHint>asList(new ConceptEditorHintImpl("graph", "", true, "ActorLanguage.editor.topology.graph"));
  @NotNull
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (conceptIndex.index(cncpt)) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new ActorBox_graph_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new ActorBoxesList_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new ActorLink_graph_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new ActorLinksList_Editor());
      case 4:
        return Collections.<ConceptEditor>singletonList(new ActorReference_Editor());
      case 5:
        return Collections.<ConceptEditor>singletonList(new ActorReferenceList_Editor());
      case 6:
        return Collections.<ConceptEditor>singletonList(new ActorScript_Editor());
      case 7:
        return Collections.<ConceptEditor>singletonList(new ActorsGraph_graph_Editor());
      case 8:
        return Collections.<ConceptEditor>singletonList(new Become_Editor());
      case 9:
        return Collections.<ConceptEditor>singletonList(new ChangeFetchPolicy_Editor());
      case 10:
        return Collections.<ConceptEditor>singletonList(new CreateActor_Editor());
      case 11:
        return Collections.<ConceptEditor>singletonList(new CreateActorReference_Editor());
      case 12:
        return Collections.<ConceptEditor>singletonList(new CreateActors_Editor());
      case 13:
        return Collections.<ConceptEditor>singletonList(new CreateBehavior_Editor());
      case 14:
        return Collections.<ConceptEditor>singletonList(new CreateEnvelope_Editor());
      case 15:
        return Collections.<ConceptEditor>singletonList(new CreateMessage_Editor());
      case 16:
        return Collections.<ConceptEditor>singletonList(new CreatePayload_Editor());
      case 17:
        return Collections.<ConceptEditor>singletonList(new CustomEventHandler_Editor());
      case 18:
        return Collections.<ConceptEditor>singletonList(new EmptyLine_Editor());
      case 19:
        return Collections.<ConceptEditor>singletonList(new ExternalFunctionPrototype_Editor());
      case 20:
        return Collections.<ConceptEditor>singletonList(new ExternalType_Editor());
      case 21:
        return Collections.<ConceptEditor>singletonList(new ExternalTypeDefinition_Editor());
      case 22:
        return Collections.<ConceptEditor>singletonList(new ForEachActorReferenceStatement_Editor());
      case 23:
        return Collections.<ConceptEditor>singletonList(new GetNeighborsFromReceptionist_Editor());
      case 24:
        return Collections.<ConceptEditor>singletonList(new GetSourceActor_Editor());
      case 25:
        return Collections.<ConceptEditor>singletonList(new Initializer_Editor());
      case 26:
        return Collections.<ConceptEditor>singletonList(new ListCreateActor_Editor());
      case 27:
        return Collections.<ConceptEditor>singletonList(new Receptionist_Editor());
      case 28:
        return Collections.<ConceptEditor>singletonList(new ReceptionistPolicy_Editor());
      case 29:
        return Collections.<ConceptEditor>singletonList(new ReturnActorReference_Editor());
      case 30:
        return Collections.<ConceptEditor>singletonList(new SelectEnvelope_Editor());
      case 31:
        return Collections.<ConceptEditor>singletonList(new SelectPayload_Editor());
      case 32:
        return Collections.<ConceptEditor>singletonList(new SendMessage_Editor());
      case 33:
        return Collections.<ConceptEditor>singletonList(new SendMessageToNeighbors_Editor());
      case 34:
        return Collections.<ConceptEditor>singletonList(new StringBody_Editor());
      case 35:
        return Collections.<ConceptEditor>singletonList(new SwitchPolicy_Editor());
      case 36:
        return Collections.<ConceptEditor>singletonList(new Window_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }
  private Collection<ConceptEditorComponent> getDeclaredEC_0(String editorComponentId) {
    if ("ActorLanguage.editor.HorizontalBar".equals(editorComponentId)) {
      return Collections.singletonList(new HorizontalBar());
    }
    return Collections.emptyList();
  }
  @NotNull
  public Collection<ConceptEditorComponent> getDeclaredEditorComponents(SAbstractConcept concept, String editorComponentId) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (conceptIndex1.index(cncpt)) {
      case 0:
        return getDeclaredEC_0(editorComponentId);
      default:
    }
    return Collections.emptyList();
  }

  public Collection<ConceptEditorHint> getHints() {
    return myHints;
  }

  @NotNull
  @Override
  public Collection<SubstituteMenu> getDeclaredDefaultSubstituteMenus(SAbstractConcept concept) {
    SAbstractConcept cncpt = concept;
    switch (conceptIndex2.index(cncpt)) {
      case 0:
        return Collections.<SubstituteMenu>singletonList(new ActorBox_SubstituteMenu());
      case 1:
        return Collections.<SubstituteMenu>singletonList(new CustomEventHandler_SubstituteMenu());
      case 2:
        return Collections.<SubstituteMenu>singletonList(new EmptyLine_SubstituteMenu());
      case 3:
        return Collections.<SubstituteMenu>singletonList(new MessageRef_SubstituteMenu());
      case 4:
        return Collections.<SubstituteMenu>singletonList(new SelectEnvelope_SubstituteMenu());
      case 5:
        return Collections.<SubstituteMenu>singletonList(new SelectPayload_SubstituteMenu());
      default:
    }
    return Collections.<SubstituteMenu>emptyList();
  }

  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6b33cca64056ab07L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6b33cca6412e20a5L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e9333277ec5d1L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x401c50b1e5ba7cb3L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57936L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5366e9c2d97392cfL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5ef413f8f61f9c04L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e933327617303L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5d890eb3ec029424L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe5743ae753L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366687L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x1f52820f4a642252L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884ebc5f27L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884e7a5fe9L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e879cff63330806L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0xbc4afff4163c9e3L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x401c50b1e5dbf567L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x13974e2681690352L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0xbc4afff40408069L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0xe2178aac28357fL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x344e3e3ed7fb5b3fL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x5d890eb3ebfeaec5L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x13974e26817cb5d6L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e9333273d647cL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f26df2L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x338e7da8a4a78ca9L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x3db738e392e4ce51L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x13974e2681a795e5L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x712ee2200f5e06fcL)).seal();
  private static final ConceptSwitchIndex conceptIndex1 = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L)).seal();
  private static final ConceptSwitchIndex conceptIndex2 = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x1f52820f4a642252L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884ebc5f27L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6ac9b580f420bedcL), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L), MetaIdFactory.conceptId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L)).seal();
}
