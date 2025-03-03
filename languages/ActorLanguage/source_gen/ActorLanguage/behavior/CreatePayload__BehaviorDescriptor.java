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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class CreatePayload__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x2176abe574366688L, "ActorLanguage.structure.CreatePayload");

  public static final SMethod<SNode> getDeclaredType_id1LDGRqyYkTX = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getDeclaredType").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(2047364827738361469L).languageId(0x81d97714ff227fb0L, 0x61c69711ed614850L).build2();
  public static final SMethod<SNode> getInitExpression_id1LDGRqyYkU1 = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getInitExpression").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(2047364827738361473L).languageId(0x81d97714ff227fb0L, 0x61c69711ed614850L).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getDeclaredType_id1LDGRqyYkTX, getInitExpression_id1LDGRqyYkU1);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static SNode getDeclaredType_id1LDGRqyYkTX(@NotNull SNode __thisNode__) {
    return SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x11f8a0774f2L, "jetbrains.mps.lang.core.structure.IType")));
  }
  /*package*/ static SNode getInitExpression_id1LDGRqyYkU1(@NotNull SNode __thisNode__) {
    return SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x7af69e2e83a1ba32L, "com.mbeddr.core.expressions.structure.Expression"));
  }

  /*package*/ CreatePayload__BehaviorDescriptor() {
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
        return (T) ((SNode) getDeclaredType_id1LDGRqyYkTX(node));
      case 1:
        return (T) ((SNode) getInitExpression_id1LDGRqyYkU1(node));
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
}
