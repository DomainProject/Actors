package QueryLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_Column;
  private ConceptPresentation props_ColumnRef;
  private ConceptPresentation props_Condition;
  private ConceptPresentation props_CreateTable;
  private ConceptPresentation props_Script;
  private ConceptPresentation props_Select;
  private ConceptPresentation props_Statement;
  private ConceptPresentation props_Where;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.Column:
        if (props_Column == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Column = cpb.create();
        }
        return props_Column;
      case LanguageConceptSwitch.ColumnRef:
        if (props_ColumnRef == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee7375157f4L, 0x11100ee7375157f5L, "column", "", "");
          props_ColumnRef = cpb.create();
        }
        return props_ColumnRef;
      case LanguageConceptSwitch.Condition:
        if (props_Condition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737470ff3L, 0x11100ee7375283dfL, "column", "", "");
          props_Condition = cpb.create();
        }
        return props_Condition;
      case LanguageConceptSwitch.CreateTable:
        if (props_CreateTable == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_CreateTable = cpb.create();
        }
        return props_CreateTable;
      case LanguageConceptSwitch.Script:
        if (props_Script == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Script");
          props_Script = cpb.create();
        }
        return props_Script;
      case LanguageConceptSwitch.Select:
        if (props_Select == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SELECT");
          props_Select = cpb.create();
        }
        return props_Select;
      case LanguageConceptSwitch.Statement:
        if (props_Statement == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Statement = cpb.create();
        }
        return props_Statement;
      case LanguageConceptSwitch.Where:
        if (props_Where == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("WHERE");
          props_Where = cpb.create();
        }
        return props_Where;
    }
    return null;
  }
}
