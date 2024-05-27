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
      <node concept="3uibUv" id="m" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="n" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ColumnRef" />
      <node concept="3uibUv" id="o" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="p" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Condition" />
      <node concept="3uibUv" id="q" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="r" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ConditionSet" />
      <node concept="3uibUv" id="s" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="t" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ConditionsSequence" />
      <node concept="3uibUv" id="u" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="v" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CreateTable" />
      <node concept="3uibUv" id="w" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="x" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_DBOperation" />
      <node concept="3uibUv" id="y" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Delete" />
      <node concept="3uibUv" id="$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="a" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_GroupBy" />
      <node concept="3uibUv" id="A" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="B" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="b" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_InsertInto" />
      <node concept="3uibUv" id="C" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="D" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="c" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_OrderBy" />
      <node concept="3uibUv" id="E" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="F" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="d" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Script" />
      <node concept="3uibUv" id="G" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="H" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="e" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Select" />
      <node concept="3uibUv" id="I" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="J" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="f" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Statement" />
      <node concept="3uibUv" id="K" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="L" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="g" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Update" />
      <node concept="3uibUv" id="M" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="N" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="h" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Value" />
      <node concept="3uibUv" id="O" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="P" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="i" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Where" />
      <node concept="3uibUv" id="Q" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="R" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="j" role="1B3o_S" />
    <node concept="2tJIrI" id="k" role="jymVt" />
    <node concept="3clFb_" id="l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="S" role="1B3o_S" />
      <node concept="37vLTG" id="T" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="Y" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="U" role="3clF47">
        <node concept="3cpWs8" id="Z" role="3cqZAp">
          <node concept="3cpWsn" id="12" role="3cpWs9">
            <property role="TrG5h" value="structureDescriptor" />
            <node concept="3uibUv" id="13" role="1tU5fm">
              <ref role="3uigEE" node="l8" resolve="StructureAspectDescriptor" />
            </node>
            <node concept="10QFUN" id="14" role="33vP2m">
              <node concept="3uibUv" id="15" role="10QFUM">
                <ref role="3uigEE" node="l8" resolve="StructureAspectDescriptor" />
              </node>
              <node concept="2OqwBi" id="16" role="10QFUP">
                <node concept="37vLTw" id="17" role="2Oq$k0">
                  <ref role="3cqZAo" to="ze1i:~ConceptPresentationAspectBase.myLanguageRuntime" resolve="myLanguageRuntime" />
                </node>
                <node concept="liA8E" id="18" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                  <node concept="3VsKOn" id="19" role="37wK5m">
                    <ref role="3VsUkX" to="ze1i:~StructureAspectDescriptor" resolve="StructureAspectDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="10" role="3cqZAp">
          <node concept="2OqwBi" id="1a" role="3KbGdf">
            <node concept="37vLTw" id="1s" role="2Oq$k0">
              <ref role="3cqZAo" node="12" resolve="structureDescriptor" />
            </node>
            <node concept="liA8E" id="1t" role="2OqNvi">
              <ref role="37wK5l" node="lG" resolve="internalIndex" />
              <node concept="37vLTw" id="1u" role="37wK5m">
                <ref role="3cqZAo" node="T" resolve="c" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1b" role="3KbHQx">
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
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598131" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1B" role="3cqZAp">
                    <node concept="37vLTI" id="1J" role="3clFbG">
                      <node concept="2OqwBi" id="1K" role="37vLTx">
                        <node concept="37vLTw" id="1M" role="2Oq$k0">
                          <ref role="3cqZAo" node="1C" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="1N" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1L" role="37vLTJ">
                        <ref role="3cqZAo" node="2" resolve="props_Column" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1$" role="3clFbw">
                  <node concept="10Nm6u" id="1O" role="3uHU7w" />
                  <node concept="37vLTw" id="1P" role="3uHU7B">
                    <ref role="3cqZAo" node="2" resolve="props_Column" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1y" role="3cqZAp">
                <node concept="37vLTw" id="1Q" role="3cqZAk">
                  <ref role="3cqZAo" node="2" resolve="props_Column" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1w" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hM" resolve="Column" />
            </node>
          </node>
          <node concept="3KbdKl" id="1c" role="3KbHQx">
            <node concept="3clFbS" id="1R" role="3Kbo56">
              <node concept="3clFbJ" id="1T" role="3cqZAp">
                <node concept="3clFbS" id="1V" role="3clFbx">
                  <node concept="3cpWs8" id="1X" role="3cqZAp">
                    <node concept="3cpWsn" id="20" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="21" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="22" role="33vP2m">
                        <node concept="1pGfFk" id="23" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1Y" role="3cqZAp">
                    <node concept="2OqwBi" id="24" role="3clFbG">
                      <node concept="37vLTw" id="25" role="2Oq$k0">
                        <ref role="3cqZAo" node="20" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="26" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:1229499084500457460" />
                        <node concept="1adDum" id="27" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="28" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="29" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="2a" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f5L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="2b" role="37wK5m">
                          <property role="Xl_RC" value="column" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="2c" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="2d" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1Z" role="3cqZAp">
                    <node concept="37vLTI" id="2e" role="3clFbG">
                      <node concept="2OqwBi" id="2f" role="37vLTx">
                        <node concept="37vLTw" id="2h" role="2Oq$k0">
                          <ref role="3cqZAo" node="20" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2i" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2g" role="37vLTJ">
                        <ref role="3cqZAo" node="3" resolve="props_ColumnRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1W" role="3clFbw">
                  <node concept="10Nm6u" id="2j" role="3uHU7w" />
                  <node concept="37vLTw" id="2k" role="3uHU7B">
                    <ref role="3cqZAo" node="3" resolve="props_ColumnRef" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1U" role="3cqZAp">
                <node concept="37vLTw" id="2l" role="3cqZAk">
                  <ref role="3cqZAo" node="3" resolve="props_ColumnRef" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1S" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hN" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="3KbdKl" id="1d" role="3KbHQx">
            <node concept="3clFbS" id="2m" role="3Kbo56">
              <node concept="3clFbJ" id="2o" role="3cqZAp">
                <node concept="3clFbS" id="2q" role="3clFbx">
                  <node concept="3cpWs8" id="2s" role="3cqZAp">
                    <node concept="3cpWsn" id="2v" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2w" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2x" role="33vP2m">
                        <node concept="1pGfFk" id="2y" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2t" role="3cqZAp">
                    <node concept="2OqwBi" id="2z" role="3clFbG">
                      <node concept="37vLTw" id="2$" role="2Oq$k0">
                        <ref role="3cqZAo" node="2v" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2_" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:1229499084499783667" />
                        <node concept="1adDum" id="2A" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="1adDum" id="2B" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="1adDum" id="2C" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737470ff3L" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="1adDum" id="2D" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375283dfL" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="Xl_RD" id="2E" role="37wK5m">
                          <property role="Xl_RC" value="column" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="Xl_RD" id="2F" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                        <node concept="Xl_RD" id="2G" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084499783667" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2u" role="3cqZAp">
                    <node concept="37vLTI" id="2H" role="3clFbG">
                      <node concept="2OqwBi" id="2I" role="37vLTx">
                        <node concept="37vLTw" id="2K" role="2Oq$k0">
                          <ref role="3cqZAo" node="2v" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2L" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2J" role="37vLTJ">
                        <ref role="3cqZAo" node="4" resolve="props_Condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2r" role="3clFbw">
                  <node concept="10Nm6u" id="2M" role="3uHU7w" />
                  <node concept="37vLTw" id="2N" role="3uHU7B">
                    <ref role="3cqZAo" node="4" resolve="props_Condition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2p" role="3cqZAp">
                <node concept="37vLTw" id="2O" role="3cqZAk">
                  <ref role="3cqZAo" node="4" resolve="props_Condition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2n" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hO" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1e" role="3KbHQx">
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
                        <uo k="s:originTrace" v="n:2582920951876730988" />
                        <node concept="Xl_RD" id="35" role="37wK5m">
                          <property role="Xl_RC" value="ConditionSet" />
                          <uo k="s:originTrace" v="n:2582920951876730988" />
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
                        <ref role="3cqZAo" node="5" resolve="props_ConditionSet" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2U" role="3clFbw">
                  <node concept="10Nm6u" id="3b" role="3uHU7w" />
                  <node concept="37vLTw" id="3c" role="3uHU7B">
                    <ref role="3cqZAo" node="5" resolve="props_ConditionSet" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2S" role="3cqZAp">
                <node concept="37vLTw" id="3d" role="3cqZAk">
                  <ref role="3cqZAo" node="5" resolve="props_ConditionSet" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2Q" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hP" resolve="ConditionSet" />
            </node>
          </node>
          <node concept="3KbdKl" id="1f" role="3KbHQx">
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
                        <uo k="s:originTrace" v="n:2582920951876036245" />
                        <node concept="Xl_RD" id="3u" role="37wK5m">
                          <property role="Xl_RC" value="ConditionsSequence" />
                          <uo k="s:originTrace" v="n:2582920951876036245" />
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
                        <ref role="3cqZAo" node="6" resolve="props_ConditionsSequence" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3j" role="3clFbw">
                  <node concept="10Nm6u" id="3$" role="3uHU7w" />
                  <node concept="37vLTw" id="3_" role="3uHU7B">
                    <ref role="3cqZAo" node="6" resolve="props_ConditionsSequence" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3h" role="3cqZAp">
                <node concept="37vLTw" id="3A" role="3cqZAk">
                  <ref role="3cqZAo" node="6" resolve="props_ConditionsSequence" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3f" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hQ" resolve="ConditionsSequence" />
            </node>
          </node>
          <node concept="3KbdKl" id="1g" role="3KbHQx">
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
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598126" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3J" role="3cqZAp">
                    <node concept="37vLTI" id="3R" role="3clFbG">
                      <node concept="2OqwBi" id="3S" role="37vLTx">
                        <node concept="37vLTw" id="3U" role="2Oq$k0">
                          <ref role="3cqZAo" node="3K" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3V" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3T" role="37vLTJ">
                        <ref role="3cqZAo" node="7" resolve="props_CreateTable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3G" role="3clFbw">
                  <node concept="10Nm6u" id="3W" role="3uHU7w" />
                  <node concept="37vLTw" id="3X" role="3uHU7B">
                    <ref role="3cqZAo" node="7" resolve="props_CreateTable" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3E" role="3cqZAp">
                <node concept="37vLTw" id="3Y" role="3cqZAk">
                  <ref role="3cqZAo" node="7" resolve="props_CreateTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3C" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hR" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="1h" role="3KbHQx">
            <node concept="3clFbS" id="3Z" role="3Kbo56">
              <node concept="3clFbJ" id="41" role="3cqZAp">
                <node concept="3clFbS" id="43" role="3clFbx">
                  <node concept="3cpWs8" id="45" role="3cqZAp">
                    <node concept="3cpWsn" id="47" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="48" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="49" role="33vP2m">
                        <node concept="1pGfFk" id="4a" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="46" role="3cqZAp">
                    <node concept="37vLTI" id="4b" role="3clFbG">
                      <node concept="2OqwBi" id="4c" role="37vLTx">
                        <node concept="37vLTw" id="4e" role="2Oq$k0">
                          <ref role="3cqZAo" node="47" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4f" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4d" role="37vLTJ">
                        <ref role="3cqZAo" node="8" resolve="props_DBOperation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="44" role="3clFbw">
                  <node concept="10Nm6u" id="4g" role="3uHU7w" />
                  <node concept="37vLTw" id="4h" role="3uHU7B">
                    <ref role="3cqZAo" node="8" resolve="props_DBOperation" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="42" role="3cqZAp">
                <node concept="37vLTw" id="4i" role="3cqZAk">
                  <ref role="3cqZAo" node="8" resolve="props_DBOperation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="40" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hS" resolve="DBOperation" />
            </node>
          </node>
          <node concept="3KbdKl" id="1i" role="3KbHQx">
            <node concept="3clFbS" id="4j" role="3Kbo56">
              <node concept="3clFbJ" id="4l" role="3cqZAp">
                <node concept="3clFbS" id="4n" role="3clFbx">
                  <node concept="3cpWs8" id="4p" role="3cqZAp">
                    <node concept="3cpWsn" id="4s" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4t" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4u" role="33vP2m">
                        <node concept="1pGfFk" id="4v" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4q" role="3cqZAp">
                    <node concept="2OqwBi" id="4w" role="3clFbG">
                      <node concept="37vLTw" id="4x" role="2Oq$k0">
                        <ref role="3cqZAo" node="4s" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4y" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:3100867722286999193" />
                        <node concept="Xl_RD" id="4z" role="37wK5m">
                          <property role="Xl_RC" value="DELETE" />
                          <uo k="s:originTrace" v="n:3100867722286999193" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4r" role="3cqZAp">
                    <node concept="37vLTI" id="4$" role="3clFbG">
                      <node concept="2OqwBi" id="4_" role="37vLTx">
                        <node concept="37vLTw" id="4B" role="2Oq$k0">
                          <ref role="3cqZAo" node="4s" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4C" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4A" role="37vLTJ">
                        <ref role="3cqZAo" node="9" resolve="props_Delete" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4o" role="3clFbw">
                  <node concept="10Nm6u" id="4D" role="3uHU7w" />
                  <node concept="37vLTw" id="4E" role="3uHU7B">
                    <ref role="3cqZAo" node="9" resolve="props_Delete" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4m" role="3cqZAp">
                <node concept="37vLTw" id="4F" role="3cqZAk">
                  <ref role="3cqZAo" node="9" resolve="props_Delete" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4k" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hT" resolve="Delete" />
            </node>
          </node>
          <node concept="3KbdKl" id="1j" role="3KbHQx">
            <node concept="3clFbS" id="4G" role="3Kbo56">
              <node concept="3clFbJ" id="4I" role="3cqZAp">
                <node concept="3clFbS" id="4K" role="3clFbx">
                  <node concept="3cpWs8" id="4M" role="3cqZAp">
                    <node concept="3cpWsn" id="4P" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4Q" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4R" role="33vP2m">
                        <node concept="1pGfFk" id="4S" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4N" role="3cqZAp">
                    <node concept="2OqwBi" id="4T" role="3clFbG">
                      <node concept="37vLTw" id="4U" role="2Oq$k0">
                        <ref role="3cqZAo" node="4P" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4V" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:3100867722287388366" />
                        <node concept="Xl_RD" id="4W" role="37wK5m">
                          <property role="Xl_RC" value="GROUP BY" />
                          <uo k="s:originTrace" v="n:3100867722287388366" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4O" role="3cqZAp">
                    <node concept="37vLTI" id="4X" role="3clFbG">
                      <node concept="2OqwBi" id="4Y" role="37vLTx">
                        <node concept="37vLTw" id="50" role="2Oq$k0">
                          <ref role="3cqZAo" node="4P" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="51" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4Z" role="37vLTJ">
                        <ref role="3cqZAo" node="a" resolve="props_GroupBy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4L" role="3clFbw">
                  <node concept="10Nm6u" id="52" role="3uHU7w" />
                  <node concept="37vLTw" id="53" role="3uHU7B">
                    <ref role="3cqZAo" node="a" resolve="props_GroupBy" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4J" role="3cqZAp">
                <node concept="37vLTw" id="54" role="3cqZAk">
                  <ref role="3cqZAo" node="a" resolve="props_GroupBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4H" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hU" resolve="GroupBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="1k" role="3KbHQx">
            <node concept="3clFbS" id="55" role="3Kbo56">
              <node concept="3clFbJ" id="57" role="3cqZAp">
                <node concept="3clFbS" id="59" role="3clFbx">
                  <node concept="3cpWs8" id="5b" role="3cqZAp">
                    <node concept="3cpWsn" id="5e" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5f" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5g" role="33vP2m">
                        <node concept="1pGfFk" id="5h" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5c" role="3cqZAp">
                    <node concept="2OqwBi" id="5i" role="3clFbG">
                      <node concept="37vLTw" id="5j" role="2Oq$k0">
                        <ref role="3cqZAo" node="5e" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5k" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255225544" />
                        <node concept="Xl_RD" id="5l" role="37wK5m">
                          <property role="Xl_RC" value="INSERT INTO" />
                          <uo k="s:originTrace" v="n:7087042522255225544" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5d" role="3cqZAp">
                    <node concept="37vLTI" id="5m" role="3clFbG">
                      <node concept="2OqwBi" id="5n" role="37vLTx">
                        <node concept="37vLTw" id="5p" role="2Oq$k0">
                          <ref role="3cqZAo" node="5e" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5q" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5o" role="37vLTJ">
                        <ref role="3cqZAo" node="b" resolve="props_InsertInto" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5a" role="3clFbw">
                  <node concept="10Nm6u" id="5r" role="3uHU7w" />
                  <node concept="37vLTw" id="5s" role="3uHU7B">
                    <ref role="3cqZAo" node="b" resolve="props_InsertInto" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="58" role="3cqZAp">
                <node concept="37vLTw" id="5t" role="3cqZAk">
                  <ref role="3cqZAo" node="b" resolve="props_InsertInto" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="56" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hV" resolve="InsertInto" />
            </node>
          </node>
          <node concept="3KbdKl" id="1l" role="3KbHQx">
            <node concept="3clFbS" id="5u" role="3Kbo56">
              <node concept="3clFbJ" id="5w" role="3cqZAp">
                <node concept="3clFbS" id="5y" role="3clFbx">
                  <node concept="3cpWs8" id="5$" role="3cqZAp">
                    <node concept="3cpWsn" id="5B" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5C" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5D" role="33vP2m">
                        <node concept="1pGfFk" id="5E" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5_" role="3cqZAp">
                    <node concept="2OqwBi" id="5F" role="3clFbG">
                      <node concept="37vLTw" id="5G" role="2Oq$k0">
                        <ref role="3cqZAo" node="5B" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5H" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:3100867722286850641" />
                        <node concept="Xl_RD" id="5I" role="37wK5m">
                          <property role="Xl_RC" value="ORDER BY" />
                          <uo k="s:originTrace" v="n:3100867722286850641" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5A" role="3cqZAp">
                    <node concept="37vLTI" id="5J" role="3clFbG">
                      <node concept="2OqwBi" id="5K" role="37vLTx">
                        <node concept="37vLTw" id="5M" role="2Oq$k0">
                          <ref role="3cqZAo" node="5B" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5N" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5L" role="37vLTJ">
                        <ref role="3cqZAo" node="c" resolve="props_OrderBy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5z" role="3clFbw">
                  <node concept="10Nm6u" id="5O" role="3uHU7w" />
                  <node concept="37vLTw" id="5P" role="3uHU7B">
                    <ref role="3cqZAo" node="c" resolve="props_OrderBy" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5x" role="3cqZAp">
                <node concept="37vLTw" id="5Q" role="3cqZAk">
                  <ref role="3cqZAo" node="c" resolve="props_OrderBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5v" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hW" resolve="OrderBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="1m" role="3KbHQx">
            <node concept="3clFbS" id="5R" role="3Kbo56">
              <node concept="3clFbJ" id="5T" role="3cqZAp">
                <node concept="3clFbS" id="5V" role="3clFbx">
                  <node concept="3cpWs8" id="5X" role="3cqZAp">
                    <node concept="3cpWsn" id="60" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="61" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="62" role="33vP2m">
                        <node concept="1pGfFk" id="63" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5Y" role="3cqZAp">
                    <node concept="2OqwBi" id="64" role="3clFbG">
                      <node concept="37vLTw" id="65" role="2Oq$k0">
                        <ref role="3cqZAo" node="60" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="66" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:1229499084499598285" />
                        <node concept="Xl_RD" id="67" role="37wK5m">
                          <property role="Xl_RC" value="Script" />
                          <uo k="s:originTrace" v="n:1229499084499598285" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5Z" role="3cqZAp">
                    <node concept="37vLTI" id="68" role="3clFbG">
                      <node concept="2OqwBi" id="69" role="37vLTx">
                        <node concept="37vLTw" id="6b" role="2Oq$k0">
                          <ref role="3cqZAo" node="60" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6c" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6a" role="37vLTJ">
                        <ref role="3cqZAo" node="d" resolve="props_Script" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5W" role="3clFbw">
                  <node concept="10Nm6u" id="6d" role="3uHU7w" />
                  <node concept="37vLTw" id="6e" role="3uHU7B">
                    <ref role="3cqZAo" node="d" resolve="props_Script" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5U" role="3cqZAp">
                <node concept="37vLTw" id="6f" role="3cqZAk">
                  <ref role="3cqZAo" node="d" resolve="props_Script" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5S" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hX" resolve="Script" />
            </node>
          </node>
          <node concept="3KbdKl" id="1n" role="3KbHQx">
            <node concept="3clFbS" id="6g" role="3Kbo56">
              <node concept="3clFbJ" id="6i" role="3cqZAp">
                <node concept="3clFbS" id="6k" role="3clFbx">
                  <node concept="3cpWs8" id="6m" role="3cqZAp">
                    <node concept="3cpWsn" id="6p" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6q" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6r" role="33vP2m">
                        <node concept="1pGfFk" id="6s" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6n" role="3cqZAp">
                    <node concept="2OqwBi" id="6t" role="3clFbG">
                      <node concept="37vLTw" id="6u" role="2Oq$k0">
                        <ref role="3cqZAo" node="6p" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6v" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7033755722359825273" />
                        <node concept="Xl_RD" id="6w" role="37wK5m">
                          <property role="Xl_RC" value="SELECT" />
                          <uo k="s:originTrace" v="n:7033755722359825273" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6o" role="3cqZAp">
                    <node concept="37vLTI" id="6x" role="3clFbG">
                      <node concept="2OqwBi" id="6y" role="37vLTx">
                        <node concept="37vLTw" id="6$" role="2Oq$k0">
                          <ref role="3cqZAo" node="6p" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6_" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6z" role="37vLTJ">
                        <ref role="3cqZAo" node="e" resolve="props_Select" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6l" role="3clFbw">
                  <node concept="10Nm6u" id="6A" role="3uHU7w" />
                  <node concept="37vLTw" id="6B" role="3uHU7B">
                    <ref role="3cqZAo" node="e" resolve="props_Select" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6j" role="3cqZAp">
                <node concept="37vLTw" id="6C" role="3cqZAk">
                  <ref role="3cqZAo" node="e" resolve="props_Select" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6h" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hY" resolve="Select" />
            </node>
          </node>
          <node concept="3KbdKl" id="1o" role="3KbHQx">
            <node concept="3clFbS" id="6D" role="3Kbo56">
              <node concept="3clFbJ" id="6F" role="3cqZAp">
                <node concept="3clFbS" id="6H" role="3clFbx">
                  <node concept="3cpWs8" id="6J" role="3cqZAp">
                    <node concept="3cpWsn" id="6L" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6M" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6N" role="33vP2m">
                        <node concept="1pGfFk" id="6O" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6K" role="3cqZAp">
                    <node concept="37vLTI" id="6P" role="3clFbG">
                      <node concept="2OqwBi" id="6Q" role="37vLTx">
                        <node concept="37vLTw" id="6S" role="2Oq$k0">
                          <ref role="3cqZAo" node="6L" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6T" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6R" role="37vLTJ">
                        <ref role="3cqZAo" node="f" resolve="props_Statement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6I" role="3clFbw">
                  <node concept="10Nm6u" id="6U" role="3uHU7w" />
                  <node concept="37vLTw" id="6V" role="3uHU7B">
                    <ref role="3cqZAo" node="f" resolve="props_Statement" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6G" role="3cqZAp">
                <node concept="37vLTw" id="6W" role="3cqZAk">
                  <ref role="3cqZAo" node="f" resolve="props_Statement" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6E" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hZ" resolve="Statement" />
            </node>
          </node>
          <node concept="3KbdKl" id="1p" role="3KbHQx">
            <node concept="3clFbS" id="6X" role="3Kbo56">
              <node concept="3clFbJ" id="6Z" role="3cqZAp">
                <node concept="3clFbS" id="71" role="3clFbx">
                  <node concept="3cpWs8" id="73" role="3cqZAp">
                    <node concept="3cpWsn" id="76" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="77" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="78" role="33vP2m">
                        <node concept="1pGfFk" id="79" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="74" role="3cqZAp">
                    <node concept="2OqwBi" id="7a" role="3clFbG">
                      <node concept="37vLTw" id="7b" role="2Oq$k0">
                        <ref role="3cqZAo" node="76" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7c" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255689023" />
                        <node concept="Xl_RD" id="7d" role="37wK5m">
                          <property role="Xl_RC" value="UPDATE" />
                          <uo k="s:originTrace" v="n:7087042522255689023" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="75" role="3cqZAp">
                    <node concept="37vLTI" id="7e" role="3clFbG">
                      <node concept="2OqwBi" id="7f" role="37vLTx">
                        <node concept="37vLTw" id="7h" role="2Oq$k0">
                          <ref role="3cqZAo" node="76" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7i" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7g" role="37vLTJ">
                        <ref role="3cqZAo" node="g" resolve="props_Update" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="72" role="3clFbw">
                  <node concept="10Nm6u" id="7j" role="3uHU7w" />
                  <node concept="37vLTw" id="7k" role="3uHU7B">
                    <ref role="3cqZAo" node="g" resolve="props_Update" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="70" role="3cqZAp">
                <node concept="37vLTw" id="7l" role="3cqZAk">
                  <ref role="3cqZAo" node="g" resolve="props_Update" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6Y" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="i0" resolve="Update" />
            </node>
          </node>
          <node concept="3KbdKl" id="1q" role="3KbHQx">
            <node concept="3clFbS" id="7m" role="3Kbo56">
              <node concept="3clFbJ" id="7o" role="3cqZAp">
                <node concept="3clFbS" id="7q" role="3clFbx">
                  <node concept="3cpWs8" id="7s" role="3cqZAp">
                    <node concept="3cpWsn" id="7v" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7w" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7x" role="33vP2m">
                        <node concept="1pGfFk" id="7y" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7t" role="3cqZAp">
                    <node concept="2OqwBi" id="7z" role="3clFbG">
                      <node concept="37vLTw" id="7$" role="2Oq$k0">
                        <ref role="3cqZAo" node="7v" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7_" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255247499" />
                        <node concept="Xl_RD" id="7A" role="37wK5m">
                          <property role="Xl_RC" value="Value" />
                          <uo k="s:originTrace" v="n:7087042522255247499" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7u" role="3cqZAp">
                    <node concept="37vLTI" id="7B" role="3clFbG">
                      <node concept="2OqwBi" id="7C" role="37vLTx">
                        <node concept="37vLTw" id="7E" role="2Oq$k0">
                          <ref role="3cqZAo" node="7v" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7F" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7D" role="37vLTJ">
                        <ref role="3cqZAo" node="h" resolve="props_Value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7r" role="3clFbw">
                  <node concept="10Nm6u" id="7G" role="3uHU7w" />
                  <node concept="37vLTw" id="7H" role="3uHU7B">
                    <ref role="3cqZAo" node="h" resolve="props_Value" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7p" role="3cqZAp">
                <node concept="37vLTw" id="7I" role="3cqZAk">
                  <ref role="3cqZAo" node="h" resolve="props_Value" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7n" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="i1" resolve="Value" />
            </node>
          </node>
          <node concept="3KbdKl" id="1r" role="3KbHQx">
            <node concept="3clFbS" id="7J" role="3Kbo56">
              <node concept="3clFbJ" id="7L" role="3cqZAp">
                <node concept="3clFbS" id="7N" role="3clFbx">
                  <node concept="3cpWs8" id="7P" role="3cqZAp">
                    <node concept="3cpWsn" id="7S" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7T" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7U" role="33vP2m">
                        <node concept="1pGfFk" id="7V" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7Q" role="3cqZAp">
                    <node concept="2OqwBi" id="7W" role="3clFbG">
                      <node concept="37vLTw" id="7X" role="2Oq$k0">
                        <ref role="3cqZAo" node="7S" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7Y" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7033755722359825275" />
                        <node concept="Xl_RD" id="7Z" role="37wK5m">
                          <property role="Xl_RC" value="WHERE" />
                          <uo k="s:originTrace" v="n:7033755722359825275" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7R" role="3cqZAp">
                    <node concept="37vLTI" id="80" role="3clFbG">
                      <node concept="2OqwBi" id="81" role="37vLTx">
                        <node concept="37vLTw" id="83" role="2Oq$k0">
                          <ref role="3cqZAo" node="7S" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="84" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="82" role="37vLTJ">
                        <ref role="3cqZAo" node="i" resolve="props_Where" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7O" role="3clFbw">
                  <node concept="10Nm6u" id="85" role="3uHU7w" />
                  <node concept="37vLTw" id="86" role="3uHU7B">
                    <ref role="3cqZAo" node="i" resolve="props_Where" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7M" role="3cqZAp">
                <node concept="37vLTw" id="87" role="3cqZAk">
                  <ref role="3cqZAo" node="i" resolve="props_Where" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7K" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="i2" resolve="Where" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11" role="3cqZAp">
          <node concept="10Nm6u" id="88" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="V" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="2AHcQZ" id="W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="89">
    <property role="3GE5qa" value="where" />
    <property role="TrG5h" value="EnumerationDescriptor_ConditionOperator" />
    <uo k="s:originTrace" v="n:2582920951876036250" />
    <node concept="2tJIrI" id="8a" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFbW" id="8b" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3cqZAl" id="8s" role="3clF45">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3Tm1VV" id="8t" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3clFbS" id="8u" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="XkiVB" id="8v" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="1adDum" id="8w" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="8x" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="8y" role="37wK5m">
            <property role="1adDun" value="0x23d860ebbb7c269aL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="8z" role="37wK5m">
            <property role="Xl_RC" value="ConditionOperator" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="8$" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036250" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8c" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="312cEg" id="8d" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_AND_0" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="8_" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="8A" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2ShNRf" id="8B" role="33vP2m">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1pGfFk" id="8C" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="Xl_RD" id="8D" role="37wK5m">
            <property role="Xl_RC" value="AND" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="8E" role="37wK5m">
            <property role="Xl_RC" value="AND" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="8F" role="37wK5m">
            <property role="1adDun" value="0x23d860ebbb7c269bL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="8G" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036251" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="8e" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_OR_0" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="8H" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="8I" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2ShNRf" id="8J" role="33vP2m">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1pGfFk" id="8K" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="Xl_RD" id="8L" role="37wK5m">
            <property role="Xl_RC" value="OR" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="8M" role="37wK5m">
            <property role="Xl_RC" value="OR" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="8N" role="37wK5m">
            <property role="1adDun" value="0x23d860ebbb7c269cL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="8O" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036252" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="8f" role="1B3o_S">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3uibUv" id="8g" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="2tJIrI" id="8h" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="312cEg" id="8i" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="8P" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="8Q" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2YIFZM" id="8R" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1adDum" id="8S" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="8T" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="8U" role="37wK5m">
          <property role="1adDun" value="0x23d860ebbb7c269aL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="8V" role="37wK5m">
          <property role="1adDun" value="0x23d860ebbb7c269bL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="8W" role="37wK5m">
          <property role="1adDun" value="0x23d860ebbb7c269cL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="8j" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="8X" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="8Y" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3uibUv" id="90" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="2ShNRf" id="8Z" role="33vP2m">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1pGfFk" id="91" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="37vLTw" id="92" role="37wK5m">
            <ref role="3cqZAo" node="8i" resolve="myIndex" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="37vLTw" id="93" role="37wK5m">
            <ref role="3cqZAo" node="8d" resolve="myMember_AND_0" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="37vLTw" id="94" role="37wK5m">
            <ref role="3cqZAo" node="8e" resolve="myMember_OR_0" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8k" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="8l" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="95" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="96" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="97" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3clFbS" id="98" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3clFbF" id="9a" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="10Nm6u" id="9b" role="3clFbG">
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="99" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
    <node concept="2tJIrI" id="8m" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="8n" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="9c" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="9d" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="9e" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3uibUv" id="9h" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="3clFbS" id="9f" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3cpWs6" id="9i" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="37vLTw" id="9j" role="3cqZAk">
            <ref role="3cqZAo" node="8j" resolve="myMembers" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="9g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
    <node concept="2tJIrI" id="8o" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="8p" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="9k" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="9l" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="9m" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="37vLTG" id="9n" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3uibUv" id="9q" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="2AHcQZ" id="9r" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="3clFbS" id="9o" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3clFbJ" id="9s" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="3clFbS" id="9v" role="3clFbx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="3cpWs6" id="9x" role="3cqZAp">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="10Nm6u" id="9y" role="3cqZAk">
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="9w" role="3clFbw">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="10Nm6u" id="9z" role="3uHU7w">
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="37vLTw" id="9$" role="3uHU7B">
              <ref role="3cqZAo" node="9n" resolve="memberName" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="9t" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="37vLTw" id="9_" role="3KbGdf">
            <ref role="3cqZAo" node="9n" resolve="memberName" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="3KbdKl" id="9A" role="3KbHQx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="Xl_RD" id="9C" role="3Kbmr1">
              <property role="Xl_RC" value="AND" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="3clFbS" id="9D" role="3Kbo56">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="3cpWs6" id="9E" role="3cqZAp">
                <uo k="s:originTrace" v="n:2582920951876036250" />
                <node concept="37vLTw" id="9F" role="3cqZAk">
                  <ref role="3cqZAo" node="8d" resolve="myMember_AND_0" />
                  <uo k="s:originTrace" v="n:2582920951876036250" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="9B" role="3KbHQx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="Xl_RD" id="9G" role="3Kbmr1">
              <property role="Xl_RC" value="OR" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="3clFbS" id="9H" role="3Kbo56">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="3cpWs6" id="9I" role="3cqZAp">
                <uo k="s:originTrace" v="n:2582920951876036250" />
                <node concept="37vLTw" id="9J" role="3cqZAk">
                  <ref role="3cqZAo" node="8e" resolve="myMember_OR_0" />
                  <uo k="s:originTrace" v="n:2582920951876036250" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="9u" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="10Nm6u" id="9K" role="3cqZAk">
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="9p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
    <node concept="2tJIrI" id="8q" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="8r" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="9L" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="9M" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="9N" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="37vLTG" id="9O" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3cpWsb" id="9R" role="1tU5fm">
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="3clFbS" id="9P" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3cpWs8" id="9S" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="3cpWsn" id="9V" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="10Oyi0" id="9W" role="1tU5fm">
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="2OqwBi" id="9X" role="33vP2m">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="37vLTw" id="9Y" role="2Oq$k0">
                <ref role="3cqZAo" node="8i" resolve="myIndex" />
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
              <node concept="liA8E" id="9Z" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:2582920951876036250" />
                <node concept="37vLTw" id="a0" role="37wK5m">
                  <ref role="3cqZAo" node="9O" resolve="idValue" />
                  <uo k="s:originTrace" v="n:2582920951876036250" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9T" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="3clFbS" id="a1" role="3clFbx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="3cpWs6" id="a3" role="3cqZAp">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="10Nm6u" id="a4" role="3cqZAk">
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="a2" role="3clFbw">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="3cmrfG" id="a5" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="37vLTw" id="a6" role="3uHU7B">
              <ref role="3cqZAo" node="9V" resolve="index" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9U" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="2OqwBi" id="a7" role="3clFbG">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="37vLTw" id="a8" role="2Oq$k0">
              <ref role="3cqZAo" node="8j" resolve="myMembers" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="liA8E" id="a9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="37vLTw" id="aa" role="37wK5m">
                <ref role="3cqZAo" node="9V" resolve="index" />
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="9Q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="ab">
    <property role="3GE5qa" value="where" />
    <property role="TrG5h" value="EnumerationDescriptor_Operator" />
    <uo k="s:originTrace" v="n:1229499084499783673" />
    <node concept="2tJIrI" id="ac" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFbW" id="ad" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3cqZAl" id="a_" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3Tm1VV" id="aA" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3clFbS" id="aB" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="XkiVB" id="aC" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="1adDum" id="aD" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="aE" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="aF" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ff9L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="aG" role="37wK5m">
            <property role="Xl_RC" value="Operator" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="aH" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783673" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ae" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="312cEg" id="af" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_EQUALS_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="aI" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="aJ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="aK" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="aL" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="aM" role="37wK5m">
            <property role="Xl_RC" value="EQUALS" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="aN" role="37wK5m">
            <property role="Xl_RC" value="=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="aO" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ffaL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="aP" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783674" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ag" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_GREATER_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="aQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="aR" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="aS" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="aT" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="aU" role="37wK5m">
            <property role="Xl_RC" value="GREATER" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="aV" role="37wK5m">
            <property role="Xl_RC" value="&gt;" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="aW" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ffcL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="aX" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783676" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ah" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LOWER_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="aY" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="aZ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="b0" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="b1" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="b2" role="37wK5m">
            <property role="Xl_RC" value="LOWER" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="b3" role="37wK5m">
            <property role="Xl_RC" value="&lt;" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="b4" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471008L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="b5" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783688" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ai" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_GREATER_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="b6" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="b7" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="b8" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="b9" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="ba" role="37wK5m">
            <property role="Xl_RC" value="GREATER_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bb" role="37wK5m">
            <property role="Xl_RC" value="&gt;=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="bc" role="37wK5m">
            <property role="1adDun" value="0x11100ee73747100dL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bd" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783693" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="aj" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LOWER_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="be" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="bf" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="bg" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="bh" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="bi" role="37wK5m">
            <property role="Xl_RC" value="LOWER_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bj" role="37wK5m">
            <property role="Xl_RC" value="&lt;=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="bk" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471013L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bl" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783699" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ak" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_NOT_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="bm" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="bn" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="bo" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="bp" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="bq" role="37wK5m">
            <property role="Xl_RC" value="NOT_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="br" role="37wK5m">
            <property role="Xl_RC" value="!=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="bs" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471019L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bt" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783705" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="al" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_BETWEEN_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="bu" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="bv" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="bw" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="bx" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="by" role="37wK5m">
            <property role="Xl_RC" value="BETWEEN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bz" role="37wK5m">
            <property role="Xl_RC" value="BETWEEN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="b$" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471021L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="b_" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783713" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="am" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LIKE_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="bA" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="bB" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="bC" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="bD" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="bE" role="37wK5m">
            <property role="Xl_RC" value="LIKE" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bF" role="37wK5m">
            <property role="Xl_RC" value="LIKE" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="bG" role="37wK5m">
            <property role="1adDun" value="0x11100ee73747102aL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bH" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783722" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="an" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_IN_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="bI" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="bJ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="bK" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="bL" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="bM" role="37wK5m">
            <property role="Xl_RC" value="IN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bN" role="37wK5m">
            <property role="Xl_RC" value="IN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="bO" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471034L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="bP" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783732" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="ao" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3uibUv" id="ap" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="2tJIrI" id="aq" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="312cEg" id="ar" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="bQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="bR" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2YIFZM" id="bS" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1adDum" id="bT" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="bU" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="bV" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ff9L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="bW" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ffaL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="bX" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ffcL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="bY" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471008L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="bZ" role="37wK5m">
          <property role="1adDun" value="0x11100ee73747100dL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="c0" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471013L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="c1" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471019L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="c2" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471021L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="c3" role="37wK5m">
          <property role="1adDun" value="0x11100ee73747102aL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="c4" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471034L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="as" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="c5" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="c6" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="c8" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="2ShNRf" id="c7" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="c9" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="ca" role="37wK5m">
            <ref role="3cqZAo" node="ar" resolve="myIndex" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="cb" role="37wK5m">
            <ref role="3cqZAo" node="af" resolve="myMember_EQUALS_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="cc" role="37wK5m">
            <ref role="3cqZAo" node="ag" resolve="myMember_GREATER_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="cd" role="37wK5m">
            <ref role="3cqZAo" node="ah" resolve="myMember_LOWER_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="ce" role="37wK5m">
            <ref role="3cqZAo" node="ai" resolve="myMember_GREATER_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="cf" role="37wK5m">
            <ref role="3cqZAo" node="aj" resolve="myMember_LOWER_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="cg" role="37wK5m">
            <ref role="3cqZAo" node="ak" resolve="myMember_NOT_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="ch" role="37wK5m">
            <ref role="3cqZAo" node="al" resolve="myMember_BETWEEN_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="ci" role="37wK5m">
            <ref role="3cqZAo" node="am" resolve="myMember_LIKE_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="cj" role="37wK5m">
            <ref role="3cqZAo" node="an" resolve="myMember_IN_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="at" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="au" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="ck" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="cl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="cm" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3clFbS" id="cn" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3clFbF" id="cp" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="10Nm6u" id="cq" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="co" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="av" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="aw" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="cr" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="cs" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="ct" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="cw" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="cu" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWs6" id="cx" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="cy" role="3cqZAk">
            <ref role="3cqZAo" node="as" resolve="myMembers" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="cv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="ax" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="ay" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="cz" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="c$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="c_" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="37vLTG" id="cA" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="cD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="2AHcQZ" id="cE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="cB" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3clFbJ" id="cF" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3clFbS" id="cI" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cpWs6" id="cK" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="10Nm6u" id="cL" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="cJ" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="10Nm6u" id="cM" role="3uHU7w">
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="37vLTw" id="cN" role="3uHU7B">
              <ref role="3cqZAo" node="cA" resolve="memberName" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="cG" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="cO" role="3KbGdf">
            <ref role="3cqZAo" node="cA" resolve="memberName" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="3KbdKl" id="cP" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="cY" role="3Kbmr1">
              <property role="Xl_RC" value="EQUALS" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="cZ" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="d0" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="d1" role="3cqZAk">
                  <ref role="3cqZAo" node="af" resolve="myMember_EQUALS_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cQ" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="d2" role="3Kbmr1">
              <property role="Xl_RC" value="GREATER" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="d3" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="d4" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="d5" role="3cqZAk">
                  <ref role="3cqZAo" node="ag" resolve="myMember_GREATER_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cR" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="d6" role="3Kbmr1">
              <property role="Xl_RC" value="LOWER" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="d7" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="d8" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="d9" role="3cqZAk">
                  <ref role="3cqZAo" node="ah" resolve="myMember_LOWER_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cS" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="da" role="3Kbmr1">
              <property role="Xl_RC" value="GREATER_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="db" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="dc" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dd" role="3cqZAk">
                  <ref role="3cqZAo" node="ai" resolve="myMember_GREATER_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cT" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="de" role="3Kbmr1">
              <property role="Xl_RC" value="LOWER_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="df" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="dg" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dh" role="3cqZAk">
                  <ref role="3cqZAo" node="aj" resolve="myMember_LOWER_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cU" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="di" role="3Kbmr1">
              <property role="Xl_RC" value="NOT_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="dj" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="dk" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dl" role="3cqZAk">
                  <ref role="3cqZAo" node="ak" resolve="myMember_NOT_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cV" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="dm" role="3Kbmr1">
              <property role="Xl_RC" value="BETWEEN" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="dn" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="do" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dp" role="3cqZAk">
                  <ref role="3cqZAo" node="al" resolve="myMember_BETWEEN_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cW" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="dq" role="3Kbmr1">
              <property role="Xl_RC" value="LIKE" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="dr" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="ds" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dt" role="3cqZAk">
                  <ref role="3cqZAo" node="am" resolve="myMember_LIKE_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="cX" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="du" role="3Kbmr1">
              <property role="Xl_RC" value="IN" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="dv" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="dw" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dx" role="3cqZAk">
                  <ref role="3cqZAo" node="an" resolve="myMember_IN_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="cH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="10Nm6u" id="dy" role="3cqZAk">
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="cC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="az" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="a$" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="dz" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="d$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="d_" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="37vLTG" id="dA" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWsb" id="dD" role="1tU5fm">
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="dB" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWs8" id="dE" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3cpWsn" id="dH" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="10Oyi0" id="dI" role="1tU5fm">
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="2OqwBi" id="dJ" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="37vLTw" id="dK" role="2Oq$k0">
                <ref role="3cqZAo" node="ar" resolve="myIndex" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
              <node concept="liA8E" id="dL" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="dM" role="37wK5m">
                  <ref role="3cqZAo" node="dA" resolve="idValue" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="dF" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3clFbS" id="dN" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cpWs6" id="dP" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="10Nm6u" id="dQ" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="dO" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cmrfG" id="dR" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="37vLTw" id="dS" role="3uHU7B">
              <ref role="3cqZAo" node="dH" resolve="index" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dG" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="2OqwBi" id="dT" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="37vLTw" id="dU" role="2Oq$k0">
              <ref role="3cqZAo" node="as" resolve="myMembers" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="liA8E" id="dV" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="37vLTw" id="dW" role="37wK5m">
                <ref role="3cqZAo" node="dH" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="dX">
    <property role="3GE5qa" value="value" />
    <property role="TrG5h" value="EnumerationDescriptor_Type" />
    <uo k="s:originTrace" v="n:1229499084499598137" />
    <node concept="2tJIrI" id="dY" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFbW" id="dZ" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3cqZAl" id="ei" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3Tm1VV" id="ej" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3clFbS" id="ek" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="XkiVB" id="el" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="1adDum" id="em" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="en" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="eo" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b39L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="ep" role="37wK5m">
            <property role="Xl_RC" value="Type" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eq" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598137" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="e0" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="312cEg" id="e1" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Integer_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="er" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="es" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="et" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="eu" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="ev" role="37wK5m">
            <property role="Xl_RC" value="Integer" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="ew" role="37wK5m">
            <property role="Xl_RC" value="Integer" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="ex" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3aL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="ey" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598138" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e2" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_String_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="ez" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="e$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="e_" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="eA" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="eB" role="37wK5m">
            <property role="Xl_RC" value="String" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eC" role="37wK5m">
            <property role="Xl_RC" value="String" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="eD" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3bL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eE" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598139" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Date_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="eF" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="eG" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="eH" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="eI" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="eJ" role="37wK5m">
            <property role="Xl_RC" value="Date" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eK" role="37wK5m">
            <property role="Xl_RC" value="Date" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="eL" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3fL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eM" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598143" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e4" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Float_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="eN" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="eO" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="eP" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="eQ" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="eR" role="37wK5m">
            <property role="Xl_RC" value="Float" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eS" role="37wK5m">
            <property role="Xl_RC" value="Float" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="eT" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b43L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="eU" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598147" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="e5" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3uibUv" id="e6" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="2tJIrI" id="e7" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="312cEg" id="e8" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="eV" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="eW" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2YIFZM" id="eX" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1adDum" id="eY" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="eZ" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="f0" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b39L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="f1" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3aL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="f2" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3bL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="f3" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3fL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="f4" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b43L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e9" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="f5" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="f6" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="f8" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="2ShNRf" id="f7" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="f9" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="fa" role="37wK5m">
            <ref role="3cqZAo" node="e8" resolve="myIndex" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="fb" role="37wK5m">
            <ref role="3cqZAo" node="e1" resolve="myMember_Integer_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="fc" role="37wK5m">
            <ref role="3cqZAo" node="e2" resolve="myMember_String_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="fd" role="37wK5m">
            <ref role="3cqZAo" node="e3" resolve="myMember_Date_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="fe" role="37wK5m">
            <ref role="3cqZAo" node="e4" resolve="myMember_Float_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ea" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="eb" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="ff" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="fg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="fh" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3clFbS" id="fi" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3clFbF" id="fk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="10Nm6u" id="fl" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="ec" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="ed" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="fm" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="fn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="fo" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="fr" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="fp" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWs6" id="fs" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="ft" role="3cqZAk">
            <ref role="3cqZAo" node="e9" resolve="myMembers" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="ee" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="ef" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="fu" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="fv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="fw" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="37vLTG" id="fx" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="f$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="2AHcQZ" id="f_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="fy" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3clFbJ" id="fA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3clFbS" id="fD" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cpWs6" id="fF" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="10Nm6u" id="fG" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="fE" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="10Nm6u" id="fH" role="3uHU7w">
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="37vLTw" id="fI" role="3uHU7B">
              <ref role="3cqZAo" node="fx" resolve="memberName" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="fB" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="fJ" role="3KbGdf">
            <ref role="3cqZAo" node="fx" resolve="memberName" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="3KbdKl" id="fK" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="fO" role="3Kbmr1">
              <property role="Xl_RC" value="Integer" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="fP" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="fQ" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="fR" role="3cqZAk">
                  <ref role="3cqZAo" node="e1" resolve="myMember_Integer_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="fL" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="fS" role="3Kbmr1">
              <property role="Xl_RC" value="String" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="fT" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="fU" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="fV" role="3cqZAk">
                  <ref role="3cqZAo" node="e2" resolve="myMember_String_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="fM" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="fW" role="3Kbmr1">
              <property role="Xl_RC" value="Date" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="fX" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="fY" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="fZ" role="3cqZAk">
                  <ref role="3cqZAo" node="e3" resolve="myMember_Date_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="fN" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="g0" role="3Kbmr1">
              <property role="Xl_RC" value="Float" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="g1" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="g2" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="g3" role="3cqZAk">
                  <ref role="3cqZAo" node="e4" resolve="myMember_Float_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="fC" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="10Nm6u" id="g4" role="3cqZAk">
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="eg" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="eh" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="g5" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="g6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="g7" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="37vLTG" id="g8" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWsb" id="gb" role="1tU5fm">
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="g9" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWs8" id="gc" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3cpWsn" id="gf" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="10Oyi0" id="gg" role="1tU5fm">
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="2OqwBi" id="gh" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="37vLTw" id="gi" role="2Oq$k0">
                <ref role="3cqZAo" node="e8" resolve="myIndex" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
              <node concept="liA8E" id="gj" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="gk" role="37wK5m">
                  <ref role="3cqZAo" node="g8" resolve="idValue" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="gd" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3clFbS" id="gl" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cpWs6" id="gn" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="10Nm6u" id="go" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="gm" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cmrfG" id="gp" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="37vLTw" id="gq" role="3uHU7B">
              <ref role="3cqZAo" node="gf" resolve="index" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ge" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="2OqwBi" id="gr" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="37vLTw" id="gs" role="2Oq$k0">
              <ref role="3cqZAo" node="e9" resolve="myMembers" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="liA8E" id="gt" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="37vLTw" id="gu" role="37wK5m">
                <ref role="3cqZAo" node="gf" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ga" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="gv">
    <node concept="39e2AJ" id="gw" role="39e2AI">
      <property role="39e3Y2" value="EnumerationDescriptorCons" />
      <node concept="39e2AG" id="g$" role="39e3Y0">
        <ref role="39e2AK" to="p6im:2fooeIVv2qq" resolve="ConditionOperator" />
        <node concept="385nmt" id="gB" role="385vvn">
          <property role="385vuF" value="ConditionOperator" />
          <node concept="3u3nmq" id="gD" role="385v07">
            <property role="3u3nmv" value="2582920951876036250" />
          </node>
        </node>
        <node concept="39e2AT" id="gC" role="39e2AY">
          <ref role="39e2AS" node="8b" resolve="EnumerationDescriptor_ConditionOperator" />
        </node>
      </node>
      <node concept="39e2AG" id="g_" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZT" resolve="Operator" />
        <node concept="385nmt" id="gE" role="385vvn">
          <property role="385vuF" value="Operator" />
          <node concept="3u3nmq" id="gG" role="385v07">
            <property role="3u3nmv" value="1229499084499783673" />
          </node>
        </node>
        <node concept="39e2AT" id="gF" role="39e2AY">
          <ref role="39e2AS" node="ad" resolve="EnumerationDescriptor_Operator" />
        </node>
      </node>
      <node concept="39e2AG" id="gA" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GT" resolve="Type" />
        <node concept="385nmt" id="gH" role="385vvn">
          <property role="385vuF" value="Type" />
          <node concept="3u3nmq" id="gJ" role="385v07">
            <property role="3u3nmv" value="1229499084499598137" />
          </node>
        </node>
        <node concept="39e2AT" id="gI" role="39e2AY">
          <ref role="39e2AS" node="dZ" resolve="EnumerationDescriptor_Type" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gx" role="39e2AI">
      <property role="39e3Y2" value="EnumerationMember" />
      <node concept="39e2AG" id="gK" role="39e3Y0">
        <ref role="39e2AK" to="p6im:2fooeIVv2qr" resolve="AND" />
        <node concept="385nmt" id="gZ" role="385vvn">
          <property role="385vuF" value="AND" />
          <node concept="3u3nmq" id="h1" role="385v07">
            <property role="3u3nmv" value="2582920951876036251" />
          </node>
        </node>
        <node concept="39e2AT" id="h0" role="39e2AY">
          <ref role="39e2AS" node="8d" resolve="myMember_AND_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gL" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0x" resolve="BETWEEN" />
        <node concept="385nmt" id="h2" role="385vvn">
          <property role="385vuF" value="BETWEEN" />
          <node concept="3u3nmq" id="h4" role="385v07">
            <property role="3u3nmv" value="1229499084499783713" />
          </node>
        </node>
        <node concept="39e2AT" id="h3" role="39e2AY">
          <ref role="39e2AS" node="al" resolve="myMember_BETWEEN_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gM" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GZ" resolve="Date" />
        <node concept="385nmt" id="h5" role="385vvn">
          <property role="385vuF" value="Date" />
          <node concept="3u3nmq" id="h7" role="385v07">
            <property role="3u3nmv" value="1229499084499598143" />
          </node>
        </node>
        <node concept="39e2AT" id="h6" role="39e2AY">
          <ref role="39e2AS" node="e3" resolve="myMember_Date_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gN" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZU" resolve="EQUALS" />
        <node concept="385nmt" id="h8" role="385vvn">
          <property role="385vuF" value="EQUALS" />
          <node concept="3u3nmq" id="ha" role="385v07">
            <property role="3u3nmv" value="1229499084499783674" />
          </node>
        </node>
        <node concept="39e2AT" id="h9" role="39e2AY">
          <ref role="39e2AS" node="af" resolve="myMember_EQUALS_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gO" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3H3" resolve="Float" />
        <node concept="385nmt" id="hb" role="385vvn">
          <property role="385vuF" value="Float" />
          <node concept="3u3nmq" id="hd" role="385v07">
            <property role="3u3nmv" value="1229499084499598147" />
          </node>
        </node>
        <node concept="39e2AT" id="hc" role="39e2AY">
          <ref role="39e2AS" node="e4" resolve="myMember_Float_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gP" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZW" resolve="GREATER" />
        <node concept="385nmt" id="he" role="385vvn">
          <property role="385vuF" value="GREATER" />
          <node concept="3u3nmq" id="hg" role="385v07">
            <property role="3u3nmv" value="1229499084499783676" />
          </node>
        </node>
        <node concept="39e2AT" id="hf" role="39e2AY">
          <ref role="39e2AS" node="ag" resolve="myMember_GREATER_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gQ" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0d" resolve="GREATER_EQUAL" />
        <node concept="385nmt" id="hh" role="385vvn">
          <property role="385vuF" value="GREATER_EQUAL" />
          <node concept="3u3nmq" id="hj" role="385v07">
            <property role="3u3nmv" value="1229499084499783693" />
          </node>
        </node>
        <node concept="39e2AT" id="hi" role="39e2AY">
          <ref role="39e2AS" node="ai" resolve="myMember_GREATER_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gR" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0O" resolve="IN" />
        <node concept="385nmt" id="hk" role="385vvn">
          <property role="385vuF" value="IN" />
          <node concept="3u3nmq" id="hm" role="385v07">
            <property role="3u3nmv" value="1229499084499783732" />
          </node>
        </node>
        <node concept="39e2AT" id="hl" role="39e2AY">
          <ref role="39e2AS" node="an" resolve="myMember_IN_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gS" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GU" resolve="Integer" />
        <node concept="385nmt" id="hn" role="385vvn">
          <property role="385vuF" value="Integer" />
          <node concept="3u3nmq" id="hp" role="385v07">
            <property role="3u3nmv" value="1229499084499598138" />
          </node>
        </node>
        <node concept="39e2AT" id="ho" role="39e2AY">
          <ref role="39e2AS" node="e1" resolve="myMember_Integer_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gT" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0E" resolve="LIKE" />
        <node concept="385nmt" id="hq" role="385vvn">
          <property role="385vuF" value="LIKE" />
          <node concept="3u3nmq" id="hs" role="385v07">
            <property role="3u3nmv" value="1229499084499783722" />
          </node>
        </node>
        <node concept="39e2AT" id="hr" role="39e2AY">
          <ref role="39e2AS" node="am" resolve="myMember_LIKE_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gU" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL08" resolve="LOWER" />
        <node concept="385nmt" id="ht" role="385vvn">
          <property role="385vuF" value="LOWER" />
          <node concept="3u3nmq" id="hv" role="385v07">
            <property role="3u3nmv" value="1229499084499783688" />
          </node>
        </node>
        <node concept="39e2AT" id="hu" role="39e2AY">
          <ref role="39e2AS" node="ah" resolve="myMember_LOWER_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gV" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0j" resolve="LOWER_EQUAL" />
        <node concept="385nmt" id="hw" role="385vvn">
          <property role="385vuF" value="LOWER_EQUAL" />
          <node concept="3u3nmq" id="hy" role="385v07">
            <property role="3u3nmv" value="1229499084499783699" />
          </node>
        </node>
        <node concept="39e2AT" id="hx" role="39e2AY">
          <ref role="39e2AS" node="aj" resolve="myMember_LOWER_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gW" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0p" resolve="NOT_EQUAL" />
        <node concept="385nmt" id="hz" role="385vvn">
          <property role="385vuF" value="NOT_EQUAL" />
          <node concept="3u3nmq" id="h_" role="385v07">
            <property role="3u3nmv" value="1229499084499783705" />
          </node>
        </node>
        <node concept="39e2AT" id="h$" role="39e2AY">
          <ref role="39e2AS" node="ak" resolve="myMember_NOT_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gX" role="39e3Y0">
        <ref role="39e2AK" to="p6im:2fooeIVv2qs" resolve="OR" />
        <node concept="385nmt" id="hA" role="385vvn">
          <property role="385vuF" value="OR" />
          <node concept="3u3nmq" id="hC" role="385v07">
            <property role="3u3nmv" value="2582920951876036252" />
          </node>
        </node>
        <node concept="39e2AT" id="hB" role="39e2AY">
          <ref role="39e2AS" node="8e" resolve="myMember_OR_0" />
        </node>
      </node>
      <node concept="39e2AG" id="gY" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GV" resolve="String" />
        <node concept="385nmt" id="hD" role="385vvn">
          <property role="385vuF" value="String" />
          <node concept="3u3nmq" id="hF" role="385v07">
            <property role="3u3nmv" value="1229499084499598139" />
          </node>
        </node>
        <node concept="39e2AT" id="hE" role="39e2AY">
          <ref role="39e2AS" node="e2" resolve="myMember_String_0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gy" role="39e2AI">
      <property role="39e3Y2" value="ConceptPresentationAspectClass" />
      <node concept="39e2AG" id="hG" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="hH" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptPresentationAspectImpl" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gz" role="39e2AI">
      <property role="39e3Y2" value="StructureAspectDescriptorCons" />
      <node concept="39e2AG" id="hI" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="hJ" role="39e2AY">
          <ref role="39e2AS" node="lx" resolve="StructureAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hK">
    <property role="TrG5h" value="LanguageConceptSwitch" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="hL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="ia" role="1B3o_S" />
      <node concept="3uibUv" id="ib" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~LanguageConceptIndex" resolve="LanguageConceptIndex" />
      </node>
    </node>
    <node concept="Wx3nA" id="hM" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Column" />
      <node concept="3Tm1VV" id="ic" role="1B3o_S" />
      <node concept="10Oyi0" id="id" role="1tU5fm" />
      <node concept="3cmrfG" id="ie" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="hN" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ColumnRef" />
      <node concept="3Tm1VV" id="if" role="1B3o_S" />
      <node concept="10Oyi0" id="ig" role="1tU5fm" />
      <node concept="3cmrfG" id="ih" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="hO" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Condition" />
      <node concept="3Tm1VV" id="ii" role="1B3o_S" />
      <node concept="10Oyi0" id="ij" role="1tU5fm" />
      <node concept="3cmrfG" id="ik" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="Wx3nA" id="hP" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ConditionSet" />
      <node concept="3Tm1VV" id="il" role="1B3o_S" />
      <node concept="10Oyi0" id="im" role="1tU5fm" />
      <node concept="3cmrfG" id="in" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="hQ" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ConditionsSequence" />
      <node concept="3Tm1VV" id="io" role="1B3o_S" />
      <node concept="10Oyi0" id="ip" role="1tU5fm" />
      <node concept="3cmrfG" id="iq" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="hR" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CreateTable" />
      <node concept="3Tm1VV" id="ir" role="1B3o_S" />
      <node concept="10Oyi0" id="is" role="1tU5fm" />
      <node concept="3cmrfG" id="it" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="Wx3nA" id="hS" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="DBOperation" />
      <node concept="3Tm1VV" id="iu" role="1B3o_S" />
      <node concept="10Oyi0" id="iv" role="1tU5fm" />
      <node concept="3cmrfG" id="iw" role="33vP2m">
        <property role="3cmrfH" value="6" />
      </node>
    </node>
    <node concept="Wx3nA" id="hT" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Delete" />
      <node concept="3Tm1VV" id="ix" role="1B3o_S" />
      <node concept="10Oyi0" id="iy" role="1tU5fm" />
      <node concept="3cmrfG" id="iz" role="33vP2m">
        <property role="3cmrfH" value="7" />
      </node>
    </node>
    <node concept="Wx3nA" id="hU" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="GroupBy" />
      <node concept="3Tm1VV" id="i$" role="1B3o_S" />
      <node concept="10Oyi0" id="i_" role="1tU5fm" />
      <node concept="3cmrfG" id="iA" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="Wx3nA" id="hV" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="InsertInto" />
      <node concept="3Tm1VV" id="iB" role="1B3o_S" />
      <node concept="10Oyi0" id="iC" role="1tU5fm" />
      <node concept="3cmrfG" id="iD" role="33vP2m">
        <property role="3cmrfH" value="9" />
      </node>
    </node>
    <node concept="Wx3nA" id="hW" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OrderBy" />
      <node concept="3Tm1VV" id="iE" role="1B3o_S" />
      <node concept="10Oyi0" id="iF" role="1tU5fm" />
      <node concept="3cmrfG" id="iG" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="Wx3nA" id="hX" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Script" />
      <node concept="3Tm1VV" id="iH" role="1B3o_S" />
      <node concept="10Oyi0" id="iI" role="1tU5fm" />
      <node concept="3cmrfG" id="iJ" role="33vP2m">
        <property role="3cmrfH" value="11" />
      </node>
    </node>
    <node concept="Wx3nA" id="hY" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Select" />
      <node concept="3Tm1VV" id="iK" role="1B3o_S" />
      <node concept="10Oyi0" id="iL" role="1tU5fm" />
      <node concept="3cmrfG" id="iM" role="33vP2m">
        <property role="3cmrfH" value="12" />
      </node>
    </node>
    <node concept="Wx3nA" id="hZ" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Statement" />
      <node concept="3Tm1VV" id="iN" role="1B3o_S" />
      <node concept="10Oyi0" id="iO" role="1tU5fm" />
      <node concept="3cmrfG" id="iP" role="33vP2m">
        <property role="3cmrfH" value="13" />
      </node>
    </node>
    <node concept="Wx3nA" id="i0" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Update" />
      <node concept="3Tm1VV" id="iQ" role="1B3o_S" />
      <node concept="10Oyi0" id="iR" role="1tU5fm" />
      <node concept="3cmrfG" id="iS" role="33vP2m">
        <property role="3cmrfH" value="14" />
      </node>
    </node>
    <node concept="Wx3nA" id="i1" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Value" />
      <node concept="3Tm1VV" id="iT" role="1B3o_S" />
      <node concept="10Oyi0" id="iU" role="1tU5fm" />
      <node concept="3cmrfG" id="iV" role="33vP2m">
        <property role="3cmrfH" value="15" />
      </node>
    </node>
    <node concept="Wx3nA" id="i2" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Where" />
      <node concept="3Tm1VV" id="iW" role="1B3o_S" />
      <node concept="10Oyi0" id="iX" role="1tU5fm" />
      <node concept="3cmrfG" id="iY" role="33vP2m">
        <property role="3cmrfH" value="16" />
      </node>
    </node>
    <node concept="2tJIrI" id="i3" role="jymVt" />
    <node concept="3clFbW" id="i4" role="jymVt">
      <node concept="3cqZAl" id="iZ" role="3clF45" />
      <node concept="3Tm1VV" id="j0" role="1B3o_S" />
      <node concept="3clFbS" id="j1" role="3clF47">
        <node concept="3cpWs8" id="j2" role="3cqZAp">
          <node concept="3cpWsn" id="jl" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="jm" role="1tU5fm">
              <ref role="3uigEE" to="ksn4:~LanguageConceptIndexBuilder" resolve="LanguageConceptIndexBuilder" />
            </node>
            <node concept="2ShNRf" id="jn" role="33vP2m">
              <node concept="1pGfFk" id="jo" role="2ShVmc">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.&lt;init&gt;(long,long)" resolve="LanguageConceptIndexBuilder" />
                <node concept="1adDum" id="jp" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="jq" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j3" role="3cqZAp">
          <node concept="2OqwBi" id="jr" role="3clFbG">
            <node concept="37vLTw" id="js" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jt" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="ju" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b33L" />
              </node>
              <node concept="37vLTw" id="jv" role="37wK5m">
                <ref role="3cqZAo" node="hM" resolve="Column" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j4" role="3cqZAp">
          <node concept="2OqwBi" id="jw" role="3clFbG">
            <node concept="37vLTw" id="jx" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jy" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="jz" role="37wK5m">
                <property role="1adDun" value="0x11100ee7375157f4L" />
              </node>
              <node concept="37vLTw" id="j$" role="37wK5m">
                <ref role="3cqZAo" node="hN" resolve="ColumnRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j5" role="3cqZAp">
          <node concept="2OqwBi" id="j_" role="3clFbG">
            <node concept="37vLTw" id="jA" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jB" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="jC" role="37wK5m">
                <property role="1adDun" value="0x11100ee737470ff3L" />
              </node>
              <node concept="37vLTw" id="jD" role="37wK5m">
                <ref role="3cqZAo" node="hO" resolve="Condition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j6" role="3cqZAp">
          <node concept="2OqwBi" id="jE" role="3clFbG">
            <node concept="37vLTw" id="jF" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jG" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="jH" role="37wK5m">
                <property role="1adDun" value="0x23d860ebbb86c06cL" />
              </node>
              <node concept="37vLTw" id="jI" role="37wK5m">
                <ref role="3cqZAo" node="hP" resolve="ConditionSet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j7" role="3cqZAp">
          <node concept="2OqwBi" id="jJ" role="3clFbG">
            <node concept="37vLTw" id="jK" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jL" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="jM" role="37wK5m">
                <property role="1adDun" value="0x23d860ebbb7c2695L" />
              </node>
              <node concept="37vLTw" id="jN" role="37wK5m">
                <ref role="3cqZAo" node="hQ" resolve="ConditionsSequence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j8" role="3cqZAp">
          <node concept="2OqwBi" id="jO" role="3clFbG">
            <node concept="37vLTw" id="jP" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jQ" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="jR" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b2eL" />
              </node>
              <node concept="37vLTw" id="jS" role="37wK5m">
                <ref role="3cqZAo" node="hR" resolve="CreateTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j9" role="3cqZAp">
          <node concept="2OqwBi" id="jT" role="3clFbG">
            <node concept="37vLTw" id="jU" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="jV" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="jW" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
              <node concept="37vLTw" id="jX" role="37wK5m">
                <ref role="3cqZAo" node="hS" resolve="DBOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ja" role="3cqZAp">
          <node concept="2OqwBi" id="jY" role="3clFbG">
            <node concept="37vLTw" id="jZ" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="k0" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="k1" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa642699L" />
              </node>
              <node concept="37vLTw" id="k2" role="37wK5m">
                <ref role="3cqZAo" node="hT" resolve="Delete" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jb" role="3cqZAp">
          <node concept="2OqwBi" id="k3" role="3clFbG">
            <node concept="37vLTw" id="k4" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="k5" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="k6" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa6a16ceL" />
              </node>
              <node concept="37vLTw" id="k7" role="37wK5m">
                <ref role="3cqZAo" node="hU" resolve="GroupBy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jc" role="3cqZAp">
          <node concept="2OqwBi" id="k8" role="3clFbG">
            <node concept="37vLTw" id="k9" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="ka" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kb" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f1c72c8L" />
              </node>
              <node concept="37vLTw" id="kc" role="37wK5m">
                <ref role="3cqZAo" node="hV" resolve="InsertInto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jd" role="3cqZAp">
          <node concept="2OqwBi" id="kd" role="3clFbG">
            <node concept="37vLTw" id="ke" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="kf" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kg" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa61e251L" />
              </node>
              <node concept="37vLTw" id="kh" role="37wK5m">
                <ref role="3cqZAo" node="hW" resolve="OrderBy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="je" role="3cqZAp">
          <node concept="2OqwBi" id="ki" role="3clFbG">
            <node concept="37vLTw" id="kj" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="kk" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kl" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443bcdL" />
              </node>
              <node concept="37vLTw" id="km" role="37wK5m">
                <ref role="3cqZAo" node="hX" resolve="Script" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jf" role="3cqZAp">
          <node concept="2OqwBi" id="kn" role="3clFbG">
            <node concept="37vLTw" id="ko" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="kp" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kq" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e379L" />
              </node>
              <node concept="37vLTw" id="kr" role="37wK5m">
                <ref role="3cqZAo" node="hY" resolve="Select" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jg" role="3cqZAp">
          <node concept="2OqwBi" id="ks" role="3clFbG">
            <node concept="37vLTw" id="kt" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="ku" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kv" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
              <node concept="37vLTw" id="kw" role="37wK5m">
                <ref role="3cqZAo" node="hZ" resolve="Statement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jh" role="3cqZAp">
          <node concept="2OqwBi" id="kx" role="3clFbG">
            <node concept="37vLTw" id="ky" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="kz" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="k$" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f23853fL" />
              </node>
              <node concept="37vLTw" id="k_" role="37wK5m">
                <ref role="3cqZAo" node="i0" resolve="Update" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ji" role="3cqZAp">
          <node concept="2OqwBi" id="kA" role="3clFbG">
            <node concept="37vLTw" id="kB" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="kC" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kD" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f1cc88bL" />
              </node>
              <node concept="37vLTw" id="kE" role="37wK5m">
                <ref role="3cqZAo" node="i1" resolve="Value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jj" role="3cqZAp">
          <node concept="2OqwBi" id="kF" role="3clFbG">
            <node concept="37vLTw" id="kG" role="2Oq$k0">
              <ref role="3cqZAo" node="jl" resolve="builder" />
            </node>
            <node concept="liA8E" id="kH" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="kI" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e37bL" />
              </node>
              <node concept="37vLTw" id="kJ" role="37wK5m">
                <ref role="3cqZAo" node="i2" resolve="Where" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jk" role="3cqZAp">
          <node concept="37vLTI" id="kK" role="3clFbG">
            <node concept="2OqwBi" id="kL" role="37vLTx">
              <node concept="37vLTw" id="kN" role="2Oq$k0">
                <ref role="3cqZAo" node="jl" resolve="builder" />
              </node>
              <node concept="liA8E" id="kO" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.seal()" resolve="seal" />
              </node>
            </node>
            <node concept="37vLTw" id="kM" role="37vLTJ">
              <ref role="3cqZAo" node="hL" resolve="myIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="i5" role="jymVt" />
    <node concept="3clFb_" id="i6" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="kP" role="3clF45" />
      <node concept="3clFbS" id="kQ" role="3clF47">
        <node concept="3cpWs6" id="kS" role="3cqZAp">
          <node concept="2OqwBi" id="kT" role="3cqZAk">
            <node concept="37vLTw" id="kU" role="2Oq$k0">
              <ref role="3cqZAo" node="hL" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="kV" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="index" />
              <node concept="37vLTw" id="kW" role="37wK5m">
                <ref role="3cqZAo" node="kR" resolve="cid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="kR" role="3clF46">
        <property role="TrG5h" value="cid" />
        <node concept="3uibUv" id="kX" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="i7" role="jymVt" />
    <node concept="3clFb_" id="i8" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="kY" role="3clF45" />
      <node concept="3Tm1VV" id="kZ" role="1B3o_S" />
      <node concept="3clFbS" id="l0" role="3clF47">
        <node concept="3cpWs6" id="l2" role="3cqZAp">
          <node concept="2OqwBi" id="l3" role="3cqZAk">
            <node concept="37vLTw" id="l4" role="2Oq$k0">
              <ref role="3cqZAo" node="hL" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="l5" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <node concept="37vLTw" id="l6" role="37wK5m">
                <ref role="3cqZAo" node="l1" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="l1" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="l7" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="i9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="l8">
    <property role="TrG5h" value="StructureAspectDescriptor" />
    <node concept="3uibUv" id="l9" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseStructureAspectDescriptor" resolve="BaseStructureAspectDescriptor" />
    </node>
    <node concept="312cEg" id="la" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptColumn" />
      <node concept="3uibUv" id="lZ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="m0" role="33vP2m">
        <ref role="37wK5l" node="lI" resolve="createDescriptorForColumn" />
      </node>
    </node>
    <node concept="312cEg" id="lb" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptColumnRef" />
      <node concept="3uibUv" id="m1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="m2" role="33vP2m">
        <ref role="37wK5l" node="lJ" resolve="createDescriptorForColumnRef" />
      </node>
    </node>
    <node concept="312cEg" id="lc" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCondition" />
      <node concept="3uibUv" id="m3" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="m4" role="33vP2m">
        <ref role="37wK5l" node="lK" resolve="createDescriptorForCondition" />
      </node>
    </node>
    <node concept="312cEg" id="ld" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptConditionSet" />
      <node concept="3uibUv" id="m5" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="m6" role="33vP2m">
        <ref role="37wK5l" node="lL" resolve="createDescriptorForConditionSet" />
      </node>
    </node>
    <node concept="312cEg" id="le" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptConditionsSequence" />
      <node concept="3uibUv" id="m7" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="m8" role="33vP2m">
        <ref role="37wK5l" node="lM" resolve="createDescriptorForConditionsSequence" />
      </node>
    </node>
    <node concept="312cEg" id="lf" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCreateTable" />
      <node concept="3uibUv" id="m9" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ma" role="33vP2m">
        <ref role="37wK5l" node="lN" resolve="createDescriptorForCreateTable" />
      </node>
    </node>
    <node concept="312cEg" id="lg" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptDBOperation" />
      <node concept="3uibUv" id="mb" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mc" role="33vP2m">
        <ref role="37wK5l" node="lO" resolve="createDescriptorForDBOperation" />
      </node>
    </node>
    <node concept="312cEg" id="lh" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptDelete" />
      <node concept="3uibUv" id="md" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="me" role="33vP2m">
        <ref role="37wK5l" node="lP" resolve="createDescriptorForDelete" />
      </node>
    </node>
    <node concept="312cEg" id="li" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptGroupBy" />
      <node concept="3uibUv" id="mf" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mg" role="33vP2m">
        <ref role="37wK5l" node="lQ" resolve="createDescriptorForGroupBy" />
      </node>
    </node>
    <node concept="312cEg" id="lj" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptInsertInto" />
      <node concept="3uibUv" id="mh" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mi" role="33vP2m">
        <ref role="37wK5l" node="lR" resolve="createDescriptorForInsertInto" />
      </node>
    </node>
    <node concept="312cEg" id="lk" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptOrderBy" />
      <node concept="3uibUv" id="mj" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mk" role="33vP2m">
        <ref role="37wK5l" node="lS" resolve="createDescriptorForOrderBy" />
      </node>
    </node>
    <node concept="312cEg" id="ll" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptScript" />
      <node concept="3uibUv" id="ml" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mm" role="33vP2m">
        <ref role="37wK5l" node="lT" resolve="createDescriptorForScript" />
      </node>
    </node>
    <node concept="312cEg" id="lm" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSelect" />
      <node concept="3uibUv" id="mn" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mo" role="33vP2m">
        <ref role="37wK5l" node="lU" resolve="createDescriptorForSelect" />
      </node>
    </node>
    <node concept="312cEg" id="ln" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptStatement" />
      <node concept="3uibUv" id="mp" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mq" role="33vP2m">
        <ref role="37wK5l" node="lV" resolve="createDescriptorForStatement" />
      </node>
    </node>
    <node concept="312cEg" id="lo" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptUpdate" />
      <node concept="3uibUv" id="mr" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ms" role="33vP2m">
        <ref role="37wK5l" node="lW" resolve="createDescriptorForUpdate" />
      </node>
    </node>
    <node concept="312cEg" id="lp" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptValue" />
      <node concept="3uibUv" id="mt" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mu" role="33vP2m">
        <ref role="37wK5l" node="lX" resolve="createDescriptorForValue" />
      </node>
    </node>
    <node concept="312cEg" id="lq" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptWhere" />
      <node concept="3uibUv" id="mv" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="mw" role="33vP2m">
        <ref role="37wK5l" node="lY" resolve="createDescriptorForWhere" />
      </node>
    </node>
    <node concept="312cEg" id="lr" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationConditionOperator" />
      <node concept="3uibUv" id="mx" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="my" role="33vP2m">
        <node concept="1pGfFk" id="mz" role="2ShVmc">
          <ref role="37wK5l" node="8b" resolve="EnumerationDescriptor_ConditionOperator" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ls" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationOperator" />
      <node concept="3uibUv" id="m$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="m_" role="33vP2m">
        <node concept="1pGfFk" id="mA" role="2ShVmc">
          <ref role="37wK5l" node="ad" resolve="EnumerationDescriptor_Operator" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="lt" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationType" />
      <node concept="3uibUv" id="mB" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="mC" role="33vP2m">
        <node concept="1pGfFk" id="mD" role="2ShVmc">
          <ref role="37wK5l" node="dZ" resolve="EnumerationDescriptor_Type" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="lu" role="jymVt">
      <property role="TrG5h" value="myIndexSwitch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="mE" role="1B3o_S" />
      <node concept="3uibUv" id="mF" role="1tU5fm">
        <ref role="3uigEE" node="hK" resolve="LanguageConceptSwitch" />
      </node>
    </node>
    <node concept="3Tm1VV" id="lv" role="1B3o_S" />
    <node concept="2tJIrI" id="lw" role="jymVt" />
    <node concept="3clFbW" id="lx" role="jymVt">
      <node concept="3cqZAl" id="mG" role="3clF45" />
      <node concept="3Tm1VV" id="mH" role="1B3o_S" />
      <node concept="3clFbS" id="mI" role="3clF47">
        <node concept="3clFbF" id="mJ" role="3cqZAp">
          <node concept="37vLTI" id="mK" role="3clFbG">
            <node concept="2ShNRf" id="mL" role="37vLTx">
              <node concept="1pGfFk" id="mN" role="2ShVmc">
                <ref role="37wK5l" node="i4" resolve="LanguageConceptSwitch" />
              </node>
            </node>
            <node concept="37vLTw" id="mM" role="37vLTJ">
              <ref role="3cqZAo" node="lu" resolve="myIndexSwitch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ly" role="jymVt" />
    <node concept="2tJIrI" id="lz" role="jymVt" />
    <node concept="3clFb_" id="l$" role="jymVt">
      <property role="TrG5h" value="reportDependencies" />
      <node concept="3Tm1VV" id="mO" role="1B3o_S" />
      <node concept="3cqZAl" id="mP" role="3clF45" />
      <node concept="37vLTG" id="mQ" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="3uibUv" id="mT" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~StructureAspectDescriptor$Dependencies" resolve="StructureAspectDescriptor.Dependencies" />
        </node>
      </node>
      <node concept="3clFbS" id="mR" role="3clF47">
        <node concept="3clFbF" id="mU" role="3cqZAp">
          <node concept="2OqwBi" id="mV" role="3clFbG">
            <node concept="37vLTw" id="mW" role="2Oq$k0">
              <ref role="3cqZAo" node="mQ" resolve="deps" />
            </node>
            <node concept="liA8E" id="mX" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="1adDum" id="mY" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="mZ" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="Xl_RD" id="n0" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.core" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="mS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="l_" role="jymVt" />
    <node concept="3clFb_" id="lA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getDescriptors" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="n1" role="3clF47">
        <node concept="3cpWs6" id="n5" role="3cqZAp">
          <node concept="2YIFZM" id="n6" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="37vLTw" id="n7" role="37wK5m">
              <ref role="3cqZAo" node="la" resolve="myConceptColumn" />
            </node>
            <node concept="37vLTw" id="n8" role="37wK5m">
              <ref role="3cqZAo" node="lb" resolve="myConceptColumnRef" />
            </node>
            <node concept="37vLTw" id="n9" role="37wK5m">
              <ref role="3cqZAo" node="lc" resolve="myConceptCondition" />
            </node>
            <node concept="37vLTw" id="na" role="37wK5m">
              <ref role="3cqZAo" node="ld" resolve="myConceptConditionSet" />
            </node>
            <node concept="37vLTw" id="nb" role="37wK5m">
              <ref role="3cqZAo" node="le" resolve="myConceptConditionsSequence" />
            </node>
            <node concept="37vLTw" id="nc" role="37wK5m">
              <ref role="3cqZAo" node="lf" resolve="myConceptCreateTable" />
            </node>
            <node concept="37vLTw" id="nd" role="37wK5m">
              <ref role="3cqZAo" node="lg" resolve="myConceptDBOperation" />
            </node>
            <node concept="37vLTw" id="ne" role="37wK5m">
              <ref role="3cqZAo" node="lh" resolve="myConceptDelete" />
            </node>
            <node concept="37vLTw" id="nf" role="37wK5m">
              <ref role="3cqZAo" node="li" resolve="myConceptGroupBy" />
            </node>
            <node concept="37vLTw" id="ng" role="37wK5m">
              <ref role="3cqZAo" node="lj" resolve="myConceptInsertInto" />
            </node>
            <node concept="37vLTw" id="nh" role="37wK5m">
              <ref role="3cqZAo" node="lk" resolve="myConceptOrderBy" />
            </node>
            <node concept="37vLTw" id="ni" role="37wK5m">
              <ref role="3cqZAo" node="ll" resolve="myConceptScript" />
            </node>
            <node concept="37vLTw" id="nj" role="37wK5m">
              <ref role="3cqZAo" node="lm" resolve="myConceptSelect" />
            </node>
            <node concept="37vLTw" id="nk" role="37wK5m">
              <ref role="3cqZAo" node="ln" resolve="myConceptStatement" />
            </node>
            <node concept="37vLTw" id="nl" role="37wK5m">
              <ref role="3cqZAo" node="lo" resolve="myConceptUpdate" />
            </node>
            <node concept="37vLTw" id="nm" role="37wK5m">
              <ref role="3cqZAo" node="lp" resolve="myConceptValue" />
            </node>
            <node concept="37vLTw" id="nn" role="37wK5m">
              <ref role="3cqZAo" node="lq" resolve="myConceptWhere" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="n2" role="1B3o_S" />
      <node concept="3uibUv" id="n3" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="no" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="n4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="lB" role="jymVt" />
    <node concept="3clFb_" id="lC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="np" role="1B3o_S" />
      <node concept="37vLTG" id="nq" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="nv" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
      <node concept="3clFbS" id="nr" role="3clF47">
        <node concept="3KaCP$" id="nw" role="3cqZAp">
          <node concept="3KbdKl" id="nx" role="3KbHQx">
            <node concept="3clFbS" id="nO" role="3Kbo56">
              <node concept="3cpWs6" id="nQ" role="3cqZAp">
                <node concept="37vLTw" id="nR" role="3cqZAk">
                  <ref role="3cqZAo" node="la" resolve="myConceptColumn" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nP" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hM" resolve="Column" />
            </node>
          </node>
          <node concept="3KbdKl" id="ny" role="3KbHQx">
            <node concept="3clFbS" id="nS" role="3Kbo56">
              <node concept="3cpWs6" id="nU" role="3cqZAp">
                <node concept="37vLTw" id="nV" role="3cqZAk">
                  <ref role="3cqZAo" node="lb" resolve="myConceptColumnRef" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nT" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hN" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="3KbdKl" id="nz" role="3KbHQx">
            <node concept="3clFbS" id="nW" role="3Kbo56">
              <node concept="3cpWs6" id="nY" role="3cqZAp">
                <node concept="37vLTw" id="nZ" role="3cqZAk">
                  <ref role="3cqZAo" node="lc" resolve="myConceptCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="nX" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hO" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="n$" role="3KbHQx">
            <node concept="3clFbS" id="o0" role="3Kbo56">
              <node concept="3cpWs6" id="o2" role="3cqZAp">
                <node concept="37vLTw" id="o3" role="3cqZAk">
                  <ref role="3cqZAo" node="ld" resolve="myConceptConditionSet" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="o1" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hP" resolve="ConditionSet" />
            </node>
          </node>
          <node concept="3KbdKl" id="n_" role="3KbHQx">
            <node concept="3clFbS" id="o4" role="3Kbo56">
              <node concept="3cpWs6" id="o6" role="3cqZAp">
                <node concept="37vLTw" id="o7" role="3cqZAk">
                  <ref role="3cqZAo" node="le" resolve="myConceptConditionsSequence" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="o5" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hQ" resolve="ConditionsSequence" />
            </node>
          </node>
          <node concept="3KbdKl" id="nA" role="3KbHQx">
            <node concept="3clFbS" id="o8" role="3Kbo56">
              <node concept="3cpWs6" id="oa" role="3cqZAp">
                <node concept="37vLTw" id="ob" role="3cqZAk">
                  <ref role="3cqZAo" node="lf" resolve="myConceptCreateTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="o9" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hR" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="nB" role="3KbHQx">
            <node concept="3clFbS" id="oc" role="3Kbo56">
              <node concept="3cpWs6" id="oe" role="3cqZAp">
                <node concept="37vLTw" id="of" role="3cqZAk">
                  <ref role="3cqZAo" node="lg" resolve="myConceptDBOperation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="od" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hS" resolve="DBOperation" />
            </node>
          </node>
          <node concept="3KbdKl" id="nC" role="3KbHQx">
            <node concept="3clFbS" id="og" role="3Kbo56">
              <node concept="3cpWs6" id="oi" role="3cqZAp">
                <node concept="37vLTw" id="oj" role="3cqZAk">
                  <ref role="3cqZAo" node="lh" resolve="myConceptDelete" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="oh" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hT" resolve="Delete" />
            </node>
          </node>
          <node concept="3KbdKl" id="nD" role="3KbHQx">
            <node concept="3clFbS" id="ok" role="3Kbo56">
              <node concept="3cpWs6" id="om" role="3cqZAp">
                <node concept="37vLTw" id="on" role="3cqZAk">
                  <ref role="3cqZAo" node="li" resolve="myConceptGroupBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ol" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hU" resolve="GroupBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="nE" role="3KbHQx">
            <node concept="3clFbS" id="oo" role="3Kbo56">
              <node concept="3cpWs6" id="oq" role="3cqZAp">
                <node concept="37vLTw" id="or" role="3cqZAk">
                  <ref role="3cqZAo" node="lj" resolve="myConceptInsertInto" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="op" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hV" resolve="InsertInto" />
            </node>
          </node>
          <node concept="3KbdKl" id="nF" role="3KbHQx">
            <node concept="3clFbS" id="os" role="3Kbo56">
              <node concept="3cpWs6" id="ou" role="3cqZAp">
                <node concept="37vLTw" id="ov" role="3cqZAk">
                  <ref role="3cqZAo" node="lk" resolve="myConceptOrderBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ot" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hW" resolve="OrderBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="nG" role="3KbHQx">
            <node concept="3clFbS" id="ow" role="3Kbo56">
              <node concept="3cpWs6" id="oy" role="3cqZAp">
                <node concept="37vLTw" id="oz" role="3cqZAk">
                  <ref role="3cqZAo" node="ll" resolve="myConceptScript" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ox" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hX" resolve="Script" />
            </node>
          </node>
          <node concept="3KbdKl" id="nH" role="3KbHQx">
            <node concept="3clFbS" id="o$" role="3Kbo56">
              <node concept="3cpWs6" id="oA" role="3cqZAp">
                <node concept="37vLTw" id="oB" role="3cqZAk">
                  <ref role="3cqZAo" node="lm" resolve="myConceptSelect" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="o_" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hY" resolve="Select" />
            </node>
          </node>
          <node concept="3KbdKl" id="nI" role="3KbHQx">
            <node concept="3clFbS" id="oC" role="3Kbo56">
              <node concept="3cpWs6" id="oE" role="3cqZAp">
                <node concept="37vLTw" id="oF" role="3cqZAk">
                  <ref role="3cqZAo" node="ln" resolve="myConceptStatement" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="oD" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="hZ" resolve="Statement" />
            </node>
          </node>
          <node concept="3KbdKl" id="nJ" role="3KbHQx">
            <node concept="3clFbS" id="oG" role="3Kbo56">
              <node concept="3cpWs6" id="oI" role="3cqZAp">
                <node concept="37vLTw" id="oJ" role="3cqZAk">
                  <ref role="3cqZAo" node="lo" resolve="myConceptUpdate" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="oH" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="i0" resolve="Update" />
            </node>
          </node>
          <node concept="3KbdKl" id="nK" role="3KbHQx">
            <node concept="3clFbS" id="oK" role="3Kbo56">
              <node concept="3cpWs6" id="oM" role="3cqZAp">
                <node concept="37vLTw" id="oN" role="3cqZAk">
                  <ref role="3cqZAo" node="lp" resolve="myConceptValue" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="oL" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="i1" resolve="Value" />
            </node>
          </node>
          <node concept="3KbdKl" id="nL" role="3KbHQx">
            <node concept="3clFbS" id="oO" role="3Kbo56">
              <node concept="3cpWs6" id="oQ" role="3cqZAp">
                <node concept="37vLTw" id="oR" role="3cqZAk">
                  <ref role="3cqZAo" node="lq" resolve="myConceptWhere" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="oP" role="3Kbmr1">
              <ref role="1PxDUh" node="hK" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="i2" resolve="Where" />
            </node>
          </node>
          <node concept="2OqwBi" id="nM" role="3KbGdf">
            <node concept="37vLTw" id="oS" role="2Oq$k0">
              <ref role="3cqZAo" node="lu" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="oT" role="2OqNvi">
              <ref role="37wK5l" node="i6" resolve="index" />
              <node concept="37vLTw" id="oU" role="37wK5m">
                <ref role="3cqZAo" node="nq" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="nN" role="3Kb1Dw">
            <node concept="3cpWs6" id="oV" role="3cqZAp">
              <node concept="10Nm6u" id="oW" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ns" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="2AHcQZ" id="nt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="nu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="lD" role="jymVt" />
    <node concept="3clFb_" id="lE" role="jymVt">
      <property role="TrG5h" value="getDataTypeDescriptors" />
      <node concept="3Tm1VV" id="oX" role="1B3o_S" />
      <node concept="3uibUv" id="oY" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="p1" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~DataTypeDescriptor" resolve="DataTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="oZ" role="3clF47">
        <node concept="3cpWs6" id="p2" role="3cqZAp">
          <node concept="2YIFZM" id="p3" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="p4" role="37wK5m">
              <ref role="3cqZAo" node="lr" resolve="myEnumerationConditionOperator" />
            </node>
            <node concept="37vLTw" id="p5" role="37wK5m">
              <ref role="3cqZAo" node="ls" resolve="myEnumerationOperator" />
            </node>
            <node concept="37vLTw" id="p6" role="37wK5m">
              <ref role="3cqZAo" node="lt" resolve="myEnumerationType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="p0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="lF" role="jymVt" />
    <node concept="3clFb_" id="lG" role="jymVt">
      <property role="TrG5h" value="internalIndex" />
      <node concept="10Oyi0" id="p7" role="3clF45" />
      <node concept="3clFbS" id="p8" role="3clF47">
        <node concept="3cpWs6" id="pa" role="3cqZAp">
          <node concept="2OqwBi" id="pb" role="3cqZAk">
            <node concept="37vLTw" id="pc" role="2Oq$k0">
              <ref role="3cqZAo" node="lu" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="pd" role="2OqNvi">
              <ref role="37wK5l" node="i8" resolve="index" />
              <node concept="37vLTw" id="pe" role="37wK5m">
                <ref role="3cqZAo" node="p9" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="p9" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="pf" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lH" role="jymVt" />
    <node concept="2YIFZL" id="lI" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForColumn" />
      <node concept="3clFbS" id="pg" role="3clF47">
        <node concept="3cpWs8" id="pj" role="3cqZAp">
          <node concept="3cpWsn" id="pq" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="pr" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="ps" role="33vP2m">
              <node concept="1pGfFk" id="pt" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="pu" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="pv" role="37wK5m">
                  <property role="Xl_RC" value="Column" />
                </node>
                <node concept="1adDum" id="pw" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="px" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="py" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b33L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pk" role="3cqZAp">
          <node concept="2OqwBi" id="pz" role="3clFbG">
            <node concept="37vLTw" id="p$" role="2Oq$k0">
              <ref role="3cqZAo" node="pq" resolve="b" />
            </node>
            <node concept="liA8E" id="p_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="pA" role="37wK5m" />
              <node concept="3clFbT" id="pB" role="37wK5m" />
              <node concept="3clFbT" id="pC" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pl" role="3cqZAp">
          <node concept="2OqwBi" id="pD" role="3clFbG">
            <node concept="37vLTw" id="pE" role="2Oq$k0">
              <ref role="3cqZAo" node="pq" resolve="b" />
            </node>
            <node concept="liA8E" id="pF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="pG" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="pH" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="pI" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pm" role="3cqZAp">
          <node concept="2OqwBi" id="pJ" role="3clFbG">
            <node concept="37vLTw" id="pK" role="2Oq$k0">
              <ref role="3cqZAo" node="pq" resolve="b" />
            </node>
            <node concept="liA8E" id="pL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="pM" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598131" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pn" role="3cqZAp">
          <node concept="2OqwBi" id="pN" role="3clFbG">
            <node concept="37vLTw" id="pO" role="2Oq$k0">
              <ref role="3cqZAo" node="pq" resolve="b" />
            </node>
            <node concept="liA8E" id="pP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="pQ" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="po" role="3cqZAp">
          <node concept="2OqwBi" id="pR" role="3clFbG">
            <node concept="2OqwBi" id="pS" role="2Oq$k0">
              <node concept="2OqwBi" id="pU" role="2Oq$k0">
                <node concept="2OqwBi" id="pW" role="2Oq$k0">
                  <node concept="37vLTw" id="pY" role="2Oq$k0">
                    <ref role="3cqZAo" node="pq" resolve="b" />
                  </node>
                  <node concept="liA8E" id="pZ" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="q0" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="q1" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b37L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="pX" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="q2" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499598137" />
                    <node concept="1adDum" id="q3" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="q4" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="q5" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b39L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="pV" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="q6" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499598135" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="pT" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pp" role="3cqZAp">
          <node concept="2OqwBi" id="q7" role="3cqZAk">
            <node concept="37vLTw" id="q8" role="2Oq$k0">
              <ref role="3cqZAo" node="pq" resolve="b" />
            </node>
            <node concept="liA8E" id="q9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="ph" role="1B3o_S" />
      <node concept="3uibUv" id="pi" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lJ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForColumnRef" />
      <node concept="3clFbS" id="qa" role="3clF47">
        <node concept="3cpWs8" id="qd" role="3cqZAp">
          <node concept="3cpWsn" id="qj" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="qk" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="ql" role="33vP2m">
              <node concept="1pGfFk" id="qm" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="qn" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="qo" role="37wK5m">
                  <property role="Xl_RC" value="ColumnRef" />
                </node>
                <node concept="1adDum" id="qp" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="qq" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="qr" role="37wK5m">
                  <property role="1adDun" value="0x11100ee7375157f4L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qe" role="3cqZAp">
          <node concept="2OqwBi" id="qs" role="3clFbG">
            <node concept="37vLTw" id="qt" role="2Oq$k0">
              <ref role="3cqZAo" node="qj" resolve="b" />
            </node>
            <node concept="liA8E" id="qu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="qv" role="37wK5m" />
              <node concept="3clFbT" id="qw" role="37wK5m" />
              <node concept="3clFbT" id="qx" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qf" role="3cqZAp">
          <node concept="2OqwBi" id="qy" role="3clFbG">
            <node concept="37vLTw" id="qz" role="2Oq$k0">
              <ref role="3cqZAo" node="qj" resolve="b" />
            </node>
            <node concept="liA8E" id="q$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="q_" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084500457460" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qg" role="3cqZAp">
          <node concept="2OqwBi" id="qA" role="3clFbG">
            <node concept="37vLTw" id="qB" role="2Oq$k0">
              <ref role="3cqZAo" node="qj" resolve="b" />
            </node>
            <node concept="liA8E" id="qC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="qD" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qh" role="3cqZAp">
          <node concept="2OqwBi" id="qE" role="3clFbG">
            <node concept="2OqwBi" id="qF" role="2Oq$k0">
              <node concept="2OqwBi" id="qH" role="2Oq$k0">
                <node concept="2OqwBi" id="qJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="qL" role="2Oq$k0">
                    <node concept="37vLTw" id="qN" role="2Oq$k0">
                      <ref role="3cqZAo" node="qj" resolve="b" />
                    </node>
                    <node concept="liA8E" id="qO" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="qP" role="37wK5m">
                        <property role="Xl_RC" value="column" />
                      </node>
                      <node concept="1adDum" id="qQ" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375157f5L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="qM" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="qR" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="qS" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="qT" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b33L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qK" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="qU" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="qI" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qV" role="37wK5m">
                  <property role="Xl_RC" value="1229499084500457461" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="qi" role="3cqZAp">
          <node concept="2OqwBi" id="qW" role="3cqZAk">
            <node concept="37vLTw" id="qX" role="2Oq$k0">
              <ref role="3cqZAo" node="qj" resolve="b" />
            </node>
            <node concept="liA8E" id="qY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="qb" role="1B3o_S" />
      <node concept="3uibUv" id="qc" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lK" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCondition" />
      <node concept="3clFbS" id="qZ" role="3clF47">
        <node concept="3cpWs8" id="r2" role="3cqZAp">
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
                  <property role="Xl_RC" value="Condition" />
                </node>
                <node concept="1adDum" id="rh" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="ri" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="rj" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737470ff3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r3" role="3cqZAp">
          <node concept="2OqwBi" id="rk" role="3clFbG">
            <node concept="37vLTw" id="rl" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="rm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="rn" role="37wK5m" />
              <node concept="3clFbT" id="ro" role="37wK5m" />
              <node concept="3clFbT" id="rp" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r4" role="3cqZAp">
          <node concept="2OqwBi" id="rq" role="3clFbG">
            <node concept="37vLTw" id="rr" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="rs" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="rt" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783667" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r5" role="3cqZAp">
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
        <node concept="3clFbF" id="r6" role="3cqZAp">
          <node concept="2OqwBi" id="ry" role="3clFbG">
            <node concept="2OqwBi" id="rz" role="2Oq$k0">
              <node concept="2OqwBi" id="r_" role="2Oq$k0">
                <node concept="2OqwBi" id="rB" role="2Oq$k0">
                  <node concept="37vLTw" id="rD" role="2Oq$k0">
                    <ref role="3cqZAo" node="rb" resolve="b" />
                  </node>
                  <node concept="liA8E" id="rE" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="rF" role="37wK5m">
                      <property role="Xl_RC" value="operator" />
                    </node>
                    <node concept="1adDum" id="rG" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737471046L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="rC" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="rH" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499783673" />
                    <node concept="1adDum" id="rI" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                    <node concept="1adDum" id="rJ" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                    <node concept="1adDum" id="rK" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737470ff9L" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="rA" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="rL" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499783750" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="r$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r7" role="3cqZAp">
          <node concept="2OqwBi" id="rM" role="3clFbG">
            <node concept="2OqwBi" id="rN" role="2Oq$k0">
              <node concept="2OqwBi" id="rP" role="2Oq$k0">
                <node concept="2OqwBi" id="rR" role="2Oq$k0">
                  <node concept="37vLTw" id="rT" role="2Oq$k0">
                    <ref role="3cqZAo" node="rb" resolve="b" />
                  </node>
                  <node concept="liA8E" id="rU" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="rV" role="37wK5m">
                      <property role="Xl_RC" value="conditionOperator" />
                    </node>
                    <node concept="1adDum" id="rW" role="37wK5m">
                      <property role="1adDun" value="0x23d860ebbb7c269fL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="rS" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="rX" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:2582920951876036250" />
                    <node concept="1adDum" id="rY" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                    <node concept="1adDum" id="rZ" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                    <node concept="1adDum" id="s0" role="37wK5m">
                      <property role="1adDun" value="0x23d860ebbb7c269aL" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="rQ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="s1" role="37wK5m">
                  <property role="Xl_RC" value="2582920951876036255" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="rO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r8" role="3cqZAp">
          <node concept="2OqwBi" id="s2" role="3clFbG">
            <node concept="2OqwBi" id="s3" role="2Oq$k0">
              <node concept="2OqwBi" id="s5" role="2Oq$k0">
                <node concept="2OqwBi" id="s7" role="2Oq$k0">
                  <node concept="2OqwBi" id="s9" role="2Oq$k0">
                    <node concept="37vLTw" id="sb" role="2Oq$k0">
                      <ref role="3cqZAo" node="rb" resolve="b" />
                    </node>
                    <node concept="liA8E" id="sc" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="sd" role="37wK5m">
                        <property role="Xl_RC" value="column" />
                      </node>
                      <node concept="1adDum" id="se" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375283dfL" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="sa" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="sf" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="sg" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="sh" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b33L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="s8" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="si" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="s6" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="sj" role="37wK5m">
                  <property role="Xl_RC" value="1229499084500534239" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="s4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r9" role="3cqZAp">
          <node concept="2OqwBi" id="sk" role="3clFbG">
            <node concept="2OqwBi" id="sl" role="2Oq$k0">
              <node concept="2OqwBi" id="sn" role="2Oq$k0">
                <node concept="2OqwBi" id="sp" role="2Oq$k0">
                  <node concept="2OqwBi" id="sr" role="2Oq$k0">
                    <node concept="2OqwBi" id="st" role="2Oq$k0">
                      <node concept="2OqwBi" id="sv" role="2Oq$k0">
                        <node concept="37vLTw" id="sx" role="2Oq$k0">
                          <ref role="3cqZAo" node="rb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="sy" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="sz" role="37wK5m">
                            <property role="Xl_RC" value="value" />
                          </node>
                          <node concept="1adDum" id="s$" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f1cc8a8L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="sw" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="s_" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="sA" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="sB" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="su" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="sC" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="ss" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="sD" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="sq" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="sE" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="so" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="sF" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247528" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="sm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ra" role="3cqZAp">
          <node concept="2OqwBi" id="sG" role="3cqZAk">
            <node concept="37vLTw" id="sH" role="2Oq$k0">
              <ref role="3cqZAo" node="rb" resolve="b" />
            </node>
            <node concept="liA8E" id="sI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="r0" role="1B3o_S" />
      <node concept="3uibUv" id="r1" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lL" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForConditionSet" />
      <node concept="3clFbS" id="sJ" role="3clF47">
        <node concept="3cpWs8" id="sM" role="3cqZAp">
          <node concept="3cpWsn" id="sS" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="sT" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="sU" role="33vP2m">
              <node concept="1pGfFk" id="sV" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="sW" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="sX" role="37wK5m">
                  <property role="Xl_RC" value="ConditionSet" />
                </node>
                <node concept="1adDum" id="sY" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="sZ" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="t0" role="37wK5m">
                  <property role="1adDun" value="0x23d860ebbb86c06cL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sN" role="3cqZAp">
          <node concept="2OqwBi" id="t1" role="3clFbG">
            <node concept="37vLTw" id="t2" role="2Oq$k0">
              <ref role="3cqZAo" node="sS" resolve="b" />
            </node>
            <node concept="liA8E" id="t3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="t4" role="37wK5m" />
              <node concept="3clFbT" id="t5" role="37wK5m" />
              <node concept="3clFbT" id="t6" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sO" role="3cqZAp">
          <node concept="2OqwBi" id="t7" role="3clFbG">
            <node concept="37vLTw" id="t8" role="2Oq$k0">
              <ref role="3cqZAo" node="sS" resolve="b" />
            </node>
            <node concept="liA8E" id="t9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="ta" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876730988" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sP" role="3cqZAp">
          <node concept="2OqwBi" id="tb" role="3clFbG">
            <node concept="37vLTw" id="tc" role="2Oq$k0">
              <ref role="3cqZAo" node="sS" resolve="b" />
            </node>
            <node concept="liA8E" id="td" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="te" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sQ" role="3cqZAp">
          <node concept="2OqwBi" id="tf" role="3clFbG">
            <node concept="2OqwBi" id="tg" role="2Oq$k0">
              <node concept="2OqwBi" id="ti" role="2Oq$k0">
                <node concept="2OqwBi" id="tk" role="2Oq$k0">
                  <node concept="2OqwBi" id="tm" role="2Oq$k0">
                    <node concept="2OqwBi" id="to" role="2Oq$k0">
                      <node concept="2OqwBi" id="tq" role="2Oq$k0">
                        <node concept="37vLTw" id="ts" role="2Oq$k0">
                          <ref role="3cqZAo" node="sS" resolve="b" />
                        </node>
                        <node concept="liA8E" id="tt" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="tu" role="37wK5m">
                            <property role="Xl_RC" value="conditions" />
                          </node>
                          <node concept="1adDum" id="tv" role="37wK5m">
                            <property role="1adDun" value="0x23d860ebbb86c06dL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="tr" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="tw" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="tx" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="ty" role="37wK5m">
                          <property role="1adDun" value="0x23d860ebbb7c2695L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="tp" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="tz" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="tn" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="t$" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="tl" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="t_" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tj" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="tA" role="37wK5m">
                  <property role="Xl_RC" value="2582920951876730989" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="th" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="sR" role="3cqZAp">
          <node concept="2OqwBi" id="tB" role="3cqZAk">
            <node concept="37vLTw" id="tC" role="2Oq$k0">
              <ref role="3cqZAo" node="sS" resolve="b" />
            </node>
            <node concept="liA8E" id="tD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="sK" role="1B3o_S" />
      <node concept="3uibUv" id="sL" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lM" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForConditionsSequence" />
      <node concept="3clFbS" id="tE" role="3clF47">
        <node concept="3cpWs8" id="tH" role="3cqZAp">
          <node concept="3cpWsn" id="tO" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="tP" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="tQ" role="33vP2m">
              <node concept="1pGfFk" id="tR" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="tS" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="tT" role="37wK5m">
                  <property role="Xl_RC" value="ConditionsSequence" />
                </node>
                <node concept="1adDum" id="tU" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="tV" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="tW" role="37wK5m">
                  <property role="1adDun" value="0x23d860ebbb7c2695L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tI" role="3cqZAp">
          <node concept="2OqwBi" id="tX" role="3clFbG">
            <node concept="37vLTw" id="tY" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="b" />
            </node>
            <node concept="liA8E" id="tZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="u0" role="37wK5m" />
              <node concept="3clFbT" id="u1" role="37wK5m" />
              <node concept="3clFbT" id="u2" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tJ" role="3cqZAp">
          <node concept="2OqwBi" id="u3" role="3clFbG">
            <node concept="37vLTw" id="u4" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="b" />
            </node>
            <node concept="liA8E" id="u5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="u6" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036245" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tK" role="3cqZAp">
          <node concept="2OqwBi" id="u7" role="3clFbG">
            <node concept="37vLTw" id="u8" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="b" />
            </node>
            <node concept="liA8E" id="u9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="ua" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tL" role="3cqZAp">
          <node concept="2OqwBi" id="ub" role="3clFbG">
            <node concept="2OqwBi" id="uc" role="2Oq$k0">
              <node concept="2OqwBi" id="ue" role="2Oq$k0">
                <node concept="2OqwBi" id="ug" role="2Oq$k0">
                  <node concept="37vLTw" id="ui" role="2Oq$k0">
                    <ref role="3cqZAo" node="tO" resolve="b" />
                  </node>
                  <node concept="liA8E" id="uj" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="uk" role="37wK5m">
                      <property role="Xl_RC" value="conditionOperator" />
                    </node>
                    <node concept="1adDum" id="ul" role="37wK5m">
                      <property role="1adDun" value="0x23d860ebbb86c0b3L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uh" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="um" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:2582920951876036250" />
                    <node concept="1adDum" id="un" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                    <node concept="1adDum" id="uo" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                    <node concept="1adDum" id="up" role="37wK5m">
                      <property role="1adDun" value="0x23d860ebbb7c269aL" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="uf" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="uq" role="37wK5m">
                  <property role="Xl_RC" value="2582920951876731059" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="ud" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tM" role="3cqZAp">
          <node concept="2OqwBi" id="ur" role="3clFbG">
            <node concept="2OqwBi" id="us" role="2Oq$k0">
              <node concept="2OqwBi" id="uu" role="2Oq$k0">
                <node concept="2OqwBi" id="uw" role="2Oq$k0">
                  <node concept="2OqwBi" id="uy" role="2Oq$k0">
                    <node concept="2OqwBi" id="u$" role="2Oq$k0">
                      <node concept="2OqwBi" id="uA" role="2Oq$k0">
                        <node concept="37vLTw" id="uC" role="2Oq$k0">
                          <ref role="3cqZAo" node="tO" resolve="b" />
                        </node>
                        <node concept="liA8E" id="uD" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="uE" role="37wK5m">
                            <property role="Xl_RC" value="conditions" />
                          </node>
                          <node concept="1adDum" id="uF" role="37wK5m">
                            <property role="1adDun" value="0x23d860ebbb7c26b9L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="uB" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="uG" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="uH" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="uI" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737470ff3L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="u_" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="uJ" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="uz" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="uK" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="ux" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="uL" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="uv" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="uM" role="37wK5m">
                  <property role="Xl_RC" value="2582920951876036281" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="ut" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="tN" role="3cqZAp">
          <node concept="2OqwBi" id="uN" role="3cqZAk">
            <node concept="37vLTw" id="uO" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="b" />
            </node>
            <node concept="liA8E" id="uP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="tF" role="1B3o_S" />
      <node concept="3uibUv" id="tG" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lN" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCreateTable" />
      <node concept="3clFbS" id="uQ" role="3clF47">
        <node concept="3cpWs8" id="uT" role="3cqZAp">
          <node concept="3cpWsn" id="v2" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="v3" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="v4" role="33vP2m">
              <node concept="1pGfFk" id="v5" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="v6" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="v7" role="37wK5m">
                  <property role="Xl_RC" value="CreateTable" />
                </node>
                <node concept="1adDum" id="v8" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="v9" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="va" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b2eL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uU" role="3cqZAp">
          <node concept="2OqwBi" id="vb" role="3clFbG">
            <node concept="37vLTw" id="vc" role="2Oq$k0">
              <ref role="3cqZAo" node="v2" resolve="b" />
            </node>
            <node concept="liA8E" id="vd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="ve" role="37wK5m" />
              <node concept="3clFbT" id="vf" role="37wK5m" />
              <node concept="3clFbT" id="vg" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uV" role="3cqZAp">
          <node concept="2OqwBi" id="vh" role="3clFbG">
            <node concept="37vLTw" id="vi" role="2Oq$k0">
              <ref role="3cqZAo" node="v2" resolve="b" />
            </node>
            <node concept="liA8E" id="vj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="vk" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="vl" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="vm" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uW" role="3cqZAp">
          <node concept="2OqwBi" id="vn" role="3clFbG">
            <node concept="37vLTw" id="vo" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="vp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="vq" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="vr" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="vs" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uX" role="3cqZAp">
          <node concept="2OqwBi" id="vt" role="3clFbG">
            <node concept="37vLTw" id="vu" role="2Oq$k0">
              <ref role="3cqZAo" node="v2" resolve="b" />
            </node>
            <node concept="liA8E" id="vv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="vw" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598126" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uY" role="3cqZAp">
          <node concept="2OqwBi" id="vx" role="3clFbG">
            <node concept="37vLTw" id="vy" role="2Oq$k0">
              <ref role="3cqZAo" node="v2" resolve="b" />
            </node>
            <node concept="liA8E" id="vz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="v$" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uZ" role="3cqZAp">
          <node concept="2OqwBi" id="v_" role="3clFbG">
            <node concept="2OqwBi" id="vA" role="2Oq$k0">
              <node concept="2OqwBi" id="vC" role="2Oq$k0">
                <node concept="2OqwBi" id="vE" role="2Oq$k0">
                  <node concept="2OqwBi" id="vG" role="2Oq$k0">
                    <node concept="2OqwBi" id="vI" role="2Oq$k0">
                      <node concept="2OqwBi" id="vK" role="2Oq$k0">
                        <node concept="37vLTw" id="vM" role="2Oq$k0">
                          <ref role="3cqZAo" node="v2" resolve="b" />
                        </node>
                        <node concept="liA8E" id="vN" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="vO" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="vP" role="37wK5m">
                            <property role="1adDun" value="0x75900635108ee054L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="vL" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="vQ" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="vR" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="vS" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737443b33L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="vJ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="vT" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="vH" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="vU" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="vF" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="vV" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="vD" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="vW" role="37wK5m">
                  <property role="Xl_RC" value="8471277724064735316" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="vB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v0" role="3cqZAp">
          <node concept="2OqwBi" id="vX" role="3clFbG">
            <node concept="37vLTw" id="vY" role="2Oq$k0">
              <ref role="3cqZAo" node="v2" resolve="b" />
            </node>
            <node concept="liA8E" id="vZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="w0" role="37wK5m">
                <property role="Xl_RC" value="CREATE TABLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="v1" role="3cqZAp">
          <node concept="2OqwBi" id="w1" role="3cqZAk">
            <node concept="37vLTw" id="w2" role="2Oq$k0">
              <ref role="3cqZAo" node="v2" resolve="b" />
            </node>
            <node concept="liA8E" id="w3" role="2OqNvi">
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
    <node concept="2YIFZL" id="lO" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForDBOperation" />
      <node concept="3clFbS" id="w4" role="3clF47">
        <node concept="3cpWs8" id="w7" role="3cqZAp">
          <node concept="3cpWsn" id="wc" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="wd" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="we" role="33vP2m">
              <node concept="1pGfFk" id="wf" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="wg" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="wh" role="37wK5m">
                  <property role="Xl_RC" value="DBOperation" />
                </node>
                <node concept="1adDum" id="wi" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="wj" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="wk" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa655164L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w8" role="3cqZAp">
          <node concept="2OqwBi" id="wl" role="3clFbG">
            <node concept="37vLTw" id="wm" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="wn" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w9" role="3cqZAp">
          <node concept="2OqwBi" id="wo" role="3clFbG">
            <node concept="37vLTw" id="wp" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="wq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="wr" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722287075684" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wa" role="3cqZAp">
          <node concept="2OqwBi" id="ws" role="3clFbG">
            <node concept="37vLTw" id="wt" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="wu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="wv" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="wb" role="3cqZAp">
          <node concept="2OqwBi" id="ww" role="3cqZAk">
            <node concept="37vLTw" id="wx" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="wy" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="w5" role="1B3o_S" />
      <node concept="3uibUv" id="w6" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lP" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForDelete" />
      <node concept="3clFbS" id="wz" role="3clF47">
        <node concept="3cpWs8" id="wA" role="3cqZAp">
          <node concept="3cpWsn" id="wK" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="wL" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="wM" role="33vP2m">
              <node concept="1pGfFk" id="wN" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="wO" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="wP" role="37wK5m">
                  <property role="Xl_RC" value="Delete" />
                </node>
                <node concept="1adDum" id="wQ" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="wR" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="wS" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa642699L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wB" role="3cqZAp">
          <node concept="2OqwBi" id="wT" role="3clFbG">
            <node concept="37vLTw" id="wU" role="2Oq$k0">
              <ref role="3cqZAo" node="wK" resolve="b" />
            </node>
            <node concept="liA8E" id="wV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="wW" role="37wK5m" />
              <node concept="3clFbT" id="wX" role="37wK5m" />
              <node concept="3clFbT" id="wY" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="wC" role="3cqZAp">
          <node concept="1PaTwC" id="wZ" role="1aUNEU">
            <node concept="3oM_SD" id="x0" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="x1" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wD" role="3cqZAp">
          <node concept="15s5l7" id="x2" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="x3" role="3clFbG">
            <node concept="37vLTw" id="x4" role="2Oq$k0">
              <ref role="3cqZAo" node="wK" resolve="b" />
            </node>
            <node concept="liA8E" id="x5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="x6" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="x7" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="x8" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wE" role="3cqZAp">
          <node concept="2OqwBi" id="x9" role="3clFbG">
            <node concept="37vLTw" id="xa" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="xb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="xc" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="xd" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="xe" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wF" role="3cqZAp">
          <node concept="2OqwBi" id="xf" role="3clFbG">
            <node concept="37vLTw" id="xg" role="2Oq$k0">
              <ref role="3cqZAo" node="wK" resolve="b" />
            </node>
            <node concept="liA8E" id="xh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="xi" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722286999193" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wG" role="3cqZAp">
          <node concept="2OqwBi" id="xj" role="3clFbG">
            <node concept="37vLTw" id="xk" role="2Oq$k0">
              <ref role="3cqZAo" node="wK" resolve="b" />
            </node>
            <node concept="liA8E" id="xl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="xm" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wH" role="3cqZAp">
          <node concept="2OqwBi" id="xn" role="3clFbG">
            <node concept="2OqwBi" id="xo" role="2Oq$k0">
              <node concept="2OqwBi" id="xq" role="2Oq$k0">
                <node concept="2OqwBi" id="xs" role="2Oq$k0">
                  <node concept="2OqwBi" id="xu" role="2Oq$k0">
                    <node concept="2OqwBi" id="xw" role="2Oq$k0">
                      <node concept="2OqwBi" id="xy" role="2Oq$k0">
                        <node concept="37vLTw" id="x$" role="2Oq$k0">
                          <ref role="3cqZAo" node="wK" resolve="b" />
                        </node>
                        <node concept="liA8E" id="x_" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="xA" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="xB" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa64269bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="xz" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="xC" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="xD" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="xE" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="xx" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="xF" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="xv" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="xG" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="xt" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="xH" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="xr" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="xI" role="37wK5m">
                  <property role="Xl_RC" value="3100867722286999195" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="xp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wI" role="3cqZAp">
          <node concept="2OqwBi" id="xJ" role="3clFbG">
            <node concept="37vLTw" id="xK" role="2Oq$k0">
              <ref role="3cqZAo" node="wK" resolve="b" />
            </node>
            <node concept="liA8E" id="xL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="xM" role="37wK5m">
                <property role="Xl_RC" value="DELETE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="wJ" role="3cqZAp">
          <node concept="2OqwBi" id="xN" role="3cqZAk">
            <node concept="37vLTw" id="xO" role="2Oq$k0">
              <ref role="3cqZAo" node="wK" resolve="b" />
            </node>
            <node concept="liA8E" id="xP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="w$" role="1B3o_S" />
      <node concept="3uibUv" id="w_" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lQ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForGroupBy" />
      <node concept="3clFbS" id="xQ" role="3clF47">
        <node concept="3cpWs8" id="xT" role="3cqZAp">
          <node concept="3cpWsn" id="y0" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="y1" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="y2" role="33vP2m">
              <node concept="1pGfFk" id="y3" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="y4" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="y5" role="37wK5m">
                  <property role="Xl_RC" value="GroupBy" />
                </node>
                <node concept="1adDum" id="y6" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="y7" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="y8" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa6a16ceL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xU" role="3cqZAp">
          <node concept="2OqwBi" id="y9" role="3clFbG">
            <node concept="37vLTw" id="ya" role="2Oq$k0">
              <ref role="3cqZAo" node="y0" resolve="b" />
            </node>
            <node concept="liA8E" id="yb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="yc" role="37wK5m" />
              <node concept="3clFbT" id="yd" role="37wK5m" />
              <node concept="3clFbT" id="ye" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xV" role="3cqZAp">
          <node concept="2OqwBi" id="yf" role="3clFbG">
            <node concept="37vLTw" id="yg" role="2Oq$k0">
              <ref role="3cqZAo" node="y0" resolve="b" />
            </node>
            <node concept="liA8E" id="yh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="yi" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722287388366" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xW" role="3cqZAp">
          <node concept="2OqwBi" id="yj" role="3clFbG">
            <node concept="37vLTw" id="yk" role="2Oq$k0">
              <ref role="3cqZAo" node="y0" resolve="b" />
            </node>
            <node concept="liA8E" id="yl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="ym" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xX" role="3cqZAp">
          <node concept="2OqwBi" id="yn" role="3clFbG">
            <node concept="2OqwBi" id="yo" role="2Oq$k0">
              <node concept="2OqwBi" id="yq" role="2Oq$k0">
                <node concept="2OqwBi" id="ys" role="2Oq$k0">
                  <node concept="2OqwBi" id="yu" role="2Oq$k0">
                    <node concept="2OqwBi" id="yw" role="2Oq$k0">
                      <node concept="2OqwBi" id="yy" role="2Oq$k0">
                        <node concept="37vLTw" id="y$" role="2Oq$k0">
                          <ref role="3cqZAo" node="y0" resolve="b" />
                        </node>
                        <node concept="liA8E" id="y_" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="yA" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="yB" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa6a1759L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="yz" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="yC" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="yD" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="yE" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="yx" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="yF" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="yv" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="yG" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="yt" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="yH" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="yr" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="yI" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287388505" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="yp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xY" role="3cqZAp">
          <node concept="2OqwBi" id="yJ" role="3clFbG">
            <node concept="37vLTw" id="yK" role="2Oq$k0">
              <ref role="3cqZAo" node="y0" resolve="b" />
            </node>
            <node concept="liA8E" id="yL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="yM" role="37wK5m">
                <property role="Xl_RC" value="GROUP BY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="xZ" role="3cqZAp">
          <node concept="2OqwBi" id="yN" role="3cqZAk">
            <node concept="37vLTw" id="yO" role="2Oq$k0">
              <ref role="3cqZAo" node="y0" resolve="b" />
            </node>
            <node concept="liA8E" id="yP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="xR" role="1B3o_S" />
      <node concept="3uibUv" id="xS" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lR" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForInsertInto" />
      <node concept="3clFbS" id="yQ" role="3clF47">
        <node concept="3cpWs8" id="yT" role="3cqZAp">
          <node concept="3cpWsn" id="z3" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="z4" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="z5" role="33vP2m">
              <node concept="1pGfFk" id="z6" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="z7" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="z8" role="37wK5m">
                  <property role="Xl_RC" value="InsertInto" />
                </node>
                <node concept="1adDum" id="z9" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="za" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="zb" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f1c72c8L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yU" role="3cqZAp">
          <node concept="2OqwBi" id="zc" role="3clFbG">
            <node concept="37vLTw" id="zd" role="2Oq$k0">
              <ref role="3cqZAo" node="z3" resolve="b" />
            </node>
            <node concept="liA8E" id="ze" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="zf" role="37wK5m" />
              <node concept="3clFbT" id="zg" role="37wK5m" />
              <node concept="3clFbT" id="zh" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="yV" role="3cqZAp">
          <node concept="1PaTwC" id="zi" role="1aUNEU">
            <node concept="3oM_SD" id="zj" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="zk" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yW" role="3cqZAp">
          <node concept="15s5l7" id="zl" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="zm" role="3clFbG">
            <node concept="37vLTw" id="zn" role="2Oq$k0">
              <ref role="3cqZAo" node="z3" resolve="b" />
            </node>
            <node concept="liA8E" id="zo" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="zp" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="zq" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="zr" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yX" role="3cqZAp">
          <node concept="2OqwBi" id="zs" role="3clFbG">
            <node concept="37vLTw" id="zt" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="zu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="zv" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="zw" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="zx" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yY" role="3cqZAp">
          <node concept="2OqwBi" id="zy" role="3clFbG">
            <node concept="37vLTw" id="zz" role="2Oq$k0">
              <ref role="3cqZAo" node="z3" resolve="b" />
            </node>
            <node concept="liA8E" id="z$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="z_" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255225544" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yZ" role="3cqZAp">
          <node concept="2OqwBi" id="zA" role="3clFbG">
            <node concept="37vLTw" id="zB" role="2Oq$k0">
              <ref role="3cqZAo" node="z3" resolve="b" />
            </node>
            <node concept="liA8E" id="zC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="zD" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="z0" role="3cqZAp">
          <node concept="2OqwBi" id="zE" role="3clFbG">
            <node concept="2OqwBi" id="zF" role="2Oq$k0">
              <node concept="2OqwBi" id="zH" role="2Oq$k0">
                <node concept="2OqwBi" id="zJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="zL" role="2Oq$k0">
                    <node concept="2OqwBi" id="zN" role="2Oq$k0">
                      <node concept="2OqwBi" id="zP" role="2Oq$k0">
                        <node concept="37vLTw" id="zR" role="2Oq$k0">
                          <ref role="3cqZAo" node="z3" resolve="b" />
                        </node>
                        <node concept="liA8E" id="zS" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="zT" role="37wK5m">
                            <property role="Xl_RC" value="values" />
                          </node>
                          <node concept="1adDum" id="zU" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f1cc8a3L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="zQ" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="zV" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="zW" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="zX" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="zO" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="zY" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="zM" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="zZ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="zK" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="$0" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="zI" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="$1" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247523" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="zG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="z1" role="3cqZAp">
          <node concept="2OqwBi" id="$2" role="3clFbG">
            <node concept="37vLTw" id="$3" role="2Oq$k0">
              <ref role="3cqZAo" node="z3" resolve="b" />
            </node>
            <node concept="liA8E" id="$4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="$5" role="37wK5m">
                <property role="Xl_RC" value="INSERT INTO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="z2" role="3cqZAp">
          <node concept="2OqwBi" id="$6" role="3cqZAk">
            <node concept="37vLTw" id="$7" role="2Oq$k0">
              <ref role="3cqZAo" node="z3" resolve="b" />
            </node>
            <node concept="liA8E" id="$8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="yR" role="1B3o_S" />
      <node concept="3uibUv" id="yS" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lS" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForOrderBy" />
      <node concept="3clFbS" id="$9" role="3clF47">
        <node concept="3cpWs8" id="$c" role="3cqZAp">
          <node concept="3cpWsn" id="$j" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="$k" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="$l" role="33vP2m">
              <node concept="1pGfFk" id="$m" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="$n" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="$o" role="37wK5m">
                  <property role="Xl_RC" value="OrderBy" />
                </node>
                <node concept="1adDum" id="$p" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="$q" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="$r" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa61e251L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$d" role="3cqZAp">
          <node concept="2OqwBi" id="$s" role="3clFbG">
            <node concept="37vLTw" id="$t" role="2Oq$k0">
              <ref role="3cqZAo" node="$j" resolve="b" />
            </node>
            <node concept="liA8E" id="$u" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="$v" role="37wK5m" />
              <node concept="3clFbT" id="$w" role="37wK5m" />
              <node concept="3clFbT" id="$x" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$e" role="3cqZAp">
          <node concept="2OqwBi" id="$y" role="3clFbG">
            <node concept="37vLTw" id="$z" role="2Oq$k0">
              <ref role="3cqZAo" node="$j" resolve="b" />
            </node>
            <node concept="liA8E" id="$$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="$_" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722286850641" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$f" role="3cqZAp">
          <node concept="2OqwBi" id="$A" role="3clFbG">
            <node concept="37vLTw" id="$B" role="2Oq$k0">
              <ref role="3cqZAo" node="$j" resolve="b" />
            </node>
            <node concept="liA8E" id="$C" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="$D" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$g" role="3cqZAp">
          <node concept="2OqwBi" id="$E" role="3clFbG">
            <node concept="2OqwBi" id="$F" role="2Oq$k0">
              <node concept="2OqwBi" id="$H" role="2Oq$k0">
                <node concept="2OqwBi" id="$J" role="2Oq$k0">
                  <node concept="2OqwBi" id="$L" role="2Oq$k0">
                    <node concept="2OqwBi" id="$N" role="2Oq$k0">
                      <node concept="2OqwBi" id="$P" role="2Oq$k0">
                        <node concept="37vLTw" id="$R" role="2Oq$k0">
                          <ref role="3cqZAo" node="$j" resolve="b" />
                        </node>
                        <node concept="liA8E" id="$S" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="$T" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="$U" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa6a16cfL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="$Q" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="$V" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="$W" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="$X" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="$O" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="$Y" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="$M" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="$Z" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="$K" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="_0" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="$I" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="_1" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287388367" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="$G" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$h" role="3cqZAp">
          <node concept="2OqwBi" id="_2" role="3clFbG">
            <node concept="37vLTw" id="_3" role="2Oq$k0">
              <ref role="3cqZAo" node="$j" resolve="b" />
            </node>
            <node concept="liA8E" id="_4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="_5" role="37wK5m">
                <property role="Xl_RC" value="ORDER BY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="$i" role="3cqZAp">
          <node concept="2OqwBi" id="_6" role="3cqZAk">
            <node concept="37vLTw" id="_7" role="2Oq$k0">
              <ref role="3cqZAo" node="$j" resolve="b" />
            </node>
            <node concept="liA8E" id="_8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="$a" role="1B3o_S" />
      <node concept="3uibUv" id="$b" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lT" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForScript" />
      <node concept="3clFbS" id="_9" role="3clF47">
        <node concept="3cpWs8" id="_c" role="3cqZAp">
          <node concept="3cpWsn" id="_i" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="_j" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="_k" role="33vP2m">
              <node concept="1pGfFk" id="_l" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="_m" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="_n" role="37wK5m">
                  <property role="Xl_RC" value="Script" />
                </node>
                <node concept="1adDum" id="_o" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="_p" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="_q" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443bcdL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_d" role="3cqZAp">
          <node concept="2OqwBi" id="_r" role="3clFbG">
            <node concept="37vLTw" id="_s" role="2Oq$k0">
              <ref role="3cqZAo" node="_i" resolve="b" />
            </node>
            <node concept="liA8E" id="_t" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="_u" role="37wK5m" />
              <node concept="3clFbT" id="_v" role="37wK5m" />
              <node concept="3clFbT" id="_w" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_e" role="3cqZAp">
          <node concept="2OqwBi" id="_x" role="3clFbG">
            <node concept="37vLTw" id="_y" role="2Oq$k0">
              <ref role="3cqZAo" node="_i" resolve="b" />
            </node>
            <node concept="liA8E" id="_z" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="_$" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598285" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_f" role="3cqZAp">
          <node concept="2OqwBi" id="__" role="3clFbG">
            <node concept="37vLTw" id="_A" role="2Oq$k0">
              <ref role="3cqZAo" node="_i" resolve="b" />
            </node>
            <node concept="liA8E" id="_B" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="_C" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_g" role="3cqZAp">
          <node concept="2OqwBi" id="_D" role="3clFbG">
            <node concept="2OqwBi" id="_E" role="2Oq$k0">
              <node concept="2OqwBi" id="_G" role="2Oq$k0">
                <node concept="2OqwBi" id="_I" role="2Oq$k0">
                  <node concept="2OqwBi" id="_K" role="2Oq$k0">
                    <node concept="2OqwBi" id="_M" role="2Oq$k0">
                      <node concept="2OqwBi" id="_O" role="2Oq$k0">
                        <node concept="37vLTw" id="_Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="_i" resolve="b" />
                        </node>
                        <node concept="liA8E" id="_R" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="_S" role="37wK5m">
                            <property role="Xl_RC" value="operations" />
                          </node>
                          <node concept="1adDum" id="_T" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa655166L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="_P" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="_U" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="_V" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="_W" role="37wK5m">
                          <property role="1adDun" value="0x2b087ec3aa655164L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="_N" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="_X" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="_L" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="_Y" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="_J" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="_Z" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="_H" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="A0" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287075686" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_F" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="_h" role="3cqZAp">
          <node concept="2OqwBi" id="A1" role="3cqZAk">
            <node concept="37vLTw" id="A2" role="2Oq$k0">
              <ref role="3cqZAo" node="_i" resolve="b" />
            </node>
            <node concept="liA8E" id="A3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="_a" role="1B3o_S" />
      <node concept="3uibUv" id="_b" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lU" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSelect" />
      <node concept="3clFbS" id="A4" role="3clF47">
        <node concept="3cpWs8" id="A7" role="3cqZAp">
          <node concept="3cpWsn" id="Aj" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ak" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Al" role="33vP2m">
              <node concept="1pGfFk" id="Am" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="An" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Ao" role="37wK5m">
                  <property role="Xl_RC" value="Select" />
                </node>
                <node concept="1adDum" id="Ap" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Aq" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Ar" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e379L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A8" role="3cqZAp">
          <node concept="2OqwBi" id="As" role="3clFbG">
            <node concept="37vLTw" id="At" role="2Oq$k0">
              <ref role="3cqZAo" node="Aj" resolve="b" />
            </node>
            <node concept="liA8E" id="Au" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Av" role="37wK5m" />
              <node concept="3clFbT" id="Aw" role="37wK5m" />
              <node concept="3clFbT" id="Ax" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="A9" role="3cqZAp">
          <node concept="1PaTwC" id="Ay" role="1aUNEU">
            <node concept="3oM_SD" id="Az" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="A$" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aa" role="3cqZAp">
          <node concept="15s5l7" id="A_" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="AA" role="3clFbG">
            <node concept="37vLTw" id="AB" role="2Oq$k0">
              <ref role="3cqZAo" node="Aj" resolve="b" />
            </node>
            <node concept="liA8E" id="AC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="AD" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="AE" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="AF" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ab" role="3cqZAp">
          <node concept="2OqwBi" id="AG" role="3clFbG">
            <node concept="37vLTw" id="AH" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="AI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="AJ" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="AK" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="AL" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ac" role="3cqZAp">
          <node concept="2OqwBi" id="AM" role="3clFbG">
            <node concept="37vLTw" id="AN" role="2Oq$k0">
              <ref role="3cqZAo" node="Aj" resolve="b" />
            </node>
            <node concept="liA8E" id="AO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="AP" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7033755722359825273" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ad" role="3cqZAp">
          <node concept="2OqwBi" id="AQ" role="3clFbG">
            <node concept="37vLTw" id="AR" role="2Oq$k0">
              <ref role="3cqZAo" node="Aj" resolve="b" />
            </node>
            <node concept="liA8E" id="AS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="AT" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ae" role="3cqZAp">
          <node concept="2OqwBi" id="AU" role="3clFbG">
            <node concept="2OqwBi" id="AV" role="2Oq$k0">
              <node concept="2OqwBi" id="AX" role="2Oq$k0">
                <node concept="2OqwBi" id="AZ" role="2Oq$k0">
                  <node concept="2OqwBi" id="B1" role="2Oq$k0">
                    <node concept="2OqwBi" id="B3" role="2Oq$k0">
                      <node concept="2OqwBi" id="B5" role="2Oq$k0">
                        <node concept="37vLTw" id="B7" role="2Oq$k0">
                          <ref role="3cqZAo" node="Aj" resolve="b" />
                        </node>
                        <node concept="liA8E" id="B8" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="B9" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="Ba" role="37wK5m">
                            <property role="1adDun" value="0x11100ee73745172dL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="B6" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Bb" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Bc" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Bd" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="B4" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Be" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="B2" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Bf" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="B0" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Bg" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="AY" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Bh" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499654445" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="AW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Af" role="3cqZAp">
          <node concept="2OqwBi" id="Bi" role="3clFbG">
            <node concept="2OqwBi" id="Bj" role="2Oq$k0">
              <node concept="2OqwBi" id="Bl" role="2Oq$k0">
                <node concept="2OqwBi" id="Bn" role="2Oq$k0">
                  <node concept="2OqwBi" id="Bp" role="2Oq$k0">
                    <node concept="2OqwBi" id="Br" role="2Oq$k0">
                      <node concept="2OqwBi" id="Bt" role="2Oq$k0">
                        <node concept="37vLTw" id="Bv" role="2Oq$k0">
                          <ref role="3cqZAo" node="Aj" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Bw" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Bx" role="37wK5m">
                            <property role="Xl_RC" value="groupBy" />
                          </node>
                          <node concept="1adDum" id="By" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa6a1779L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Bu" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Bz" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="B$" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="B_" role="37wK5m">
                          <property role="1adDun" value="0x2b087ec3aa6a16ceL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Bs" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="BA" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Bq" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="BB" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Bo" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="BC" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Bm" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="BD" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287388537" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Bk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ag" role="3cqZAp">
          <node concept="2OqwBi" id="BE" role="3clFbG">
            <node concept="2OqwBi" id="BF" role="2Oq$k0">
              <node concept="2OqwBi" id="BH" role="2Oq$k0">
                <node concept="2OqwBi" id="BJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="BL" role="2Oq$k0">
                    <node concept="2OqwBi" id="BN" role="2Oq$k0">
                      <node concept="2OqwBi" id="BP" role="2Oq$k0">
                        <node concept="37vLTw" id="BR" role="2Oq$k0">
                          <ref role="3cqZAo" node="Aj" resolve="b" />
                        </node>
                        <node concept="liA8E" id="BS" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="BT" role="37wK5m">
                            <property role="Xl_RC" value="orderBy" />
                          </node>
                          <node concept="1adDum" id="BU" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa61e429L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="BQ" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="BV" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="BW" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="BX" role="37wK5m">
                          <property role="1adDun" value="0x2b087ec3aa61e251L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="BO" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="BY" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="BM" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="BZ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="BK" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="C0" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="BI" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="C1" role="37wK5m">
                  <property role="Xl_RC" value="3100867722286851113" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="BG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ah" role="3cqZAp">
          <node concept="2OqwBi" id="C2" role="3clFbG">
            <node concept="37vLTw" id="C3" role="2Oq$k0">
              <ref role="3cqZAo" node="Aj" resolve="b" />
            </node>
            <node concept="liA8E" id="C4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="C5" role="37wK5m">
                <property role="Xl_RC" value="SELECT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ai" role="3cqZAp">
          <node concept="2OqwBi" id="C6" role="3cqZAk">
            <node concept="37vLTw" id="C7" role="2Oq$k0">
              <ref role="3cqZAo" node="Aj" resolve="b" />
            </node>
            <node concept="liA8E" id="C8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="A5" role="1B3o_S" />
      <node concept="3uibUv" id="A6" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lV" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForStatement" />
      <node concept="3clFbS" id="C9" role="3clF47">
        <node concept="3cpWs8" id="Cc" role="3cqZAp">
          <node concept="3cpWsn" id="Ck" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Cl" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Cm" role="33vP2m">
              <node concept="1pGfFk" id="Cn" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Co" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Cp" role="37wK5m">
                  <property role="Xl_RC" value="Statement" />
                </node>
                <node concept="1adDum" id="Cq" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Cr" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Cs" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b30L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cd" role="3cqZAp">
          <node concept="2OqwBi" id="Ct" role="3clFbG">
            <node concept="37vLTw" id="Cu" role="2Oq$k0">
              <ref role="3cqZAo" node="Ck" resolve="b" />
            </node>
            <node concept="liA8E" id="Cv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Cw" role="37wK5m" />
              <node concept="3clFbT" id="Cx" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="Cy" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ce" role="3cqZAp">
          <node concept="2OqwBi" id="Cz" role="3clFbG">
            <node concept="37vLTw" id="C$" role="2Oq$k0">
              <ref role="3cqZAo" node="Ck" resolve="b" />
            </node>
            <node concept="liA8E" id="C_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="CA" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="CB" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="CC" role="37wK5m">
                <property role="1adDun" value="0x33d23ee961a0cbf3L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cf" role="3cqZAp">
          <node concept="2OqwBi" id="CD" role="3clFbG">
            <node concept="37vLTw" id="CE" role="2Oq$k0">
              <ref role="3cqZAo" node="Ck" resolve="b" />
            </node>
            <node concept="liA8E" id="CF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="CG" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598128" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cg" role="3cqZAp">
          <node concept="2OqwBi" id="CH" role="3clFbG">
            <node concept="37vLTw" id="CI" role="2Oq$k0">
              <ref role="3cqZAo" node="Ck" resolve="b" />
            </node>
            <node concept="liA8E" id="CJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="CK" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ch" role="3cqZAp">
          <node concept="2OqwBi" id="CL" role="3clFbG">
            <node concept="2OqwBi" id="CM" role="2Oq$k0">
              <node concept="2OqwBi" id="CO" role="2Oq$k0">
                <node concept="2OqwBi" id="CQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="CS" role="2Oq$k0">
                    <node concept="37vLTw" id="CU" role="2Oq$k0">
                      <ref role="3cqZAo" node="Ck" resolve="b" />
                    </node>
                    <node concept="liA8E" id="CV" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="CW" role="37wK5m">
                        <property role="Xl_RC" value="table" />
                      </node>
                      <node concept="1adDum" id="CX" role="37wK5m">
                        <property role="1adDun" value="0x625a3ba00f267366L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="CT" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="CY" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="CZ" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="D0" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b2eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="CR" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="D1" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="CP" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="D2" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255881062" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="CN" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ci" role="3cqZAp">
          <node concept="2OqwBi" id="D3" role="3clFbG">
            <node concept="2OqwBi" id="D4" role="2Oq$k0">
              <node concept="2OqwBi" id="D6" role="2Oq$k0">
                <node concept="2OqwBi" id="D8" role="2Oq$k0">
                  <node concept="2OqwBi" id="Da" role="2Oq$k0">
                    <node concept="2OqwBi" id="Dc" role="2Oq$k0">
                      <node concept="2OqwBi" id="De" role="2Oq$k0">
                        <node concept="37vLTw" id="Dg" role="2Oq$k0">
                          <ref role="3cqZAo" node="Ck" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Dh" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Di" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="Dj" role="37wK5m">
                            <property role="1adDun" value="0x75900635108a5f3bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Df" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Dk" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Dl" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Dm" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Dd" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Dn" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Db" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Do" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="D9" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Dp" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="D7" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Dq" role="37wK5m">
                  <property role="Xl_RC" value="8471277724064440123" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="D5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Cj" role="3cqZAp">
          <node concept="2OqwBi" id="Dr" role="3cqZAk">
            <node concept="37vLTw" id="Ds" role="2Oq$k0">
              <ref role="3cqZAo" node="Ck" resolve="b" />
            </node>
            <node concept="liA8E" id="Dt" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Ca" role="1B3o_S" />
      <node concept="3uibUv" id="Cb" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lW" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForUpdate" />
      <node concept="3clFbS" id="Du" role="3clF47">
        <node concept="3cpWs8" id="Dx" role="3cqZAp">
          <node concept="3cpWsn" id="DG" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="DH" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="DI" role="33vP2m">
              <node concept="1pGfFk" id="DJ" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="DK" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="DL" role="37wK5m">
                  <property role="Xl_RC" value="Update" />
                </node>
                <node concept="1adDum" id="DM" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="DN" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="DO" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f23853fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dy" role="3cqZAp">
          <node concept="2OqwBi" id="DP" role="3clFbG">
            <node concept="37vLTw" id="DQ" role="2Oq$k0">
              <ref role="3cqZAo" node="DG" resolve="b" />
            </node>
            <node concept="liA8E" id="DR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="DS" role="37wK5m" />
              <node concept="3clFbT" id="DT" role="37wK5m" />
              <node concept="3clFbT" id="DU" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="Dz" role="3cqZAp">
          <node concept="1PaTwC" id="DV" role="1aUNEU">
            <node concept="3oM_SD" id="DW" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="DX" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="D$" role="3cqZAp">
          <node concept="15s5l7" id="DY" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="DZ" role="3clFbG">
            <node concept="37vLTw" id="E0" role="2Oq$k0">
              <ref role="3cqZAo" node="DG" resolve="b" />
            </node>
            <node concept="liA8E" id="E1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="E2" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="E3" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="E4" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="D_" role="3cqZAp">
          <node concept="2OqwBi" id="E5" role="3clFbG">
            <node concept="37vLTw" id="E6" role="2Oq$k0">
              <ref role="3cqZAo" node="wc" resolve="b" />
            </node>
            <node concept="liA8E" id="E7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="E8" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="E9" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="Ea" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DA" role="3cqZAp">
          <node concept="2OqwBi" id="Eb" role="3clFbG">
            <node concept="37vLTw" id="Ec" role="2Oq$k0">
              <ref role="3cqZAo" node="DG" resolve="b" />
            </node>
            <node concept="liA8E" id="Ed" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Ee" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255689023" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DB" role="3cqZAp">
          <node concept="2OqwBi" id="Ef" role="3clFbG">
            <node concept="37vLTw" id="Eg" role="2Oq$k0">
              <ref role="3cqZAo" node="DG" resolve="b" />
            </node>
            <node concept="liA8E" id="Eh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Ei" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DC" role="3cqZAp">
          <node concept="2OqwBi" id="Ej" role="3clFbG">
            <node concept="2OqwBi" id="Ek" role="2Oq$k0">
              <node concept="2OqwBi" id="Em" role="2Oq$k0">
                <node concept="2OqwBi" id="Eo" role="2Oq$k0">
                  <node concept="2OqwBi" id="Eq" role="2Oq$k0">
                    <node concept="2OqwBi" id="Es" role="2Oq$k0">
                      <node concept="2OqwBi" id="Eu" role="2Oq$k0">
                        <node concept="37vLTw" id="Ew" role="2Oq$k0">
                          <ref role="3cqZAo" node="DG" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Ex" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Ey" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="Ez" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f238543L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Ev" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="E$" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="E_" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="EA" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Et" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="EB" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Er" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="EC" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Ep" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="ED" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="En" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="EE" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689027" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="El" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DD" role="3cqZAp">
          <node concept="2OqwBi" id="EF" role="3clFbG">
            <node concept="2OqwBi" id="EG" role="2Oq$k0">
              <node concept="2OqwBi" id="EI" role="2Oq$k0">
                <node concept="2OqwBi" id="EK" role="2Oq$k0">
                  <node concept="2OqwBi" id="EM" role="2Oq$k0">
                    <node concept="2OqwBi" id="EO" role="2Oq$k0">
                      <node concept="2OqwBi" id="EQ" role="2Oq$k0">
                        <node concept="37vLTw" id="ES" role="2Oq$k0">
                          <ref role="3cqZAo" node="DG" resolve="b" />
                        </node>
                        <node concept="liA8E" id="ET" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="EU" role="37wK5m">
                            <property role="Xl_RC" value="values" />
                          </node>
                          <node concept="1adDum" id="EV" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f23854bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ER" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="EW" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="EX" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="EY" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="EP" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="EZ" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="EN" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="F0" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="EL" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="F1" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="EJ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="F2" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689035" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="EH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DE" role="3cqZAp">
          <node concept="2OqwBi" id="F3" role="3clFbG">
            <node concept="37vLTw" id="F4" role="2Oq$k0">
              <ref role="3cqZAo" node="DG" resolve="b" />
            </node>
            <node concept="liA8E" id="F5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="F6" role="37wK5m">
                <property role="Xl_RC" value="UPDATE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="DF" role="3cqZAp">
          <node concept="2OqwBi" id="F7" role="3cqZAk">
            <node concept="37vLTw" id="F8" role="2Oq$k0">
              <ref role="3cqZAo" node="DG" resolve="b" />
            </node>
            <node concept="liA8E" id="F9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Dv" role="1B3o_S" />
      <node concept="3uibUv" id="Dw" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lX" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForValue" />
      <node concept="3clFbS" id="Fa" role="3clF47">
        <node concept="3cpWs8" id="Fd" role="3cqZAp">
          <node concept="3cpWsn" id="Fk" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Fl" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Fm" role="33vP2m">
              <node concept="1pGfFk" id="Fn" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Fo" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Fp" role="37wK5m">
                  <property role="Xl_RC" value="Value" />
                </node>
                <node concept="1adDum" id="Fq" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Fr" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Fs" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fe" role="3cqZAp">
          <node concept="2OqwBi" id="Ft" role="3clFbG">
            <node concept="37vLTw" id="Fu" role="2Oq$k0">
              <ref role="3cqZAo" node="Fk" resolve="b" />
            </node>
            <node concept="liA8E" id="Fv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Fw" role="37wK5m" />
              <node concept="3clFbT" id="Fx" role="37wK5m" />
              <node concept="3clFbT" id="Fy" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ff" role="3cqZAp">
          <node concept="2OqwBi" id="Fz" role="3clFbG">
            <node concept="37vLTw" id="F$" role="2Oq$k0">
              <ref role="3cqZAo" node="Fk" resolve="b" />
            </node>
            <node concept="liA8E" id="F_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="FA" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255247499" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fg" role="3cqZAp">
          <node concept="2OqwBi" id="FB" role="3clFbG">
            <node concept="37vLTw" id="FC" role="2Oq$k0">
              <ref role="3cqZAo" node="Fk" resolve="b" />
            </node>
            <node concept="liA8E" id="FD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="FE" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fh" role="3cqZAp">
          <node concept="2OqwBi" id="FF" role="3clFbG">
            <node concept="2OqwBi" id="FG" role="2Oq$k0">
              <node concept="2OqwBi" id="FI" role="2Oq$k0">
                <node concept="2OqwBi" id="FK" role="2Oq$k0">
                  <node concept="37vLTw" id="FM" role="2Oq$k0">
                    <ref role="3cqZAo" node="Fk" resolve="b" />
                  </node>
                  <node concept="liA8E" id="FN" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="FO" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="FP" role="37wK5m">
                      <property role="1adDun" value="0x625a3ba00f1cc88cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="FL" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="FQ" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499598137" />
                    <node concept="1adDum" id="FR" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="FS" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="FT" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b39L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="FJ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="FU" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247500" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="FH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fi" role="3cqZAp">
          <node concept="2OqwBi" id="FV" role="3clFbG">
            <node concept="2OqwBi" id="FW" role="2Oq$k0">
              <node concept="2OqwBi" id="FY" role="2Oq$k0">
                <node concept="2OqwBi" id="G0" role="2Oq$k0">
                  <node concept="37vLTw" id="G2" role="2Oq$k0">
                    <ref role="3cqZAo" node="Fk" resolve="b" />
                  </node>
                  <node concept="liA8E" id="G3" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="G4" role="37wK5m">
                      <property role="Xl_RC" value="value" />
                    </node>
                    <node concept="1adDum" id="G5" role="37wK5m">
                      <property role="1adDun" value="0x625a3ba00f1cc88eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="G1" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="G6" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="FZ" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="G7" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247502" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="FX" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Fj" role="3cqZAp">
          <node concept="2OqwBi" id="G8" role="3cqZAk">
            <node concept="37vLTw" id="G9" role="2Oq$k0">
              <ref role="3cqZAo" node="Fk" resolve="b" />
            </node>
            <node concept="liA8E" id="Ga" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Fb" role="1B3o_S" />
      <node concept="3uibUv" id="Fc" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="lY" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForWhere" />
      <node concept="3clFbS" id="Gb" role="3clF47">
        <node concept="3cpWs8" id="Ge" role="3cqZAp">
          <node concept="3cpWsn" id="Gl" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Gm" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Gn" role="33vP2m">
              <node concept="1pGfFk" id="Go" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Gp" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Gq" role="37wK5m">
                  <property role="Xl_RC" value="Where" />
                </node>
                <node concept="1adDum" id="Gr" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Gs" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Gt" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e37bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Gf" role="3cqZAp">
          <node concept="2OqwBi" id="Gu" role="3clFbG">
            <node concept="37vLTw" id="Gv" role="2Oq$k0">
              <ref role="3cqZAo" node="Gl" resolve="b" />
            </node>
            <node concept="liA8E" id="Gw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Gx" role="37wK5m" />
              <node concept="3clFbT" id="Gy" role="37wK5m" />
              <node concept="3clFbT" id="Gz" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Gg" role="3cqZAp">
          <node concept="2OqwBi" id="G$" role="3clFbG">
            <node concept="37vLTw" id="G_" role="2Oq$k0">
              <ref role="3cqZAo" node="Gl" resolve="b" />
            </node>
            <node concept="liA8E" id="GA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="GB" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7033755722359825275" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Gh" role="3cqZAp">
          <node concept="2OqwBi" id="GC" role="3clFbG">
            <node concept="37vLTw" id="GD" role="2Oq$k0">
              <ref role="3cqZAo" node="Gl" resolve="b" />
            </node>
            <node concept="liA8E" id="GE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="GF" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Gi" role="3cqZAp">
          <node concept="2OqwBi" id="GG" role="3clFbG">
            <node concept="2OqwBi" id="GH" role="2Oq$k0">
              <node concept="2OqwBi" id="GJ" role="2Oq$k0">
                <node concept="2OqwBi" id="GL" role="2Oq$k0">
                  <node concept="2OqwBi" id="GN" role="2Oq$k0">
                    <node concept="2OqwBi" id="GP" role="2Oq$k0">
                      <node concept="2OqwBi" id="GR" role="2Oq$k0">
                        <node concept="37vLTw" id="GT" role="2Oq$k0">
                          <ref role="3cqZAo" node="Gl" resolve="b" />
                        </node>
                        <node concept="liA8E" id="GU" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="GV" role="37wK5m">
                            <property role="Xl_RC" value="conditions" />
                          </node>
                          <node concept="1adDum" id="GW" role="37wK5m">
                            <property role="1adDun" value="0x11100ee7374a23b4L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="GS" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="GX" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="GY" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="GZ" role="37wK5m">
                          <property role="1adDun" value="0x23d860ebbb86c06cL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="GQ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="H0" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="GO" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="H1" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="GM" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="H2" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="GK" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="H3" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499985332" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="GI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Gj" role="3cqZAp">
          <node concept="2OqwBi" id="H4" role="3clFbG">
            <node concept="37vLTw" id="H5" role="2Oq$k0">
              <ref role="3cqZAo" node="Gl" resolve="b" />
            </node>
            <node concept="liA8E" id="H6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="H7" role="37wK5m">
                <property role="Xl_RC" value="WHERE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Gk" role="3cqZAp">
          <node concept="2OqwBi" id="H8" role="3cqZAk">
            <node concept="37vLTw" id="H9" role="2Oq$k0">
              <ref role="3cqZAo" node="Gl" resolve="b" />
            </node>
            <node concept="liA8E" id="Ha" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Gc" role="1B3o_S" />
      <node concept="3uibUv" id="Gd" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
  </node>
</model>

