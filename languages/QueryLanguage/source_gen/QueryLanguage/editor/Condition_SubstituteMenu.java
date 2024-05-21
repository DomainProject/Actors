package QueryLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.menus.substitute.SubstituteMenuBase;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.lang.editor.menus.MenuPart;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuContext;
import java.util.ArrayList;
import jetbrains.mps.lang.editor.menus.substitute.ConstraintsFilteringSubstituteMenuPartDecorator;
import jetbrains.mps.lang.editor.menus.substitute.ReferenceScopeSubstituteMenuPart;
import jetbrains.mps.lang.editor.menus.ConceptMenusPart;
import java.util.Collection;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public class Condition_SubstituteMenu extends SubstituteMenuBase {
  public Condition_SubstituteMenu() {
    super(false, new EditorMenuDescriptorBase("default substitute menu for Condition. Generated from implicit smart reference attribute.", new SNodePointer("r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)", "1229499084499783667")));
  }
  @NotNull
  @Override
  protected List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> getParts(final SubstituteMenuContext _context) {
    List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> result = new ArrayList<MenuPart<SubstituteMenuItem, SubstituteMenuContext>>();
    result.add(new ConstraintsFilteringSubstituteMenuPartDecorator(new SMP_ReferenceScope_ivmgla_a(), CONCEPTS.Condition$1A));
    result.add(new SMP_Subconcepts_ivmgla_b());
    return result;
  }

  public class SMP_ReferenceScope_ivmgla_a extends ReferenceScopeSubstituteMenuPart {

    public SMP_ReferenceScope_ivmgla_a() {
      super(CONCEPTS.Condition$1A, LINKS.column$rrbV, new EditorMenuDescriptorBase("reference scope substitute menu part", null));
    }

  }
  public class SMP_Subconcepts_ivmgla_b extends ConceptMenusPart<SubstituteMenuItem, SubstituteMenuContext> {
    public SMP_Subconcepts_ivmgla_b() {
      super(new EditorMenuDescriptorBase("include menus for all the direct subconcepts of " + "Condition", null));
    }

    @Override
    protected Collection<SAbstractConcept> getConcepts(final SubstituteMenuContext _context) {
      return getDirectDescendants(_context, CONCEPTS.Condition$1A);
    }

    @Override
    protected Collection<SubstituteMenuItem> createItemsForConcept(SubstituteMenuContext context, SAbstractConcept concept) {
      return context.createItems(new DefaultSubstituteMenuLookup(LanguageRegistry.getInstance(context.getEditorContext().getRepository()), concept));
    }
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Condition$1A = MetaAdapterFactory.getConcept(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737470ff3L, "QueryLanguage.structure.Condition");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink column$rrbV = MetaAdapterFactory.getReferenceLink(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee737470ff3L, 0x11100ee7375283dfL, "column");
  }
}
