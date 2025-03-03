package ActorLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import com.mbeddr.core.modules.behavior.Module__BehaviorDescriptor;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SProperty;

public final class ActorScript__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, "ActorLanguage.structure.ActorScript");

  public static final SMethod<Iterable<SNode>> allReferenceableContentsInChunk_id6clJcrKmVSn = new SMethodBuilder<Iterable<SNode>>(new SJavaCompoundTypeImpl((Class<Iterable<SNode>>) ((Class) Object.class))).name("allReferenceableContentsInChunk").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(7139820346887880215L).languageId(0xaa41d1b2bffa7eb1L, 0xd4280a54f6df4383L).build2();
  public static final SMethod<Integer> getFreeAddress_id3JP6tIS4aZI = new SMethodBuilder<Integer>(new SJavaCompoundTypeImpl(Integer.TYPE)).name("getFreeAddress").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(4320387849008492526L).languageId(0x9416196c5eca1268L, 0x10eda99958984cdeL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(allReferenceableContentsInChunk_id6clJcrKmVSn, getFreeAddress_id3JP6tIS4aZI);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static Iterable<SNode> allReferenceableContentsInChunk_id6clJcrKmVSn(@NotNull SNode __thisNode__) {
    List<SNode> base = Module__BehaviorDescriptor.flattenedContents_id5DwX9xlFNJe.invokeSpecial(__thisNode__);
    List<SNode> added = new ArrayList<SNode>();
    ListSequence.fromList(added).addSequence(Sequence.fromIterable(SLinkOperations.collect(SNodeOperations.ofConcept(SLinkOperations.getChildren(__thisNode__, LINKS.types$lVcp), CONCEPTS.ExternalType$Bi), LINKS.declaration$COQI)));
    ListSequence.fromList(added).addSequence(Sequence.fromIterable(SNodeOperations.ofConcept(SLinkOperations.getChildren(__thisNode__, LINKS.types$lVcp), CONCEPTS.CustomType$VF)));
    ListSequence.fromList(added).addSequence(Sequence.fromIterable(SNodeOperations.ofConcept(SLinkOperations.getChildren(__thisNode__, LINKS.externalFunctions$bWTb), CONCEPTS.ExternalFunction$kh)));
    ListSequence.fromList(added).addSequence(Sequence.fromIterable(SLinkOperations.collect(SNodeOperations.ofConcept(SLinkOperations.getChildren(__thisNode__, LINKS.externalFunctions$bWTb), CONCEPTS.ExternalFunctionPrototype$n3), LINKS.prototype$75Zb)));
    ListSequence.fromList(base).addSequence(ListSequence.fromList(added));
    return base;
  }
  /*package*/ static int getFreeAddress_id3JP6tIS4aZI(@NotNull SNode __thisNode__) {
    int address = ListSequence.fromList(SNodeOperations.getNodeDescendants(__thisNode__, CONCEPTS.CreateActor$Uv, false, new SAbstractConcept[]{})).count();
    boolean isAddressFree;
    do {
      isAddressFree = true;
      for (SNode actor : ListSequence.fromList(SNodeOperations.getNodeDescendants(__thisNode__, CONCEPTS.CreateActor$Uv, false, new SAbstractConcept[]{}))) {
        if (SPropertyOperations.getInteger(actor, PROPS.address$DqJ_) == address) {
          isAddressFree = false;
          address++;
          break;
        }
      }
    } while (!(isAddressFree));
    return address;
  }

  /*package*/ ActorScript__BehaviorDescriptor() {
  }

  @Override
  protected void initNode(@NotNull SNode node, @NotNull SConstructor constructor, @Nullable Object[] parameters) {
    ___init___(node);
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SNode node, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 0:
        return (T) ((Iterable<SNode>) allReferenceableContentsInChunk_id6clJcrKmVSn(node));
      case 1:
        return (T) ((Integer) getFreeAddress_id3JP6tIS4aZI(node));
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SAbstractConcept concept, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @NotNull
  @Override
  public List<SMethod<?>> getDeclaredMethods() {
    return BH_METHODS;
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return CONCEPT;
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink types$lVcp = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x754f4cb23a308c63L, "types");
    /*package*/ static final SContainmentLink declaration$COQI = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e879cff63330806L, 0x2e879cff63463a14L, "declaration");
    /*package*/ static final SContainmentLink externalFunctions$bWTb = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x61da6c5c302ab136L, "externalFunctions");
    /*package*/ static final SContainmentLink prototype$75Zb = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884e7a5fe9L, 0x6065ca884e7a5febL, "prototype");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ExternalType$Bi = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2e879cff63330806L, "ActorLanguage.structure.ExternalType");
    /*package*/ static final SConcept CustomType$VF = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x754f4cb23a214a8fL, "ActorLanguage.structure.CustomType");
    /*package*/ static final SConcept ExternalFunction$kh = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x61da6c5c302aacc3L, "ActorLanguage.structure.ExternalFunction");
    /*package*/ static final SConcept ExternalFunctionPrototype$n3 = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6065ca884e7a5fe9L, "ActorLanguage.structure.ExternalFunctionPrototype");
    /*package*/ static final SConcept CreateActor$Uv = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, "ActorLanguage.structure.CreateActor");
  }

  private static final class PROPS {
    /*package*/ static final SProperty address$DqJ_ = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, 0x13974e2681512c34L, "address");
  }
}
