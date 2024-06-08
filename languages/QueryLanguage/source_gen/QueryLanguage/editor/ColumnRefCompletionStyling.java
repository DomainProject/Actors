package QueryLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemCustomizer;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemStyle;
import jetbrains.mps.openapi.editor.menus.style.EditorMenuItemCustomizationContext;
import jetbrains.mps.editor.runtime.completion.CompletionMenuItemCustomizationContext;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemCreatingConceptContextMatcher;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.editor.runtime.menus.EditorMenuItemCreatingCustomizationContext;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.editor.runtime.completion.CompletionItemInformation;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;

public class ColumnRefCompletionStyling implements EditorMenuItemCustomizer {

  @Override
  public void customize(EditorMenuItemStyle customization, EditorMenuItemCustomizationContext context) {
    if (context.get(CompletionMenuItemCustomizationContext.COMPLETION_ITEM_INFORMATION) == null) {
      return;
    }
    ColumnRefCompletionStylingSpecific customizer = new ColumnRefCompletionStylingSpecific();
    if (customizer.matches(context)) {
      customizer.customize(customization, context);
    }
  }

  private static class ColumnRefCompletionStylingSpecific implements EditorMenuItemCustomizer {

    public boolean matches(EditorMenuItemCustomizationContext context) {
      return new EditorMenuItemCreatingConceptContextMatcher(CONCEPTS.ColumnRef$XM).matchesContext(context) && getCompletionItemInformation(context) != null;
    }


    private SNode getParentNode(EditorMenuItemCustomizationContext context) {
      return context.get(EditorMenuItemCreatingCustomizationContext.PARENT_NODE);
    }
    private SNode getChild(EditorMenuItemCustomizationContext context) {
      return context.get(EditorMenuItemCreatingCustomizationContext.CURRENT_CHILD);
    }
    private SContainmentLink getLink(EditorMenuItemCustomizationContext context) {
      return context.get(EditorMenuItemCreatingCustomizationContext.CONTAINMENT_LINK);
    }
    private CompletionItemInformation getCompletionItemInformation(EditorMenuItemCustomizationContext context) {
      return context.get(CompletionMenuItemCustomizationContext.COMPLETION_ITEM_INFORMATION);
    }

    @Override
    public void customize(EditorMenuItemStyle style, EditorMenuItemCustomizationContext context) {
      customize_(getParentNode(context), getChild(context), getLink(context), style, getCompletionItemInformation(context));
    }
    private void customize_(SNode parentNode, SNode currentChild, SContainmentLink containmentLink, EditorMenuItemStyle style, CompletionItemInformation itemInformation) {
      Object parameterObject = itemInformation.getParameterObject();
      if (parameterObject instanceof SNode && SNodeOperations.isInstanceOf(((SNode) parameterObject), CONCEPTS.Column$oK)) {
        style.setDescriptionText("(" + SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(((SNode) parameterObject)), CONCEPTS.CreateTable$ca), PROPS.name$MnvL) + ")");
      }
    }
  }


  private static final class CONCEPTS {
    /*package*/ static final SConcept ColumnRef$XM = MetaAdapterFactory.getConcept(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee7375157f4L, "QueryLanguage.structure.ColumnRef");
    /*package*/ static final SConcept CreateTable$ca = MetaAdapterFactory.getConcept(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737443b2eL, "QueryLanguage.structure.CreateTable");
    /*package*/ static final SConcept Column$oK = MetaAdapterFactory.getConcept(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737443b33L, "QueryLanguage.structure.Column");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}