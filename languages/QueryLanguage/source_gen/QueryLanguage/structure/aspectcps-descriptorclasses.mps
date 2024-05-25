<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f60a8a9(checkpoints/QueryLanguage.structure@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" />
    <import index="ksn4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="bzg8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.impl(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="ConceptPresentationAspectImpl" />
    <node concept="3uibUv" id="1" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~ConceptPresentationAspectBase" resolve="ConceptPresentationAspectBase" />
    </node>
    <node concept="312cEg" id="2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Column" />
      <node concept="3uibUv" id="g" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="h" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ColumnRef" />
      <node concept="3uibUv" id="i" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="j" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Condition" />
      <node concept="3uibUv" id="k" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="l" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CreateTable" />
      <node concept="3uibUv" id="m" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="n" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_InsertInto" />
      <node concept="3uibUv" id="o" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="p" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Script" />
      <node concept="3uibUv" id="q" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="r" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Select" />
      <node concept="3uibUv" id="s" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="t" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Statement" />
      <node concept="3uibUv" id="u" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="v" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="a" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Update" />
      <node concept="3uibUv" id="w" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="x" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="b" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Value" />
      <node concept="3uibUv" id="y" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="c" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Where" />
      <node concept="3uibUv" id="$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="_" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="d" role="1B3o_S" />
    <node concept="2tJIrI" id="e" role="jymVt" />
    <node concept="3clFb_" id="f" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="A" role="1B3o_S" />
      <node concept="37vLTG" id="B" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="G" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="C" role="3clF47">
        <node concept="3cpWs8" id="H" role="3cqZAp">
          <node concept="3cpWsn" id="K" role="3cpWs9">
            <property role="TrG5h" value="structureDescriptor" />
            <node concept="3uibUv" id="L" role="1tU5fm">
              <ref role="3uigEE" node="fl" resolve="StructureAspectDescriptor" />
            </node>
            <node concept="10QFUN" id="M" role="33vP2m">
              <node concept="3uibUv" id="N" role="10QFUM">
                <ref role="3uigEE" node="fl" resolve="StructureAspectDescriptor" />
              </node>
              <node concept="2OqwBi" id="O" role="10QFUP">
                <node concept="37vLTw" id="P" role="2Oq$k0">
                  <ref role="3cqZAo" to="ze1i:~ConceptPresentationAspectBase.myLanguageRuntime" resolve="myLanguageRuntime" />
                </node>
                <node concept="liA8E" id="Q" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                  <node concept="3VsKOn" id="R" role="37wK5m">
                    <ref role="3VsUkX" to="ze1i:~StructureAspectDescriptor" resolve="StructureAspectDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="I" role="3cqZAp">
          <node concept="2OqwBi" id="S" role="3KbGdf">
            <node concept="37vLTw" id="14" role="2Oq$k0">
              <ref role="3cqZAo" node="K" resolve="structureDescriptor" />
            </node>
            <node concept="liA8E" id="15" role="2OqNvi">
              <ref role="37wK5l" node="fM" resolve="internalIndex" />
              <node concept="37vLTw" id="16" role="37wK5m">
                <ref role="3cqZAo" node="B" resolve="c" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="T" role="3KbHQx">
            <node concept="3clFbS" id="17" role="3Kbo56">
              <node concept="3clFbJ" id="19" role="3cqZAp">
                <node concept="3clFbS" id="1b" role="3clFbx">
                  <node concept="3cpWs8" id="1d" role="3cqZAp">
                    <node concept="3cpWsn" id="1g" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="1h" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1i" role="33vP2m">
                        <node concept="1pGfFk" id="1j" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1e" role="3cqZAp">
                    <node concept="2OqwBi" id="1k" role="3clFbG">
                      <node concept="37vLTw" id="1l" role="2Oq$k0">
                        <ref role="3cqZAo" node="1g" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="1m" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598131" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1f" role="3cqZAp">
                    <node concept="37vLTI" id="1n" role="3clFbG">
                      <node concept="2OqwBi" id="1o" role="37vLTx">
                        <node concept="37vLTw" id="1q" role="2Oq$k0">
                          <ref role="3cqZAo" node="1g" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="1r" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1p" role="37vLTJ">
                        <ref role="3cqZAo" node="2" resolve="props_Column" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1c" role="3clFbw">
                  <node concept="10Nm6u" id="1s" role="3uHU7w" />
                  <node concept="37vLTw" id="1t" role="3uHU7B">
                    <ref role="3cqZAo" node="2" resolve="props_Column" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1a" role="3cqZAp">
                <node concept="37vLTw" id="1u" role="3cqZAk">
                  <ref role="3cqZAo" node="2" resolve="props_Column" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="18" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cV" resolve="Column" />
            </node>
          </node>
          <node concept="3KbdKl" id="U" role="3KbHQx">
            <node concept="3clFbS" id="1v" role="3Kbo56">
              <node concept="3clFbJ" id="1x" role="3cqZAp">
                <node concept="3clFbS" id="1z" role="3clFbx">
                  <node concept="3cpWs8" id="1_" role="3cqZAp">
                    <node concept="3cpWsn" id="1C" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="1D" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1E" role="33vP2m">
                        <node concept="1pGfFk" id="1F" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1A" role="3cqZAp">
                    <node concept="2OqwBi" id="1G" role="3clFbG">
                      <node concept="37vLTw" id="1H" role="2Oq$k0">
                        <ref role="3cqZAo" node="1C" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="1I" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:1229499084500457460" />
                        <node concept="1adDum" id="1J" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="1K" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="1L" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="1M" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f5L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="1N" role="37wK5m">
                          <property role="Xl_RC" value="column" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="1O" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="1P" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1B" role="3cqZAp">
                    <node concept="37vLTI" id="1Q" role="3clFbG">
                      <node concept="2OqwBi" id="1R" role="37vLTx">
                        <node concept="37vLTw" id="1T" role="2Oq$k0">
                          <ref role="3cqZAo" node="1C" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="1U" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1S" role="37vLTJ">
                        <ref role="3cqZAo" node="3" resolve="props_ColumnRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1$" role="3clFbw">
                  <node concept="10Nm6u" id="1V" role="3uHU7w" />
                  <node concept="37vLTw" id="1W" role="3uHU7B">
                    <ref role="3cqZAo" node="3" resolve="props_ColumnRef" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1y" role="3cqZAp">
                <node concept="37vLTw" id="1X" role="3cqZAk">
                  <ref role="3cqZAo" node="3" resolve="props_ColumnRef" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1w" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cW" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="3KbdKl" id="V" role="3KbHQx">
            <node concept="3clFbS" id="1Y" role="3Kbo56">
              <node concept="3clFbJ" id="20" role="3cqZAp">
                <node concept="3clFbS" id="22" role="3clFbx">
                  <node concept="3cpWs8" id="24" role="3cqZAp">
                    <node concept="3cpWsn" id="27" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="28" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="29" role="33vP2m">
                        <node concept="1pGfFk" id="2a" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="25" role="3cqZAp">
                    <node concept="2OqwBi" id="2b" role="3clFbG">
                      <node concept="37vLTw" id="2c" role="2Oq$k0">
                        <ref role="3cqZAo" node="27" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2d" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:1229499084499783667" />
                        <node concept="1adDum" id="2e" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="1adDum" id="2f" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="1adDum" id="2g" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737470ff3L" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="1adDum" id="2h" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375283dfL" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="Xl_RD" id="2i" role="37wK5m">
                          <property role="Xl_RC" value="column" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="Xl_RD" id="2j" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="Xl_RD" id="2k" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="26" role="3cqZAp">
                    <node concept="37vLTI" id="2l" role="3clFbG">
                      <node concept="2OqwBi" id="2m" role="37vLTx">
                        <node concept="37vLTw" id="2o" role="2Oq$k0">
                          <ref role="3cqZAo" node="27" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2p" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2n" role="37vLTJ">
                        <ref role="3cqZAo" node="4" resolve="props_Condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="23" role="3clFbw">
                  <node concept="10Nm6u" id="2q" role="3uHU7w" />
                  <node concept="37vLTw" id="2r" role="3uHU7B">
                    <ref role="3cqZAo" node="4" resolve="props_Condition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="21" role="3cqZAp">
                <node concept="37vLTw" id="2s" role="3cqZAk">
                  <ref role="3cqZAo" node="4" resolve="props_Condition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1Z" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cX" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="W" role="3KbHQx">
            <node concept="3clFbS" id="2t" role="3Kbo56">
              <node concept="3clFbJ" id="2v" role="3cqZAp">
                <node concept="3clFbS" id="2x" role="3clFbx">
                  <node concept="3cpWs8" id="2z" role="3cqZAp">
                    <node concept="3cpWsn" id="2A" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2B" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2C" role="33vP2m">
                        <node concept="1pGfFk" id="2D" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2$" role="3cqZAp">
                    <node concept="2OqwBi" id="2E" role="3clFbG">
                      <node concept="37vLTw" id="2F" role="2Oq$k0">
                        <ref role="3cqZAo" node="2A" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2G" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598126" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2_" role="3cqZAp">
                    <node concept="37vLTI" id="2H" role="3clFbG">
                      <node concept="2OqwBi" id="2I" role="37vLTx">
                        <node concept="37vLTw" id="2K" role="2Oq$k0">
                          <ref role="3cqZAo" node="2A" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2L" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2J" role="37vLTJ">
                        <ref role="3cqZAo" node="5" resolve="props_CreateTable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2y" role="3clFbw">
                  <node concept="10Nm6u" id="2M" role="3uHU7w" />
                  <node concept="37vLTw" id="2N" role="3uHU7B">
                    <ref role="3cqZAo" node="5" resolve="props_CreateTable" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2w" role="3cqZAp">
                <node concept="37vLTw" id="2O" role="3cqZAk">
                  <ref role="3cqZAo" node="5" resolve="props_CreateTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2u" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cY" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="X" role="3KbHQx">
            <node concept="3clFbS" id="2P" role="3Kbo56">
              <node concept="3clFbJ" id="2R" role="3cqZAp">
                <node concept="3clFbS" id="2T" role="3clFbx">
                  <node concept="3cpWs8" id="2V" role="3cqZAp">
                    <node concept="3cpWsn" id="2Y" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2Z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="30" role="33vP2m">
                        <node concept="1pGfFk" id="31" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2W" role="3cqZAp">
                    <node concept="2OqwBi" id="32" role="3clFbG">
                      <node concept="37vLTw" id="33" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Y" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="34" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255225544" />
                        <node concept="Xl_RD" id="35" role="37wK5m">
                          <property role="Xl_RC" value="INSERT INTO" />
                          <uo k="s:originTrace" v="n:7087042522255225544" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2X" role="3cqZAp">
                    <node concept="37vLTI" id="36" role="3clFbG">
                      <node concept="2OqwBi" id="37" role="37vLTx">
                        <node concept="37vLTw" id="39" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Y" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3a" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="38" role="37vLTJ">
                        <ref role="3cqZAo" node="6" resolve="props_InsertInto" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2U" role="3clFbw">
                  <node concept="10Nm6u" id="3b" role="3uHU7w" />
                  <node concept="37vLTw" id="3c" role="3uHU7B">
                    <ref role="3cqZAo" node="6" resolve="props_InsertInto" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2S" role="3cqZAp">
                <node concept="37vLTw" id="3d" role="3cqZAk">
                  <ref role="3cqZAo" node="6" resolve="props_InsertInto" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2Q" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cZ" resolve="InsertInto" />
            </node>
          </node>
          <node concept="3KbdKl" id="Y" role="3KbHQx">
            <node concept="3clFbS" id="3e" role="3Kbo56">
              <node concept="3clFbJ" id="3g" role="3cqZAp">
                <node concept="3clFbS" id="3i" role="3clFbx">
                  <node concept="3cpWs8" id="3k" role="3cqZAp">
                    <node concept="3cpWsn" id="3n" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3o" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3p" role="33vP2m">
                        <node concept="1pGfFk" id="3q" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3l" role="3cqZAp">
                    <node concept="2OqwBi" id="3r" role="3clFbG">
                      <node concept="37vLTw" id="3s" role="2Oq$k0">
                        <ref role="3cqZAo" node="3n" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3t" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:1229499084499598285" />
                        <node concept="Xl_RD" id="3u" role="37wK5m">
                          <property role="Xl_RC" value="Script" />
                          <uo k="s:originTrace" v="n:1229499084499598285" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3m" role="3cqZAp">
                    <node concept="37vLTI" id="3v" role="3clFbG">
                      <node concept="2OqwBi" id="3w" role="37vLTx">
                        <node concept="37vLTw" id="3y" role="2Oq$k0">
                          <ref role="3cqZAo" node="3n" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3z" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3x" role="37vLTJ">
                        <ref role="3cqZAo" node="7" resolve="props_Script" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3j" role="3clFbw">
                  <node concept="10Nm6u" id="3$" role="3uHU7w" />
                  <node concept="37vLTw" id="3_" role="3uHU7B">
                    <ref role="3cqZAo" node="7" resolve="props_Script" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3h" role="3cqZAp">
                <node concept="37vLTw" id="3A" role="3cqZAk">
                  <ref role="3cqZAo" node="7" resolve="props_Script" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3f" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d0" resolve="Script" />
            </node>
          </node>
          <node concept="3KbdKl" id="Z" role="3KbHQx">
            <node concept="3clFbS" id="3B" role="3Kbo56">
              <node concept="3clFbJ" id="3D" role="3cqZAp">
                <node concept="3clFbS" id="3F" role="3clFbx">
                  <node concept="3cpWs8" id="3H" role="3cqZAp">
                    <node concept="3cpWsn" id="3K" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3L" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3M" role="33vP2m">
                        <node concept="1pGfFk" id="3N" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3I" role="3cqZAp">
                    <node concept="2OqwBi" id="3O" role="3clFbG">
                      <node concept="37vLTw" id="3P" role="2Oq$k0">
                        <ref role="3cqZAo" node="3K" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3Q" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7033755722359825273" />
                        <node concept="Xl_RD" id="3R" role="37wK5m">
                          <property role="Xl_RC" value="SELECT" />
                          <uo k="s:originTrace" v="n:7033755722359825273" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3J" role="3cqZAp">
                    <node concept="37vLTI" id="3S" role="3clFbG">
                      <node concept="2OqwBi" id="3T" role="37vLTx">
                        <node concept="37vLTw" id="3V" role="2Oq$k0">
                          <ref role="3cqZAo" node="3K" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3W" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3U" role="37vLTJ">
                        <ref role="3cqZAo" node="8" resolve="props_Select" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3G" role="3clFbw">
                  <node concept="10Nm6u" id="3X" role="3uHU7w" />
                  <node concept="37vLTw" id="3Y" role="3uHU7B">
                    <ref role="3cqZAo" node="8" resolve="props_Select" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3E" role="3cqZAp">
                <node concept="37vLTw" id="3Z" role="3cqZAk">
                  <ref role="3cqZAo" node="8" resolve="props_Select" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3C" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d1" resolve="Select" />
            </node>
          </node>
          <node concept="3KbdKl" id="10" role="3KbHQx">
            <node concept="3clFbS" id="40" role="3Kbo56">
              <node concept="3clFbJ" id="42" role="3cqZAp">
                <node concept="3clFbS" id="44" role="3clFbx">
                  <node concept="3cpWs8" id="46" role="3cqZAp">
                    <node concept="3cpWsn" id="48" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="49" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4a" role="33vP2m">
                        <node concept="1pGfFk" id="4b" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="47" role="3cqZAp">
                    <node concept="37vLTI" id="4c" role="3clFbG">
                      <node concept="2OqwBi" id="4d" role="37vLTx">
                        <node concept="37vLTw" id="4f" role="2Oq$k0">
                          <ref role="3cqZAo" node="48" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4g" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4e" role="37vLTJ">
                        <ref role="3cqZAo" node="9" resolve="props_Statement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="45" role="3clFbw">
                  <node concept="10Nm6u" id="4h" role="3uHU7w" />
                  <node concept="37vLTw" id="4i" role="3uHU7B">
                    <ref role="3cqZAo" node="9" resolve="props_Statement" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="43" role="3cqZAp">
                <node concept="37vLTw" id="4j" role="3cqZAk">
                  <ref role="3cqZAo" node="9" resolve="props_Statement" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="41" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d2" resolve="Statement" />
            </node>
          </node>
          <node concept="3KbdKl" id="11" role="3KbHQx">
            <node concept="3clFbS" id="4k" role="3Kbo56">
              <node concept="3clFbJ" id="4m" role="3cqZAp">
                <node concept="3clFbS" id="4o" role="3clFbx">
                  <node concept="3cpWs8" id="4q" role="3cqZAp">
                    <node concept="3cpWsn" id="4t" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4u" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4v" role="33vP2m">
                        <node concept="1pGfFk" id="4w" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4r" role="3cqZAp">
                    <node concept="2OqwBi" id="4x" role="3clFbG">
                      <node concept="37vLTw" id="4y" role="2Oq$k0">
                        <ref role="3cqZAo" node="4t" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4z" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255689023" />
                        <node concept="Xl_RD" id="4$" role="37wK5m">
                          <property role="Xl_RC" value="UPDATE" />
                          <uo k="s:originTrace" v="n:7087042522255689023" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4s" role="3cqZAp">
                    <node concept="37vLTI" id="4_" role="3clFbG">
                      <node concept="2OqwBi" id="4A" role="37vLTx">
                        <node concept="37vLTw" id="4C" role="2Oq$k0">
                          <ref role="3cqZAo" node="4t" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4D" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4B" role="37vLTJ">
                        <ref role="3cqZAo" node="a" resolve="props_Update" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4p" role="3clFbw">
                  <node concept="10Nm6u" id="4E" role="3uHU7w" />
                  <node concept="37vLTw" id="4F" role="3uHU7B">
                    <ref role="3cqZAo" node="a" resolve="props_Update" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4n" role="3cqZAp">
                <node concept="37vLTw" id="4G" role="3cqZAk">
                  <ref role="3cqZAo" node="a" resolve="props_Update" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4l" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d3" resolve="Update" />
            </node>
          </node>
          <node concept="3KbdKl" id="12" role="3KbHQx">
            <node concept="3clFbS" id="4H" role="3Kbo56">
              <node concept="3clFbJ" id="4J" role="3cqZAp">
                <node concept="3clFbS" id="4L" role="3clFbx">
                  <node concept="3cpWs8" id="4N" role="3cqZAp">
                    <node concept="3cpWsn" id="4Q" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4R" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4S" role="33vP2m">
                        <node concept="1pGfFk" id="4T" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4O" role="3cqZAp">
                    <node concept="2OqwBi" id="4U" role="3clFbG">
                      <node concept="37vLTw" id="4V" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Q" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4W" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255247499" />
                        <node concept="Xl_RD" id="4X" role="37wK5m">
                          <property role="Xl_RC" value="Value" />
                          <uo k="s:originTrace" v="n:7087042522255247499" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4P" role="3cqZAp">
                    <node concept="37vLTI" id="4Y" role="3clFbG">
                      <node concept="2OqwBi" id="4Z" role="37vLTx">
                        <node concept="37vLTw" id="51" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Q" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="52" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="50" role="37vLTJ">
                        <ref role="3cqZAo" node="b" resolve="props_Value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4M" role="3clFbw">
                  <node concept="10Nm6u" id="53" role="3uHU7w" />
                  <node concept="37vLTw" id="54" role="3uHU7B">
                    <ref role="3cqZAo" node="b" resolve="props_Value" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4K" role="3cqZAp">
                <node concept="37vLTw" id="55" role="3cqZAk">
                  <ref role="3cqZAo" node="b" resolve="props_Value" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4I" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d4" resolve="Value" />
            </node>
          </node>
          <node concept="3KbdKl" id="13" role="3KbHQx">
            <node concept="3clFbS" id="56" role="3Kbo56">
              <node concept="3clFbJ" id="58" role="3cqZAp">
                <node concept="3clFbS" id="5a" role="3clFbx">
                  <node concept="3cpWs8" id="5c" role="3cqZAp">
                    <node concept="3cpWsn" id="5f" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5g" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5h" role="33vP2m">
                        <node concept="1pGfFk" id="5i" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5d" role="3cqZAp">
                    <node concept="2OqwBi" id="5j" role="3clFbG">
                      <node concept="37vLTw" id="5k" role="2Oq$k0">
                        <ref role="3cqZAo" node="5f" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5l" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7033755722359825275" />
                        <node concept="Xl_RD" id="5m" role="37wK5m">
                          <property role="Xl_RC" value="WHERE" />
                          <uo k="s:originTrace" v="n:7033755722359825275" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5e" role="3cqZAp">
                    <node concept="37vLTI" id="5n" role="3clFbG">
                      <node concept="2OqwBi" id="5o" role="37vLTx">
                        <node concept="37vLTw" id="5q" role="2Oq$k0">
                          <ref role="3cqZAo" node="5f" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5r" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5p" role="37vLTJ">
                        <ref role="3cqZAo" node="c" resolve="props_Where" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5b" role="3clFbw">
                  <node concept="10Nm6u" id="5s" role="3uHU7w" />
                  <node concept="37vLTw" id="5t" role="3uHU7B">
                    <ref role="3cqZAo" node="c" resolve="props_Where" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="59" role="3cqZAp">
                <node concept="37vLTw" id="5u" role="3cqZAk">
                  <ref role="3cqZAo" node="c" resolve="props_Where" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="57" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d5" resolve="Where" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="J" role="3cqZAp">
          <node concept="10Nm6u" id="5v" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="D" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="2AHcQZ" id="E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="F" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5w">
    <property role="3GE5qa" value="where" />
    <property role="TrG5h" value="EnumerationDescriptor_Operator" />
    <uo k="s:originTrace" v="n:1229499084499783673" />
    <node concept="2tJIrI" id="5x" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFbW" id="5y" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3cqZAl" id="5U" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3Tm1VV" id="5V" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3clFbS" id="5W" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="XkiVB" id="5X" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="1adDum" id="5Y" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="5Z" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="60" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ff9L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="61" role="37wK5m">
            <property role="Xl_RC" value="Operator" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="62" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783673" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5z" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="312cEg" id="5$" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_EQUALS_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="63" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="64" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="65" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="66" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="67" role="37wK5m">
            <property role="Xl_RC" value="EQUALS" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="68" role="37wK5m">
            <property role="Xl_RC" value="=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="69" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ffaL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6a" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783674" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5_" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_GREATER_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6b" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6c" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6d" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6e" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6f" role="37wK5m">
            <property role="Xl_RC" value="GREATER" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6g" role="37wK5m">
            <property role="Xl_RC" value="&gt;" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="6h" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ffcL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6i" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783676" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5A" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LOWER_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6j" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6k" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6l" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6m" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6n" role="37wK5m">
            <property role="Xl_RC" value="LOWER" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6o" role="37wK5m">
            <property role="Xl_RC" value="&lt;" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="6p" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471008L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6q" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783688" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5B" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_GREATER_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6r" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6s" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6t" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6u" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6v" role="37wK5m">
            <property role="Xl_RC" value="GREATER_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6w" role="37wK5m">
            <property role="Xl_RC" value="&gt;=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="6x" role="37wK5m">
            <property role="1adDun" value="0x11100ee73747100dL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6y" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783693" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5C" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LOWER_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6z" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6_" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6A" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6B" role="37wK5m">
            <property role="Xl_RC" value="LOWER_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6C" role="37wK5m">
            <property role="Xl_RC" value="&lt;=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="6D" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471013L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6E" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783699" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5D" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_NOT_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6F" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6G" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6H" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6I" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6J" role="37wK5m">
            <property role="Xl_RC" value="NOT_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6K" role="37wK5m">
            <property role="Xl_RC" value="!=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="6L" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471019L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6M" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783705" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5E" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_BETWEEN_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6N" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6O" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6P" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6Q" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6R" role="37wK5m">
            <property role="Xl_RC" value="BETWEEN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6S" role="37wK5m">
            <property role="Xl_RC" value="BETWEEN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="6T" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471021L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="6U" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783713" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5F" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LIKE_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="6V" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="6W" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="6X" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="6Y" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="6Z" role="37wK5m">
            <property role="Xl_RC" value="LIKE" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="70" role="37wK5m">
            <property role="Xl_RC" value="LIKE" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="71" role="37wK5m">
            <property role="1adDun" value="0x11100ee73747102aL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="72" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783722" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5G" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_IN_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="73" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="74" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="75" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="76" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="77" role="37wK5m">
            <property role="Xl_RC" value="IN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="78" role="37wK5m">
            <property role="Xl_RC" value="IN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="79" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471034L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="7a" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783732" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5H" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3uibUv" id="5I" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="2tJIrI" id="5J" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="312cEg" id="5K" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="7b" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="7c" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2YIFZM" id="7d" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1adDum" id="7e" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7f" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7g" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ff9L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7h" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ffaL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7i" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ffcL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7j" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471008L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7k" role="37wK5m">
          <property role="1adDun" value="0x11100ee73747100dL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7l" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471013L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7m" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471019L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7n" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471021L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7o" role="37wK5m">
          <property role="1adDun" value="0x11100ee73747102aL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="7p" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471034L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5L" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="7q" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="7r" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="7t" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="2ShNRf" id="7s" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="7u" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="7v" role="37wK5m">
            <ref role="3cqZAo" node="5K" resolve="myIndex" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7w" role="37wK5m">
            <ref role="3cqZAo" node="5$" resolve="myMember_EQUALS_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7x" role="37wK5m">
            <ref role="3cqZAo" node="5_" resolve="myMember_GREATER_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7y" role="37wK5m">
            <ref role="3cqZAo" node="5A" resolve="myMember_LOWER_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7z" role="37wK5m">
            <ref role="3cqZAo" node="5B" resolve="myMember_GREATER_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7$" role="37wK5m">
            <ref role="3cqZAo" node="5C" resolve="myMember_LOWER_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7_" role="37wK5m">
            <ref role="3cqZAo" node="5D" resolve="myMember_NOT_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7A" role="37wK5m">
            <ref role="3cqZAo" node="5E" resolve="myMember_BETWEEN_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7B" role="37wK5m">
            <ref role="3cqZAo" node="5F" resolve="myMember_LIKE_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="7C" role="37wK5m">
            <ref role="3cqZAo" node="5G" resolve="myMember_IN_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5M" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="5N" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="7D" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="7E" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="7F" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3clFbS" id="7G" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3clFbF" id="7I" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="10Nm6u" id="7J" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7H" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="5O" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="5P" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="7K" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="7L" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="7M" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="7P" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="7N" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWs6" id="7Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="7R" role="3cqZAk">
            <ref role="3cqZAo" node="5L" resolve="myMembers" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Q" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="5R" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="7S" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="7T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="7U" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="37vLTG" id="7V" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="7Y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="2AHcQZ" id="7Z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="7W" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3clFbJ" id="80" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3clFbS" id="83" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cpWs6" id="85" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="10Nm6u" id="86" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="84" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="10Nm6u" id="87" role="3uHU7w">
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="37vLTw" id="88" role="3uHU7B">
              <ref role="3cqZAo" node="7V" resolve="memberName" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="81" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="89" role="3KbGdf">
            <ref role="3cqZAo" node="7V" resolve="memberName" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="3KbdKl" id="8a" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8j" role="3Kbmr1">
              <property role="Xl_RC" value="EQUALS" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8k" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8l" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8m" role="3cqZAk">
                  <ref role="3cqZAo" node="5$" resolve="myMember_EQUALS_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8b" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8n" role="3Kbmr1">
              <property role="Xl_RC" value="GREATER" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8o" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8p" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8q" role="3cqZAk">
                  <ref role="3cqZAo" node="5_" resolve="myMember_GREATER_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8c" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8r" role="3Kbmr1">
              <property role="Xl_RC" value="LOWER" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8s" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8t" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8u" role="3cqZAk">
                  <ref role="3cqZAo" node="5A" resolve="myMember_LOWER_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8d" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8v" role="3Kbmr1">
              <property role="Xl_RC" value="GREATER_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8w" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8x" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8y" role="3cqZAk">
                  <ref role="3cqZAo" node="5B" resolve="myMember_GREATER_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8e" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8z" role="3Kbmr1">
              <property role="Xl_RC" value="LOWER_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8$" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8_" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8A" role="3cqZAk">
                  <ref role="3cqZAo" node="5C" resolve="myMember_LOWER_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8f" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8B" role="3Kbmr1">
              <property role="Xl_RC" value="NOT_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8C" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8D" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8E" role="3cqZAk">
                  <ref role="3cqZAo" node="5D" resolve="myMember_NOT_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8g" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8F" role="3Kbmr1">
              <property role="Xl_RC" value="BETWEEN" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8G" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8H" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8I" role="3cqZAk">
                  <ref role="3cqZAo" node="5E" resolve="myMember_BETWEEN_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8h" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8J" role="3Kbmr1">
              <property role="Xl_RC" value="LIKE" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8K" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8L" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8M" role="3cqZAk">
                  <ref role="3cqZAo" node="5F" resolve="myMember_LIKE_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="8i" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="8N" role="3Kbmr1">
              <property role="Xl_RC" value="IN" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="8O" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="8P" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="8Q" role="3cqZAk">
                  <ref role="3cqZAo" node="5G" resolve="myMember_IN_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="82" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="10Nm6u" id="8R" role="3cqZAk">
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="5S" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="5T" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="8S" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="8T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="8U" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="37vLTG" id="8V" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWsb" id="8Y" role="1tU5fm">
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="8W" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWs8" id="8Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3cpWsn" id="92" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="10Oyi0" id="93" role="1tU5fm">
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="2OqwBi" id="94" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="37vLTw" id="95" role="2Oq$k0">
                <ref role="3cqZAo" node="5K" resolve="myIndex" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
              <node concept="liA8E" id="96" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="97" role="37wK5m">
                  <ref role="3cqZAo" node="8V" resolve="idValue" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="90" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3clFbS" id="98" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cpWs6" id="9a" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="10Nm6u" id="9b" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="99" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cmrfG" id="9c" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="37vLTw" id="9d" role="3uHU7B">
              <ref role="3cqZAo" node="92" resolve="index" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="91" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="2OqwBi" id="9e" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="37vLTw" id="9f" role="2Oq$k0">
              <ref role="3cqZAo" node="5L" resolve="myMembers" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="liA8E" id="9g" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="37vLTw" id="9h" role="37wK5m">
                <ref role="3cqZAo" node="92" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9i">
    <property role="3GE5qa" value="value" />
    <property role="TrG5h" value="EnumerationDescriptor_Type" />
    <uo k="s:originTrace" v="n:1229499084499598137" />
    <node concept="2tJIrI" id="9j" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFbW" id="9k" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3cqZAl" id="9B" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3Tm1VV" id="9C" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3clFbS" id="9D" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="XkiVB" id="9E" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="1adDum" id="9F" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="9G" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="9H" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b39L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="9I" role="37wK5m">
            <property role="Xl_RC" value="Type" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="9J" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598137" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9l" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="312cEg" id="9m" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Integer_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="9K" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="9L" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="9M" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="9N" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="9O" role="37wK5m">
            <property role="Xl_RC" value="Integer" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="9P" role="37wK5m">
            <property role="Xl_RC" value="Integer" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="9Q" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3aL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="9R" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598138" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9n" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_String_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="9S" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="9T" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="9U" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="9V" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="9W" role="37wK5m">
            <property role="Xl_RC" value="String" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="9X" role="37wK5m">
            <property role="Xl_RC" value="String" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="9Y" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3bL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="9Z" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598139" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9o" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Date_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="a0" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="a1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="a2" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="a3" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="a4" role="37wK5m">
            <property role="Xl_RC" value="Date" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="a5" role="37wK5m">
            <property role="Xl_RC" value="Date" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="a6" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3fL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="a7" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598143" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9p" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Float_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="a8" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="a9" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="aa" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="ab" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="ac" role="37wK5m">
            <property role="Xl_RC" value="Float" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="ad" role="37wK5m">
            <property role="Xl_RC" value="Float" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="ae" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b43L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="af" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598147" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="9q" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3uibUv" id="9r" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="2tJIrI" id="9s" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="312cEg" id="9t" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="ag" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="ah" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2YIFZM" id="ai" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1adDum" id="aj" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="ak" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="al" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b39L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="am" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3aL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="an" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3bL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="ao" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3fL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="ap" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b43L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9u" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="aq" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="ar" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="at" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="2ShNRf" id="as" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="au" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="av" role="37wK5m">
            <ref role="3cqZAo" node="9t" resolve="myIndex" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="aw" role="37wK5m">
            <ref role="3cqZAo" node="9m" resolve="myMember_Integer_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="ax" role="37wK5m">
            <ref role="3cqZAo" node="9n" resolve="myMember_String_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="ay" role="37wK5m">
            <ref role="3cqZAo" node="9o" resolve="myMember_Date_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="az" role="37wK5m">
            <ref role="3cqZAo" node="9p" resolve="myMember_Float_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9v" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="9w" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="a$" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="a_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="aA" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3clFbS" id="aB" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3clFbF" id="aD" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="10Nm6u" id="aE" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="9x" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="9y" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="aF" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="aG" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="aH" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="aK" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="aI" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWs6" id="aL" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="aM" role="3cqZAk">
            <ref role="3cqZAo" node="9u" resolve="myMembers" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="9z" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="9$" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="aN" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="aO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="aP" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="37vLTG" id="aQ" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="aT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="2AHcQZ" id="aU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="aR" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3clFbJ" id="aV" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3clFbS" id="aY" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cpWs6" id="b0" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="10Nm6u" id="b1" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="aZ" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="10Nm6u" id="b2" role="3uHU7w">
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="37vLTw" id="b3" role="3uHU7B">
              <ref role="3cqZAo" node="aQ" resolve="memberName" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="aW" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="b4" role="3KbGdf">
            <ref role="3cqZAo" node="aQ" resolve="memberName" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="3KbdKl" id="b5" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="b9" role="3Kbmr1">
              <property role="Xl_RC" value="Integer" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="ba" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="bb" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="bc" role="3cqZAk">
                  <ref role="3cqZAo" node="9m" resolve="myMember_Integer_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="b6" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="bd" role="3Kbmr1">
              <property role="Xl_RC" value="String" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="be" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="bf" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="bg" role="3cqZAk">
                  <ref role="3cqZAo" node="9n" resolve="myMember_String_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="b7" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="bh" role="3Kbmr1">
              <property role="Xl_RC" value="Date" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="bi" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="bj" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="bk" role="3cqZAk">
                  <ref role="3cqZAo" node="9o" resolve="myMember_Date_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="b8" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="bl" role="3Kbmr1">
              <property role="Xl_RC" value="Float" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="bm" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="bn" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="bo" role="3cqZAk">
                  <ref role="3cqZAo" node="9p" resolve="myMember_Float_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="aX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="10Nm6u" id="bp" role="3cqZAk">
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="9_" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="9A" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="bq" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="br" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="bs" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="37vLTG" id="bt" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWsb" id="bw" role="1tU5fm">
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="bu" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWs8" id="bx" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3cpWsn" id="b$" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="10Oyi0" id="b_" role="1tU5fm">
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="2OqwBi" id="bA" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="37vLTw" id="bB" role="2Oq$k0">
                <ref role="3cqZAo" node="9t" resolve="myIndex" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
              <node concept="liA8E" id="bC" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="bD" role="37wK5m">
                  <ref role="3cqZAo" node="bt" resolve="idValue" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="by" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3clFbS" id="bE" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cpWs6" id="bG" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="10Nm6u" id="bH" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="bF" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cmrfG" id="bI" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="37vLTw" id="bJ" role="3uHU7B">
              <ref role="3cqZAo" node="b$" resolve="index" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bz" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="2OqwBi" id="bK" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="37vLTw" id="bL" role="2Oq$k0">
              <ref role="3cqZAo" node="9u" resolve="myMembers" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="liA8E" id="bM" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="37vLTw" id="bN" role="37wK5m">
                <ref role="3cqZAo" node="b$" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="bO">
    <node concept="39e2AJ" id="bP" role="39e2AI">
      <property role="39e3Y2" value="EnumerationDescriptorCons" />
      <node concept="39e2AG" id="bT" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZT" resolve="Operator" />
        <node concept="385nmt" id="bV" role="385vvn">
          <property role="385vuF" value="Operator" />
          <node concept="3u3nmq" id="bX" role="385v07">
            <property role="3u3nmv" value="1229499084499783673" />
          </node>
        </node>
        <node concept="39e2AT" id="bW" role="39e2AY">
          <ref role="39e2AS" node="5y" resolve="EnumerationDescriptor_Operator" />
        </node>
      </node>
      <node concept="39e2AG" id="bU" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GT" resolve="Type" />
        <node concept="385nmt" id="bY" role="385vvn">
          <property role="385vuF" value="Type" />
          <node concept="3u3nmq" id="c0" role="385v07">
            <property role="3u3nmv" value="1229499084499598137" />
          </node>
        </node>
        <node concept="39e2AT" id="bZ" role="39e2AY">
          <ref role="39e2AS" node="9k" resolve="EnumerationDescriptor_Type" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bQ" role="39e2AI">
      <property role="39e3Y2" value="EnumerationMember" />
      <node concept="39e2AG" id="c1" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0x" resolve="BETWEEN" />
        <node concept="385nmt" id="ce" role="385vvn">
          <property role="385vuF" value="BETWEEN" />
          <node concept="3u3nmq" id="cg" role="385v07">
            <property role="3u3nmv" value="1229499084499783713" />
          </node>
        </node>
        <node concept="39e2AT" id="cf" role="39e2AY">
          <ref role="39e2AS" node="5E" resolve="myMember_BETWEEN_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c2" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GZ" resolve="Date" />
        <node concept="385nmt" id="ch" role="385vvn">
          <property role="385vuF" value="Date" />
          <node concept="3u3nmq" id="cj" role="385v07">
            <property role="3u3nmv" value="1229499084499598143" />
          </node>
        </node>
        <node concept="39e2AT" id="ci" role="39e2AY">
          <ref role="39e2AS" node="9o" resolve="myMember_Date_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c3" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZU" resolve="EQUALS" />
        <node concept="385nmt" id="ck" role="385vvn">
          <property role="385vuF" value="EQUALS" />
          <node concept="3u3nmq" id="cm" role="385v07">
            <property role="3u3nmv" value="1229499084499783674" />
          </node>
        </node>
        <node concept="39e2AT" id="cl" role="39e2AY">
          <ref role="39e2AS" node="5$" resolve="myMember_EQUALS_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c4" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3H3" resolve="Float" />
        <node concept="385nmt" id="cn" role="385vvn">
          <property role="385vuF" value="Float" />
          <node concept="3u3nmq" id="cp" role="385v07">
            <property role="3u3nmv" value="1229499084499598147" />
          </node>
        </node>
        <node concept="39e2AT" id="co" role="39e2AY">
          <ref role="39e2AS" node="9p" resolve="myMember_Float_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c5" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZW" resolve="GREATER" />
        <node concept="385nmt" id="cq" role="385vvn">
          <property role="385vuF" value="GREATER" />
          <node concept="3u3nmq" id="cs" role="385v07">
            <property role="3u3nmv" value="1229499084499783676" />
          </node>
        </node>
        <node concept="39e2AT" id="cr" role="39e2AY">
          <ref role="39e2AS" node="5_" resolve="myMember_GREATER_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c6" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0d" resolve="GREATER_EQUAL" />
        <node concept="385nmt" id="ct" role="385vvn">
          <property role="385vuF" value="GREATER_EQUAL" />
          <node concept="3u3nmq" id="cv" role="385v07">
            <property role="3u3nmv" value="1229499084499783693" />
          </node>
        </node>
        <node concept="39e2AT" id="cu" role="39e2AY">
          <ref role="39e2AS" node="5B" resolve="myMember_GREATER_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c7" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0O" resolve="IN" />
        <node concept="385nmt" id="cw" role="385vvn">
          <property role="385vuF" value="IN" />
          <node concept="3u3nmq" id="cy" role="385v07">
            <property role="3u3nmv" value="1229499084499783732" />
          </node>
        </node>
        <node concept="39e2AT" id="cx" role="39e2AY">
          <ref role="39e2AS" node="5G" resolve="myMember_IN_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c8" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GU" resolve="Integer" />
        <node concept="385nmt" id="cz" role="385vvn">
          <property role="385vuF" value="Integer" />
          <node concept="3u3nmq" id="c_" role="385v07">
            <property role="3u3nmv" value="1229499084499598138" />
          </node>
        </node>
        <node concept="39e2AT" id="c$" role="39e2AY">
          <ref role="39e2AS" node="9m" resolve="myMember_Integer_0" />
        </node>
      </node>
      <node concept="39e2AG" id="c9" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0E" resolve="LIKE" />
        <node concept="385nmt" id="cA" role="385vvn">
          <property role="385vuF" value="LIKE" />
          <node concept="3u3nmq" id="cC" role="385v07">
            <property role="3u3nmv" value="1229499084499783722" />
          </node>
        </node>
        <node concept="39e2AT" id="cB" role="39e2AY">
          <ref role="39e2AS" node="5F" resolve="myMember_LIKE_0" />
        </node>
      </node>
      <node concept="39e2AG" id="ca" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL08" resolve="LOWER" />
        <node concept="385nmt" id="cD" role="385vvn">
          <property role="385vuF" value="LOWER" />
          <node concept="3u3nmq" id="cF" role="385v07">
            <property role="3u3nmv" value="1229499084499783688" />
          </node>
        </node>
        <node concept="39e2AT" id="cE" role="39e2AY">
          <ref role="39e2AS" node="5A" resolve="myMember_LOWER_0" />
        </node>
      </node>
      <node concept="39e2AG" id="cb" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0j" resolve="LOWER_EQUAL" />
        <node concept="385nmt" id="cG" role="385vvn">
          <property role="385vuF" value="LOWER_EQUAL" />
          <node concept="3u3nmq" id="cI" role="385v07">
            <property role="3u3nmv" value="1229499084499783699" />
          </node>
        </node>
        <node concept="39e2AT" id="cH" role="39e2AY">
          <ref role="39e2AS" node="5C" resolve="myMember_LOWER_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="cc" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0p" resolve="NOT_EQUAL" />
        <node concept="385nmt" id="cJ" role="385vvn">
          <property role="385vuF" value="NOT_EQUAL" />
          <node concept="3u3nmq" id="cL" role="385v07">
            <property role="3u3nmv" value="1229499084499783705" />
          </node>
        </node>
        <node concept="39e2AT" id="cK" role="39e2AY">
          <ref role="39e2AS" node="5D" resolve="myMember_NOT_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="cd" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GV" resolve="String" />
        <node concept="385nmt" id="cM" role="385vvn">
          <property role="385vuF" value="String" />
          <node concept="3u3nmq" id="cO" role="385v07">
            <property role="3u3nmv" value="1229499084499598139" />
          </node>
        </node>
        <node concept="39e2AT" id="cN" role="39e2AY">
          <ref role="39e2AS" node="9n" resolve="myMember_String_0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bR" role="39e2AI">
      <property role="39e3Y2" value="ConceptPresentationAspectClass" />
      <node concept="39e2AG" id="cP" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="cQ" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptPresentationAspectImpl" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bS" role="39e2AI">
      <property role="39e3Y2" value="StructureAspectDescriptorCons" />
      <node concept="39e2AG" id="cR" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="cS" role="39e2AY">
          <ref role="39e2AS" node="fB" resolve="StructureAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="cT">
    <property role="TrG5h" value="LanguageConceptSwitch" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="cU" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="dd" role="1B3o_S" />
      <node concept="3uibUv" id="de" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~LanguageConceptIndex" resolve="LanguageConceptIndex" />
      </node>
    </node>
    <node concept="Wx3nA" id="cV" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Column" />
      <node concept="3Tm1VV" id="df" role="1B3o_S" />
      <node concept="10Oyi0" id="dg" role="1tU5fm" />
      <node concept="3cmrfG" id="dh" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="cW" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ColumnRef" />
      <node concept="3Tm1VV" id="di" role="1B3o_S" />
      <node concept="10Oyi0" id="dj" role="1tU5fm" />
      <node concept="3cmrfG" id="dk" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="cX" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Condition" />
      <node concept="3Tm1VV" id="dl" role="1B3o_S" />
      <node concept="10Oyi0" id="dm" role="1tU5fm" />
      <node concept="3cmrfG" id="dn" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="Wx3nA" id="cY" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CreateTable" />
      <node concept="3Tm1VV" id="do" role="1B3o_S" />
      <node concept="10Oyi0" id="dp" role="1tU5fm" />
      <node concept="3cmrfG" id="dq" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="cZ" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="InsertInto" />
      <node concept="3Tm1VV" id="dr" role="1B3o_S" />
      <node concept="10Oyi0" id="ds" role="1tU5fm" />
      <node concept="3cmrfG" id="dt" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="d0" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Script" />
      <node concept="3Tm1VV" id="du" role="1B3o_S" />
      <node concept="10Oyi0" id="dv" role="1tU5fm" />
      <node concept="3cmrfG" id="dw" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="Wx3nA" id="d1" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Select" />
      <node concept="3Tm1VV" id="dx" role="1B3o_S" />
      <node concept="10Oyi0" id="dy" role="1tU5fm" />
      <node concept="3cmrfG" id="dz" role="33vP2m">
        <property role="3cmrfH" value="6" />
      </node>
    </node>
    <node concept="Wx3nA" id="d2" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Statement" />
      <node concept="3Tm1VV" id="d$" role="1B3o_S" />
      <node concept="10Oyi0" id="d_" role="1tU5fm" />
      <node concept="3cmrfG" id="dA" role="33vP2m">
        <property role="3cmrfH" value="7" />
      </node>
    </node>
    <node concept="Wx3nA" id="d3" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Update" />
      <node concept="3Tm1VV" id="dB" role="1B3o_S" />
      <node concept="10Oyi0" id="dC" role="1tU5fm" />
      <node concept="3cmrfG" id="dD" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="Wx3nA" id="d4" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Value" />
      <node concept="3Tm1VV" id="dE" role="1B3o_S" />
      <node concept="10Oyi0" id="dF" role="1tU5fm" />
      <node concept="3cmrfG" id="dG" role="33vP2m">
        <property role="3cmrfH" value="9" />
      </node>
    </node>
    <node concept="Wx3nA" id="d5" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Where" />
      <node concept="3Tm1VV" id="dH" role="1B3o_S" />
      <node concept="10Oyi0" id="dI" role="1tU5fm" />
      <node concept="3cmrfG" id="dJ" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="2tJIrI" id="d6" role="jymVt" />
    <node concept="3clFbW" id="d7" role="jymVt">
      <node concept="3cqZAl" id="dK" role="3clF45" />
      <node concept="3Tm1VV" id="dL" role="1B3o_S" />
      <node concept="3clFbS" id="dM" role="3clF47">
        <node concept="3cpWs8" id="dN" role="3cqZAp">
          <node concept="3cpWsn" id="e0" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="e1" role="1tU5fm">
              <ref role="3uigEE" to="ksn4:~LanguageConceptIndexBuilder" resolve="LanguageConceptIndexBuilder" />
            </node>
            <node concept="2ShNRf" id="e2" role="33vP2m">
              <node concept="1pGfFk" id="e3" role="2ShVmc">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.&lt;init&gt;(long,long)" resolve="LanguageConceptIndexBuilder" />
                <node concept="1adDum" id="e4" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="e5" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dO" role="3cqZAp">
          <node concept="2OqwBi" id="e6" role="3clFbG">
            <node concept="37vLTw" id="e7" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="e8" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="e9" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b33L" />
              </node>
              <node concept="37vLTw" id="ea" role="37wK5m">
                <ref role="3cqZAo" node="cV" resolve="Column" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dP" role="3cqZAp">
          <node concept="2OqwBi" id="eb" role="3clFbG">
            <node concept="37vLTw" id="ec" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="ed" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="ee" role="37wK5m">
                <property role="1adDun" value="0x11100ee7375157f4L" />
              </node>
              <node concept="37vLTw" id="ef" role="37wK5m">
                <ref role="3cqZAo" node="cW" resolve="ColumnRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dQ" role="3cqZAp">
          <node concept="2OqwBi" id="eg" role="3clFbG">
            <node concept="37vLTw" id="eh" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="ei" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="ej" role="37wK5m">
                <property role="1adDun" value="0x11100ee737470ff3L" />
              </node>
              <node concept="37vLTw" id="ek" role="37wK5m">
                <ref role="3cqZAo" node="cX" resolve="Condition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dR" role="3cqZAp">
          <node concept="2OqwBi" id="el" role="3clFbG">
            <node concept="37vLTw" id="em" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="en" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="eo" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b2eL" />
              </node>
              <node concept="37vLTw" id="ep" role="37wK5m">
                <ref role="3cqZAo" node="cY" resolve="CreateTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dS" role="3cqZAp">
          <node concept="2OqwBi" id="eq" role="3clFbG">
            <node concept="37vLTw" id="er" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="es" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="et" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f1c72c8L" />
              </node>
              <node concept="37vLTw" id="eu" role="37wK5m">
                <ref role="3cqZAo" node="cZ" resolve="InsertInto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dT" role="3cqZAp">
          <node concept="2OqwBi" id="ev" role="3clFbG">
            <node concept="37vLTw" id="ew" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="ex" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="ey" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443bcdL" />
              </node>
              <node concept="37vLTw" id="ez" role="37wK5m">
                <ref role="3cqZAo" node="d0" resolve="Script" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dU" role="3cqZAp">
          <node concept="2OqwBi" id="e$" role="3clFbG">
            <node concept="37vLTw" id="e_" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="eA" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="eB" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e379L" />
              </node>
              <node concept="37vLTw" id="eC" role="37wK5m">
                <ref role="3cqZAo" node="d1" resolve="Select" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dV" role="3cqZAp">
          <node concept="2OqwBi" id="eD" role="3clFbG">
            <node concept="37vLTw" id="eE" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="eF" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="eG" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
              <node concept="37vLTw" id="eH" role="37wK5m">
                <ref role="3cqZAo" node="d2" resolve="Statement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dW" role="3cqZAp">
          <node concept="2OqwBi" id="eI" role="3clFbG">
            <node concept="37vLTw" id="eJ" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="eK" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="eL" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f23853fL" />
              </node>
              <node concept="37vLTw" id="eM" role="37wK5m">
                <ref role="3cqZAo" node="d3" resolve="Update" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dX" role="3cqZAp">
          <node concept="2OqwBi" id="eN" role="3clFbG">
            <node concept="37vLTw" id="eO" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="eP" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="eQ" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f1cc88bL" />
              </node>
              <node concept="37vLTw" id="eR" role="37wK5m">
                <ref role="3cqZAo" node="d4" resolve="Value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dY" role="3cqZAp">
          <node concept="2OqwBi" id="eS" role="3clFbG">
            <node concept="37vLTw" id="eT" role="2Oq$k0">
              <ref role="3cqZAo" node="e0" resolve="builder" />
            </node>
            <node concept="liA8E" id="eU" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="eV" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e37bL" />
              </node>
              <node concept="37vLTw" id="eW" role="37wK5m">
                <ref role="3cqZAo" node="d5" resolve="Where" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dZ" role="3cqZAp">
          <node concept="37vLTI" id="eX" role="3clFbG">
            <node concept="2OqwBi" id="eY" role="37vLTx">
              <node concept="37vLTw" id="f0" role="2Oq$k0">
                <ref role="3cqZAo" node="e0" resolve="builder" />
              </node>
              <node concept="liA8E" id="f1" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.seal()" resolve="seal" />
              </node>
            </node>
            <node concept="37vLTw" id="eZ" role="37vLTJ">
              <ref role="3cqZAo" node="cU" resolve="myIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="d8" role="jymVt" />
    <node concept="3clFb_" id="d9" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="f2" role="3clF45" />
      <node concept="3clFbS" id="f3" role="3clF47">
        <node concept="3cpWs6" id="f5" role="3cqZAp">
          <node concept="2OqwBi" id="f6" role="3cqZAk">
            <node concept="37vLTw" id="f7" role="2Oq$k0">
              <ref role="3cqZAo" node="cU" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="f8" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="index" />
              <node concept="37vLTw" id="f9" role="37wK5m">
                <ref role="3cqZAo" node="f4" resolve="cid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="f4" role="3clF46">
        <property role="TrG5h" value="cid" />
        <node concept="3uibUv" id="fa" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="da" role="jymVt" />
    <node concept="3clFb_" id="db" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="fb" role="3clF45" />
      <node concept="3Tm1VV" id="fc" role="1B3o_S" />
      <node concept="3clFbS" id="fd" role="3clF47">
        <node concept="3cpWs6" id="ff" role="3cqZAp">
          <node concept="2OqwBi" id="fg" role="3cqZAk">
            <node concept="37vLTw" id="fh" role="2Oq$k0">
              <ref role="3cqZAo" node="cU" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="fi" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <node concept="37vLTw" id="fj" role="37wK5m">
                <ref role="3cqZAo" node="fe" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="fe" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="fk" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="dc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="fl">
    <property role="TrG5h" value="StructureAspectDescriptor" />
    <node concept="3uibUv" id="fm" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseStructureAspectDescriptor" resolve="BaseStructureAspectDescriptor" />
    </node>
    <node concept="312cEg" id="fn" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptColumn" />
      <node concept="3uibUv" id="fZ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="g0" role="33vP2m">
        <ref role="37wK5l" node="fO" resolve="createDescriptorForColumn" />
      </node>
    </node>
    <node concept="312cEg" id="fo" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptColumnRef" />
      <node concept="3uibUv" id="g1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="g2" role="33vP2m">
        <ref role="37wK5l" node="fP" resolve="createDescriptorForColumnRef" />
      </node>
    </node>
    <node concept="312cEg" id="fp" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCondition" />
      <node concept="3uibUv" id="g3" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="g4" role="33vP2m">
        <ref role="37wK5l" node="fQ" resolve="createDescriptorForCondition" />
      </node>
    </node>
    <node concept="312cEg" id="fq" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCreateTable" />
      <node concept="3uibUv" id="g5" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="g6" role="33vP2m">
        <ref role="37wK5l" node="fR" resolve="createDescriptorForCreateTable" />
      </node>
    </node>
    <node concept="312cEg" id="fr" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptInsertInto" />
      <node concept="3uibUv" id="g7" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="g8" role="33vP2m">
        <ref role="37wK5l" node="fS" resolve="createDescriptorForInsertInto" />
      </node>
    </node>
    <node concept="312cEg" id="fs" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptScript" />
      <node concept="3uibUv" id="g9" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ga" role="33vP2m">
        <ref role="37wK5l" node="fT" resolve="createDescriptorForScript" />
      </node>
    </node>
    <node concept="312cEg" id="ft" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSelect" />
      <node concept="3uibUv" id="gb" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gc" role="33vP2m">
        <ref role="37wK5l" node="fU" resolve="createDescriptorForSelect" />
      </node>
    </node>
    <node concept="312cEg" id="fu" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptStatement" />
      <node concept="3uibUv" id="gd" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ge" role="33vP2m">
        <ref role="37wK5l" node="fV" resolve="createDescriptorForStatement" />
      </node>
    </node>
    <node concept="312cEg" id="fv" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptUpdate" />
      <node concept="3uibUv" id="gf" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gg" role="33vP2m">
        <ref role="37wK5l" node="fW" resolve="createDescriptorForUpdate" />
      </node>
    </node>
    <node concept="312cEg" id="fw" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptValue" />
      <node concept="3uibUv" id="gh" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gi" role="33vP2m">
        <ref role="37wK5l" node="fX" resolve="createDescriptorForValue" />
      </node>
    </node>
    <node concept="312cEg" id="fx" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptWhere" />
      <node concept="3uibUv" id="gj" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gk" role="33vP2m">
        <ref role="37wK5l" node="fY" resolve="createDescriptorForWhere" />
      </node>
    </node>
    <node concept="312cEg" id="fy" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationOperator" />
      <node concept="3uibUv" id="gl" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="gm" role="33vP2m">
        <node concept="1pGfFk" id="gn" role="2ShVmc">
          <ref role="37wK5l" node="5y" resolve="EnumerationDescriptor_Operator" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="fz" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationType" />
      <node concept="3uibUv" id="go" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="gp" role="33vP2m">
        <node concept="1pGfFk" id="gq" role="2ShVmc">
          <ref role="37wK5l" node="9k" resolve="EnumerationDescriptor_Type" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="f$" role="jymVt">
      <property role="TrG5h" value="myIndexSwitch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="gr" role="1B3o_S" />
      <node concept="3uibUv" id="gs" role="1tU5fm">
        <ref role="3uigEE" node="cT" resolve="LanguageConceptSwitch" />
      </node>
    </node>
    <node concept="3Tm1VV" id="f_" role="1B3o_S" />
    <node concept="2tJIrI" id="fA" role="jymVt" />
    <node concept="3clFbW" id="fB" role="jymVt">
      <node concept="3cqZAl" id="gt" role="3clF45" />
      <node concept="3Tm1VV" id="gu" role="1B3o_S" />
      <node concept="3clFbS" id="gv" role="3clF47">
        <node concept="3clFbF" id="gw" role="3cqZAp">
          <node concept="37vLTI" id="gx" role="3clFbG">
            <node concept="2ShNRf" id="gy" role="37vLTx">
              <node concept="1pGfFk" id="g$" role="2ShVmc">
                <ref role="37wK5l" node="d7" resolve="LanguageConceptSwitch" />
              </node>
            </node>
            <node concept="37vLTw" id="gz" role="37vLTJ">
              <ref role="3cqZAo" node="f$" resolve="myIndexSwitch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="fC" role="jymVt" />
    <node concept="2tJIrI" id="fD" role="jymVt" />
    <node concept="3clFb_" id="fE" role="jymVt">
      <property role="TrG5h" value="reportDependencies" />
      <node concept="3Tm1VV" id="g_" role="1B3o_S" />
      <node concept="3cqZAl" id="gA" role="3clF45" />
      <node concept="37vLTG" id="gB" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="3uibUv" id="gE" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~StructureAspectDescriptor$Dependencies" resolve="StructureAspectDescriptor.Dependencies" />
        </node>
      </node>
      <node concept="3clFbS" id="gC" role="3clF47">
        <node concept="3clFbF" id="gF" role="3cqZAp">
          <node concept="2OqwBi" id="gG" role="3clFbG">
            <node concept="37vLTw" id="gH" role="2Oq$k0">
              <ref role="3cqZAo" node="gB" resolve="deps" />
            </node>
            <node concept="liA8E" id="gI" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="1adDum" id="gJ" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="gK" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="Xl_RD" id="gL" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.core" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="fF" role="jymVt" />
    <node concept="3clFb_" id="fG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getDescriptors" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="gM" role="3clF47">
        <node concept="3cpWs6" id="gQ" role="3cqZAp">
          <node concept="2YIFZM" id="gR" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="37vLTw" id="gS" role="37wK5m">
              <ref role="3cqZAo" node="fn" resolve="myConceptColumn" />
            </node>
            <node concept="37vLTw" id="gT" role="37wK5m">
              <ref role="3cqZAo" node="fo" resolve="myConceptColumnRef" />
            </node>
            <node concept="37vLTw" id="gU" role="37wK5m">
              <ref role="3cqZAo" node="fp" resolve="myConceptCondition" />
            </node>
            <node concept="37vLTw" id="gV" role="37wK5m">
              <ref role="3cqZAo" node="fq" resolve="myConceptCreateTable" />
            </node>
            <node concept="37vLTw" id="gW" role="37wK5m">
              <ref role="3cqZAo" node="fr" resolve="myConceptInsertInto" />
            </node>
            <node concept="37vLTw" id="gX" role="37wK5m">
              <ref role="3cqZAo" node="fs" resolve="myConceptScript" />
            </node>
            <node concept="37vLTw" id="gY" role="37wK5m">
              <ref role="3cqZAo" node="ft" resolve="myConceptSelect" />
            </node>
            <node concept="37vLTw" id="gZ" role="37wK5m">
              <ref role="3cqZAo" node="fu" resolve="myConceptStatement" />
            </node>
            <node concept="37vLTw" id="h0" role="37wK5m">
              <ref role="3cqZAo" node="fv" resolve="myConceptUpdate" />
            </node>
            <node concept="37vLTw" id="h1" role="37wK5m">
              <ref role="3cqZAo" node="fw" resolve="myConceptValue" />
            </node>
            <node concept="37vLTw" id="h2" role="37wK5m">
              <ref role="3cqZAo" node="fx" resolve="myConceptWhere" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="gN" role="1B3o_S" />
      <node concept="3uibUv" id="gO" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="h3" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="gP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="fH" role="jymVt" />
    <node concept="3clFb_" id="fI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="h4" role="1B3o_S" />
      <node concept="37vLTG" id="h5" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="ha" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
      <node concept="3clFbS" id="h6" role="3clF47">
        <node concept="3KaCP$" id="hb" role="3cqZAp">
          <node concept="3KbdKl" id="hc" role="3KbHQx">
            <node concept="3clFbS" id="hp" role="3Kbo56">
              <node concept="3cpWs6" id="hr" role="3cqZAp">
                <node concept="37vLTw" id="hs" role="3cqZAk">
                  <ref role="3cqZAo" node="fn" resolve="myConceptColumn" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hq" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cV" resolve="Column" />
            </node>
          </node>
          <node concept="3KbdKl" id="hd" role="3KbHQx">
            <node concept="3clFbS" id="ht" role="3Kbo56">
              <node concept="3cpWs6" id="hv" role="3cqZAp">
                <node concept="37vLTw" id="hw" role="3cqZAk">
                  <ref role="3cqZAo" node="fo" resolve="myConceptColumnRef" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hu" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cW" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="3KbdKl" id="he" role="3KbHQx">
            <node concept="3clFbS" id="hx" role="3Kbo56">
              <node concept="3cpWs6" id="hz" role="3cqZAp">
                <node concept="37vLTw" id="h$" role="3cqZAk">
                  <ref role="3cqZAo" node="fp" resolve="myConceptCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hy" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cX" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="hf" role="3KbHQx">
            <node concept="3clFbS" id="h_" role="3Kbo56">
              <node concept="3cpWs6" id="hB" role="3cqZAp">
                <node concept="37vLTw" id="hC" role="3cqZAk">
                  <ref role="3cqZAo" node="fq" resolve="myConceptCreateTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hA" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cY" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="hg" role="3KbHQx">
            <node concept="3clFbS" id="hD" role="3Kbo56">
              <node concept="3cpWs6" id="hF" role="3cqZAp">
                <node concept="37vLTw" id="hG" role="3cqZAk">
                  <ref role="3cqZAo" node="fr" resolve="myConceptInsertInto" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hE" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cZ" resolve="InsertInto" />
            </node>
          </node>
          <node concept="3KbdKl" id="hh" role="3KbHQx">
            <node concept="3clFbS" id="hH" role="3Kbo56">
              <node concept="3cpWs6" id="hJ" role="3cqZAp">
                <node concept="37vLTw" id="hK" role="3cqZAk">
                  <ref role="3cqZAo" node="fs" resolve="myConceptScript" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hI" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d0" resolve="Script" />
            </node>
          </node>
          <node concept="3KbdKl" id="hi" role="3KbHQx">
            <node concept="3clFbS" id="hL" role="3Kbo56">
              <node concept="3cpWs6" id="hN" role="3cqZAp">
                <node concept="37vLTw" id="hO" role="3cqZAk">
                  <ref role="3cqZAo" node="ft" resolve="myConceptSelect" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hM" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d1" resolve="Select" />
            </node>
          </node>
          <node concept="3KbdKl" id="hj" role="3KbHQx">
            <node concept="3clFbS" id="hP" role="3Kbo56">
              <node concept="3cpWs6" id="hR" role="3cqZAp">
                <node concept="37vLTw" id="hS" role="3cqZAk">
                  <ref role="3cqZAo" node="fu" resolve="myConceptStatement" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hQ" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d2" resolve="Statement" />
            </node>
          </node>
          <node concept="3KbdKl" id="hk" role="3KbHQx">
            <node concept="3clFbS" id="hT" role="3Kbo56">
              <node concept="3cpWs6" id="hV" role="3cqZAp">
                <node concept="37vLTw" id="hW" role="3cqZAk">
                  <ref role="3cqZAo" node="fv" resolve="myConceptUpdate" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hU" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d3" resolve="Update" />
            </node>
          </node>
          <node concept="3KbdKl" id="hl" role="3KbHQx">
            <node concept="3clFbS" id="hX" role="3Kbo56">
              <node concept="3cpWs6" id="hZ" role="3cqZAp">
                <node concept="37vLTw" id="i0" role="3cqZAk">
                  <ref role="3cqZAo" node="fw" resolve="myConceptValue" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hY" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d4" resolve="Value" />
            </node>
          </node>
          <node concept="3KbdKl" id="hm" role="3KbHQx">
            <node concept="3clFbS" id="i1" role="3Kbo56">
              <node concept="3cpWs6" id="i3" role="3cqZAp">
                <node concept="37vLTw" id="i4" role="3cqZAk">
                  <ref role="3cqZAo" node="fx" resolve="myConceptWhere" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="i2" role="3Kbmr1">
              <ref role="1PxDUh" node="cT" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="d5" resolve="Where" />
            </node>
          </node>
          <node concept="2OqwBi" id="hn" role="3KbGdf">
            <node concept="37vLTw" id="i5" role="2Oq$k0">
              <ref role="3cqZAo" node="f$" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="i6" role="2OqNvi">
              <ref role="37wK5l" node="d9" resolve="index" />
              <node concept="37vLTw" id="i7" role="37wK5m">
                <ref role="3cqZAo" node="h5" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="ho" role="3Kb1Dw">
            <node concept="3cpWs6" id="i8" role="3cqZAp">
              <node concept="10Nm6u" id="i9" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="h7" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="2AHcQZ" id="h8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="h9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="fJ" role="jymVt" />
    <node concept="3clFb_" id="fK" role="jymVt">
      <property role="TrG5h" value="getDataTypeDescriptors" />
      <node concept="3Tm1VV" id="ia" role="1B3o_S" />
      <node concept="3uibUv" id="ib" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="ie" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~DataTypeDescriptor" resolve="DataTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="ic" role="3clF47">
        <node concept="3cpWs6" id="if" role="3cqZAp">
          <node concept="2YIFZM" id="ig" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="ih" role="37wK5m">
              <ref role="3cqZAo" node="fy" resolve="myEnumerationOperator" />
            </node>
            <node concept="37vLTw" id="ii" role="37wK5m">
              <ref role="3cqZAo" node="fz" resolve="myEnumerationType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="id" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="fL" role="jymVt" />
    <node concept="3clFb_" id="fM" role="jymVt">
      <property role="TrG5h" value="internalIndex" />
      <node concept="10Oyi0" id="ij" role="3clF45" />
      <node concept="3clFbS" id="ik" role="3clF47">
        <node concept="3cpWs6" id="im" role="3cqZAp">
          <node concept="2OqwBi" id="in" role="3cqZAk">
            <node concept="37vLTw" id="io" role="2Oq$k0">
              <ref role="3cqZAo" node="f$" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="ip" role="2OqNvi">
              <ref role="37wK5l" node="db" resolve="index" />
              <node concept="37vLTw" id="iq" role="37wK5m">
                <ref role="3cqZAo" node="il" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="il" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="ir" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="fN" role="jymVt" />
    <node concept="2YIFZL" id="fO" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForColumn" />
      <node concept="3clFbS" id="is" role="3clF47">
        <node concept="3cpWs8" id="iv" role="3cqZAp">
          <node concept="3cpWsn" id="iA" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="iB" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="iC" role="33vP2m">
              <node concept="1pGfFk" id="iD" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="iE" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="iF" role="37wK5m">
                  <property role="Xl_RC" value="Column" />
                </node>
                <node concept="1adDum" id="iG" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="iH" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="iI" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b33L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iw" role="3cqZAp">
          <node concept="2OqwBi" id="iJ" role="3clFbG">
            <node concept="37vLTw" id="iK" role="2Oq$k0">
              <ref role="3cqZAo" node="iA" resolve="b" />
            </node>
            <node concept="liA8E" id="iL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="iM" role="37wK5m" />
              <node concept="3clFbT" id="iN" role="37wK5m" />
              <node concept="3clFbT" id="iO" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ix" role="3cqZAp">
          <node concept="2OqwBi" id="iP" role="3clFbG">
            <node concept="37vLTw" id="iQ" role="2Oq$k0">
              <ref role="3cqZAo" node="iA" resolve="b" />
            </node>
            <node concept="liA8E" id="iR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="iS" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="iT" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="iU" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iy" role="3cqZAp">
          <node concept="2OqwBi" id="iV" role="3clFbG">
            <node concept="37vLTw" id="iW" role="2Oq$k0">
              <ref role="3cqZAo" node="iA" resolve="b" />
            </node>
            <node concept="liA8E" id="iX" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="iY" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598131" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iz" role="3cqZAp">
          <node concept="2OqwBi" id="iZ" role="3clFbG">
            <node concept="37vLTw" id="j0" role="2Oq$k0">
              <ref role="3cqZAo" node="iA" resolve="b" />
            </node>
            <node concept="liA8E" id="j1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="j2" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i$" role="3cqZAp">
          <node concept="2OqwBi" id="j3" role="3clFbG">
            <node concept="2OqwBi" id="j4" role="2Oq$k0">
              <node concept="2OqwBi" id="j6" role="2Oq$k0">
                <node concept="2OqwBi" id="j8" role="2Oq$k0">
                  <node concept="37vLTw" id="ja" role="2Oq$k0">
                    <ref role="3cqZAo" node="iA" resolve="b" />
                  </node>
                  <node concept="liA8E" id="jb" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="jc" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="jd" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b37L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="j9" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="je" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499598137" />
                    <node concept="1adDum" id="jf" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="jg" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="jh" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b39L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="j7" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="ji" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499598135" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="j5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="i_" role="3cqZAp">
          <node concept="2OqwBi" id="jj" role="3cqZAk">
            <node concept="37vLTw" id="jk" role="2Oq$k0">
              <ref role="3cqZAo" node="iA" resolve="b" />
            </node>
            <node concept="liA8E" id="jl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="it" role="1B3o_S" />
      <node concept="3uibUv" id="iu" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fP" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForColumnRef" />
      <node concept="3clFbS" id="jm" role="3clF47">
        <node concept="3cpWs8" id="jp" role="3cqZAp">
          <node concept="3cpWsn" id="jv" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="jw" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="jx" role="33vP2m">
              <node concept="1pGfFk" id="jy" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="jz" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="j$" role="37wK5m">
                  <property role="Xl_RC" value="ColumnRef" />
                </node>
                <node concept="1adDum" id="j_" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="jA" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="jB" role="37wK5m">
                  <property role="1adDun" value="0x11100ee7375157f4L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jq" role="3cqZAp">
          <node concept="2OqwBi" id="jC" role="3clFbG">
            <node concept="37vLTw" id="jD" role="2Oq$k0">
              <ref role="3cqZAo" node="jv" resolve="b" />
            </node>
            <node concept="liA8E" id="jE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="jF" role="37wK5m" />
              <node concept="3clFbT" id="jG" role="37wK5m" />
              <node concept="3clFbT" id="jH" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jr" role="3cqZAp">
          <node concept="2OqwBi" id="jI" role="3clFbG">
            <node concept="37vLTw" id="jJ" role="2Oq$k0">
              <ref role="3cqZAo" node="jv" resolve="b" />
            </node>
            <node concept="liA8E" id="jK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="jL" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084500457460" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="js" role="3cqZAp">
          <node concept="2OqwBi" id="jM" role="3clFbG">
            <node concept="37vLTw" id="jN" role="2Oq$k0">
              <ref role="3cqZAo" node="jv" resolve="b" />
            </node>
            <node concept="liA8E" id="jO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="jP" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jt" role="3cqZAp">
          <node concept="2OqwBi" id="jQ" role="3clFbG">
            <node concept="2OqwBi" id="jR" role="2Oq$k0">
              <node concept="2OqwBi" id="jT" role="2Oq$k0">
                <node concept="2OqwBi" id="jV" role="2Oq$k0">
                  <node concept="2OqwBi" id="jX" role="2Oq$k0">
                    <node concept="37vLTw" id="jZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="jv" resolve="b" />
                    </node>
                    <node concept="liA8E" id="k0" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="k1" role="37wK5m">
                        <property role="Xl_RC" value="column" />
                      </node>
                      <node concept="1adDum" id="k2" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375157f5L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="jY" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="k3" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="k4" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="k5" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b33L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="jW" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="k6" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="jU" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="k7" role="37wK5m">
                  <property role="Xl_RC" value="1229499084500457461" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="jS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ju" role="3cqZAp">
          <node concept="2OqwBi" id="k8" role="3cqZAk">
            <node concept="37vLTw" id="k9" role="2Oq$k0">
              <ref role="3cqZAo" node="jv" resolve="b" />
            </node>
            <node concept="liA8E" id="ka" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="jn" role="1B3o_S" />
      <node concept="3uibUv" id="jo" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fQ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCondition" />
      <node concept="3clFbS" id="kb" role="3clF47">
        <node concept="3cpWs8" id="ke" role="3cqZAp">
          <node concept="3cpWsn" id="km" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="kn" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="ko" role="33vP2m">
              <node concept="1pGfFk" id="kp" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="kq" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="kr" role="37wK5m">
                  <property role="Xl_RC" value="Condition" />
                </node>
                <node concept="1adDum" id="ks" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="kt" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="ku" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737470ff3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kf" role="3cqZAp">
          <node concept="2OqwBi" id="kv" role="3clFbG">
            <node concept="37vLTw" id="kw" role="2Oq$k0">
              <ref role="3cqZAo" node="km" resolve="b" />
            </node>
            <node concept="liA8E" id="kx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="ky" role="37wK5m" />
              <node concept="3clFbT" id="kz" role="37wK5m" />
              <node concept="3clFbT" id="k$" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kg" role="3cqZAp">
          <node concept="2OqwBi" id="k_" role="3clFbG">
            <node concept="37vLTw" id="kA" role="2Oq$k0">
              <ref role="3cqZAo" node="km" resolve="b" />
            </node>
            <node concept="liA8E" id="kB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="kC" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783667" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kh" role="3cqZAp">
          <node concept="2OqwBi" id="kD" role="3clFbG">
            <node concept="37vLTw" id="kE" role="2Oq$k0">
              <ref role="3cqZAo" node="km" resolve="b" />
            </node>
            <node concept="liA8E" id="kF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="kG" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ki" role="3cqZAp">
          <node concept="2OqwBi" id="kH" role="3clFbG">
            <node concept="2OqwBi" id="kI" role="2Oq$k0">
              <node concept="2OqwBi" id="kK" role="2Oq$k0">
                <node concept="2OqwBi" id="kM" role="2Oq$k0">
                  <node concept="37vLTw" id="kO" role="2Oq$k0">
                    <ref role="3cqZAo" node="km" resolve="b" />
                  </node>
                  <node concept="liA8E" id="kP" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="kQ" role="37wK5m">
                      <property role="Xl_RC" value="operator" />
                    </node>
                    <node concept="1adDum" id="kR" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737471046L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="kN" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="kS" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499783673" />
                    <node concept="1adDum" id="kT" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                    <node concept="1adDum" id="kU" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                    <node concept="1adDum" id="kV" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737470ff9L" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="kL" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="kW" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499783750" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="kJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kj" role="3cqZAp">
          <node concept="2OqwBi" id="kX" role="3clFbG">
            <node concept="2OqwBi" id="kY" role="2Oq$k0">
              <node concept="2OqwBi" id="l0" role="2Oq$k0">
                <node concept="2OqwBi" id="l2" role="2Oq$k0">
                  <node concept="2OqwBi" id="l4" role="2Oq$k0">
                    <node concept="37vLTw" id="l6" role="2Oq$k0">
                      <ref role="3cqZAo" node="km" resolve="b" />
                    </node>
                    <node concept="liA8E" id="l7" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="l8" role="37wK5m">
                        <property role="Xl_RC" value="column" />
                      </node>
                      <node concept="1adDum" id="l9" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375283dfL" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="l5" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="la" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="lb" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="lc" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b33L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="l3" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="ld" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="l1" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="le" role="37wK5m">
                  <property role="Xl_RC" value="1229499084500534239" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="kZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kk" role="3cqZAp">
          <node concept="2OqwBi" id="lf" role="3clFbG">
            <node concept="2OqwBi" id="lg" role="2Oq$k0">
              <node concept="2OqwBi" id="li" role="2Oq$k0">
                <node concept="2OqwBi" id="lk" role="2Oq$k0">
                  <node concept="2OqwBi" id="lm" role="2Oq$k0">
                    <node concept="2OqwBi" id="lo" role="2Oq$k0">
                      <node concept="2OqwBi" id="lq" role="2Oq$k0">
                        <node concept="37vLTw" id="ls" role="2Oq$k0">
                          <ref role="3cqZAo" node="km" resolve="b" />
                        </node>
                        <node concept="liA8E" id="lt" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="lu" role="37wK5m">
                            <property role="Xl_RC" value="value" />
                          </node>
                          <node concept="1adDum" id="lv" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f1cc8a8L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="lr" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="lw" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="lx" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="ly" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="lp" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="lz" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="ln" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="l$" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="ll" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="l_" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="lj" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="lA" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247528" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="lh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="kl" role="3cqZAp">
          <node concept="2OqwBi" id="lB" role="3cqZAk">
            <node concept="37vLTw" id="lC" role="2Oq$k0">
              <ref role="3cqZAo" node="km" resolve="b" />
            </node>
            <node concept="liA8E" id="lD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="kc" role="1B3o_S" />
      <node concept="3uibUv" id="kd" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fR" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCreateTable" />
      <node concept="3clFbS" id="lE" role="3clF47">
        <node concept="3cpWs8" id="lH" role="3cqZAp">
          <node concept="3cpWsn" id="lR" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="lS" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="lT" role="33vP2m">
              <node concept="1pGfFk" id="lU" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="lV" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="lW" role="37wK5m">
                  <property role="Xl_RC" value="CreateTable" />
                </node>
                <node concept="1adDum" id="lX" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="lY" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="lZ" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b2eL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lI" role="3cqZAp">
          <node concept="2OqwBi" id="m0" role="3clFbG">
            <node concept="37vLTw" id="m1" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="m2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="m3" role="37wK5m" />
              <node concept="3clFbT" id="m4" role="37wK5m" />
              <node concept="3clFbT" id="m5" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="lJ" role="3cqZAp">
          <node concept="1PaTwC" id="m6" role="1aUNEU">
            <node concept="3oM_SD" id="m7" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="m8" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lK" role="3cqZAp">
          <node concept="15s5l7" id="m9" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="ma" role="3clFbG">
            <node concept="37vLTw" id="mb" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="mc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="md" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="me" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="mf" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lL" role="3cqZAp">
          <node concept="2OqwBi" id="mg" role="3clFbG">
            <node concept="37vLTw" id="mh" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="mi" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="mj" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="mk" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="ml" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lM" role="3cqZAp">
          <node concept="2OqwBi" id="mm" role="3clFbG">
            <node concept="37vLTw" id="mn" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="mo" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="mp" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598126" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lN" role="3cqZAp">
          <node concept="2OqwBi" id="mq" role="3clFbG">
            <node concept="37vLTw" id="mr" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="ms" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="mt" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lO" role="3cqZAp">
          <node concept="2OqwBi" id="mu" role="3clFbG">
            <node concept="2OqwBi" id="mv" role="2Oq$k0">
              <node concept="2OqwBi" id="mx" role="2Oq$k0">
                <node concept="2OqwBi" id="mz" role="2Oq$k0">
                  <node concept="2OqwBi" id="m_" role="2Oq$k0">
                    <node concept="2OqwBi" id="mB" role="2Oq$k0">
                      <node concept="2OqwBi" id="mD" role="2Oq$k0">
                        <node concept="37vLTw" id="mF" role="2Oq$k0">
                          <ref role="3cqZAo" node="lR" resolve="b" />
                        </node>
                        <node concept="liA8E" id="mG" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="mH" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="mI" role="37wK5m">
                            <property role="1adDun" value="0x11100ee737443b48L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="mE" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="mJ" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="mK" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="mL" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737443b33L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="mC" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="mM" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="mA" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="mN" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="m$" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="mO" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="my" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="mP" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499598152" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="mw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lP" role="3cqZAp">
          <node concept="2OqwBi" id="mQ" role="3clFbG">
            <node concept="37vLTw" id="mR" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="mS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="mT" role="37wK5m">
                <property role="Xl_RC" value="CREATE TABLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="lQ" role="3cqZAp">
          <node concept="2OqwBi" id="mU" role="3cqZAk">
            <node concept="37vLTw" id="mV" role="2Oq$k0">
              <ref role="3cqZAo" node="lR" resolve="b" />
            </node>
            <node concept="liA8E" id="mW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="lF" role="1B3o_S" />
      <node concept="3uibUv" id="lG" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fS" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForInsertInto" />
      <node concept="3clFbS" id="mX" role="3clF47">
        <node concept="3cpWs8" id="n0" role="3cqZAp">
          <node concept="3cpWsn" id="na" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="nb" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="nc" role="33vP2m">
              <node concept="1pGfFk" id="nd" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="ne" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="nf" role="37wK5m">
                  <property role="Xl_RC" value="InsertInto" />
                </node>
                <node concept="1adDum" id="ng" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="nh" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="ni" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f1c72c8L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n1" role="3cqZAp">
          <node concept="2OqwBi" id="nj" role="3clFbG">
            <node concept="37vLTw" id="nk" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="b" />
            </node>
            <node concept="liA8E" id="nl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="nm" role="37wK5m" />
              <node concept="3clFbT" id="nn" role="37wK5m" />
              <node concept="3clFbT" id="no" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="n2" role="3cqZAp">
          <node concept="1PaTwC" id="np" role="1aUNEU">
            <node concept="3oM_SD" id="nq" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="nr" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n3" role="3cqZAp">
          <node concept="15s5l7" id="ns" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="nt" role="3clFbG">
            <node concept="37vLTw" id="nu" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="b" />
            </node>
            <node concept="liA8E" id="nv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="nw" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="nx" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="ny" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n4" role="3cqZAp">
          <node concept="2OqwBi" id="nz" role="3clFbG">
            <node concept="37vLTw" id="n$" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="b" />
            </node>
            <node concept="liA8E" id="n_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="nA" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255225544" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n5" role="3cqZAp">
          <node concept="2OqwBi" id="nB" role="3clFbG">
            <node concept="37vLTw" id="nC" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="b" />
            </node>
            <node concept="liA8E" id="nD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="nE" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n6" role="3cqZAp">
          <node concept="2OqwBi" id="nF" role="3clFbG">
            <node concept="2OqwBi" id="nG" role="2Oq$k0">
              <node concept="2OqwBi" id="nI" role="2Oq$k0">
                <node concept="2OqwBi" id="nK" role="2Oq$k0">
                  <node concept="2OqwBi" id="nM" role="2Oq$k0">
                    <node concept="2OqwBi" id="nO" role="2Oq$k0">
                      <node concept="2OqwBi" id="nQ" role="2Oq$k0">
                        <node concept="37vLTw" id="nS" role="2Oq$k0">
                          <ref role="3cqZAo" node="na" resolve="b" />
                        </node>
                        <node concept="liA8E" id="nT" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="nU" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="nV" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f1cc835L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="nR" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="nW" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="nX" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="nY" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="nP" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="nZ" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="nN" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="o0" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="nL" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="o1" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="nJ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="o2" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247413" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="nH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n7" role="3cqZAp">
          <node concept="2OqwBi" id="o3" role="3clFbG">
            <node concept="2OqwBi" id="o4" role="2Oq$k0">
              <node concept="2OqwBi" id="o6" role="2Oq$k0">
                <node concept="2OqwBi" id="o8" role="2Oq$k0">
                  <node concept="2OqwBi" id="oa" role="2Oq$k0">
                    <node concept="2OqwBi" id="oc" role="2Oq$k0">
                      <node concept="2OqwBi" id="oe" role="2Oq$k0">
                        <node concept="37vLTw" id="og" role="2Oq$k0">
                          <ref role="3cqZAo" node="na" resolve="b" />
                        </node>
                        <node concept="liA8E" id="oh" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="oi" role="37wK5m">
                            <property role="Xl_RC" value="values" />
                          </node>
                          <node concept="1adDum" id="oj" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f1cc8a3L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="of" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="ok" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="ol" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="om" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="od" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="on" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="ob" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="oo" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="o9" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="op" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="o7" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="oq" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247523" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="o5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n8" role="3cqZAp">
          <node concept="2OqwBi" id="or" role="3clFbG">
            <node concept="37vLTw" id="os" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="b" />
            </node>
            <node concept="liA8E" id="ot" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="ou" role="37wK5m">
                <property role="Xl_RC" value="INSERT INTO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="n9" role="3cqZAp">
          <node concept="2OqwBi" id="ov" role="3cqZAk">
            <node concept="37vLTw" id="ow" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="b" />
            </node>
            <node concept="liA8E" id="ox" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="mY" role="1B3o_S" />
      <node concept="3uibUv" id="mZ" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fT" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForScript" />
      <node concept="3clFbS" id="oy" role="3clF47">
        <node concept="3cpWs8" id="o_" role="3cqZAp">
          <node concept="3cpWsn" id="oF" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="oG" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="oH" role="33vP2m">
              <node concept="1pGfFk" id="oI" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="oJ" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="oK" role="37wK5m">
                  <property role="Xl_RC" value="Script" />
                </node>
                <node concept="1adDum" id="oL" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="oM" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="oN" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443bcdL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oA" role="3cqZAp">
          <node concept="2OqwBi" id="oO" role="3clFbG">
            <node concept="37vLTw" id="oP" role="2Oq$k0">
              <ref role="3cqZAo" node="oF" resolve="b" />
            </node>
            <node concept="liA8E" id="oQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="oR" role="37wK5m" />
              <node concept="3clFbT" id="oS" role="37wK5m" />
              <node concept="3clFbT" id="oT" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oB" role="3cqZAp">
          <node concept="2OqwBi" id="oU" role="3clFbG">
            <node concept="37vLTw" id="oV" role="2Oq$k0">
              <ref role="3cqZAo" node="oF" resolve="b" />
            </node>
            <node concept="liA8E" id="oW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="oX" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598285" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oC" role="3cqZAp">
          <node concept="2OqwBi" id="oY" role="3clFbG">
            <node concept="37vLTw" id="oZ" role="2Oq$k0">
              <ref role="3cqZAo" node="oF" resolve="b" />
            </node>
            <node concept="liA8E" id="p0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="p1" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oD" role="3cqZAp">
          <node concept="2OqwBi" id="p2" role="3clFbG">
            <node concept="2OqwBi" id="p3" role="2Oq$k0">
              <node concept="2OqwBi" id="p5" role="2Oq$k0">
                <node concept="2OqwBi" id="p7" role="2Oq$k0">
                  <node concept="2OqwBi" id="p9" role="2Oq$k0">
                    <node concept="2OqwBi" id="pb" role="2Oq$k0">
                      <node concept="2OqwBi" id="pd" role="2Oq$k0">
                        <node concept="37vLTw" id="pf" role="2Oq$k0">
                          <ref role="3cqZAo" node="oF" resolve="b" />
                        </node>
                        <node concept="liA8E" id="pg" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="ph" role="37wK5m">
                            <property role="Xl_RC" value="queries" />
                          </node>
                          <node concept="1adDum" id="pi" role="37wK5m">
                            <property role="1adDun" value="0x11100ee737443bd0L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="pe" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="pj" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="pk" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="pl" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737443b30L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="pc" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="pm" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="pa" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="pn" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="p8" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="po" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="p6" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="pp" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499598288" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="p4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="oE" role="3cqZAp">
          <node concept="2OqwBi" id="pq" role="3cqZAk">
            <node concept="37vLTw" id="pr" role="2Oq$k0">
              <ref role="3cqZAo" node="oF" resolve="b" />
            </node>
            <node concept="liA8E" id="ps" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="oz" role="1B3o_S" />
      <node concept="3uibUv" id="o$" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fU" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSelect" />
      <node concept="3clFbS" id="pt" role="3clF47">
        <node concept="3cpWs8" id="pw" role="3cqZAp">
          <node concept="3cpWsn" id="pE" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="pF" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="pG" role="33vP2m">
              <node concept="1pGfFk" id="pH" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="pI" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="pJ" role="37wK5m">
                  <property role="Xl_RC" value="Select" />
                </node>
                <node concept="1adDum" id="pK" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="pL" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="pM" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e379L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="px" role="3cqZAp">
          <node concept="2OqwBi" id="pN" role="3clFbG">
            <node concept="37vLTw" id="pO" role="2Oq$k0">
              <ref role="3cqZAo" node="pE" resolve="b" />
            </node>
            <node concept="liA8E" id="pP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="pQ" role="37wK5m" />
              <node concept="3clFbT" id="pR" role="37wK5m" />
              <node concept="3clFbT" id="pS" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="py" role="3cqZAp">
          <node concept="1PaTwC" id="pT" role="1aUNEU">
            <node concept="3oM_SD" id="pU" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="pV" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pz" role="3cqZAp">
          <node concept="15s5l7" id="pW" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="pX" role="3clFbG">
            <node concept="37vLTw" id="pY" role="2Oq$k0">
              <ref role="3cqZAo" node="pE" resolve="b" />
            </node>
            <node concept="liA8E" id="pZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="q0" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="q1" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="q2" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="p$" role="3cqZAp">
          <node concept="2OqwBi" id="q3" role="3clFbG">
            <node concept="37vLTw" id="q4" role="2Oq$k0">
              <ref role="3cqZAo" node="pE" resolve="b" />
            </node>
            <node concept="liA8E" id="q5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="q6" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7033755722359825273" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="p_" role="3cqZAp">
          <node concept="2OqwBi" id="q7" role="3clFbG">
            <node concept="37vLTw" id="q8" role="2Oq$k0">
              <ref role="3cqZAo" node="pE" resolve="b" />
            </node>
            <node concept="liA8E" id="q9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="qa" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pA" role="3cqZAp">
          <node concept="2OqwBi" id="qb" role="3clFbG">
            <node concept="2OqwBi" id="qc" role="2Oq$k0">
              <node concept="2OqwBi" id="qe" role="2Oq$k0">
                <node concept="2OqwBi" id="qg" role="2Oq$k0">
                  <node concept="2OqwBi" id="qi" role="2Oq$k0">
                    <node concept="2OqwBi" id="qk" role="2Oq$k0">
                      <node concept="2OqwBi" id="qm" role="2Oq$k0">
                        <node concept="37vLTw" id="qo" role="2Oq$k0">
                          <ref role="3cqZAo" node="pE" resolve="b" />
                        </node>
                        <node concept="liA8E" id="qp" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="qq" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="qr" role="37wK5m">
                            <property role="1adDun" value="0x11100ee73745172dL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="qn" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="qs" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="qt" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="qu" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="ql" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="qv" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="qj" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="qw" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qh" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="qx" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="qf" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qy" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499654445" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pB" role="3cqZAp">
          <node concept="2OqwBi" id="qz" role="3clFbG">
            <node concept="2OqwBi" id="q$" role="2Oq$k0">
              <node concept="2OqwBi" id="qA" role="2Oq$k0">
                <node concept="2OqwBi" id="qC" role="2Oq$k0">
                  <node concept="2OqwBi" id="qE" role="2Oq$k0">
                    <node concept="2OqwBi" id="qG" role="2Oq$k0">
                      <node concept="2OqwBi" id="qI" role="2Oq$k0">
                        <node concept="37vLTw" id="qK" role="2Oq$k0">
                          <ref role="3cqZAo" node="pE" resolve="b" />
                        </node>
                        <node concept="liA8E" id="qL" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="qM" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="qN" role="37wK5m">
                            <property role="1adDun" value="0x11100ee7375157faL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="qJ" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="qO" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="qP" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="qQ" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="qH" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="qR" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="qF" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="qS" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qD" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="qT" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="qB" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qU" role="37wK5m">
                  <property role="Xl_RC" value="1229499084500457466" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="q_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pC" role="3cqZAp">
          <node concept="2OqwBi" id="qV" role="3clFbG">
            <node concept="37vLTw" id="qW" role="2Oq$k0">
              <ref role="3cqZAo" node="pE" resolve="b" />
            </node>
            <node concept="liA8E" id="qX" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="qY" role="37wK5m">
                <property role="Xl_RC" value="SELECT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pD" role="3cqZAp">
          <node concept="2OqwBi" id="qZ" role="3cqZAk">
            <node concept="37vLTw" id="r0" role="2Oq$k0">
              <ref role="3cqZAo" node="pE" resolve="b" />
            </node>
            <node concept="liA8E" id="r1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="pu" role="1B3o_S" />
      <node concept="3uibUv" id="pv" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fV" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForStatement" />
      <node concept="3clFbS" id="r2" role="3clF47">
        <node concept="3cpWs8" id="r5" role="3cqZAp">
          <node concept="3cpWsn" id="rb" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="rc" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="rd" role="33vP2m">
              <node concept="1pGfFk" id="re" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="rf" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="rg" role="37wK5m">
                  <property role="Xl_RC" value="Statement" />
                </node>
                <node concept="1adDum" id="rh" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="ri" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="rj" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b30L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r6" role="3cqZAp">
          <node concept="2OqwBi" id="rk" role="3clFbG">
            <node concept="37vLTw" id="rl" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="rm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="rn" role="37wK5m" />
              <node concept="3clFbT" id="ro" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="rp" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r7" role="3cqZAp">
          <node concept="2OqwBi" id="rq" role="3clFbG">
            <node concept="37vLTw" id="rr" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="rs" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="rt" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598128" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r8" role="3cqZAp">
          <node concept="2OqwBi" id="ru" role="3clFbG">
            <node concept="37vLTw" id="rv" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="rw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="rx" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r9" role="3cqZAp">
          <node concept="2OqwBi" id="ry" role="3clFbG">
            <node concept="2OqwBi" id="rz" role="2Oq$k0">
              <node concept="2OqwBi" id="r_" role="2Oq$k0">
                <node concept="2OqwBi" id="rB" role="2Oq$k0">
                  <node concept="2OqwBi" id="rD" role="2Oq$k0">
                    <node concept="37vLTw" id="rF" role="2Oq$k0">
                      <ref role="3cqZAo" node="rb" resolve="b" />
                    </node>
                    <node concept="liA8E" id="rG" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="rH" role="37wK5m">
                        <property role="Xl_RC" value="table" />
                      </node>
                      <node concept="1adDum" id="rI" role="37wK5m">
                        <property role="1adDun" value="0x625a3ba00f267366L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="rE" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="rJ" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="rK" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="rL" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b2eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="rC" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="rM" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="rA" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="rN" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255881062" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="r$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ra" role="3cqZAp">
          <node concept="2OqwBi" id="rO" role="3cqZAk">
            <node concept="37vLTw" id="rP" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="rQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="r3" role="1B3o_S" />
      <node concept="3uibUv" id="r4" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fW" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForUpdate" />
      <node concept="3clFbS" id="rR" role="3clF47">
        <node concept="3cpWs8" id="rU" role="3cqZAp">
          <node concept="3cpWsn" id="s5" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="s6" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="s7" role="33vP2m">
              <node concept="1pGfFk" id="s8" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="s9" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="sa" role="37wK5m">
                  <property role="Xl_RC" value="Update" />
                </node>
                <node concept="1adDum" id="sb" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="sc" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="sd" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f23853fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rV" role="3cqZAp">
          <node concept="2OqwBi" id="se" role="3clFbG">
            <node concept="37vLTw" id="sf" role="2Oq$k0">
              <ref role="3cqZAo" node="s5" resolve="b" />
            </node>
            <node concept="liA8E" id="sg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="sh" role="37wK5m" />
              <node concept="3clFbT" id="si" role="37wK5m" />
              <node concept="3clFbT" id="sj" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="rW" role="3cqZAp">
          <node concept="1PaTwC" id="sk" role="1aUNEU">
            <node concept="3oM_SD" id="sl" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="sm" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rX" role="3cqZAp">
          <node concept="15s5l7" id="sn" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="so" role="3clFbG">
            <node concept="37vLTw" id="sp" role="2Oq$k0">
              <ref role="3cqZAo" node="s5" resolve="b" />
            </node>
            <node concept="liA8E" id="sq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="sr" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="ss" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="st" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rY" role="3cqZAp">
          <node concept="2OqwBi" id="su" role="3clFbG">
            <node concept="37vLTw" id="sv" role="2Oq$k0">
              <ref role="3cqZAo" node="s5" resolve="b" />
            </node>
            <node concept="liA8E" id="sw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="sx" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255689023" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rZ" role="3cqZAp">
          <node concept="2OqwBi" id="sy" role="3clFbG">
            <node concept="37vLTw" id="sz" role="2Oq$k0">
              <ref role="3cqZAo" node="s5" resolve="b" />
            </node>
            <node concept="liA8E" id="s$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="s_" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s0" role="3cqZAp">
          <node concept="2OqwBi" id="sA" role="3clFbG">
            <node concept="2OqwBi" id="sB" role="2Oq$k0">
              <node concept="2OqwBi" id="sD" role="2Oq$k0">
                <node concept="2OqwBi" id="sF" role="2Oq$k0">
                  <node concept="2OqwBi" id="sH" role="2Oq$k0">
                    <node concept="2OqwBi" id="sJ" role="2Oq$k0">
                      <node concept="2OqwBi" id="sL" role="2Oq$k0">
                        <node concept="37vLTw" id="sN" role="2Oq$k0">
                          <ref role="3cqZAo" node="s5" resolve="b" />
                        </node>
                        <node concept="liA8E" id="sO" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="sP" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="sQ" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f238543L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="sM" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="sR" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="sS" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="sT" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="sK" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="sU" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="sI" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="sV" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="sG" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="sW" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="sE" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="sX" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689027" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="sC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s1" role="3cqZAp">
          <node concept="2OqwBi" id="sY" role="3clFbG">
            <node concept="2OqwBi" id="sZ" role="2Oq$k0">
              <node concept="2OqwBi" id="t1" role="2Oq$k0">
                <node concept="2OqwBi" id="t3" role="2Oq$k0">
                  <node concept="2OqwBi" id="t5" role="2Oq$k0">
                    <node concept="2OqwBi" id="t7" role="2Oq$k0">
                      <node concept="2OqwBi" id="t9" role="2Oq$k0">
                        <node concept="37vLTw" id="tb" role="2Oq$k0">
                          <ref role="3cqZAo" node="s5" resolve="b" />
                        </node>
                        <node concept="liA8E" id="tc" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="td" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="te" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f238547L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ta" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="tf" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="tg" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="th" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="t8" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="ti" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="t6" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="tj" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="t4" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="tk" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="t2" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="tl" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689031" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="t0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s2" role="3cqZAp">
          <node concept="2OqwBi" id="tm" role="3clFbG">
            <node concept="2OqwBi" id="tn" role="2Oq$k0">
              <node concept="2OqwBi" id="tp" role="2Oq$k0">
                <node concept="2OqwBi" id="tr" role="2Oq$k0">
                  <node concept="2OqwBi" id="tt" role="2Oq$k0">
                    <node concept="2OqwBi" id="tv" role="2Oq$k0">
                      <node concept="2OqwBi" id="tx" role="2Oq$k0">
                        <node concept="37vLTw" id="tz" role="2Oq$k0">
                          <ref role="3cqZAo" node="s5" resolve="b" />
                        </node>
                        <node concept="liA8E" id="t$" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="t_" role="37wK5m">
                            <property role="Xl_RC" value="values" />
                          </node>
                          <node concept="1adDum" id="tA" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f23854bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ty" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="tB" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="tC" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="tD" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="tw" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="tE" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="tu" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="tF" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="ts" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="tG" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tq" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="tH" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689035" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="to" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s3" role="3cqZAp">
          <node concept="2OqwBi" id="tI" role="3clFbG">
            <node concept="37vLTw" id="tJ" role="2Oq$k0">
              <ref role="3cqZAo" node="s5" resolve="b" />
            </node>
            <node concept="liA8E" id="tK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="tL" role="37wK5m">
                <property role="Xl_RC" value="UPDATE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="s4" role="3cqZAp">
          <node concept="2OqwBi" id="tM" role="3cqZAk">
            <node concept="37vLTw" id="tN" role="2Oq$k0">
              <ref role="3cqZAo" node="s5" resolve="b" />
            </node>
            <node concept="liA8E" id="tO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="rS" role="1B3o_S" />
      <node concept="3uibUv" id="rT" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fX" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForValue" />
      <node concept="3clFbS" id="tP" role="3clF47">
        <node concept="3cpWs8" id="tS" role="3cqZAp">
          <node concept="3cpWsn" id="tZ" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="u0" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="u1" role="33vP2m">
              <node concept="1pGfFk" id="u2" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="u3" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="u4" role="37wK5m">
                  <property role="Xl_RC" value="Value" />
                </node>
                <node concept="1adDum" id="u5" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="u6" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="u7" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tT" role="3cqZAp">
          <node concept="2OqwBi" id="u8" role="3clFbG">
            <node concept="37vLTw" id="u9" role="2Oq$k0">
              <ref role="3cqZAo" node="tZ" resolve="b" />
            </node>
            <node concept="liA8E" id="ua" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="ub" role="37wK5m" />
              <node concept="3clFbT" id="uc" role="37wK5m" />
              <node concept="3clFbT" id="ud" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tU" role="3cqZAp">
          <node concept="2OqwBi" id="ue" role="3clFbG">
            <node concept="37vLTw" id="uf" role="2Oq$k0">
              <ref role="3cqZAo" node="tZ" resolve="b" />
            </node>
            <node concept="liA8E" id="ug" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="uh" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255247499" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tV" role="3cqZAp">
          <node concept="2OqwBi" id="ui" role="3clFbG">
            <node concept="37vLTw" id="uj" role="2Oq$k0">
              <ref role="3cqZAo" node="tZ" resolve="b" />
            </node>
            <node concept="liA8E" id="uk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="ul" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tW" role="3cqZAp">
          <node concept="2OqwBi" id="um" role="3clFbG">
            <node concept="2OqwBi" id="un" role="2Oq$k0">
              <node concept="2OqwBi" id="up" role="2Oq$k0">
                <node concept="2OqwBi" id="ur" role="2Oq$k0">
                  <node concept="37vLTw" id="ut" role="2Oq$k0">
                    <ref role="3cqZAo" node="tZ" resolve="b" />
                  </node>
                  <node concept="liA8E" id="uu" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="uv" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="uw" role="37wK5m">
                      <property role="1adDun" value="0x625a3ba00f1cc88cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="us" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="ux" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499598137" />
                    <node concept="1adDum" id="uy" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="uz" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="u$" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b39L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="uq" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="u_" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247500" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="uo" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tX" role="3cqZAp">
          <node concept="2OqwBi" id="uA" role="3clFbG">
            <node concept="2OqwBi" id="uB" role="2Oq$k0">
              <node concept="2OqwBi" id="uD" role="2Oq$k0">
                <node concept="2OqwBi" id="uF" role="2Oq$k0">
                  <node concept="37vLTw" id="uH" role="2Oq$k0">
                    <ref role="3cqZAo" node="tZ" resolve="b" />
                  </node>
                  <node concept="liA8E" id="uI" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="uJ" role="37wK5m">
                      <property role="Xl_RC" value="value" />
                    </node>
                    <node concept="1adDum" id="uK" role="37wK5m">
                      <property role="1adDun" value="0x625a3ba00f1cc88eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uG" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="uL" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="uE" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="uM" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247502" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="uC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="tY" role="3cqZAp">
          <node concept="2OqwBi" id="uN" role="3cqZAk">
            <node concept="37vLTw" id="uO" role="2Oq$k0">
              <ref role="3cqZAo" node="tZ" resolve="b" />
            </node>
            <node concept="liA8E" id="uP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="tQ" role="1B3o_S" />
      <node concept="3uibUv" id="tR" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fY" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForWhere" />
      <node concept="3clFbS" id="uQ" role="3clF47">
        <node concept="3cpWs8" id="uT" role="3cqZAp">
          <node concept="3cpWsn" id="v0" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="v1" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="v2" role="33vP2m">
              <node concept="1pGfFk" id="v3" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="v4" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="v5" role="37wK5m">
                  <property role="Xl_RC" value="Where" />
                </node>
                <node concept="1adDum" id="v6" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="v7" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="v8" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e37bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uU" role="3cqZAp">
          <node concept="2OqwBi" id="v9" role="3clFbG">
            <node concept="37vLTw" id="va" role="2Oq$k0">
              <ref role="3cqZAo" node="v0" resolve="b" />
            </node>
            <node concept="liA8E" id="vb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="vc" role="37wK5m" />
              <node concept="3clFbT" id="vd" role="37wK5m" />
              <node concept="3clFbT" id="ve" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uV" role="3cqZAp">
          <node concept="2OqwBi" id="vf" role="3clFbG">
            <node concept="37vLTw" id="vg" role="2Oq$k0">
              <ref role="3cqZAo" node="v0" resolve="b" />
            </node>
            <node concept="liA8E" id="vh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="vi" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7033755722359825275" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uW" role="3cqZAp">
          <node concept="2OqwBi" id="vj" role="3clFbG">
            <node concept="37vLTw" id="vk" role="2Oq$k0">
              <ref role="3cqZAo" node="v0" resolve="b" />
            </node>
            <node concept="liA8E" id="vl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="vm" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uX" role="3cqZAp">
          <node concept="2OqwBi" id="vn" role="3clFbG">
            <node concept="2OqwBi" id="vo" role="2Oq$k0">
              <node concept="2OqwBi" id="vq" role="2Oq$k0">
                <node concept="2OqwBi" id="vs" role="2Oq$k0">
                  <node concept="2OqwBi" id="vu" role="2Oq$k0">
                    <node concept="2OqwBi" id="vw" role="2Oq$k0">
                      <node concept="2OqwBi" id="vy" role="2Oq$k0">
                        <node concept="37vLTw" id="v$" role="2Oq$k0">
                          <ref role="3cqZAo" node="v0" resolve="b" />
                        </node>
                        <node concept="liA8E" id="v_" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="vA" role="37wK5m">
                            <property role="Xl_RC" value="condition" />
                          </node>
                          <node concept="1adDum" id="vB" role="37wK5m">
                            <property role="1adDun" value="0x11100ee7374a23b4L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="vz" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="vC" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="vD" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="vE" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737470ff3L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="vx" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="vF" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="vv" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="vG" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="vt" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="vH" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="vr" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="vI" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499985332" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="vp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uY" role="3cqZAp">
          <node concept="2OqwBi" id="vJ" role="3clFbG">
            <node concept="37vLTw" id="vK" role="2Oq$k0">
              <ref role="3cqZAo" node="v0" resolve="b" />
            </node>
            <node concept="liA8E" id="vL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="vM" role="37wK5m">
                <property role="Xl_RC" value="WHERE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="uZ" role="3cqZAp">
          <node concept="2OqwBi" id="vN" role="3cqZAk">
            <node concept="37vLTw" id="vO" role="2Oq$k0">
              <ref role="3cqZAo" node="v0" resolve="b" />
            </node>
            <node concept="liA8E" id="vP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="uR" role="1B3o_S" />
      <node concept="3uibUv" id="uS" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
  </node>
</model>

