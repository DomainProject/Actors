package ActorLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.menus.substitute.SubstituteMenuBase;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.lang.editor.menus.MenuPart;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuContext;
import java.util.ArrayList;
import com.mbeddr.mpsutil.grammarcells.runtime.menu.GrammarCellsSubstituteMenuPart;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class GrammarCellsSubstituteMenu_ExternalTypeDefinition extends SubstituteMenuBase {
  public GrammarCellsSubstituteMenu_ExternalTypeDefinition() {
    super(true, new EditorMenuDescriptorBase("contribution to the " + "default substitute menu for " + "ExternalTypeDefinition", null));
  }
  @NotNull
  @Override
  protected List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> getParts(final SubstituteMenuContext _context) {
    List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> result = new ArrayList<MenuPart<SubstituteMenuItem, SubstituteMenuContext>>();
    result.add(new GrammarCellsSubstituteMenuPart_rq0hh6_a());
    return result;
  }

  private class GrammarCellsSubstituteMenuPart_rq0hh6_a extends GrammarCellsSubstituteMenuPart {
    @Override
    public SModule getModule(SRepository repository) {
      return PersistenceFacade.getInstance().createModuleReference("10eda999-5898-4cde-9416-196c5eca1268(ActorLanguage)").resolve(repository);
    }
    @Override
    public SAbstractConcept getExpectedOutputConcept() {
      return CONCEPTS.ExternalTypeDefinition$1k;
    }
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ExternalTypeDefinition$1k = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0xbc4afff4163c9e3L, "ActorLanguage.structure.ExternalTypeDefinition");
  }
}
