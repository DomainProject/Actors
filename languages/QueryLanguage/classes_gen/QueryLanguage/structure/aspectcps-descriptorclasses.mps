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
      <property role="TrG5h" value="props_AggregationFunction" />
      <node concept="3uibUv" id="w" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="x" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_AllColumns" />
      <node concept="3uibUv" id="y" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Average" />
      <node concept="3uibUv" id="$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Column" />
      <node concept="3uibUv" id="A" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="B" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ColumnRef" />
      <node concept="3uibUv" id="C" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="D" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Condition" />
      <node concept="3uibUv" id="E" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="F" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Count" />
      <node concept="3uibUv" id="G" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="H" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CreateTable" />
      <node concept="3uibUv" id="I" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="J" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="a" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_DBOperation" />
      <node concept="3uibUv" id="K" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="L" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="b" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Delete" />
      <node concept="3uibUv" id="M" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="N" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="c" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_GroupBy" />
      <node concept="3uibUv" id="O" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="P" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="d" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_InsertInto" />
      <node concept="3uibUv" id="Q" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="R" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="e" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_JoinCondition" />
      <node concept="3uibUv" id="S" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="T" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="f" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Max" />
      <node concept="3uibUv" id="U" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="V" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="g" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Min" />
      <node concept="3uibUv" id="W" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="X" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="h" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_MultipleCondition" />
      <node concept="3uibUv" id="Y" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="Z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="i" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_OrderBy" />
      <node concept="3uibUv" id="10" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="11" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="j" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Script" />
      <node concept="3uibUv" id="12" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="13" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="k" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Select" />
      <node concept="3uibUv" id="14" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="15" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="l" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_SelectColumn" />
      <node concept="3uibUv" id="16" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="17" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="m" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_SimpleCondition" />
      <node concept="3uibUv" id="18" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="19" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="n" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Statement" />
      <node concept="3uibUv" id="1a" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="1b" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="o" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Sum" />
      <node concept="3uibUv" id="1c" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="1d" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="p" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_TableReference" />
      <node concept="3uibUv" id="1e" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="1f" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="q" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Update" />
      <node concept="3uibUv" id="1g" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="1h" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="r" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Value" />
      <node concept="3uibUv" id="1i" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="1j" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="s" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Where" />
      <node concept="3uibUv" id="1k" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="1l" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="t" role="1B3o_S" />
    <node concept="2tJIrI" id="u" role="jymVt" />
    <node concept="3clFb_" id="v" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1m" role="1B3o_S" />
      <node concept="37vLTG" id="1n" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="1s" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="1o" role="3clF47">
        <node concept="3cpWs8" id="1t" role="3cqZAp">
          <node concept="3cpWsn" id="1w" role="3cpWs9">
            <property role="TrG5h" value="structureDescriptor" />
            <node concept="3uibUv" id="1x" role="1tU5fm">
              <ref role="3uigEE" node="qY" resolve="StructureAspectDescriptor" />
            </node>
            <node concept="10QFUN" id="1y" role="33vP2m">
              <node concept="3uibUv" id="1z" role="10QFUM">
                <ref role="3uigEE" node="qY" resolve="StructureAspectDescriptor" />
              </node>
              <node concept="2OqwBi" id="1$" role="10QFUP">
                <node concept="37vLTw" id="1_" role="2Oq$k0">
                  <ref role="3cqZAo" to="ze1i:~ConceptPresentationAspectBase.myLanguageRuntime" resolve="myLanguageRuntime" />
                </node>
                <node concept="liA8E" id="1A" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                  <node concept="3VsKOn" id="1B" role="37wK5m">
                    <ref role="3VsUkX" to="ze1i:~StructureAspectDescriptor" resolve="StructureAspectDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="1u" role="3cqZAp">
          <node concept="2OqwBi" id="1C" role="3KbGdf">
            <node concept="37vLTw" id="24" role="2Oq$k0">
              <ref role="3cqZAo" node="1w" resolve="structureDescriptor" />
            </node>
            <node concept="liA8E" id="25" role="2OqNvi">
              <ref role="37wK5l" node="rG" resolve="internalIndex" />
              <node concept="37vLTw" id="26" role="37wK5m">
                <ref role="3cqZAo" node="1n" resolve="c" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1D" role="3KbHQx">
            <node concept="3clFbS" id="27" role="3Kbo56">
              <node concept="3clFbJ" id="29" role="3cqZAp">
                <node concept="3clFbS" id="2b" role="3clFbx">
                  <node concept="3cpWs8" id="2d" role="3cqZAp">
                    <node concept="3cpWsn" id="2f" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2g" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2h" role="33vP2m">
                        <node concept="1pGfFk" id="2i" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2e" role="3cqZAp">
                    <node concept="37vLTI" id="2j" role="3clFbG">
                      <node concept="2OqwBi" id="2k" role="37vLTx">
                        <node concept="37vLTw" id="2m" role="2Oq$k0">
                          <ref role="3cqZAo" node="2f" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2n" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2l" role="37vLTJ">
                        <ref role="3cqZAo" node="2" resolve="props_AggregationFunction" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2c" role="3clFbw">
                  <node concept="10Nm6u" id="2o" role="3uHU7w" />
                  <node concept="37vLTw" id="2p" role="3uHU7B">
                    <ref role="3cqZAo" node="2" resolve="props_AggregationFunction" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2a" role="3cqZAp">
                <node concept="37vLTw" id="2q" role="3cqZAk">
                  <ref role="3cqZAo" node="2" resolve="props_AggregationFunction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="28" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m4" resolve="AggregationFunction" />
            </node>
          </node>
          <node concept="3KbdKl" id="1E" role="3KbHQx">
            <node concept="3clFbS" id="2r" role="3Kbo56">
              <node concept="3clFbJ" id="2t" role="3cqZAp">
                <node concept="3clFbS" id="2v" role="3clFbx">
                  <node concept="3cpWs8" id="2x" role="3cqZAp">
                    <node concept="3cpWsn" id="2$" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2_" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2A" role="33vP2m">
                        <node concept="1pGfFk" id="2B" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2y" role="3cqZAp">
                    <node concept="2OqwBi" id="2C" role="3clFbG">
                      <node concept="37vLTw" id="2D" role="2Oq$k0">
                        <ref role="3cqZAo" node="2$" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2E" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:1047910270175909651" />
                        <node concept="Xl_RD" id="2F" role="37wK5m">
                          <property role="Xl_RC" value="*" />
                          <uo k="s:originTrace" v="n:1047910270175909651" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2z" role="3cqZAp">
                    <node concept="37vLTI" id="2G" role="3clFbG">
                      <node concept="2OqwBi" id="2H" role="37vLTx">
                        <node concept="37vLTw" id="2J" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2K" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2I" role="37vLTJ">
                        <ref role="3cqZAo" node="3" resolve="props_AllColumns" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2w" role="3clFbw">
                  <node concept="10Nm6u" id="2L" role="3uHU7w" />
                  <node concept="37vLTw" id="2M" role="3uHU7B">
                    <ref role="3cqZAo" node="3" resolve="props_AllColumns" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2u" role="3cqZAp">
                <node concept="37vLTw" id="2N" role="3cqZAk">
                  <ref role="3cqZAo" node="3" resolve="props_AllColumns" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2s" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m5" resolve="AllColumns" />
            </node>
          </node>
          <node concept="3KbdKl" id="1F" role="3KbHQx">
            <node concept="3clFbS" id="2O" role="3Kbo56">
              <node concept="3clFbJ" id="2Q" role="3cqZAp">
                <node concept="3clFbS" id="2S" role="3clFbx">
                  <node concept="3cpWs8" id="2U" role="3cqZAp">
                    <node concept="3cpWsn" id="2X" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2Y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2Z" role="33vP2m">
                        <node concept="1pGfFk" id="30" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2V" role="3cqZAp">
                    <node concept="2OqwBi" id="31" role="3clFbG">
                      <node concept="37vLTw" id="32" role="2Oq$k0">
                        <ref role="3cqZAo" node="2X" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="33" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6736945802599629716" />
                        <node concept="Xl_RD" id="34" role="37wK5m">
                          <property role="Xl_RC" value="AVG" />
                          <uo k="s:originTrace" v="n:6736945802599629716" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2W" role="3cqZAp">
                    <node concept="37vLTI" id="35" role="3clFbG">
                      <node concept="2OqwBi" id="36" role="37vLTx">
                        <node concept="37vLTw" id="38" role="2Oq$k0">
                          <ref role="3cqZAo" node="2X" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="39" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="37" role="37vLTJ">
                        <ref role="3cqZAo" node="4" resolve="props_Average" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2T" role="3clFbw">
                  <node concept="10Nm6u" id="3a" role="3uHU7w" />
                  <node concept="37vLTw" id="3b" role="3uHU7B">
                    <ref role="3cqZAo" node="4" resolve="props_Average" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2R" role="3cqZAp">
                <node concept="37vLTw" id="3c" role="3cqZAk">
                  <ref role="3cqZAo" node="4" resolve="props_Average" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2P" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m6" resolve="Average" />
            </node>
          </node>
          <node concept="3KbdKl" id="1G" role="3KbHQx">
            <node concept="3clFbS" id="3d" role="3Kbo56">
              <node concept="3clFbJ" id="3f" role="3cqZAp">
                <node concept="3clFbS" id="3h" role="3clFbx">
                  <node concept="3cpWs8" id="3j" role="3cqZAp">
                    <node concept="3cpWsn" id="3m" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3n" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3o" role="33vP2m">
                        <node concept="1pGfFk" id="3p" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3k" role="3cqZAp">
                    <node concept="2OqwBi" id="3q" role="3clFbG">
                      <node concept="37vLTw" id="3r" role="2Oq$k0">
                        <ref role="3cqZAo" node="3m" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3s" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598131" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3l" role="3cqZAp">
                    <node concept="37vLTI" id="3t" role="3clFbG">
                      <node concept="2OqwBi" id="3u" role="37vLTx">
                        <node concept="37vLTw" id="3w" role="2Oq$k0">
                          <ref role="3cqZAo" node="3m" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3x" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3v" role="37vLTJ">
                        <ref role="3cqZAo" node="5" resolve="props_Column" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3i" role="3clFbw">
                  <node concept="10Nm6u" id="3y" role="3uHU7w" />
                  <node concept="37vLTw" id="3z" role="3uHU7B">
                    <ref role="3cqZAo" node="5" resolve="props_Column" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3g" role="3cqZAp">
                <node concept="37vLTw" id="3$" role="3cqZAk">
                  <ref role="3cqZAo" node="5" resolve="props_Column" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3e" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m7" resolve="Column" />
            </node>
          </node>
          <node concept="3KbdKl" id="1H" role="3KbHQx">
            <node concept="3clFbS" id="3_" role="3Kbo56">
              <node concept="3clFbJ" id="3B" role="3cqZAp">
                <node concept="3clFbS" id="3D" role="3clFbx">
                  <node concept="3cpWs8" id="3F" role="3cqZAp">
                    <node concept="3cpWsn" id="3I" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3J" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3K" role="33vP2m">
                        <node concept="1pGfFk" id="3L" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3G" role="3cqZAp">
                    <node concept="2OqwBi" id="3M" role="3clFbG">
                      <node concept="37vLTw" id="3N" role="2Oq$k0">
                        <ref role="3cqZAo" node="3I" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3O" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:1229499084500457460" />
                        <node concept="1adDum" id="3P" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="3Q" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="3R" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="1adDum" id="3S" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f5L" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="3T" role="37wK5m">
                          <property role="Xl_RC" value="column" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="3U" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                        <node concept="Xl_RD" id="3V" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:1229499084500457460" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3H" role="3cqZAp">
                    <node concept="37vLTI" id="3W" role="3clFbG">
                      <node concept="2OqwBi" id="3X" role="37vLTx">
                        <node concept="37vLTw" id="3Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="3I" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="40" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3Y" role="37vLTJ">
                        <ref role="3cqZAo" node="6" resolve="props_ColumnRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3E" role="3clFbw">
                  <node concept="10Nm6u" id="41" role="3uHU7w" />
                  <node concept="37vLTw" id="42" role="3uHU7B">
                    <ref role="3cqZAo" node="6" resolve="props_ColumnRef" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3C" role="3cqZAp">
                <node concept="37vLTw" id="43" role="3cqZAk">
                  <ref role="3cqZAo" node="6" resolve="props_ColumnRef" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3A" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m8" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="3KbdKl" id="1I" role="3KbHQx">
            <node concept="3clFbS" id="44" role="3Kbo56">
              <node concept="3clFbJ" id="46" role="3cqZAp">
                <node concept="3clFbS" id="48" role="3clFbx">
                  <node concept="3cpWs8" id="4a" role="3cqZAp">
                    <node concept="3cpWsn" id="4c" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4d" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4e" role="33vP2m">
                        <node concept="1pGfFk" id="4f" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4b" role="3cqZAp">
                    <node concept="37vLTI" id="4g" role="3clFbG">
                      <node concept="2OqwBi" id="4h" role="37vLTx">
                        <node concept="37vLTw" id="4j" role="2Oq$k0">
                          <ref role="3cqZAo" node="4c" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4k" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4i" role="37vLTJ">
                        <ref role="3cqZAo" node="7" resolve="props_Condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="49" role="3clFbw">
                  <node concept="10Nm6u" id="4l" role="3uHU7w" />
                  <node concept="37vLTw" id="4m" role="3uHU7B">
                    <ref role="3cqZAo" node="7" resolve="props_Condition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="47" role="3cqZAp">
                <node concept="37vLTw" id="4n" role="3cqZAk">
                  <ref role="3cqZAo" node="7" resolve="props_Condition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="45" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m9" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1J" role="3KbHQx">
            <node concept="3clFbS" id="4o" role="3Kbo56">
              <node concept="3clFbJ" id="4q" role="3cqZAp">
                <node concept="3clFbS" id="4s" role="3clFbx">
                  <node concept="3cpWs8" id="4u" role="3cqZAp">
                    <node concept="3cpWsn" id="4x" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4z" role="33vP2m">
                        <node concept="1pGfFk" id="4$" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4v" role="3cqZAp">
                    <node concept="2OqwBi" id="4_" role="3clFbG">
                      <node concept="37vLTw" id="4A" role="2Oq$k0">
                        <ref role="3cqZAo" node="4x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4B" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6736945802599629714" />
                        <node concept="Xl_RD" id="4C" role="37wK5m">
                          <property role="Xl_RC" value="COUNT" />
                          <uo k="s:originTrace" v="n:6736945802599629714" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4w" role="3cqZAp">
                    <node concept="37vLTI" id="4D" role="3clFbG">
                      <node concept="2OqwBi" id="4E" role="37vLTx">
                        <node concept="37vLTw" id="4G" role="2Oq$k0">
                          <ref role="3cqZAo" node="4x" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4H" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4F" role="37vLTJ">
                        <ref role="3cqZAo" node="8" resolve="props_Count" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4t" role="3clFbw">
                  <node concept="10Nm6u" id="4I" role="3uHU7w" />
                  <node concept="37vLTw" id="4J" role="3uHU7B">
                    <ref role="3cqZAo" node="8" resolve="props_Count" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4r" role="3cqZAp">
                <node concept="37vLTw" id="4K" role="3cqZAk">
                  <ref role="3cqZAo" node="8" resolve="props_Count" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4p" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ma" resolve="Count" />
            </node>
          </node>
          <node concept="3KbdKl" id="1K" role="3KbHQx">
            <node concept="3clFbS" id="4L" role="3Kbo56">
              <node concept="3clFbJ" id="4N" role="3cqZAp">
                <node concept="3clFbS" id="4P" role="3clFbx">
                  <node concept="3cpWs8" id="4R" role="3cqZAp">
                    <node concept="3cpWsn" id="4U" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4V" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4W" role="33vP2m">
                        <node concept="1pGfFk" id="4X" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4S" role="3cqZAp">
                    <node concept="2OqwBi" id="4Y" role="3clFbG">
                      <node concept="37vLTw" id="4Z" role="2Oq$k0">
                        <ref role="3cqZAo" node="4U" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="50" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598126" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4T" role="3cqZAp">
                    <node concept="37vLTI" id="51" role="3clFbG">
                      <node concept="2OqwBi" id="52" role="37vLTx">
                        <node concept="37vLTw" id="54" role="2Oq$k0">
                          <ref role="3cqZAo" node="4U" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="55" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="53" role="37vLTJ">
                        <ref role="3cqZAo" node="9" resolve="props_CreateTable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4Q" role="3clFbw">
                  <node concept="10Nm6u" id="56" role="3uHU7w" />
                  <node concept="37vLTw" id="57" role="3uHU7B">
                    <ref role="3cqZAo" node="9" resolve="props_CreateTable" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4O" role="3cqZAp">
                <node concept="37vLTw" id="58" role="3cqZAk">
                  <ref role="3cqZAo" node="9" resolve="props_CreateTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4M" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mb" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="1L" role="3KbHQx">
            <node concept="3clFbS" id="59" role="3Kbo56">
              <node concept="3clFbJ" id="5b" role="3cqZAp">
                <node concept="3clFbS" id="5d" role="3clFbx">
                  <node concept="3cpWs8" id="5f" role="3cqZAp">
                    <node concept="3cpWsn" id="5h" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5i" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5j" role="33vP2m">
                        <node concept="1pGfFk" id="5k" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5g" role="3cqZAp">
                    <node concept="37vLTI" id="5l" role="3clFbG">
                      <node concept="2OqwBi" id="5m" role="37vLTx">
                        <node concept="37vLTw" id="5o" role="2Oq$k0">
                          <ref role="3cqZAo" node="5h" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5p" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5n" role="37vLTJ">
                        <ref role="3cqZAo" node="a" resolve="props_DBOperation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5e" role="3clFbw">
                  <node concept="10Nm6u" id="5q" role="3uHU7w" />
                  <node concept="37vLTw" id="5r" role="3uHU7B">
                    <ref role="3cqZAo" node="a" resolve="props_DBOperation" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5c" role="3cqZAp">
                <node concept="37vLTw" id="5s" role="3cqZAk">
                  <ref role="3cqZAo" node="a" resolve="props_DBOperation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5a" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mc" resolve="DBOperation" />
            </node>
          </node>
          <node concept="3KbdKl" id="1M" role="3KbHQx">
            <node concept="3clFbS" id="5t" role="3Kbo56">
              <node concept="3clFbJ" id="5v" role="3cqZAp">
                <node concept="3clFbS" id="5x" role="3clFbx">
                  <node concept="3cpWs8" id="5z" role="3cqZAp">
                    <node concept="3cpWsn" id="5A" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5B" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5C" role="33vP2m">
                        <node concept="1pGfFk" id="5D" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5$" role="3cqZAp">
                    <node concept="2OqwBi" id="5E" role="3clFbG">
                      <node concept="37vLTw" id="5F" role="2Oq$k0">
                        <ref role="3cqZAo" node="5A" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5G" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:3100867722286999193" />
                        <node concept="Xl_RD" id="5H" role="37wK5m">
                          <property role="Xl_RC" value="DELETE" />
                          <uo k="s:originTrace" v="n:3100867722286999193" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5_" role="3cqZAp">
                    <node concept="37vLTI" id="5I" role="3clFbG">
                      <node concept="2OqwBi" id="5J" role="37vLTx">
                        <node concept="37vLTw" id="5L" role="2Oq$k0">
                          <ref role="3cqZAo" node="5A" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5M" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5K" role="37vLTJ">
                        <ref role="3cqZAo" node="b" resolve="props_Delete" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5y" role="3clFbw">
                  <node concept="10Nm6u" id="5N" role="3uHU7w" />
                  <node concept="37vLTw" id="5O" role="3uHU7B">
                    <ref role="3cqZAo" node="b" resolve="props_Delete" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5w" role="3cqZAp">
                <node concept="37vLTw" id="5P" role="3cqZAk">
                  <ref role="3cqZAo" node="b" resolve="props_Delete" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5u" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="md" resolve="Delete" />
            </node>
          </node>
          <node concept="3KbdKl" id="1N" role="3KbHQx">
            <node concept="3clFbS" id="5Q" role="3Kbo56">
              <node concept="3clFbJ" id="5S" role="3cqZAp">
                <node concept="3clFbS" id="5U" role="3clFbx">
                  <node concept="3cpWs8" id="5W" role="3cqZAp">
                    <node concept="3cpWsn" id="5Z" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="60" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="61" role="33vP2m">
                        <node concept="1pGfFk" id="62" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5X" role="3cqZAp">
                    <node concept="2OqwBi" id="63" role="3clFbG">
                      <node concept="37vLTw" id="64" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Z" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="65" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:3100867722287388366" />
                        <node concept="Xl_RD" id="66" role="37wK5m">
                          <property role="Xl_RC" value="GROUP BY" />
                          <uo k="s:originTrace" v="n:3100867722287388366" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5Y" role="3cqZAp">
                    <node concept="37vLTI" id="67" role="3clFbG">
                      <node concept="2OqwBi" id="68" role="37vLTx">
                        <node concept="37vLTw" id="6a" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Z" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6b" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="69" role="37vLTJ">
                        <ref role="3cqZAo" node="c" resolve="props_GroupBy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5V" role="3clFbw">
                  <node concept="10Nm6u" id="6c" role="3uHU7w" />
                  <node concept="37vLTw" id="6d" role="3uHU7B">
                    <ref role="3cqZAo" node="c" resolve="props_GroupBy" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5T" role="3cqZAp">
                <node concept="37vLTw" id="6e" role="3cqZAk">
                  <ref role="3cqZAo" node="c" resolve="props_GroupBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5R" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="me" resolve="GroupBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="1O" role="3KbHQx">
            <node concept="3clFbS" id="6f" role="3Kbo56">
              <node concept="3clFbJ" id="6h" role="3cqZAp">
                <node concept="3clFbS" id="6j" role="3clFbx">
                  <node concept="3cpWs8" id="6l" role="3cqZAp">
                    <node concept="3cpWsn" id="6o" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6p" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6q" role="33vP2m">
                        <node concept="1pGfFk" id="6r" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6m" role="3cqZAp">
                    <node concept="2OqwBi" id="6s" role="3clFbG">
                      <node concept="37vLTw" id="6t" role="2Oq$k0">
                        <ref role="3cqZAo" node="6o" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6u" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255225544" />
                        <node concept="Xl_RD" id="6v" role="37wK5m">
                          <property role="Xl_RC" value="INSERT INTO" />
                          <uo k="s:originTrace" v="n:7087042522255225544" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6n" role="3cqZAp">
                    <node concept="37vLTI" id="6w" role="3clFbG">
                      <node concept="2OqwBi" id="6x" role="37vLTx">
                        <node concept="37vLTw" id="6z" role="2Oq$k0">
                          <ref role="3cqZAo" node="6o" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6$" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6y" role="37vLTJ">
                        <ref role="3cqZAo" node="d" resolve="props_InsertInto" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6k" role="3clFbw">
                  <node concept="10Nm6u" id="6_" role="3uHU7w" />
                  <node concept="37vLTw" id="6A" role="3uHU7B">
                    <ref role="3cqZAo" node="d" resolve="props_InsertInto" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6i" role="3cqZAp">
                <node concept="37vLTw" id="6B" role="3cqZAk">
                  <ref role="3cqZAo" node="d" resolve="props_InsertInto" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6g" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mf" resolve="InsertInto" />
            </node>
          </node>
          <node concept="3KbdKl" id="1P" role="3KbHQx">
            <node concept="3clFbS" id="6C" role="3Kbo56">
              <node concept="3clFbJ" id="6E" role="3cqZAp">
                <node concept="3clFbS" id="6G" role="3clFbx">
                  <node concept="3cpWs8" id="6I" role="3cqZAp">
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
                  <node concept="3clFbF" id="6J" role="3cqZAp">
                    <node concept="2OqwBi" id="6P" role="3clFbG">
                      <node concept="37vLTw" id="6Q" role="2Oq$k0">
                        <ref role="3cqZAo" node="6L" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6R" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7824142728409239622" />
                        <node concept="Xl_RD" id="6S" role="37wK5m">
                          <property role="Xl_RC" value="JoinCondition" />
                          <uo k="s:originTrace" v="n:7824142728409239622" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6K" role="3cqZAp">
                    <node concept="37vLTI" id="6T" role="3clFbG">
                      <node concept="2OqwBi" id="6U" role="37vLTx">
                        <node concept="37vLTw" id="6W" role="2Oq$k0">
                          <ref role="3cqZAo" node="6L" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6X" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6V" role="37vLTJ">
                        <ref role="3cqZAo" node="e" resolve="props_JoinCondition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6H" role="3clFbw">
                  <node concept="10Nm6u" id="6Y" role="3uHU7w" />
                  <node concept="37vLTw" id="6Z" role="3uHU7B">
                    <ref role="3cqZAo" node="e" resolve="props_JoinCondition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6F" role="3cqZAp">
                <node concept="37vLTw" id="70" role="3cqZAk">
                  <ref role="3cqZAo" node="e" resolve="props_JoinCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6D" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mg" resolve="JoinCondition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1Q" role="3KbHQx">
            <node concept="3clFbS" id="71" role="3Kbo56">
              <node concept="3clFbJ" id="73" role="3cqZAp">
                <node concept="3clFbS" id="75" role="3clFbx">
                  <node concept="3cpWs8" id="77" role="3cqZAp">
                    <node concept="3cpWsn" id="7a" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7b" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7c" role="33vP2m">
                        <node concept="1pGfFk" id="7d" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="78" role="3cqZAp">
                    <node concept="2OqwBi" id="7e" role="3clFbG">
                      <node concept="37vLTw" id="7f" role="2Oq$k0">
                        <ref role="3cqZAo" node="7a" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7g" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6736945802599629712" />
                        <node concept="Xl_RD" id="7h" role="37wK5m">
                          <property role="Xl_RC" value="MAX" />
                          <uo k="s:originTrace" v="n:6736945802599629712" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="79" role="3cqZAp">
                    <node concept="37vLTI" id="7i" role="3clFbG">
                      <node concept="2OqwBi" id="7j" role="37vLTx">
                        <node concept="37vLTw" id="7l" role="2Oq$k0">
                          <ref role="3cqZAo" node="7a" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7m" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7k" role="37vLTJ">
                        <ref role="3cqZAo" node="f" resolve="props_Max" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="76" role="3clFbw">
                  <node concept="10Nm6u" id="7n" role="3uHU7w" />
                  <node concept="37vLTw" id="7o" role="3uHU7B">
                    <ref role="3cqZAo" node="f" resolve="props_Max" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="74" role="3cqZAp">
                <node concept="37vLTw" id="7p" role="3cqZAk">
                  <ref role="3cqZAo" node="f" resolve="props_Max" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="72" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mh" resolve="Max" />
            </node>
          </node>
          <node concept="3KbdKl" id="1R" role="3KbHQx">
            <node concept="3clFbS" id="7q" role="3Kbo56">
              <node concept="3clFbJ" id="7s" role="3cqZAp">
                <node concept="3clFbS" id="7u" role="3clFbx">
                  <node concept="3cpWs8" id="7w" role="3cqZAp">
                    <node concept="3cpWsn" id="7z" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7$" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7_" role="33vP2m">
                        <node concept="1pGfFk" id="7A" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7x" role="3cqZAp">
                    <node concept="2OqwBi" id="7B" role="3clFbG">
                      <node concept="37vLTw" id="7C" role="2Oq$k0">
                        <ref role="3cqZAo" node="7z" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7D" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6736945802599629709" />
                        <node concept="Xl_RD" id="7E" role="37wK5m">
                          <property role="Xl_RC" value="MIN" />
                          <uo k="s:originTrace" v="n:6736945802599629709" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7y" role="3cqZAp">
                    <node concept="37vLTI" id="7F" role="3clFbG">
                      <node concept="2OqwBi" id="7G" role="37vLTx">
                        <node concept="37vLTw" id="7I" role="2Oq$k0">
                          <ref role="3cqZAo" node="7z" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7J" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7H" role="37vLTJ">
                        <ref role="3cqZAo" node="g" resolve="props_Min" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7v" role="3clFbw">
                  <node concept="10Nm6u" id="7K" role="3uHU7w" />
                  <node concept="37vLTw" id="7L" role="3uHU7B">
                    <ref role="3cqZAo" node="g" resolve="props_Min" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7t" role="3cqZAp">
                <node concept="37vLTw" id="7M" role="3cqZAk">
                  <ref role="3cqZAo" node="g" resolve="props_Min" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7r" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mi" resolve="Min" />
            </node>
          </node>
          <node concept="3KbdKl" id="1S" role="3KbHQx">
            <node concept="3clFbS" id="7N" role="3Kbo56">
              <node concept="3clFbJ" id="7P" role="3cqZAp">
                <node concept="3clFbS" id="7R" role="3clFbx">
                  <node concept="3cpWs8" id="7T" role="3cqZAp">
                    <node concept="3cpWsn" id="7W" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7X" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7Y" role="33vP2m">
                        <node concept="1pGfFk" id="7Z" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7U" role="3cqZAp">
                    <node concept="2OqwBi" id="80" role="3clFbG">
                      <node concept="37vLTw" id="81" role="2Oq$k0">
                        <ref role="3cqZAo" node="7W" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="82" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6839590609873398299" />
                        <node concept="Xl_RD" id="83" role="37wK5m">
                          <property role="Xl_RC" value="MultipleCondition" />
                          <uo k="s:originTrace" v="n:6839590609873398299" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7V" role="3cqZAp">
                    <node concept="37vLTI" id="84" role="3clFbG">
                      <node concept="2OqwBi" id="85" role="37vLTx">
                        <node concept="37vLTw" id="87" role="2Oq$k0">
                          <ref role="3cqZAo" node="7W" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="88" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="86" role="37vLTJ">
                        <ref role="3cqZAo" node="h" resolve="props_MultipleCondition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7S" role="3clFbw">
                  <node concept="10Nm6u" id="89" role="3uHU7w" />
                  <node concept="37vLTw" id="8a" role="3uHU7B">
                    <ref role="3cqZAo" node="h" resolve="props_MultipleCondition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7Q" role="3cqZAp">
                <node concept="37vLTw" id="8b" role="3cqZAk">
                  <ref role="3cqZAo" node="h" resolve="props_MultipleCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7O" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mj" resolve="MultipleCondition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1T" role="3KbHQx">
            <node concept="3clFbS" id="8c" role="3Kbo56">
              <node concept="3clFbJ" id="8e" role="3cqZAp">
                <node concept="3clFbS" id="8g" role="3clFbx">
                  <node concept="3cpWs8" id="8i" role="3cqZAp">
                    <node concept="3cpWsn" id="8l" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="8m" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="8n" role="33vP2m">
                        <node concept="1pGfFk" id="8o" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8j" role="3cqZAp">
                    <node concept="2OqwBi" id="8p" role="3clFbG">
                      <node concept="37vLTw" id="8q" role="2Oq$k0">
                        <ref role="3cqZAo" node="8l" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8r" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:3100867722286850641" />
                        <node concept="Xl_RD" id="8s" role="37wK5m">
                          <property role="Xl_RC" value="ORDER BY" />
                          <uo k="s:originTrace" v="n:3100867722286850641" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8k" role="3cqZAp">
                    <node concept="37vLTI" id="8t" role="3clFbG">
                      <node concept="2OqwBi" id="8u" role="37vLTx">
                        <node concept="37vLTw" id="8w" role="2Oq$k0">
                          <ref role="3cqZAo" node="8l" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="8x" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="8v" role="37vLTJ">
                        <ref role="3cqZAo" node="i" resolve="props_OrderBy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="8h" role="3clFbw">
                  <node concept="10Nm6u" id="8y" role="3uHU7w" />
                  <node concept="37vLTw" id="8z" role="3uHU7B">
                    <ref role="3cqZAo" node="i" resolve="props_OrderBy" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="8f" role="3cqZAp">
                <node concept="37vLTw" id="8$" role="3cqZAk">
                  <ref role="3cqZAo" node="i" resolve="props_OrderBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8d" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mk" resolve="OrderBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="1U" role="3KbHQx">
            <node concept="3clFbS" id="8_" role="3Kbo56">
              <node concept="3clFbJ" id="8B" role="3cqZAp">
                <node concept="3clFbS" id="8D" role="3clFbx">
                  <node concept="3cpWs8" id="8F" role="3cqZAp">
                    <node concept="3cpWsn" id="8I" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="8J" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="8K" role="33vP2m">
                        <node concept="1pGfFk" id="8L" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8G" role="3cqZAp">
                    <node concept="2OqwBi" id="8M" role="3clFbG">
                      <node concept="37vLTw" id="8N" role="2Oq$k0">
                        <ref role="3cqZAo" node="8I" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8O" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:1229499084499598285" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8H" role="3cqZAp">
                    <node concept="37vLTI" id="8P" role="3clFbG">
                      <node concept="2OqwBi" id="8Q" role="37vLTx">
                        <node concept="37vLTw" id="8S" role="2Oq$k0">
                          <ref role="3cqZAo" node="8I" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="8T" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="8R" role="37vLTJ">
                        <ref role="3cqZAo" node="j" resolve="props_Script" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="8E" role="3clFbw">
                  <node concept="10Nm6u" id="8U" role="3uHU7w" />
                  <node concept="37vLTw" id="8V" role="3uHU7B">
                    <ref role="3cqZAo" node="j" resolve="props_Script" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="8C" role="3cqZAp">
                <node concept="37vLTw" id="8W" role="3cqZAk">
                  <ref role="3cqZAo" node="j" resolve="props_Script" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8A" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ml" resolve="Script" />
            </node>
          </node>
          <node concept="3KbdKl" id="1V" role="3KbHQx">
            <node concept="3clFbS" id="8X" role="3Kbo56">
              <node concept="3clFbJ" id="8Z" role="3cqZAp">
                <node concept="3clFbS" id="91" role="3clFbx">
                  <node concept="3cpWs8" id="93" role="3cqZAp">
                    <node concept="3cpWsn" id="96" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="97" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="98" role="33vP2m">
                        <node concept="1pGfFk" id="99" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="94" role="3cqZAp">
                    <node concept="2OqwBi" id="9a" role="3clFbG">
                      <node concept="37vLTw" id="9b" role="2Oq$k0">
                        <ref role="3cqZAo" node="96" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="9c" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7033755722359825273" />
                        <node concept="Xl_RD" id="9d" role="37wK5m">
                          <property role="Xl_RC" value="SELECT" />
                          <uo k="s:originTrace" v="n:7033755722359825273" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="95" role="3cqZAp">
                    <node concept="37vLTI" id="9e" role="3clFbG">
                      <node concept="2OqwBi" id="9f" role="37vLTx">
                        <node concept="37vLTw" id="9h" role="2Oq$k0">
                          <ref role="3cqZAo" node="96" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="9i" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="9g" role="37vLTJ">
                        <ref role="3cqZAo" node="k" resolve="props_Select" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="92" role="3clFbw">
                  <node concept="10Nm6u" id="9j" role="3uHU7w" />
                  <node concept="37vLTw" id="9k" role="3uHU7B">
                    <ref role="3cqZAo" node="k" resolve="props_Select" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="90" role="3cqZAp">
                <node concept="37vLTw" id="9l" role="3cqZAk">
                  <ref role="3cqZAo" node="k" resolve="props_Select" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8Y" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mm" resolve="Select" />
            </node>
          </node>
          <node concept="3KbdKl" id="1W" role="3KbHQx">
            <node concept="3clFbS" id="9m" role="3Kbo56">
              <node concept="3clFbJ" id="9o" role="3cqZAp">
                <node concept="3clFbS" id="9q" role="3clFbx">
                  <node concept="3cpWs8" id="9s" role="3cqZAp">
                    <node concept="3cpWsn" id="9u" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="9v" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="9w" role="33vP2m">
                        <node concept="1pGfFk" id="9x" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9t" role="3cqZAp">
                    <node concept="37vLTI" id="9y" role="3clFbG">
                      <node concept="2OqwBi" id="9z" role="37vLTx">
                        <node concept="37vLTw" id="9_" role="2Oq$k0">
                          <ref role="3cqZAo" node="9u" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="9A" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="9$" role="37vLTJ">
                        <ref role="3cqZAo" node="l" resolve="props_SelectColumn" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="9r" role="3clFbw">
                  <node concept="10Nm6u" id="9B" role="3uHU7w" />
                  <node concept="37vLTw" id="9C" role="3uHU7B">
                    <ref role="3cqZAo" node="l" resolve="props_SelectColumn" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="9p" role="3cqZAp">
                <node concept="37vLTw" id="9D" role="3cqZAk">
                  <ref role="3cqZAo" node="l" resolve="props_SelectColumn" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="9n" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mn" resolve="SelectColumn" />
            </node>
          </node>
          <node concept="3KbdKl" id="1X" role="3KbHQx">
            <node concept="3clFbS" id="9E" role="3Kbo56">
              <node concept="3clFbJ" id="9G" role="3cqZAp">
                <node concept="3clFbS" id="9I" role="3clFbx">
                  <node concept="3cpWs8" id="9K" role="3cqZAp">
                    <node concept="3cpWsn" id="9N" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="9O" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="9P" role="33vP2m">
                        <node concept="1pGfFk" id="9Q" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9L" role="3cqZAp">
                    <node concept="2OqwBi" id="9R" role="3clFbG">
                      <node concept="37vLTw" id="9S" role="2Oq$k0">
                        <ref role="3cqZAo" node="9N" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="9T" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6839590609873398296" />
                        <node concept="Xl_RD" id="9U" role="37wK5m">
                          <property role="Xl_RC" value="SimpleCondition" />
                          <uo k="s:originTrace" v="n:6839590609873398296" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="9M" role="3cqZAp">
                    <node concept="37vLTI" id="9V" role="3clFbG">
                      <node concept="2OqwBi" id="9W" role="37vLTx">
                        <node concept="37vLTw" id="9Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="9N" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="9Z" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="9X" role="37vLTJ">
                        <ref role="3cqZAo" node="m" resolve="props_SimpleCondition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="9J" role="3clFbw">
                  <node concept="10Nm6u" id="a0" role="3uHU7w" />
                  <node concept="37vLTw" id="a1" role="3uHU7B">
                    <ref role="3cqZAo" node="m" resolve="props_SimpleCondition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="9H" role="3cqZAp">
                <node concept="37vLTw" id="a2" role="3cqZAk">
                  <ref role="3cqZAo" node="m" resolve="props_SimpleCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="9F" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mo" resolve="SimpleCondition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1Y" role="3KbHQx">
            <node concept="3clFbS" id="a3" role="3Kbo56">
              <node concept="3clFbJ" id="a5" role="3cqZAp">
                <node concept="3clFbS" id="a7" role="3clFbx">
                  <node concept="3cpWs8" id="a9" role="3cqZAp">
                    <node concept="3cpWsn" id="ab" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="ac" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="ad" role="33vP2m">
                        <node concept="1pGfFk" id="ae" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="aa" role="3cqZAp">
                    <node concept="37vLTI" id="af" role="3clFbG">
                      <node concept="2OqwBi" id="ag" role="37vLTx">
                        <node concept="37vLTw" id="ai" role="2Oq$k0">
                          <ref role="3cqZAo" node="ab" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="aj" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="ah" role="37vLTJ">
                        <ref role="3cqZAo" node="n" resolve="props_Statement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="a8" role="3clFbw">
                  <node concept="10Nm6u" id="ak" role="3uHU7w" />
                  <node concept="37vLTw" id="al" role="3uHU7B">
                    <ref role="3cqZAo" node="n" resolve="props_Statement" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="a6" role="3cqZAp">
                <node concept="37vLTw" id="am" role="3cqZAk">
                  <ref role="3cqZAo" node="n" resolve="props_Statement" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="a4" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mp" resolve="Statement" />
            </node>
          </node>
          <node concept="3KbdKl" id="1Z" role="3KbHQx">
            <node concept="3clFbS" id="an" role="3Kbo56">
              <node concept="3clFbJ" id="ap" role="3cqZAp">
                <node concept="3clFbS" id="ar" role="3clFbx">
                  <node concept="3cpWs8" id="at" role="3cqZAp">
                    <node concept="3cpWsn" id="aw" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="ax" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="ay" role="33vP2m">
                        <node concept="1pGfFk" id="az" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="au" role="3cqZAp">
                    <node concept="2OqwBi" id="a$" role="3clFbG">
                      <node concept="37vLTw" id="a_" role="2Oq$k0">
                        <ref role="3cqZAo" node="aw" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="aA" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6736945802599629715" />
                        <node concept="Xl_RD" id="aB" role="37wK5m">
                          <property role="Xl_RC" value="SUM" />
                          <uo k="s:originTrace" v="n:6736945802599629715" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="av" role="3cqZAp">
                    <node concept="37vLTI" id="aC" role="3clFbG">
                      <node concept="2OqwBi" id="aD" role="37vLTx">
                        <node concept="37vLTw" id="aF" role="2Oq$k0">
                          <ref role="3cqZAo" node="aw" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="aG" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="aE" role="37vLTJ">
                        <ref role="3cqZAo" node="o" resolve="props_Sum" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="as" role="3clFbw">
                  <node concept="10Nm6u" id="aH" role="3uHU7w" />
                  <node concept="37vLTw" id="aI" role="3uHU7B">
                    <ref role="3cqZAo" node="o" resolve="props_Sum" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="aq" role="3cqZAp">
                <node concept="37vLTw" id="aJ" role="3cqZAk">
                  <ref role="3cqZAo" node="o" resolve="props_Sum" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ao" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mq" resolve="Sum" />
            </node>
          </node>
          <node concept="3KbdKl" id="20" role="3KbHQx">
            <node concept="3clFbS" id="aK" role="3Kbo56">
              <node concept="3clFbJ" id="aM" role="3cqZAp">
                <node concept="3clFbS" id="aO" role="3clFbx">
                  <node concept="3cpWs8" id="aQ" role="3cqZAp">
                    <node concept="3cpWsn" id="aT" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="aU" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="aV" role="33vP2m">
                        <node concept="1pGfFk" id="aW" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="aR" role="3cqZAp">
                    <node concept="2OqwBi" id="aX" role="3clFbG">
                      <node concept="37vLTw" id="aY" role="2Oq$k0">
                        <ref role="3cqZAo" node="aT" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="aZ" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:2341611946572642014" />
                        <node concept="1adDum" id="b0" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                        <node concept="1adDum" id="b1" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                        <node concept="1adDum" id="b2" role="37wK5m">
                          <property role="1adDun" value="0x207f13a8b545f6deL" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                        <node concept="1adDum" id="b3" role="37wK5m">
                          <property role="1adDun" value="0x207f13a8b545f6dfL" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                        <node concept="Xl_RD" id="b4" role="37wK5m">
                          <property role="Xl_RC" value="tableRef" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                        <node concept="Xl_RD" id="b5" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                        <node concept="Xl_RD" id="b6" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:2341611946572642014" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="aS" role="3cqZAp">
                    <node concept="37vLTI" id="b7" role="3clFbG">
                      <node concept="2OqwBi" id="b8" role="37vLTx">
                        <node concept="37vLTw" id="ba" role="2Oq$k0">
                          <ref role="3cqZAo" node="aT" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="bb" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="b9" role="37vLTJ">
                        <ref role="3cqZAo" node="p" resolve="props_TableReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="aP" role="3clFbw">
                  <node concept="10Nm6u" id="bc" role="3uHU7w" />
                  <node concept="37vLTw" id="bd" role="3uHU7B">
                    <ref role="3cqZAo" node="p" resolve="props_TableReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="aN" role="3cqZAp">
                <node concept="37vLTw" id="be" role="3cqZAk">
                  <ref role="3cqZAo" node="p" resolve="props_TableReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="aL" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mr" resolve="TableReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="21" role="3KbHQx">
            <node concept="3clFbS" id="bf" role="3Kbo56">
              <node concept="3clFbJ" id="bh" role="3cqZAp">
                <node concept="3clFbS" id="bj" role="3clFbx">
                  <node concept="3cpWs8" id="bl" role="3cqZAp">
                    <node concept="3cpWsn" id="bo" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="bp" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="bq" role="33vP2m">
                        <node concept="1pGfFk" id="br" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="bm" role="3cqZAp">
                    <node concept="2OqwBi" id="bs" role="3clFbG">
                      <node concept="37vLTw" id="bt" role="2Oq$k0">
                        <ref role="3cqZAo" node="bo" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="bu" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255689023" />
                        <node concept="Xl_RD" id="bv" role="37wK5m">
                          <property role="Xl_RC" value="UPDATE" />
                          <uo k="s:originTrace" v="n:7087042522255689023" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="bn" role="3cqZAp">
                    <node concept="37vLTI" id="bw" role="3clFbG">
                      <node concept="2OqwBi" id="bx" role="37vLTx">
                        <node concept="37vLTw" id="bz" role="2Oq$k0">
                          <ref role="3cqZAo" node="bo" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="b$" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="by" role="37vLTJ">
                        <ref role="3cqZAo" node="q" resolve="props_Update" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="bk" role="3clFbw">
                  <node concept="10Nm6u" id="b_" role="3uHU7w" />
                  <node concept="37vLTw" id="bA" role="3uHU7B">
                    <ref role="3cqZAo" node="q" resolve="props_Update" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="bi" role="3cqZAp">
                <node concept="37vLTw" id="bB" role="3cqZAk">
                  <ref role="3cqZAo" node="q" resolve="props_Update" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="bg" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ms" resolve="Update" />
            </node>
          </node>
          <node concept="3KbdKl" id="22" role="3KbHQx">
            <node concept="3clFbS" id="bC" role="3Kbo56">
              <node concept="3clFbJ" id="bE" role="3cqZAp">
                <node concept="3clFbS" id="bG" role="3clFbx">
                  <node concept="3cpWs8" id="bI" role="3cqZAp">
                    <node concept="3cpWsn" id="bL" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="bM" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="bN" role="33vP2m">
                        <node concept="1pGfFk" id="bO" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="bJ" role="3cqZAp">
                    <node concept="2OqwBi" id="bP" role="3clFbG">
                      <node concept="37vLTw" id="bQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="bL" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="bR" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7087042522255247499" />
                        <node concept="Xl_RD" id="bS" role="37wK5m">
                          <property role="Xl_RC" value="Value" />
                          <uo k="s:originTrace" v="n:7087042522255247499" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="bK" role="3cqZAp">
                    <node concept="37vLTI" id="bT" role="3clFbG">
                      <node concept="2OqwBi" id="bU" role="37vLTx">
                        <node concept="37vLTw" id="bW" role="2Oq$k0">
                          <ref role="3cqZAo" node="bL" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="bX" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="bV" role="37vLTJ">
                        <ref role="3cqZAo" node="r" resolve="props_Value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="bH" role="3clFbw">
                  <node concept="10Nm6u" id="bY" role="3uHU7w" />
                  <node concept="37vLTw" id="bZ" role="3uHU7B">
                    <ref role="3cqZAo" node="r" resolve="props_Value" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="bF" role="3cqZAp">
                <node concept="37vLTw" id="c0" role="3cqZAk">
                  <ref role="3cqZAo" node="r" resolve="props_Value" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="bD" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mt" resolve="Value" />
            </node>
          </node>
          <node concept="3KbdKl" id="23" role="3KbHQx">
            <node concept="3clFbS" id="c1" role="3Kbo56">
              <node concept="3clFbJ" id="c3" role="3cqZAp">
                <node concept="3clFbS" id="c5" role="3clFbx">
                  <node concept="3cpWs8" id="c7" role="3cqZAp">
                    <node concept="3cpWsn" id="ca" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="cb" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="cc" role="33vP2m">
                        <node concept="1pGfFk" id="cd" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="c8" role="3cqZAp">
                    <node concept="2OqwBi" id="ce" role="3clFbG">
                      <node concept="37vLTw" id="cf" role="2Oq$k0">
                        <ref role="3cqZAo" node="ca" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="cg" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:7033755722359825275" />
                        <node concept="Xl_RD" id="ch" role="37wK5m">
                          <property role="Xl_RC" value="WHERE" />
                          <uo k="s:originTrace" v="n:7033755722359825275" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="c9" role="3cqZAp">
                    <node concept="37vLTI" id="ci" role="3clFbG">
                      <node concept="2OqwBi" id="cj" role="37vLTx">
                        <node concept="37vLTw" id="cl" role="2Oq$k0">
                          <ref role="3cqZAo" node="ca" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="cm" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="ck" role="37vLTJ">
                        <ref role="3cqZAo" node="s" resolve="props_Where" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="c6" role="3clFbw">
                  <node concept="10Nm6u" id="cn" role="3uHU7w" />
                  <node concept="37vLTw" id="co" role="3uHU7B">
                    <ref role="3cqZAo" node="s" resolve="props_Where" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="c4" role="3cqZAp">
                <node concept="37vLTw" id="cp" role="3cqZAk">
                  <ref role="3cqZAo" node="s" resolve="props_Where" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="c2" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mu" resolve="Where" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1v" role="3cqZAp">
          <node concept="10Nm6u" id="cq" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="1p" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="2AHcQZ" id="1q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1r" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="cr">
    <property role="3GE5qa" value="where.condition" />
    <property role="TrG5h" value="EnumerationDescriptor_ConditionOperator" />
    <uo k="s:originTrace" v="n:2582920951876036250" />
    <node concept="2tJIrI" id="cs" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFbW" id="ct" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3cqZAl" id="cI" role="3clF45">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3Tm1VV" id="cJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3clFbS" id="cK" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="XkiVB" id="cL" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="1adDum" id="cM" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="cN" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="cO" role="37wK5m">
            <property role="1adDun" value="0x23d860ebbb7c269aL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="cP" role="37wK5m">
            <property role="Xl_RC" value="ConditionOperator" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="cQ" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036250" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cu" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="312cEg" id="cv" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_AND_0" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="cR" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="cS" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2ShNRf" id="cT" role="33vP2m">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1pGfFk" id="cU" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="Xl_RD" id="cV" role="37wK5m">
            <property role="Xl_RC" value="AND" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="cW" role="37wK5m">
            <property role="Xl_RC" value="AND" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="cX" role="37wK5m">
            <property role="1adDun" value="0x23d860ebbb7c269bL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="cY" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036251" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="cw" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_OR_0" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="cZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="d0" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2ShNRf" id="d1" role="33vP2m">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1pGfFk" id="d2" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="Xl_RD" id="d3" role="37wK5m">
            <property role="Xl_RC" value="OR" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="d4" role="37wK5m">
            <property role="Xl_RC" value="OR" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="1adDum" id="d5" role="37wK5m">
            <property role="1adDun" value="0x23d860ebbb7c269cL" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="Xl_RD" id="d6" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2582920951876036252" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="cx" role="1B3o_S">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3uibUv" id="cy" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="2tJIrI" id="cz" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="312cEg" id="c$" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="d7" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="d8" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2YIFZM" id="d9" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1adDum" id="da" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="db" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="dc" role="37wK5m">
          <property role="1adDun" value="0x23d860ebbb7c269aL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="dd" role="37wK5m">
          <property role="1adDun" value="0x23d860ebbb7c269bL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="1adDum" id="de" role="37wK5m">
          <property role="1adDun" value="0x23d860ebbb7c269cL" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="c_" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm6S6" id="df" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="dg" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3uibUv" id="di" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="2ShNRf" id="dh" role="33vP2m">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="1pGfFk" id="dj" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="37vLTw" id="dk" role="37wK5m">
            <ref role="3cqZAo" node="c$" resolve="myIndex" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="37vLTw" id="dl" role="37wK5m">
            <ref role="3cqZAo" node="cv" resolve="myMember_AND_0" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="37vLTw" id="dm" role="37wK5m">
            <ref role="3cqZAo" node="cw" resolve="myMember_OR_0" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cA" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="cB" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="dn" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="do" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="dp" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3clFbS" id="dq" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3clFbF" id="ds" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="10Nm6u" id="dt" role="3clFbG">
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
    <node concept="2tJIrI" id="cC" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="cD" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="du" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="dv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="dw" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3uibUv" id="dz" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="3clFbS" id="dx" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3cpWs6" id="d$" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="37vLTw" id="d_" role="3cqZAk">
            <ref role="3cqZAo" node="c_" resolve="myMembers" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
    <node concept="2tJIrI" id="cE" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="cF" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="dA" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="dB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="dC" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="37vLTG" id="dD" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3uibUv" id="dG" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
        <node concept="2AHcQZ" id="dH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="3clFbS" id="dE" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3clFbJ" id="dI" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="3clFbS" id="dL" role="3clFbx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="3cpWs6" id="dN" role="3cqZAp">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="10Nm6u" id="dO" role="3cqZAk">
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="dM" role="3clFbw">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="10Nm6u" id="dP" role="3uHU7w">
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="37vLTw" id="dQ" role="3uHU7B">
              <ref role="3cqZAo" node="dD" resolve="memberName" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="dJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="37vLTw" id="dR" role="3KbGdf">
            <ref role="3cqZAo" node="dD" resolve="memberName" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
          <node concept="3KbdKl" id="dS" role="3KbHQx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="Xl_RD" id="dU" role="3Kbmr1">
              <property role="Xl_RC" value="AND" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="3clFbS" id="dV" role="3Kbo56">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="3cpWs6" id="dW" role="3cqZAp">
                <uo k="s:originTrace" v="n:2582920951876036250" />
                <node concept="37vLTw" id="dX" role="3cqZAk">
                  <ref role="3cqZAo" node="cv" resolve="myMember_AND_0" />
                  <uo k="s:originTrace" v="n:2582920951876036250" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="dT" role="3KbHQx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="Xl_RD" id="dY" role="3Kbmr1">
              <property role="Xl_RC" value="OR" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="3clFbS" id="dZ" role="3Kbo56">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="3cpWs6" id="e0" role="3cqZAp">
                <uo k="s:originTrace" v="n:2582920951876036250" />
                <node concept="37vLTw" id="e1" role="3cqZAk">
                  <ref role="3cqZAo" node="cw" resolve="myMember_OR_0" />
                  <uo k="s:originTrace" v="n:2582920951876036250" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="dK" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="10Nm6u" id="e2" role="3cqZAk">
            <uo k="s:originTrace" v="n:2582920951876036250" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
    <node concept="2tJIrI" id="cG" role="jymVt">
      <uo k="s:originTrace" v="n:2582920951876036250" />
    </node>
    <node concept="3clFb_" id="cH" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:2582920951876036250" />
      <node concept="3Tm1VV" id="e3" role="1B3o_S">
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="2AHcQZ" id="e4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="3uibUv" id="e5" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
      <node concept="37vLTG" id="e6" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3cpWsb" id="e9" role="1tU5fm">
          <uo k="s:originTrace" v="n:2582920951876036250" />
        </node>
      </node>
      <node concept="3clFbS" id="e7" role="3clF47">
        <uo k="s:originTrace" v="n:2582920951876036250" />
        <node concept="3cpWs8" id="ea" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="3cpWsn" id="ed" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="10Oyi0" id="ee" role="1tU5fm">
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="2OqwBi" id="ef" role="33vP2m">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="37vLTw" id="eg" role="2Oq$k0">
                <ref role="3cqZAo" node="c$" resolve="myIndex" />
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
              <node concept="liA8E" id="eh" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:2582920951876036250" />
                <node concept="37vLTw" id="ei" role="37wK5m">
                  <ref role="3cqZAo" node="e6" resolve="idValue" />
                  <uo k="s:originTrace" v="n:2582920951876036250" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="eb" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="3clFbS" id="ej" role="3clFbx">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="3cpWs6" id="el" role="3cqZAp">
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="10Nm6u" id="em" role="3cqZAk">
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="ek" role="3clFbw">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="3cmrfG" id="en" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="37vLTw" id="eo" role="3uHU7B">
              <ref role="3cqZAo" node="ed" resolve="index" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ec" role="3cqZAp">
          <uo k="s:originTrace" v="n:2582920951876036250" />
          <node concept="2OqwBi" id="ep" role="3clFbG">
            <uo k="s:originTrace" v="n:2582920951876036250" />
            <node concept="37vLTw" id="eq" role="2Oq$k0">
              <ref role="3cqZAo" node="c_" resolve="myMembers" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
            </node>
            <node concept="liA8E" id="er" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:2582920951876036250" />
              <node concept="37vLTw" id="es" role="37wK5m">
                <ref role="3cqZAo" node="ed" resolve="index" />
                <uo k="s:originTrace" v="n:2582920951876036250" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="e8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2582920951876036250" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="et">
    <property role="3GE5qa" value="where.condition" />
    <property role="TrG5h" value="EnumerationDescriptor_Operator" />
    <uo k="s:originTrace" v="n:1229499084499783673" />
    <node concept="2tJIrI" id="eu" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFbW" id="ev" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3cqZAl" id="eR" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3Tm1VV" id="eS" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3clFbS" id="eT" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="XkiVB" id="eU" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="1adDum" id="eV" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="eW" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="eX" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ff9L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="eY" role="37wK5m">
            <property role="Xl_RC" value="Operator" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="eZ" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783673" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ew" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="312cEg" id="ex" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_EQUALS_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="f0" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="f1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="f2" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="f3" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="f4" role="37wK5m">
            <property role="Xl_RC" value="EQUALS" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="f5" role="37wK5m">
            <property role="Xl_RC" value="==" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="f6" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ffaL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="f7" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783674" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ey" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_GREATER_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="f8" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="f9" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fa" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fb" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="fc" role="37wK5m">
            <property role="Xl_RC" value="GREATER" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fd" role="37wK5m">
            <property role="Xl_RC" value="&gt;" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fe" role="37wK5m">
            <property role="1adDun" value="0x11100ee737470ffcL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="ff" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783676" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ez" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LOWER_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="fg" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="fh" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fi" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fj" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="fk" role="37wK5m">
            <property role="Xl_RC" value="LOWER" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fl" role="37wK5m">
            <property role="Xl_RC" value="&lt;" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fm" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471008L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fn" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783688" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e$" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_GREATER_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="fo" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="fp" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fq" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fr" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="fs" role="37wK5m">
            <property role="Xl_RC" value="GREATER_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="ft" role="37wK5m">
            <property role="Xl_RC" value="&gt;=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fu" role="37wK5m">
            <property role="1adDun" value="0x11100ee73747100dL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fv" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783693" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e_" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LOWER_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="fw" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="fx" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fy" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fz" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="f$" role="37wK5m">
            <property role="Xl_RC" value="LOWER_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="f_" role="37wK5m">
            <property role="Xl_RC" value="&lt;=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fA" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471013L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fB" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783699" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="eA" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_NOT_EQUAL_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="fC" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="fD" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fE" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fF" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="fG" role="37wK5m">
            <property role="Xl_RC" value="NOT_EQUAL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fH" role="37wK5m">
            <property role="Xl_RC" value="!=" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fI" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471019L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fJ" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783705" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="eB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_BETWEEN_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="fK" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="fL" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fM" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fN" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="fO" role="37wK5m">
            <property role="Xl_RC" value="BETWEEN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fP" role="37wK5m">
            <property role="Xl_RC" value="BETWEEN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fQ" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471021L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fR" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783713" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="eC" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_LIKE_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="fS" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="fT" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="fU" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="fV" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="fW" role="37wK5m">
            <property role="Xl_RC" value="LIKE" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fX" role="37wK5m">
            <property role="Xl_RC" value="LIKE" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="fY" role="37wK5m">
            <property role="1adDun" value="0x11100ee73747102aL" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="fZ" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783722" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="eD" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_IN_0" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="g0" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="g1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2ShNRf" id="g2" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="g3" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="Xl_RD" id="g4" role="37wK5m">
            <property role="Xl_RC" value="IN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="g5" role="37wK5m">
            <property role="Xl_RC" value="IN" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="1adDum" id="g6" role="37wK5m">
            <property role="1adDun" value="0x11100ee737471034L" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="Xl_RD" id="g7" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499783732" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="eE" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3uibUv" id="eF" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="2tJIrI" id="eG" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="312cEg" id="eH" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="g8" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="g9" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2YIFZM" id="ga" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1adDum" id="gb" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gc" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gd" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ff9L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="ge" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ffaL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gf" role="37wK5m">
          <property role="1adDun" value="0x11100ee737470ffcL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gg" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471008L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gh" role="37wK5m">
          <property role="1adDun" value="0x11100ee73747100dL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gi" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471013L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gj" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471019L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gk" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471021L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gl" role="37wK5m">
          <property role="1adDun" value="0x11100ee73747102aL" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="1adDum" id="gm" role="37wK5m">
          <property role="1adDun" value="0x11100ee737471034L" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="eI" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm6S6" id="gn" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="go" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="gq" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="2ShNRf" id="gp" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="1pGfFk" id="gr" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="gs" role="37wK5m">
            <ref role="3cqZAo" node="eH" resolve="myIndex" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gt" role="37wK5m">
            <ref role="3cqZAo" node="ex" resolve="myMember_EQUALS_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gu" role="37wK5m">
            <ref role="3cqZAo" node="ey" resolve="myMember_GREATER_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gv" role="37wK5m">
            <ref role="3cqZAo" node="ez" resolve="myMember_LOWER_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gw" role="37wK5m">
            <ref role="3cqZAo" node="e$" resolve="myMember_GREATER_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gx" role="37wK5m">
            <ref role="3cqZAo" node="e_" resolve="myMember_LOWER_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gy" role="37wK5m">
            <ref role="3cqZAo" node="eA" resolve="myMember_NOT_EQUAL_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="gz" role="37wK5m">
            <ref role="3cqZAo" node="eB" resolve="myMember_BETWEEN_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="g$" role="37wK5m">
            <ref role="3cqZAo" node="eC" resolve="myMember_LIKE_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="37vLTw" id="g_" role="37wK5m">
            <ref role="3cqZAo" node="eD" resolve="myMember_IN_0" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="eJ" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="eK" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="gA" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="gB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="gC" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3clFbS" id="gD" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3clFbF" id="gF" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="10Nm6u" id="gG" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="eL" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="eM" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="gH" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="gI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="gJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="gM" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="gK" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWs6" id="gN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="gO" role="3cqZAk">
            <ref role="3cqZAo" node="eI" resolve="myMembers" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="eN" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="eO" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="gP" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="gQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="gR" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="37vLTG" id="gS" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3uibUv" id="gV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
        <node concept="2AHcQZ" id="gW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="gT" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3clFbJ" id="gX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3clFbS" id="h0" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cpWs6" id="h2" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="10Nm6u" id="h3" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="h1" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="10Nm6u" id="h4" role="3uHU7w">
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="37vLTw" id="h5" role="3uHU7B">
              <ref role="3cqZAo" node="gS" resolve="memberName" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="gY" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="37vLTw" id="h6" role="3KbGdf">
            <ref role="3cqZAo" node="gS" resolve="memberName" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
          <node concept="3KbdKl" id="h7" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hg" role="3Kbmr1">
              <property role="Xl_RC" value="EQUALS" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hh" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hi" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hj" role="3cqZAk">
                  <ref role="3cqZAo" node="ex" resolve="myMember_EQUALS_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="h8" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hk" role="3Kbmr1">
              <property role="Xl_RC" value="GREATER" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hl" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hm" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hn" role="3cqZAk">
                  <ref role="3cqZAo" node="ey" resolve="myMember_GREATER_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="h9" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="ho" role="3Kbmr1">
              <property role="Xl_RC" value="LOWER" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hp" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hq" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hr" role="3cqZAk">
                  <ref role="3cqZAo" node="ez" resolve="myMember_LOWER_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="ha" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hs" role="3Kbmr1">
              <property role="Xl_RC" value="GREATER_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="ht" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hu" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hv" role="3cqZAk">
                  <ref role="3cqZAo" node="e$" resolve="myMember_GREATER_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="hb" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hw" role="3Kbmr1">
              <property role="Xl_RC" value="LOWER_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hx" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hy" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hz" role="3cqZAk">
                  <ref role="3cqZAo" node="e_" resolve="myMember_LOWER_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="hc" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="h$" role="3Kbmr1">
              <property role="Xl_RC" value="NOT_EQUAL" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="h_" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hA" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hB" role="3cqZAk">
                  <ref role="3cqZAo" node="eA" resolve="myMember_NOT_EQUAL_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="hd" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hC" role="3Kbmr1">
              <property role="Xl_RC" value="BETWEEN" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hD" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hE" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hF" role="3cqZAk">
                  <ref role="3cqZAo" node="eB" resolve="myMember_BETWEEN_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="he" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hG" role="3Kbmr1">
              <property role="Xl_RC" value="LIKE" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hH" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hI" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hJ" role="3cqZAk">
                  <ref role="3cqZAo" node="eC" resolve="myMember_LIKE_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="hf" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="Xl_RD" id="hK" role="3Kbmr1">
              <property role="Xl_RC" value="IN" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="3clFbS" id="hL" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="3cpWs6" id="hM" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="hN" role="3cqZAk">
                  <ref role="3cqZAo" node="eD" resolve="myMember_IN_0" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="gZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="10Nm6u" id="hO" role="3cqZAk">
            <uo k="s:originTrace" v="n:1229499084499783673" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
    <node concept="2tJIrI" id="eP" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499783673" />
    </node>
    <node concept="3clFb_" id="eQ" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499783673" />
      <node concept="3Tm1VV" id="hP" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="2AHcQZ" id="hQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="3uibUv" id="hR" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
      <node concept="37vLTG" id="hS" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWsb" id="hV" role="1tU5fm">
          <uo k="s:originTrace" v="n:1229499084499783673" />
        </node>
      </node>
      <node concept="3clFbS" id="hT" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499783673" />
        <node concept="3cpWs8" id="hW" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3cpWsn" id="hZ" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="10Oyi0" id="i0" role="1tU5fm">
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="2OqwBi" id="i1" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="37vLTw" id="i2" role="2Oq$k0">
                <ref role="3cqZAo" node="eH" resolve="myIndex" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
              <node concept="liA8E" id="i3" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
                <node concept="37vLTw" id="i4" role="37wK5m">
                  <ref role="3cqZAo" node="hS" resolve="idValue" />
                  <uo k="s:originTrace" v="n:1229499084499783673" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="3clFbS" id="i5" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cpWs6" id="i7" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="10Nm6u" id="i8" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="i6" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="3cmrfG" id="i9" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="37vLTw" id="ia" role="3uHU7B">
              <ref role="3cqZAo" node="hZ" resolve="index" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hY" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499783673" />
          <node concept="2OqwBi" id="ib" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499783673" />
            <node concept="37vLTw" id="ic" role="2Oq$k0">
              <ref role="3cqZAo" node="eI" resolve="myMembers" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
            </node>
            <node concept="liA8E" id="id" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:1229499084499783673" />
              <node concept="37vLTw" id="ie" role="37wK5m">
                <ref role="3cqZAo" node="hZ" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499783673" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499783673" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="if">
    <property role="3GE5qa" value="value" />
    <property role="TrG5h" value="EnumerationDescriptor_Type" />
    <uo k="s:originTrace" v="n:1229499084499598137" />
    <node concept="2tJIrI" id="ig" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFbW" id="ih" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3cqZAl" id="i$" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3Tm1VV" id="i_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3clFbS" id="iA" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="XkiVB" id="iB" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="1adDum" id="iC" role="37wK5m">
            <property role="1adDun" value="0x26d1395b1ee643adL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="iD" role="37wK5m">
            <property role="1adDun" value="0xb522c0cdd699ded3L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="iE" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b39L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="iF" role="37wK5m">
            <property role="Xl_RC" value="Type" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="iG" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598137" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ii" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="312cEg" id="ij" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Integer_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="iH" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="iI" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="iJ" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="iK" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="iL" role="37wK5m">
            <property role="Xl_RC" value="Integer" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="iM" role="37wK5m">
            <property role="Xl_RC" value="Integer" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="iN" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3aL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="iO" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598138" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ik" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_String_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="iP" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="iQ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="iR" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="iS" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="iT" role="37wK5m">
            <property role="Xl_RC" value="String" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="iU" role="37wK5m">
            <property role="Xl_RC" value="String" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="iV" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3bL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="iW" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598139" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="il" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Date_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="iX" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="iY" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="iZ" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="j0" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="j1" role="37wK5m">
            <property role="Xl_RC" value="Date" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="j2" role="37wK5m">
            <property role="Xl_RC" value="Date" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="j3" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b3fL" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="j4" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598143" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="im" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_Float_0" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="j5" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="j6" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2ShNRf" id="j7" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="j8" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="Xl_RD" id="j9" role="37wK5m">
            <property role="Xl_RC" value="Float" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="ja" role="37wK5m">
            <property role="Xl_RC" value="Float" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="1adDum" id="jb" role="37wK5m">
            <property role="1adDun" value="0x11100ee737443b43L" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="Xl_RD" id="jc" role="37wK5m">
            <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598147" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="in" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3uibUv" id="io" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="2tJIrI" id="ip" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="312cEg" id="iq" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="jd" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="je" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2YIFZM" id="jf" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1adDum" id="jg" role="37wK5m">
          <property role="1adDun" value="0x26d1395b1ee643adL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="jh" role="37wK5m">
          <property role="1adDun" value="0xb522c0cdd699ded3L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="ji" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b39L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="jj" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3aL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="jk" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3bL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="jl" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b3fL" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="1adDum" id="jm" role="37wK5m">
          <property role="1adDun" value="0x11100ee737443b43L" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ir" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm6S6" id="jn" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="jo" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="jq" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="2ShNRf" id="jp" role="33vP2m">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="1pGfFk" id="jr" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="js" role="37wK5m">
            <ref role="3cqZAo" node="iq" resolve="myIndex" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="jt" role="37wK5m">
            <ref role="3cqZAo" node="ij" resolve="myMember_Integer_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="ju" role="37wK5m">
            <ref role="3cqZAo" node="ik" resolve="myMember_String_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="jv" role="37wK5m">
            <ref role="3cqZAo" node="il" resolve="myMember_Date_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="37vLTw" id="jw" role="37wK5m">
            <ref role="3cqZAo" node="im" resolve="myMember_Float_0" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="is" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="it" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="jx" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="jy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="jz" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3clFbS" id="j$" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3clFbF" id="jA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="10Nm6u" id="jB" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="j_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="iu" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="iv" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="jC" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="jD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="jE" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="jH" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="jF" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWs6" id="jI" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="jJ" role="3cqZAk">
            <ref role="3cqZAo" node="ir" resolve="myMembers" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="jG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="iw" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="ix" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="jK" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="jL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="jM" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="37vLTG" id="jN" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3uibUv" id="jQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
        <node concept="2AHcQZ" id="jR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="jO" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3clFbJ" id="jS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3clFbS" id="jV" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cpWs6" id="jX" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="10Nm6u" id="jY" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="jW" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="10Nm6u" id="jZ" role="3uHU7w">
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="37vLTw" id="k0" role="3uHU7B">
              <ref role="3cqZAo" node="jN" resolve="memberName" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="jT" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="37vLTw" id="k1" role="3KbGdf">
            <ref role="3cqZAo" node="jN" resolve="memberName" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
          <node concept="3KbdKl" id="k2" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="k6" role="3Kbmr1">
              <property role="Xl_RC" value="Integer" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="k7" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="k8" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="k9" role="3cqZAk">
                  <ref role="3cqZAo" node="ij" resolve="myMember_Integer_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="k3" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="ka" role="3Kbmr1">
              <property role="Xl_RC" value="String" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="kb" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="kc" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="kd" role="3cqZAk">
                  <ref role="3cqZAo" node="ik" resolve="myMember_String_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="k4" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="ke" role="3Kbmr1">
              <property role="Xl_RC" value="Date" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="kf" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="kg" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="kh" role="3cqZAk">
                  <ref role="3cqZAo" node="il" resolve="myMember_Date_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="k5" role="3KbHQx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="Xl_RD" id="ki" role="3Kbmr1">
              <property role="Xl_RC" value="Float" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="3clFbS" id="kj" role="3Kbo56">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="3cpWs6" id="kk" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="kl" role="3cqZAk">
                  <ref role="3cqZAo" node="im" resolve="myMember_Float_0" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="jU" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="10Nm6u" id="km" role="3cqZAk">
            <uo k="s:originTrace" v="n:1229499084499598137" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="jP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
    <node concept="2tJIrI" id="iy" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084499598137" />
    </node>
    <node concept="3clFb_" id="iz" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:1229499084499598137" />
      <node concept="3Tm1VV" id="kn" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="2AHcQZ" id="ko" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="3uibUv" id="kp" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
      <node concept="37vLTG" id="kq" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWsb" id="kt" role="1tU5fm">
          <uo k="s:originTrace" v="n:1229499084499598137" />
        </node>
      </node>
      <node concept="3clFbS" id="kr" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084499598137" />
        <node concept="3cpWs8" id="ku" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3cpWsn" id="kx" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="10Oyi0" id="ky" role="1tU5fm">
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="2OqwBi" id="kz" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="37vLTw" id="k$" role="2Oq$k0">
                <ref role="3cqZAo" node="iq" resolve="myIndex" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
              <node concept="liA8E" id="k_" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
                <node concept="37vLTw" id="kA" role="37wK5m">
                  <ref role="3cqZAo" node="kq" resolve="idValue" />
                  <uo k="s:originTrace" v="n:1229499084499598137" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="kv" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="3clFbS" id="kB" role="3clFbx">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cpWs6" id="kD" role="3cqZAp">
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="10Nm6u" id="kE" role="3cqZAk">
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="kC" role="3clFbw">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="3cmrfG" id="kF" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="37vLTw" id="kG" role="3uHU7B">
              <ref role="3cqZAo" node="kx" resolve="index" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kw" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084499598137" />
          <node concept="2OqwBi" id="kH" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084499598137" />
            <node concept="37vLTw" id="kI" role="2Oq$k0">
              <ref role="3cqZAo" node="ir" resolve="myMembers" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
            </node>
            <node concept="liA8E" id="kJ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:1229499084499598137" />
              <node concept="37vLTw" id="kK" role="37wK5m">
                <ref role="3cqZAo" node="kx" resolve="index" />
                <uo k="s:originTrace" v="n:1229499084499598137" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ks" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084499598137" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="kL">
    <node concept="39e2AJ" id="kM" role="39e2AI">
      <property role="39e3Y2" value="EnumerationDescriptorCons" />
      <node concept="39e2AG" id="kQ" role="39e3Y0">
        <ref role="39e2AK" to="p6im:2fooeIVv2qq" resolve="ConditionOperator" />
        <node concept="385nmt" id="kT" role="385vvn">
          <property role="385vuF" value="ConditionOperator" />
          <node concept="3u3nmq" id="kV" role="385v07">
            <property role="3u3nmv" value="2582920951876036250" />
          </node>
        </node>
        <node concept="39e2AT" id="kU" role="39e2AY">
          <ref role="39e2AS" node="ct" resolve="EnumerationDescriptor_ConditionOperator" />
        </node>
      </node>
      <node concept="39e2AG" id="kR" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZT" resolve="Operator" />
        <node concept="385nmt" id="kW" role="385vvn">
          <property role="385vuF" value="Operator" />
          <node concept="3u3nmq" id="kY" role="385v07">
            <property role="3u3nmv" value="1229499084499783673" />
          </node>
        </node>
        <node concept="39e2AT" id="kX" role="39e2AY">
          <ref role="39e2AS" node="ev" resolve="EnumerationDescriptor_Operator" />
        </node>
      </node>
      <node concept="39e2AG" id="kS" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GT" resolve="Type" />
        <node concept="385nmt" id="kZ" role="385vvn">
          <property role="385vuF" value="Type" />
          <node concept="3u3nmq" id="l1" role="385v07">
            <property role="3u3nmv" value="1229499084499598137" />
          </node>
        </node>
        <node concept="39e2AT" id="l0" role="39e2AY">
          <ref role="39e2AS" node="ih" resolve="EnumerationDescriptor_Type" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kN" role="39e2AI">
      <property role="39e3Y2" value="EnumerationMember" />
      <node concept="39e2AG" id="l2" role="39e3Y0">
        <ref role="39e2AK" to="p6im:2fooeIVv2qr" resolve="AND" />
        <node concept="385nmt" id="lh" role="385vvn">
          <property role="385vuF" value="AND" />
          <node concept="3u3nmq" id="lj" role="385v07">
            <property role="3u3nmv" value="2582920951876036251" />
          </node>
        </node>
        <node concept="39e2AT" id="li" role="39e2AY">
          <ref role="39e2AS" node="cv" resolve="myMember_AND_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l3" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0x" resolve="BETWEEN" />
        <node concept="385nmt" id="lk" role="385vvn">
          <property role="385vuF" value="BETWEEN" />
          <node concept="3u3nmq" id="lm" role="385v07">
            <property role="3u3nmv" value="1229499084499783713" />
          </node>
        </node>
        <node concept="39e2AT" id="ll" role="39e2AY">
          <ref role="39e2AS" node="eB" resolve="myMember_BETWEEN_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l4" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GZ" resolve="Date" />
        <node concept="385nmt" id="ln" role="385vvn">
          <property role="385vuF" value="Date" />
          <node concept="3u3nmq" id="lp" role="385v07">
            <property role="3u3nmv" value="1229499084499598143" />
          </node>
        </node>
        <node concept="39e2AT" id="lo" role="39e2AY">
          <ref role="39e2AS" node="il" resolve="myMember_Date_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l5" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZU" resolve="EQUALS" />
        <node concept="385nmt" id="lq" role="385vvn">
          <property role="385vuF" value="EQUALS" />
          <node concept="3u3nmq" id="ls" role="385v07">
            <property role="3u3nmv" value="1229499084499783674" />
          </node>
        </node>
        <node concept="39e2AT" id="lr" role="39e2AY">
          <ref role="39e2AS" node="ex" resolve="myMember_EQUALS_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l6" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3H3" resolve="Float" />
        <node concept="385nmt" id="lt" role="385vvn">
          <property role="385vuF" value="Float" />
          <node concept="3u3nmq" id="lv" role="385v07">
            <property role="3u3nmv" value="1229499084499598147" />
          </node>
        </node>
        <node concept="39e2AT" id="lu" role="39e2AY">
          <ref role="39e2AS" node="im" resolve="myMember_Float_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l7" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhKZW" resolve="GREATER" />
        <node concept="385nmt" id="lw" role="385vvn">
          <property role="385vuF" value="GREATER" />
          <node concept="3u3nmq" id="ly" role="385v07">
            <property role="3u3nmv" value="1229499084499783676" />
          </node>
        </node>
        <node concept="39e2AT" id="lx" role="39e2AY">
          <ref role="39e2AS" node="ey" resolve="myMember_GREATER_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l8" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0d" resolve="GREATER_EQUAL" />
        <node concept="385nmt" id="lz" role="385vvn">
          <property role="385vuF" value="GREATER_EQUAL" />
          <node concept="3u3nmq" id="l_" role="385v07">
            <property role="3u3nmv" value="1229499084499783693" />
          </node>
        </node>
        <node concept="39e2AT" id="l$" role="39e2AY">
          <ref role="39e2AS" node="e$" resolve="myMember_GREATER_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="l9" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0O" resolve="IN" />
        <node concept="385nmt" id="lA" role="385vvn">
          <property role="385vuF" value="IN" />
          <node concept="3u3nmq" id="lC" role="385v07">
            <property role="3u3nmv" value="1229499084499783732" />
          </node>
        </node>
        <node concept="39e2AT" id="lB" role="39e2AY">
          <ref role="39e2AS" node="eD" resolve="myMember_IN_0" />
        </node>
      </node>
      <node concept="39e2AG" id="la" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GU" resolve="Integer" />
        <node concept="385nmt" id="lD" role="385vvn">
          <property role="385vuF" value="Integer" />
          <node concept="3u3nmq" id="lF" role="385v07">
            <property role="3u3nmv" value="1229499084499598138" />
          </node>
        </node>
        <node concept="39e2AT" id="lE" role="39e2AY">
          <ref role="39e2AS" node="ij" resolve="myMember_Integer_0" />
        </node>
      </node>
      <node concept="39e2AG" id="lb" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0E" resolve="LIKE" />
        <node concept="385nmt" id="lG" role="385vvn">
          <property role="385vuF" value="LIKE" />
          <node concept="3u3nmq" id="lI" role="385v07">
            <property role="3u3nmv" value="1229499084499783722" />
          </node>
        </node>
        <node concept="39e2AT" id="lH" role="39e2AY">
          <ref role="39e2AS" node="eC" resolve="myMember_LIKE_0" />
        </node>
      </node>
      <node concept="39e2AG" id="lc" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL08" resolve="LOWER" />
        <node concept="385nmt" id="lJ" role="385vvn">
          <property role="385vuF" value="LOWER" />
          <node concept="3u3nmq" id="lL" role="385v07">
            <property role="3u3nmv" value="1229499084499783688" />
          </node>
        </node>
        <node concept="39e2AT" id="lK" role="39e2AY">
          <ref role="39e2AS" node="ez" resolve="myMember_LOWER_0" />
        </node>
      </node>
      <node concept="39e2AG" id="ld" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0j" resolve="LOWER_EQUAL" />
        <node concept="385nmt" id="lM" role="385vvn">
          <property role="385vuF" value="LOWER_EQUAL" />
          <node concept="3u3nmq" id="lO" role="385v07">
            <property role="3u3nmv" value="1229499084499783699" />
          </node>
        </node>
        <node concept="39e2AT" id="lN" role="39e2AY">
          <ref role="39e2AS" node="e_" resolve="myMember_LOWER_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="le" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRhL0p" resolve="NOT_EQUAL" />
        <node concept="385nmt" id="lP" role="385vvn">
          <property role="385vuF" value="NOT_EQUAL" />
          <node concept="3u3nmq" id="lR" role="385v07">
            <property role="3u3nmv" value="1229499084499783705" />
          </node>
        </node>
        <node concept="39e2AT" id="lQ" role="39e2AY">
          <ref role="39e2AS" node="eA" resolve="myMember_NOT_EQUAL_0" />
        </node>
      </node>
      <node concept="39e2AG" id="lf" role="39e3Y0">
        <ref role="39e2AK" to="p6im:2fooeIVv2qs" resolve="OR" />
        <node concept="385nmt" id="lS" role="385vvn">
          <property role="385vuF" value="OR" />
          <node concept="3u3nmq" id="lU" role="385v07">
            <property role="3u3nmv" value="2582920951876036252" />
          </node>
        </node>
        <node concept="39e2AT" id="lT" role="39e2AY">
          <ref role="39e2AS" node="cw" resolve="myMember_OR_0" />
        </node>
      </node>
      <node concept="39e2AG" id="lg" role="39e3Y0">
        <ref role="39e2AK" to="p6im:14g3IsRh3GV" resolve="String" />
        <node concept="385nmt" id="lV" role="385vvn">
          <property role="385vuF" value="String" />
          <node concept="3u3nmq" id="lX" role="385v07">
            <property role="3u3nmv" value="1229499084499598139" />
          </node>
        </node>
        <node concept="39e2AT" id="lW" role="39e2AY">
          <ref role="39e2AS" node="ik" resolve="myMember_String_0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kO" role="39e2AI">
      <property role="39e3Y2" value="ConceptPresentationAspectClass" />
      <node concept="39e2AG" id="lY" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="lZ" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptPresentationAspectImpl" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kP" role="39e2AI">
      <property role="39e3Y2" value="StructureAspectDescriptorCons" />
      <node concept="39e2AG" id="m0" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="m1" role="39e2AY">
          <ref role="39e2AS" node="rx" resolve="StructureAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="m2">
    <property role="TrG5h" value="LanguageConceptSwitch" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="m3" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="mA" role="1B3o_S" />
      <node concept="3uibUv" id="mB" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~LanguageConceptIndex" resolve="LanguageConceptIndex" />
      </node>
    </node>
    <node concept="Wx3nA" id="m4" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="AggregationFunction" />
      <node concept="3Tm1VV" id="mC" role="1B3o_S" />
      <node concept="10Oyi0" id="mD" role="1tU5fm" />
      <node concept="3cmrfG" id="mE" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="m5" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="AllColumns" />
      <node concept="3Tm1VV" id="mF" role="1B3o_S" />
      <node concept="10Oyi0" id="mG" role="1tU5fm" />
      <node concept="3cmrfG" id="mH" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="m6" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Average" />
      <node concept="3Tm1VV" id="mI" role="1B3o_S" />
      <node concept="10Oyi0" id="mJ" role="1tU5fm" />
      <node concept="3cmrfG" id="mK" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="Wx3nA" id="m7" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Column" />
      <node concept="3Tm1VV" id="mL" role="1B3o_S" />
      <node concept="10Oyi0" id="mM" role="1tU5fm" />
      <node concept="3cmrfG" id="mN" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="m8" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ColumnRef" />
      <node concept="3Tm1VV" id="mO" role="1B3o_S" />
      <node concept="10Oyi0" id="mP" role="1tU5fm" />
      <node concept="3cmrfG" id="mQ" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="m9" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Condition" />
      <node concept="3Tm1VV" id="mR" role="1B3o_S" />
      <node concept="10Oyi0" id="mS" role="1tU5fm" />
      <node concept="3cmrfG" id="mT" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="Wx3nA" id="ma" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Count" />
      <node concept="3Tm1VV" id="mU" role="1B3o_S" />
      <node concept="10Oyi0" id="mV" role="1tU5fm" />
      <node concept="3cmrfG" id="mW" role="33vP2m">
        <property role="3cmrfH" value="6" />
      </node>
    </node>
    <node concept="Wx3nA" id="mb" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CreateTable" />
      <node concept="3Tm1VV" id="mX" role="1B3o_S" />
      <node concept="10Oyi0" id="mY" role="1tU5fm" />
      <node concept="3cmrfG" id="mZ" role="33vP2m">
        <property role="3cmrfH" value="7" />
      </node>
    </node>
    <node concept="Wx3nA" id="mc" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="DBOperation" />
      <node concept="3Tm1VV" id="n0" role="1B3o_S" />
      <node concept="10Oyi0" id="n1" role="1tU5fm" />
      <node concept="3cmrfG" id="n2" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="Wx3nA" id="md" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Delete" />
      <node concept="3Tm1VV" id="n3" role="1B3o_S" />
      <node concept="10Oyi0" id="n4" role="1tU5fm" />
      <node concept="3cmrfG" id="n5" role="33vP2m">
        <property role="3cmrfH" value="9" />
      </node>
    </node>
    <node concept="Wx3nA" id="me" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="GroupBy" />
      <node concept="3Tm1VV" id="n6" role="1B3o_S" />
      <node concept="10Oyi0" id="n7" role="1tU5fm" />
      <node concept="3cmrfG" id="n8" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="Wx3nA" id="mf" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="InsertInto" />
      <node concept="3Tm1VV" id="n9" role="1B3o_S" />
      <node concept="10Oyi0" id="na" role="1tU5fm" />
      <node concept="3cmrfG" id="nb" role="33vP2m">
        <property role="3cmrfH" value="11" />
      </node>
    </node>
    <node concept="Wx3nA" id="mg" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="JoinCondition" />
      <node concept="3Tm1VV" id="nc" role="1B3o_S" />
      <node concept="10Oyi0" id="nd" role="1tU5fm" />
      <node concept="3cmrfG" id="ne" role="33vP2m">
        <property role="3cmrfH" value="12" />
      </node>
    </node>
    <node concept="Wx3nA" id="mh" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Max" />
      <node concept="3Tm1VV" id="nf" role="1B3o_S" />
      <node concept="10Oyi0" id="ng" role="1tU5fm" />
      <node concept="3cmrfG" id="nh" role="33vP2m">
        <property role="3cmrfH" value="13" />
      </node>
    </node>
    <node concept="Wx3nA" id="mi" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Min" />
      <node concept="3Tm1VV" id="ni" role="1B3o_S" />
      <node concept="10Oyi0" id="nj" role="1tU5fm" />
      <node concept="3cmrfG" id="nk" role="33vP2m">
        <property role="3cmrfH" value="14" />
      </node>
    </node>
    <node concept="Wx3nA" id="mj" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MultipleCondition" />
      <node concept="3Tm1VV" id="nl" role="1B3o_S" />
      <node concept="10Oyi0" id="nm" role="1tU5fm" />
      <node concept="3cmrfG" id="nn" role="33vP2m">
        <property role="3cmrfH" value="15" />
      </node>
    </node>
    <node concept="Wx3nA" id="mk" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OrderBy" />
      <node concept="3Tm1VV" id="no" role="1B3o_S" />
      <node concept="10Oyi0" id="np" role="1tU5fm" />
      <node concept="3cmrfG" id="nq" role="33vP2m">
        <property role="3cmrfH" value="16" />
      </node>
    </node>
    <node concept="Wx3nA" id="ml" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Script" />
      <node concept="3Tm1VV" id="nr" role="1B3o_S" />
      <node concept="10Oyi0" id="ns" role="1tU5fm" />
      <node concept="3cmrfG" id="nt" role="33vP2m">
        <property role="3cmrfH" value="17" />
      </node>
    </node>
    <node concept="Wx3nA" id="mm" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Select" />
      <node concept="3Tm1VV" id="nu" role="1B3o_S" />
      <node concept="10Oyi0" id="nv" role="1tU5fm" />
      <node concept="3cmrfG" id="nw" role="33vP2m">
        <property role="3cmrfH" value="18" />
      </node>
    </node>
    <node concept="Wx3nA" id="mn" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SelectColumn" />
      <node concept="3Tm1VV" id="nx" role="1B3o_S" />
      <node concept="10Oyi0" id="ny" role="1tU5fm" />
      <node concept="3cmrfG" id="nz" role="33vP2m">
        <property role="3cmrfH" value="19" />
      </node>
    </node>
    <node concept="Wx3nA" id="mo" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SimpleCondition" />
      <node concept="3Tm1VV" id="n$" role="1B3o_S" />
      <node concept="10Oyi0" id="n_" role="1tU5fm" />
      <node concept="3cmrfG" id="nA" role="33vP2m">
        <property role="3cmrfH" value="20" />
      </node>
    </node>
    <node concept="Wx3nA" id="mp" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Statement" />
      <node concept="3Tm1VV" id="nB" role="1B3o_S" />
      <node concept="10Oyi0" id="nC" role="1tU5fm" />
      <node concept="3cmrfG" id="nD" role="33vP2m">
        <property role="3cmrfH" value="21" />
      </node>
    </node>
    <node concept="Wx3nA" id="mq" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Sum" />
      <node concept="3Tm1VV" id="nE" role="1B3o_S" />
      <node concept="10Oyi0" id="nF" role="1tU5fm" />
      <node concept="3cmrfG" id="nG" role="33vP2m">
        <property role="3cmrfH" value="22" />
      </node>
    </node>
    <node concept="Wx3nA" id="mr" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TableReference" />
      <node concept="3Tm1VV" id="nH" role="1B3o_S" />
      <node concept="10Oyi0" id="nI" role="1tU5fm" />
      <node concept="3cmrfG" id="nJ" role="33vP2m">
        <property role="3cmrfH" value="23" />
      </node>
    </node>
    <node concept="Wx3nA" id="ms" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Update" />
      <node concept="3Tm1VV" id="nK" role="1B3o_S" />
      <node concept="10Oyi0" id="nL" role="1tU5fm" />
      <node concept="3cmrfG" id="nM" role="33vP2m">
        <property role="3cmrfH" value="24" />
      </node>
    </node>
    <node concept="Wx3nA" id="mt" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Value" />
      <node concept="3Tm1VV" id="nN" role="1B3o_S" />
      <node concept="10Oyi0" id="nO" role="1tU5fm" />
      <node concept="3cmrfG" id="nP" role="33vP2m">
        <property role="3cmrfH" value="25" />
      </node>
    </node>
    <node concept="Wx3nA" id="mu" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Where" />
      <node concept="3Tm1VV" id="nQ" role="1B3o_S" />
      <node concept="10Oyi0" id="nR" role="1tU5fm" />
      <node concept="3cmrfG" id="nS" role="33vP2m">
        <property role="3cmrfH" value="26" />
      </node>
    </node>
    <node concept="2tJIrI" id="mv" role="jymVt" />
    <node concept="3clFbW" id="mw" role="jymVt">
      <node concept="3cqZAl" id="nT" role="3clF45" />
      <node concept="3Tm1VV" id="nU" role="1B3o_S" />
      <node concept="3clFbS" id="nV" role="3clF47">
        <node concept="3cpWs8" id="nW" role="3cqZAp">
          <node concept="3cpWsn" id="op" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="oq" role="1tU5fm">
              <ref role="3uigEE" to="ksn4:~LanguageConceptIndexBuilder" resolve="LanguageConceptIndexBuilder" />
            </node>
            <node concept="2ShNRf" id="or" role="33vP2m">
              <node concept="1pGfFk" id="os" role="2ShVmc">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.&lt;init&gt;(long,long)" resolve="LanguageConceptIndexBuilder" />
                <node concept="1adDum" id="ot" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="ou" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nX" role="3cqZAp">
          <node concept="2OqwBi" id="ov" role="3clFbG">
            <node concept="37vLTw" id="ow" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="ox" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="oy" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b022e74L" />
              </node>
              <node concept="37vLTw" id="oz" role="37wK5m">
                <ref role="3cqZAo" node="m4" resolve="AggregationFunction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nY" role="3cqZAp">
          <node concept="2OqwBi" id="o$" role="3clFbG">
            <node concept="37vLTw" id="o_" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="oA" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="oB" role="37wK5m">
                <property role="1adDun" value="0xe8aecd6b2519713L" />
              </node>
              <node concept="37vLTw" id="oC" role="37wK5m">
                <ref role="3cqZAo" node="m5" resolve="AllColumns" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nZ" role="3cqZAp">
          <node concept="2OqwBi" id="oD" role="3clFbG">
            <node concept="37vLTw" id="oE" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="oF" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="oG" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b028394L" />
              </node>
              <node concept="37vLTw" id="oH" role="37wK5m">
                <ref role="3cqZAo" node="m6" resolve="Average" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o0" role="3cqZAp">
          <node concept="2OqwBi" id="oI" role="3clFbG">
            <node concept="37vLTw" id="oJ" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="oK" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="oL" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b33L" />
              </node>
              <node concept="37vLTw" id="oM" role="37wK5m">
                <ref role="3cqZAo" node="m7" resolve="Column" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o1" role="3cqZAp">
          <node concept="2OqwBi" id="oN" role="3clFbG">
            <node concept="37vLTw" id="oO" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="oP" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="oQ" role="37wK5m">
                <property role="1adDun" value="0x11100ee7375157f4L" />
              </node>
              <node concept="37vLTw" id="oR" role="37wK5m">
                <ref role="3cqZAo" node="m8" resolve="ColumnRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o2" role="3cqZAp">
          <node concept="2OqwBi" id="oS" role="3clFbG">
            <node concept="37vLTw" id="oT" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="oU" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="oV" role="37wK5m">
                <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
              </node>
              <node concept="37vLTw" id="oW" role="37wK5m">
                <ref role="3cqZAo" node="m9" resolve="Condition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o3" role="3cqZAp">
          <node concept="2OqwBi" id="oX" role="3clFbG">
            <node concept="37vLTw" id="oY" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="oZ" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="p0" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b028392L" />
              </node>
              <node concept="37vLTw" id="p1" role="37wK5m">
                <ref role="3cqZAo" node="ma" resolve="Count" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o4" role="3cqZAp">
          <node concept="2OqwBi" id="p2" role="3clFbG">
            <node concept="37vLTw" id="p3" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="p4" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="p5" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b2eL" />
              </node>
              <node concept="37vLTw" id="p6" role="37wK5m">
                <ref role="3cqZAo" node="mb" resolve="CreateTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o5" role="3cqZAp">
          <node concept="2OqwBi" id="p7" role="3clFbG">
            <node concept="37vLTw" id="p8" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="p9" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pa" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
              <node concept="37vLTw" id="pb" role="37wK5m">
                <ref role="3cqZAo" node="mc" resolve="DBOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o6" role="3cqZAp">
          <node concept="2OqwBi" id="pc" role="3clFbG">
            <node concept="37vLTw" id="pd" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pe" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pf" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa642699L" />
              </node>
              <node concept="37vLTw" id="pg" role="37wK5m">
                <ref role="3cqZAo" node="md" resolve="Delete" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o7" role="3cqZAp">
          <node concept="2OqwBi" id="ph" role="3clFbG">
            <node concept="37vLTw" id="pi" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pj" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pk" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa6a16ceL" />
              </node>
              <node concept="37vLTw" id="pl" role="37wK5m">
                <ref role="3cqZAo" node="me" resolve="GroupBy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o8" role="3cqZAp">
          <node concept="2OqwBi" id="pm" role="3clFbG">
            <node concept="37vLTw" id="pn" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="po" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pp" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f1c72c8L" />
              </node>
              <node concept="37vLTw" id="pq" role="37wK5m">
                <ref role="3cqZAo" node="mf" resolve="InsertInto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o9" role="3cqZAp">
          <node concept="2OqwBi" id="pr" role="3clFbG">
            <node concept="37vLTw" id="ps" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pt" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pu" role="37wK5m">
                <property role="1adDun" value="0x6c94f05b7ec9d046L" />
              </node>
              <node concept="37vLTw" id="pv" role="37wK5m">
                <ref role="3cqZAo" node="mg" resolve="JoinCondition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oa" role="3cqZAp">
          <node concept="2OqwBi" id="pw" role="3clFbG">
            <node concept="37vLTw" id="px" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="py" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pz" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b028390L" />
              </node>
              <node concept="37vLTw" id="p$" role="37wK5m">
                <ref role="3cqZAo" node="mh" resolve="Max" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ob" role="3cqZAp">
          <node concept="2OqwBi" id="p_" role="3clFbG">
            <node concept="37vLTw" id="pA" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pB" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pC" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b02838dL" />
              </node>
              <node concept="37vLTw" id="pD" role="37wK5m">
                <ref role="3cqZAo" node="mi" resolve="Min" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oc" role="3cqZAp">
          <node concept="2OqwBi" id="pE" role="3clFbG">
            <node concept="37vLTw" id="pF" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pG" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pH" role="37wK5m">
                <property role="1adDun" value="0x5eeb1b6c0699ea1bL" />
              </node>
              <node concept="37vLTw" id="pI" role="37wK5m">
                <ref role="3cqZAo" node="mj" resolve="MultipleCondition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="od" role="3cqZAp">
          <node concept="2OqwBi" id="pJ" role="3clFbG">
            <node concept="37vLTw" id="pK" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pL" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pM" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa61e251L" />
              </node>
              <node concept="37vLTw" id="pN" role="37wK5m">
                <ref role="3cqZAo" node="mk" resolve="OrderBy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oe" role="3cqZAp">
          <node concept="2OqwBi" id="pO" role="3clFbG">
            <node concept="37vLTw" id="pP" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pQ" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pR" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443bcdL" />
              </node>
              <node concept="37vLTw" id="pS" role="37wK5m">
                <ref role="3cqZAo" node="ml" resolve="Script" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="of" role="3cqZAp">
          <node concept="2OqwBi" id="pT" role="3clFbG">
            <node concept="37vLTw" id="pU" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="pV" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="pW" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e379L" />
              </node>
              <node concept="37vLTw" id="pX" role="37wK5m">
                <ref role="3cqZAo" node="mm" resolve="Select" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="og" role="3cqZAp">
          <node concept="2OqwBi" id="pY" role="3clFbG">
            <node concept="37vLTw" id="pZ" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="q0" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="q1" role="37wK5m">
                <property role="1adDun" value="0xe8aecd6b2519712L" />
              </node>
              <node concept="37vLTw" id="q2" role="37wK5m">
                <ref role="3cqZAo" node="mn" resolve="SelectColumn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oh" role="3cqZAp">
          <node concept="2OqwBi" id="q3" role="3clFbG">
            <node concept="37vLTw" id="q4" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="q5" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="q6" role="37wK5m">
                <property role="1adDun" value="0x5eeb1b6c0699ea18L" />
              </node>
              <node concept="37vLTw" id="q7" role="37wK5m">
                <ref role="3cqZAo" node="mo" resolve="SimpleCondition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oi" role="3cqZAp">
          <node concept="2OqwBi" id="q8" role="3clFbG">
            <node concept="37vLTw" id="q9" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="qa" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="qb" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
              <node concept="37vLTw" id="qc" role="37wK5m">
                <ref role="3cqZAo" node="mp" resolve="Statement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oj" role="3cqZAp">
          <node concept="2OqwBi" id="qd" role="3clFbG">
            <node concept="37vLTw" id="qe" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="qf" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="qg" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b028393L" />
              </node>
              <node concept="37vLTw" id="qh" role="37wK5m">
                <ref role="3cqZAo" node="mq" resolve="Sum" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ok" role="3cqZAp">
          <node concept="2OqwBi" id="qi" role="3clFbG">
            <node concept="37vLTw" id="qj" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="qk" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="ql" role="37wK5m">
                <property role="1adDun" value="0x207f13a8b545f6deL" />
              </node>
              <node concept="37vLTw" id="qm" role="37wK5m">
                <ref role="3cqZAo" node="mr" resolve="TableReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ol" role="3cqZAp">
          <node concept="2OqwBi" id="qn" role="3clFbG">
            <node concept="37vLTw" id="qo" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="qp" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="qq" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f23853fL" />
              </node>
              <node concept="37vLTw" id="qr" role="37wK5m">
                <ref role="3cqZAo" node="ms" resolve="Update" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="om" role="3cqZAp">
          <node concept="2OqwBi" id="qs" role="3clFbG">
            <node concept="37vLTw" id="qt" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="qu" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="qv" role="37wK5m">
                <property role="1adDun" value="0x625a3ba00f1cc88bL" />
              </node>
              <node concept="37vLTw" id="qw" role="37wK5m">
                <ref role="3cqZAo" node="mt" resolve="Value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="on" role="3cqZAp">
          <node concept="2OqwBi" id="qx" role="3clFbG">
            <node concept="37vLTw" id="qy" role="2Oq$k0">
              <ref role="3cqZAo" node="op" resolve="builder" />
            </node>
            <node concept="liA8E" id="qz" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="q$" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e37bL" />
              </node>
              <node concept="37vLTw" id="q_" role="37wK5m">
                <ref role="3cqZAo" node="mu" resolve="Where" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oo" role="3cqZAp">
          <node concept="37vLTI" id="qA" role="3clFbG">
            <node concept="2OqwBi" id="qB" role="37vLTx">
              <node concept="37vLTw" id="qD" role="2Oq$k0">
                <ref role="3cqZAo" node="op" resolve="builder" />
              </node>
              <node concept="liA8E" id="qE" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.seal()" resolve="seal" />
              </node>
            </node>
            <node concept="37vLTw" id="qC" role="37vLTJ">
              <ref role="3cqZAo" node="m3" resolve="myIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mx" role="jymVt" />
    <node concept="3clFb_" id="my" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="qF" role="3clF45" />
      <node concept="3clFbS" id="qG" role="3clF47">
        <node concept="3cpWs6" id="qI" role="3cqZAp">
          <node concept="2OqwBi" id="qJ" role="3cqZAk">
            <node concept="37vLTw" id="qK" role="2Oq$k0">
              <ref role="3cqZAo" node="m3" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="qL" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="index" />
              <node concept="37vLTw" id="qM" role="37wK5m">
                <ref role="3cqZAo" node="qH" resolve="cid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qH" role="3clF46">
        <property role="TrG5h" value="cid" />
        <node concept="3uibUv" id="qN" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mz" role="jymVt" />
    <node concept="3clFb_" id="m$" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="qO" role="3clF45" />
      <node concept="3Tm1VV" id="qP" role="1B3o_S" />
      <node concept="3clFbS" id="qQ" role="3clF47">
        <node concept="3cpWs6" id="qS" role="3cqZAp">
          <node concept="2OqwBi" id="qT" role="3cqZAk">
            <node concept="37vLTw" id="qU" role="2Oq$k0">
              <ref role="3cqZAo" node="m3" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="qV" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <node concept="37vLTw" id="qW" role="37wK5m">
                <ref role="3cqZAo" node="qR" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qR" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="qX" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="m_" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="qY">
    <property role="TrG5h" value="StructureAspectDescriptor" />
    <node concept="3uibUv" id="qZ" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseStructureAspectDescriptor" resolve="BaseStructureAspectDescriptor" />
    </node>
    <node concept="312cEg" id="r0" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptAggregationFunction" />
      <node concept="3uibUv" id="s9" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sa" role="33vP2m">
        <ref role="37wK5l" node="rI" resolve="createDescriptorForAggregationFunction" />
      </node>
    </node>
    <node concept="312cEg" id="r1" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptAllColumns" />
      <node concept="3uibUv" id="sb" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sc" role="33vP2m">
        <ref role="37wK5l" node="rJ" resolve="createDescriptorForAllColumns" />
      </node>
    </node>
    <node concept="312cEg" id="r2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptAverage" />
      <node concept="3uibUv" id="sd" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="se" role="33vP2m">
        <ref role="37wK5l" node="rK" resolve="createDescriptorForAverage" />
      </node>
    </node>
    <node concept="312cEg" id="r3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptColumn" />
      <node concept="3uibUv" id="sf" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sg" role="33vP2m">
        <ref role="37wK5l" node="rL" resolve="createDescriptorForColumn" />
      </node>
    </node>
    <node concept="312cEg" id="r4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptColumnRef" />
      <node concept="3uibUv" id="sh" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="si" role="33vP2m">
        <ref role="37wK5l" node="rM" resolve="createDescriptorForColumnRef" />
      </node>
    </node>
    <node concept="312cEg" id="r5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCondition" />
      <node concept="3uibUv" id="sj" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sk" role="33vP2m">
        <ref role="37wK5l" node="rN" resolve="createDescriptorForCondition" />
      </node>
    </node>
    <node concept="312cEg" id="r6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCount" />
      <node concept="3uibUv" id="sl" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sm" role="33vP2m">
        <ref role="37wK5l" node="rO" resolve="createDescriptorForCount" />
      </node>
    </node>
    <node concept="312cEg" id="r7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCreateTable" />
      <node concept="3uibUv" id="sn" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="so" role="33vP2m">
        <ref role="37wK5l" node="rP" resolve="createDescriptorForCreateTable" />
      </node>
    </node>
    <node concept="312cEg" id="r8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptDBOperation" />
      <node concept="3uibUv" id="sp" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sq" role="33vP2m">
        <ref role="37wK5l" node="rQ" resolve="createDescriptorForDBOperation" />
      </node>
    </node>
    <node concept="312cEg" id="r9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptDelete" />
      <node concept="3uibUv" id="sr" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ss" role="33vP2m">
        <ref role="37wK5l" node="rR" resolve="createDescriptorForDelete" />
      </node>
    </node>
    <node concept="312cEg" id="ra" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptGroupBy" />
      <node concept="3uibUv" id="st" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="su" role="33vP2m">
        <ref role="37wK5l" node="rS" resolve="createDescriptorForGroupBy" />
      </node>
    </node>
    <node concept="312cEg" id="rb" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptInsertInto" />
      <node concept="3uibUv" id="sv" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sw" role="33vP2m">
        <ref role="37wK5l" node="rT" resolve="createDescriptorForInsertInto" />
      </node>
    </node>
    <node concept="312cEg" id="rc" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptJoinCondition" />
      <node concept="3uibUv" id="sx" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sy" role="33vP2m">
        <ref role="37wK5l" node="rU" resolve="createDescriptorForJoinCondition" />
      </node>
    </node>
    <node concept="312cEg" id="rd" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMax" />
      <node concept="3uibUv" id="sz" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="s$" role="33vP2m">
        <ref role="37wK5l" node="rV" resolve="createDescriptorForMax" />
      </node>
    </node>
    <node concept="312cEg" id="re" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMin" />
      <node concept="3uibUv" id="s_" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sA" role="33vP2m">
        <ref role="37wK5l" node="rW" resolve="createDescriptorForMin" />
      </node>
    </node>
    <node concept="312cEg" id="rf" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMultipleCondition" />
      <node concept="3uibUv" id="sB" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sC" role="33vP2m">
        <ref role="37wK5l" node="rX" resolve="createDescriptorForMultipleCondition" />
      </node>
    </node>
    <node concept="312cEg" id="rg" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptOrderBy" />
      <node concept="3uibUv" id="sD" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sE" role="33vP2m">
        <ref role="37wK5l" node="rY" resolve="createDescriptorForOrderBy" />
      </node>
    </node>
    <node concept="312cEg" id="rh" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptScript" />
      <node concept="3uibUv" id="sF" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sG" role="33vP2m">
        <ref role="37wK5l" node="rZ" resolve="createDescriptorForScript" />
      </node>
    </node>
    <node concept="312cEg" id="ri" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSelect" />
      <node concept="3uibUv" id="sH" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sI" role="33vP2m">
        <ref role="37wK5l" node="s0" resolve="createDescriptorForSelect" />
      </node>
    </node>
    <node concept="312cEg" id="rj" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSelectColumn" />
      <node concept="3uibUv" id="sJ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sK" role="33vP2m">
        <ref role="37wK5l" node="s1" resolve="createDescriptorForSelectColumn" />
      </node>
    </node>
    <node concept="312cEg" id="rk" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSimpleCondition" />
      <node concept="3uibUv" id="sL" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sM" role="33vP2m">
        <ref role="37wK5l" node="s2" resolve="createDescriptorForSimpleCondition" />
      </node>
    </node>
    <node concept="312cEg" id="rl" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptStatement" />
      <node concept="3uibUv" id="sN" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sO" role="33vP2m">
        <ref role="37wK5l" node="s3" resolve="createDescriptorForStatement" />
      </node>
    </node>
    <node concept="312cEg" id="rm" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSum" />
      <node concept="3uibUv" id="sP" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sQ" role="33vP2m">
        <ref role="37wK5l" node="s4" resolve="createDescriptorForSum" />
      </node>
    </node>
    <node concept="312cEg" id="rn" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptTableReference" />
      <node concept="3uibUv" id="sR" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sS" role="33vP2m">
        <ref role="37wK5l" node="s5" resolve="createDescriptorForTableReference" />
      </node>
    </node>
    <node concept="312cEg" id="ro" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptUpdate" />
      <node concept="3uibUv" id="sT" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sU" role="33vP2m">
        <ref role="37wK5l" node="s6" resolve="createDescriptorForUpdate" />
      </node>
    </node>
    <node concept="312cEg" id="rp" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptValue" />
      <node concept="3uibUv" id="sV" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sW" role="33vP2m">
        <ref role="37wK5l" node="s7" resolve="createDescriptorForValue" />
      </node>
    </node>
    <node concept="312cEg" id="rq" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptWhere" />
      <node concept="3uibUv" id="sX" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="sY" role="33vP2m">
        <ref role="37wK5l" node="s8" resolve="createDescriptorForWhere" />
      </node>
    </node>
    <node concept="312cEg" id="rr" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationConditionOperator" />
      <node concept="3uibUv" id="sZ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="t0" role="33vP2m">
        <node concept="1pGfFk" id="t1" role="2ShVmc">
          <ref role="37wK5l" node="ct" resolve="EnumerationDescriptor_ConditionOperator" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="rs" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationOperator" />
      <node concept="3uibUv" id="t2" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="t3" role="33vP2m">
        <node concept="1pGfFk" id="t4" role="2ShVmc">
          <ref role="37wK5l" node="ev" resolve="EnumerationDescriptor_Operator" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="rt" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationType" />
      <node concept="3uibUv" id="t5" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="t6" role="33vP2m">
        <node concept="1pGfFk" id="t7" role="2ShVmc">
          <ref role="37wK5l" node="ih" resolve="EnumerationDescriptor_Type" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ru" role="jymVt">
      <property role="TrG5h" value="myIndexSwitch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="t8" role="1B3o_S" />
      <node concept="3uibUv" id="t9" role="1tU5fm">
        <ref role="3uigEE" node="m2" resolve="LanguageConceptSwitch" />
      </node>
    </node>
    <node concept="3Tm1VV" id="rv" role="1B3o_S" />
    <node concept="2tJIrI" id="rw" role="jymVt" />
    <node concept="3clFbW" id="rx" role="jymVt">
      <node concept="3cqZAl" id="ta" role="3clF45" />
      <node concept="3Tm1VV" id="tb" role="1B3o_S" />
      <node concept="3clFbS" id="tc" role="3clF47">
        <node concept="3clFbF" id="td" role="3cqZAp">
          <node concept="37vLTI" id="te" role="3clFbG">
            <node concept="2ShNRf" id="tf" role="37vLTx">
              <node concept="1pGfFk" id="th" role="2ShVmc">
                <ref role="37wK5l" node="mw" resolve="LanguageConceptSwitch" />
              </node>
            </node>
            <node concept="37vLTw" id="tg" role="37vLTJ">
              <ref role="3cqZAo" node="ru" resolve="myIndexSwitch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ry" role="jymVt" />
    <node concept="2tJIrI" id="rz" role="jymVt" />
    <node concept="3clFb_" id="r$" role="jymVt">
      <property role="TrG5h" value="reportDependencies" />
      <node concept="3Tm1VV" id="ti" role="1B3o_S" />
      <node concept="3cqZAl" id="tj" role="3clF45" />
      <node concept="37vLTG" id="tk" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="3uibUv" id="tn" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~StructureAspectDescriptor$Dependencies" resolve="StructureAspectDescriptor.Dependencies" />
        </node>
      </node>
      <node concept="3clFbS" id="tl" role="3clF47">
        <node concept="3clFbF" id="to" role="3cqZAp">
          <node concept="2OqwBi" id="tp" role="3clFbG">
            <node concept="37vLTw" id="tq" role="2Oq$k0">
              <ref role="3cqZAo" node="tk" resolve="deps" />
            </node>
            <node concept="liA8E" id="tr" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="1adDum" id="ts" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="tt" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="Xl_RD" id="tu" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.core" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="tm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="r_" role="jymVt" />
    <node concept="3clFb_" id="rA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getDescriptors" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="tv" role="3clF47">
        <node concept="3cpWs6" id="tz" role="3cqZAp">
          <node concept="2YIFZM" id="t$" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="37vLTw" id="t_" role="37wK5m">
              <ref role="3cqZAo" node="r0" resolve="myConceptAggregationFunction" />
            </node>
            <node concept="37vLTw" id="tA" role="37wK5m">
              <ref role="3cqZAo" node="r1" resolve="myConceptAllColumns" />
            </node>
            <node concept="37vLTw" id="tB" role="37wK5m">
              <ref role="3cqZAo" node="r2" resolve="myConceptAverage" />
            </node>
            <node concept="37vLTw" id="tC" role="37wK5m">
              <ref role="3cqZAo" node="r3" resolve="myConceptColumn" />
            </node>
            <node concept="37vLTw" id="tD" role="37wK5m">
              <ref role="3cqZAo" node="r4" resolve="myConceptColumnRef" />
            </node>
            <node concept="37vLTw" id="tE" role="37wK5m">
              <ref role="3cqZAo" node="r5" resolve="myConceptCondition" />
            </node>
            <node concept="37vLTw" id="tF" role="37wK5m">
              <ref role="3cqZAo" node="r6" resolve="myConceptCount" />
            </node>
            <node concept="37vLTw" id="tG" role="37wK5m">
              <ref role="3cqZAo" node="r7" resolve="myConceptCreateTable" />
            </node>
            <node concept="37vLTw" id="tH" role="37wK5m">
              <ref role="3cqZAo" node="r8" resolve="myConceptDBOperation" />
            </node>
            <node concept="37vLTw" id="tI" role="37wK5m">
              <ref role="3cqZAo" node="r9" resolve="myConceptDelete" />
            </node>
            <node concept="37vLTw" id="tJ" role="37wK5m">
              <ref role="3cqZAo" node="ra" resolve="myConceptGroupBy" />
            </node>
            <node concept="37vLTw" id="tK" role="37wK5m">
              <ref role="3cqZAo" node="rb" resolve="myConceptInsertInto" />
            </node>
            <node concept="37vLTw" id="tL" role="37wK5m">
              <ref role="3cqZAo" node="rc" resolve="myConceptJoinCondition" />
            </node>
            <node concept="37vLTw" id="tM" role="37wK5m">
              <ref role="3cqZAo" node="rd" resolve="myConceptMax" />
            </node>
            <node concept="37vLTw" id="tN" role="37wK5m">
              <ref role="3cqZAo" node="re" resolve="myConceptMin" />
            </node>
            <node concept="37vLTw" id="tO" role="37wK5m">
              <ref role="3cqZAo" node="rf" resolve="myConceptMultipleCondition" />
            </node>
            <node concept="37vLTw" id="tP" role="37wK5m">
              <ref role="3cqZAo" node="rg" resolve="myConceptOrderBy" />
            </node>
            <node concept="37vLTw" id="tQ" role="37wK5m">
              <ref role="3cqZAo" node="rh" resolve="myConceptScript" />
            </node>
            <node concept="37vLTw" id="tR" role="37wK5m">
              <ref role="3cqZAo" node="ri" resolve="myConceptSelect" />
            </node>
            <node concept="37vLTw" id="tS" role="37wK5m">
              <ref role="3cqZAo" node="rj" resolve="myConceptSelectColumn" />
            </node>
            <node concept="37vLTw" id="tT" role="37wK5m">
              <ref role="3cqZAo" node="rk" resolve="myConceptSimpleCondition" />
            </node>
            <node concept="37vLTw" id="tU" role="37wK5m">
              <ref role="3cqZAo" node="rl" resolve="myConceptStatement" />
            </node>
            <node concept="37vLTw" id="tV" role="37wK5m">
              <ref role="3cqZAo" node="rm" resolve="myConceptSum" />
            </node>
            <node concept="37vLTw" id="tW" role="37wK5m">
              <ref role="3cqZAo" node="rn" resolve="myConceptTableReference" />
            </node>
            <node concept="37vLTw" id="tX" role="37wK5m">
              <ref role="3cqZAo" node="ro" resolve="myConceptUpdate" />
            </node>
            <node concept="37vLTw" id="tY" role="37wK5m">
              <ref role="3cqZAo" node="rp" resolve="myConceptValue" />
            </node>
            <node concept="37vLTw" id="tZ" role="37wK5m">
              <ref role="3cqZAo" node="rq" resolve="myConceptWhere" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tw" role="1B3o_S" />
      <node concept="3uibUv" id="tx" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="u0" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="ty" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="rB" role="jymVt" />
    <node concept="3clFb_" id="rC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="u1" role="1B3o_S" />
      <node concept="37vLTG" id="u2" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="u7" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
      <node concept="3clFbS" id="u3" role="3clF47">
        <node concept="3KaCP$" id="u8" role="3cqZAp">
          <node concept="3KbdKl" id="u9" role="3KbHQx">
            <node concept="3clFbS" id="uA" role="3Kbo56">
              <node concept="3cpWs6" id="uC" role="3cqZAp">
                <node concept="37vLTw" id="uD" role="3cqZAk">
                  <ref role="3cqZAo" node="r0" resolve="myConceptAggregationFunction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uB" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m4" resolve="AggregationFunction" />
            </node>
          </node>
          <node concept="3KbdKl" id="ua" role="3KbHQx">
            <node concept="3clFbS" id="uE" role="3Kbo56">
              <node concept="3cpWs6" id="uG" role="3cqZAp">
                <node concept="37vLTw" id="uH" role="3cqZAk">
                  <ref role="3cqZAo" node="r1" resolve="myConceptAllColumns" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uF" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m5" resolve="AllColumns" />
            </node>
          </node>
          <node concept="3KbdKl" id="ub" role="3KbHQx">
            <node concept="3clFbS" id="uI" role="3Kbo56">
              <node concept="3cpWs6" id="uK" role="3cqZAp">
                <node concept="37vLTw" id="uL" role="3cqZAk">
                  <ref role="3cqZAo" node="r2" resolve="myConceptAverage" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uJ" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m6" resolve="Average" />
            </node>
          </node>
          <node concept="3KbdKl" id="uc" role="3KbHQx">
            <node concept="3clFbS" id="uM" role="3Kbo56">
              <node concept="3cpWs6" id="uO" role="3cqZAp">
                <node concept="37vLTw" id="uP" role="3cqZAk">
                  <ref role="3cqZAo" node="r3" resolve="myConceptColumn" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uN" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m7" resolve="Column" />
            </node>
          </node>
          <node concept="3KbdKl" id="ud" role="3KbHQx">
            <node concept="3clFbS" id="uQ" role="3Kbo56">
              <node concept="3cpWs6" id="uS" role="3cqZAp">
                <node concept="37vLTw" id="uT" role="3cqZAk">
                  <ref role="3cqZAo" node="r4" resolve="myConceptColumnRef" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uR" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m8" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="3KbdKl" id="ue" role="3KbHQx">
            <node concept="3clFbS" id="uU" role="3Kbo56">
              <node concept="3cpWs6" id="uW" role="3cqZAp">
                <node concept="37vLTw" id="uX" role="3cqZAk">
                  <ref role="3cqZAo" node="r5" resolve="myConceptCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uV" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="m9" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="uf" role="3KbHQx">
            <node concept="3clFbS" id="uY" role="3Kbo56">
              <node concept="3cpWs6" id="v0" role="3cqZAp">
                <node concept="37vLTw" id="v1" role="3cqZAk">
                  <ref role="3cqZAo" node="r6" resolve="myConceptCount" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="uZ" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ma" resolve="Count" />
            </node>
          </node>
          <node concept="3KbdKl" id="ug" role="3KbHQx">
            <node concept="3clFbS" id="v2" role="3Kbo56">
              <node concept="3cpWs6" id="v4" role="3cqZAp">
                <node concept="37vLTw" id="v5" role="3cqZAk">
                  <ref role="3cqZAo" node="r7" resolve="myConceptCreateTable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="v3" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mb" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3KbdKl" id="uh" role="3KbHQx">
            <node concept="3clFbS" id="v6" role="3Kbo56">
              <node concept="3cpWs6" id="v8" role="3cqZAp">
                <node concept="37vLTw" id="v9" role="3cqZAk">
                  <ref role="3cqZAo" node="r8" resolve="myConceptDBOperation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="v7" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mc" resolve="DBOperation" />
            </node>
          </node>
          <node concept="3KbdKl" id="ui" role="3KbHQx">
            <node concept="3clFbS" id="va" role="3Kbo56">
              <node concept="3cpWs6" id="vc" role="3cqZAp">
                <node concept="37vLTw" id="vd" role="3cqZAk">
                  <ref role="3cqZAo" node="r9" resolve="myConceptDelete" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vb" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="md" resolve="Delete" />
            </node>
          </node>
          <node concept="3KbdKl" id="uj" role="3KbHQx">
            <node concept="3clFbS" id="ve" role="3Kbo56">
              <node concept="3cpWs6" id="vg" role="3cqZAp">
                <node concept="37vLTw" id="vh" role="3cqZAk">
                  <ref role="3cqZAo" node="ra" resolve="myConceptGroupBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vf" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="me" resolve="GroupBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="uk" role="3KbHQx">
            <node concept="3clFbS" id="vi" role="3Kbo56">
              <node concept="3cpWs6" id="vk" role="3cqZAp">
                <node concept="37vLTw" id="vl" role="3cqZAk">
                  <ref role="3cqZAo" node="rb" resolve="myConceptInsertInto" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vj" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mf" resolve="InsertInto" />
            </node>
          </node>
          <node concept="3KbdKl" id="ul" role="3KbHQx">
            <node concept="3clFbS" id="vm" role="3Kbo56">
              <node concept="3cpWs6" id="vo" role="3cqZAp">
                <node concept="37vLTw" id="vp" role="3cqZAk">
                  <ref role="3cqZAo" node="rc" resolve="myConceptJoinCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vn" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mg" resolve="JoinCondition" />
            </node>
          </node>
          <node concept="3KbdKl" id="um" role="3KbHQx">
            <node concept="3clFbS" id="vq" role="3Kbo56">
              <node concept="3cpWs6" id="vs" role="3cqZAp">
                <node concept="37vLTw" id="vt" role="3cqZAk">
                  <ref role="3cqZAo" node="rd" resolve="myConceptMax" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vr" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mh" resolve="Max" />
            </node>
          </node>
          <node concept="3KbdKl" id="un" role="3KbHQx">
            <node concept="3clFbS" id="vu" role="3Kbo56">
              <node concept="3cpWs6" id="vw" role="3cqZAp">
                <node concept="37vLTw" id="vx" role="3cqZAk">
                  <ref role="3cqZAo" node="re" resolve="myConceptMin" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vv" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mi" resolve="Min" />
            </node>
          </node>
          <node concept="3KbdKl" id="uo" role="3KbHQx">
            <node concept="3clFbS" id="vy" role="3Kbo56">
              <node concept="3cpWs6" id="v$" role="3cqZAp">
                <node concept="37vLTw" id="v_" role="3cqZAk">
                  <ref role="3cqZAo" node="rf" resolve="myConceptMultipleCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vz" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mj" resolve="MultipleCondition" />
            </node>
          </node>
          <node concept="3KbdKl" id="up" role="3KbHQx">
            <node concept="3clFbS" id="vA" role="3Kbo56">
              <node concept="3cpWs6" id="vC" role="3cqZAp">
                <node concept="37vLTw" id="vD" role="3cqZAk">
                  <ref role="3cqZAo" node="rg" resolve="myConceptOrderBy" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vB" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mk" resolve="OrderBy" />
            </node>
          </node>
          <node concept="3KbdKl" id="uq" role="3KbHQx">
            <node concept="3clFbS" id="vE" role="3Kbo56">
              <node concept="3cpWs6" id="vG" role="3cqZAp">
                <node concept="37vLTw" id="vH" role="3cqZAk">
                  <ref role="3cqZAo" node="rh" resolve="myConceptScript" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vF" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ml" resolve="Script" />
            </node>
          </node>
          <node concept="3KbdKl" id="ur" role="3KbHQx">
            <node concept="3clFbS" id="vI" role="3Kbo56">
              <node concept="3cpWs6" id="vK" role="3cqZAp">
                <node concept="37vLTw" id="vL" role="3cqZAk">
                  <ref role="3cqZAo" node="ri" resolve="myConceptSelect" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vJ" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mm" resolve="Select" />
            </node>
          </node>
          <node concept="3KbdKl" id="us" role="3KbHQx">
            <node concept="3clFbS" id="vM" role="3Kbo56">
              <node concept="3cpWs6" id="vO" role="3cqZAp">
                <node concept="37vLTw" id="vP" role="3cqZAk">
                  <ref role="3cqZAo" node="rj" resolve="myConceptSelectColumn" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vN" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mn" resolve="SelectColumn" />
            </node>
          </node>
          <node concept="3KbdKl" id="ut" role="3KbHQx">
            <node concept="3clFbS" id="vQ" role="3Kbo56">
              <node concept="3cpWs6" id="vS" role="3cqZAp">
                <node concept="37vLTw" id="vT" role="3cqZAk">
                  <ref role="3cqZAo" node="rk" resolve="myConceptSimpleCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vR" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mo" resolve="SimpleCondition" />
            </node>
          </node>
          <node concept="3KbdKl" id="uu" role="3KbHQx">
            <node concept="3clFbS" id="vU" role="3Kbo56">
              <node concept="3cpWs6" id="vW" role="3cqZAp">
                <node concept="37vLTw" id="vX" role="3cqZAk">
                  <ref role="3cqZAo" node="rl" resolve="myConceptStatement" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vV" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mp" resolve="Statement" />
            </node>
          </node>
          <node concept="3KbdKl" id="uv" role="3KbHQx">
            <node concept="3clFbS" id="vY" role="3Kbo56">
              <node concept="3cpWs6" id="w0" role="3cqZAp">
                <node concept="37vLTw" id="w1" role="3cqZAk">
                  <ref role="3cqZAo" node="rm" resolve="myConceptSum" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="vZ" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mq" resolve="Sum" />
            </node>
          </node>
          <node concept="3KbdKl" id="uw" role="3KbHQx">
            <node concept="3clFbS" id="w2" role="3Kbo56">
              <node concept="3cpWs6" id="w4" role="3cqZAp">
                <node concept="37vLTw" id="w5" role="3cqZAk">
                  <ref role="3cqZAo" node="rn" resolve="myConceptTableReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="w3" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mr" resolve="TableReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="ux" role="3KbHQx">
            <node concept="3clFbS" id="w6" role="3Kbo56">
              <node concept="3cpWs6" id="w8" role="3cqZAp">
                <node concept="37vLTw" id="w9" role="3cqZAk">
                  <ref role="3cqZAo" node="ro" resolve="myConceptUpdate" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="w7" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ms" resolve="Update" />
            </node>
          </node>
          <node concept="3KbdKl" id="uy" role="3KbHQx">
            <node concept="3clFbS" id="wa" role="3Kbo56">
              <node concept="3cpWs6" id="wc" role="3cqZAp">
                <node concept="37vLTw" id="wd" role="3cqZAk">
                  <ref role="3cqZAo" node="rp" resolve="myConceptValue" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="wb" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mt" resolve="Value" />
            </node>
          </node>
          <node concept="3KbdKl" id="uz" role="3KbHQx">
            <node concept="3clFbS" id="we" role="3Kbo56">
              <node concept="3cpWs6" id="wg" role="3cqZAp">
                <node concept="37vLTw" id="wh" role="3cqZAk">
                  <ref role="3cqZAo" node="rq" resolve="myConceptWhere" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="wf" role="3Kbmr1">
              <ref role="1PxDUh" node="m2" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="mu" resolve="Where" />
            </node>
          </node>
          <node concept="2OqwBi" id="u$" role="3KbGdf">
            <node concept="37vLTw" id="wi" role="2Oq$k0">
              <ref role="3cqZAo" node="ru" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="wj" role="2OqNvi">
              <ref role="37wK5l" node="my" resolve="index" />
              <node concept="37vLTw" id="wk" role="37wK5m">
                <ref role="3cqZAo" node="u2" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="u_" role="3Kb1Dw">
            <node concept="3cpWs6" id="wl" role="3cqZAp">
              <node concept="10Nm6u" id="wm" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="u4" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="2AHcQZ" id="u5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="u6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="rD" role="jymVt" />
    <node concept="3clFb_" id="rE" role="jymVt">
      <property role="TrG5h" value="getDataTypeDescriptors" />
      <node concept="3Tm1VV" id="wn" role="1B3o_S" />
      <node concept="3uibUv" id="wo" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="wr" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~DataTypeDescriptor" resolve="DataTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="wp" role="3clF47">
        <node concept="3cpWs6" id="ws" role="3cqZAp">
          <node concept="2YIFZM" id="wt" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="wu" role="37wK5m">
              <ref role="3cqZAo" node="rr" resolve="myEnumerationConditionOperator" />
            </node>
            <node concept="37vLTw" id="wv" role="37wK5m">
              <ref role="3cqZAo" node="rs" resolve="myEnumerationOperator" />
            </node>
            <node concept="37vLTw" id="ww" role="37wK5m">
              <ref role="3cqZAo" node="rt" resolve="myEnumerationType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="wq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="rF" role="jymVt" />
    <node concept="3clFb_" id="rG" role="jymVt">
      <property role="TrG5h" value="internalIndex" />
      <node concept="10Oyi0" id="wx" role="3clF45" />
      <node concept="3clFbS" id="wy" role="3clF47">
        <node concept="3cpWs6" id="w$" role="3cqZAp">
          <node concept="2OqwBi" id="w_" role="3cqZAk">
            <node concept="37vLTw" id="wA" role="2Oq$k0">
              <ref role="3cqZAo" node="ru" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="wB" role="2OqNvi">
              <ref role="37wK5l" node="m$" resolve="index" />
              <node concept="37vLTw" id="wC" role="37wK5m">
                <ref role="3cqZAo" node="wz" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="wz" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="wD" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="rH" role="jymVt" />
    <node concept="2YIFZL" id="rI" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForAggregationFunction" />
      <node concept="3clFbS" id="wE" role="3clF47">
        <node concept="3cpWs8" id="wH" role="3cqZAp">
          <node concept="3cpWsn" id="wM" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="wN" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="wO" role="33vP2m">
              <node concept="1pGfFk" id="wP" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="wQ" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="wR" role="37wK5m">
                  <property role="Xl_RC" value="AggregationFunction" />
                </node>
                <node concept="1adDum" id="wS" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="wT" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="wU" role="37wK5m">
                  <property role="1adDun" value="0x5d7e70837b022e74L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wI" role="3cqZAp">
          <node concept="2OqwBi" id="wV" role="3clFbG">
            <node concept="37vLTw" id="wW" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="wX" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wJ" role="3cqZAp">
          <node concept="2OqwBi" id="wY" role="3clFbG">
            <node concept="37vLTw" id="wZ" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="x0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="x1" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6736945802599607924" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="wK" role="3cqZAp">
          <node concept="2OqwBi" id="x2" role="3clFbG">
            <node concept="37vLTw" id="x3" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="x4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="x5" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="wL" role="3cqZAp">
          <node concept="2OqwBi" id="x6" role="3cqZAk">
            <node concept="37vLTw" id="x7" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="x8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="wF" role="1B3o_S" />
      <node concept="3uibUv" id="wG" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rJ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForAllColumns" />
      <node concept="3clFbS" id="x9" role="3clF47">
        <node concept="3cpWs8" id="xc" role="3cqZAp">
          <node concept="3cpWsn" id="xj" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="xk" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="xl" role="33vP2m">
              <node concept="1pGfFk" id="xm" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="xn" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="xo" role="37wK5m">
                  <property role="Xl_RC" value="AllColumns" />
                </node>
                <node concept="1adDum" id="xp" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="xq" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="xr" role="37wK5m">
                  <property role="1adDun" value="0xe8aecd6b2519713L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xd" role="3cqZAp">
          <node concept="2OqwBi" id="xs" role="3clFbG">
            <node concept="37vLTw" id="xt" role="2Oq$k0">
              <ref role="3cqZAo" node="xj" resolve="b" />
            </node>
            <node concept="liA8E" id="xu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="xv" role="37wK5m" />
              <node concept="3clFbT" id="xw" role="37wK5m" />
              <node concept="3clFbT" id="xx" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xe" role="3cqZAp">
          <node concept="2OqwBi" id="xy" role="3clFbG">
            <node concept="37vLTw" id="xz" role="2Oq$k0">
              <ref role="3cqZAo" node="Ql" resolve="b" />
            </node>
            <node concept="liA8E" id="x$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="x_" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="xA" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="xB" role="37wK5m">
                <property role="1adDun" value="0xe8aecd6b2519712L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xf" role="3cqZAp">
          <node concept="2OqwBi" id="xC" role="3clFbG">
            <node concept="37vLTw" id="xD" role="2Oq$k0">
              <ref role="3cqZAo" node="xj" resolve="b" />
            </node>
            <node concept="liA8E" id="xE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="xF" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1047910270175909651" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xg" role="3cqZAp">
          <node concept="2OqwBi" id="xG" role="3clFbG">
            <node concept="37vLTw" id="xH" role="2Oq$k0">
              <ref role="3cqZAo" node="xj" resolve="b" />
            </node>
            <node concept="liA8E" id="xI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="xJ" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xh" role="3cqZAp">
          <node concept="2OqwBi" id="xK" role="3clFbG">
            <node concept="37vLTw" id="xL" role="2Oq$k0">
              <ref role="3cqZAo" node="xj" resolve="b" />
            </node>
            <node concept="liA8E" id="xM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="xN" role="37wK5m">
                <property role="Xl_RC" value="*" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="xi" role="3cqZAp">
          <node concept="2OqwBi" id="xO" role="3cqZAk">
            <node concept="37vLTw" id="xP" role="2Oq$k0">
              <ref role="3cqZAo" node="xj" resolve="b" />
            </node>
            <node concept="liA8E" id="xQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="xa" role="1B3o_S" />
      <node concept="3uibUv" id="xb" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rK" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForAverage" />
      <node concept="3clFbS" id="xR" role="3clF47">
        <node concept="3cpWs8" id="xU" role="3cqZAp">
          <node concept="3cpWsn" id="y1" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="y2" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="y3" role="33vP2m">
              <node concept="1pGfFk" id="y4" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="y5" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="y6" role="37wK5m">
                  <property role="Xl_RC" value="Average" />
                </node>
                <node concept="1adDum" id="y7" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="y8" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="y9" role="37wK5m">
                  <property role="1adDun" value="0x5d7e70837b028394L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xV" role="3cqZAp">
          <node concept="2OqwBi" id="ya" role="3clFbG">
            <node concept="37vLTw" id="yb" role="2Oq$k0">
              <ref role="3cqZAo" node="y1" resolve="b" />
            </node>
            <node concept="liA8E" id="yc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="yd" role="37wK5m" />
              <node concept="3clFbT" id="ye" role="37wK5m" />
              <node concept="3clFbT" id="yf" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xW" role="3cqZAp">
          <node concept="2OqwBi" id="yg" role="3clFbG">
            <node concept="37vLTw" id="yh" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="yi" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="yj" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="yk" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="yl" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b022e74L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xX" role="3cqZAp">
          <node concept="2OqwBi" id="ym" role="3clFbG">
            <node concept="37vLTw" id="yn" role="2Oq$k0">
              <ref role="3cqZAo" node="y1" resolve="b" />
            </node>
            <node concept="liA8E" id="yo" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="yp" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6736945802599629716" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xY" role="3cqZAp">
          <node concept="2OqwBi" id="yq" role="3clFbG">
            <node concept="37vLTw" id="yr" role="2Oq$k0">
              <ref role="3cqZAo" node="y1" resolve="b" />
            </node>
            <node concept="liA8E" id="ys" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="yt" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xZ" role="3cqZAp">
          <node concept="2OqwBi" id="yu" role="3clFbG">
            <node concept="37vLTw" id="yv" role="2Oq$k0">
              <ref role="3cqZAo" node="y1" resolve="b" />
            </node>
            <node concept="liA8E" id="yw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="yx" role="37wK5m">
                <property role="Xl_RC" value="AVG" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="y0" role="3cqZAp">
          <node concept="2OqwBi" id="yy" role="3cqZAk">
            <node concept="37vLTw" id="yz" role="2Oq$k0">
              <ref role="3cqZAo" node="y1" resolve="b" />
            </node>
            <node concept="liA8E" id="y$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="xS" role="1B3o_S" />
      <node concept="3uibUv" id="xT" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rL" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForColumn" />
      <node concept="3clFbS" id="y_" role="3clF47">
        <node concept="3cpWs8" id="yC" role="3cqZAp">
          <node concept="3cpWsn" id="yK" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="yL" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="yM" role="33vP2m">
              <node concept="1pGfFk" id="yN" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="yO" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="yP" role="37wK5m">
                  <property role="Xl_RC" value="Column" />
                </node>
                <node concept="1adDum" id="yQ" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="yR" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="yS" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b33L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yD" role="3cqZAp">
          <node concept="2OqwBi" id="yT" role="3clFbG">
            <node concept="37vLTw" id="yU" role="2Oq$k0">
              <ref role="3cqZAo" node="yK" resolve="b" />
            </node>
            <node concept="liA8E" id="yV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="yW" role="37wK5m" />
              <node concept="3clFbT" id="yX" role="37wK5m" />
              <node concept="3clFbT" id="yY" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yE" role="3cqZAp">
          <node concept="2OqwBi" id="yZ" role="3clFbG">
            <node concept="37vLTw" id="z0" role="2Oq$k0">
              <ref role="3cqZAo" node="yK" resolve="b" />
            </node>
            <node concept="liA8E" id="z1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="z2" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="z3" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="z4" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yF" role="3cqZAp">
          <node concept="2OqwBi" id="z5" role="3clFbG">
            <node concept="37vLTw" id="z6" role="2Oq$k0">
              <ref role="3cqZAo" node="yK" resolve="b" />
            </node>
            <node concept="liA8E" id="z7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="z8" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598131" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yG" role="3cqZAp">
          <node concept="2OqwBi" id="z9" role="3clFbG">
            <node concept="37vLTw" id="za" role="2Oq$k0">
              <ref role="3cqZAo" node="yK" resolve="b" />
            </node>
            <node concept="liA8E" id="zb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="zc" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yH" role="3cqZAp">
          <node concept="2OqwBi" id="zd" role="3clFbG">
            <node concept="2OqwBi" id="ze" role="2Oq$k0">
              <node concept="2OqwBi" id="zg" role="2Oq$k0">
                <node concept="2OqwBi" id="zi" role="2Oq$k0">
                  <node concept="37vLTw" id="zk" role="2Oq$k0">
                    <ref role="3cqZAo" node="yK" resolve="b" />
                  </node>
                  <node concept="liA8E" id="zl" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="zm" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="zn" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b37L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="zj" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="zo" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499598137" />
                    <node concept="1adDum" id="zp" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="zq" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="zr" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b39L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="zh" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="zs" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499598135" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="zf" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yI" role="3cqZAp">
          <node concept="2OqwBi" id="zt" role="3clFbG">
            <node concept="2OqwBi" id="zu" role="2Oq$k0">
              <node concept="2OqwBi" id="zw" role="2Oq$k0">
                <node concept="2OqwBi" id="zy" role="2Oq$k0">
                  <node concept="37vLTw" id="z$" role="2Oq$k0">
                    <ref role="3cqZAo" node="yK" resolve="b" />
                  </node>
                  <node concept="liA8E" id="z_" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="zA" role="37wK5m">
                      <property role="Xl_RC" value="fullName" />
                    </node>
                    <node concept="1adDum" id="zB" role="37wK5m">
                      <property role="1adDun" value="0x207f13a8b5691efbL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="zz" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="zC" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="zx" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="zD" role="37wK5m">
                  <property role="Xl_RC" value="2341611946574946043" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="zv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="yJ" role="3cqZAp">
          <node concept="2OqwBi" id="zE" role="3cqZAk">
            <node concept="37vLTw" id="zF" role="2Oq$k0">
              <ref role="3cqZAo" node="yK" resolve="b" />
            </node>
            <node concept="liA8E" id="zG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="yA" role="1B3o_S" />
      <node concept="3uibUv" id="yB" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rM" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForColumnRef" />
      <node concept="3clFbS" id="zH" role="3clF47">
        <node concept="3cpWs8" id="zK" role="3cqZAp">
          <node concept="3cpWsn" id="zR" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="zS" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="zT" role="33vP2m">
              <node concept="1pGfFk" id="zU" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="zV" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="zW" role="37wK5m">
                  <property role="Xl_RC" value="ColumnRef" />
                </node>
                <node concept="1adDum" id="zX" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="zY" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="zZ" role="37wK5m">
                  <property role="1adDun" value="0x11100ee7375157f4L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zL" role="3cqZAp">
          <node concept="2OqwBi" id="$0" role="3clFbG">
            <node concept="37vLTw" id="$1" role="2Oq$k0">
              <ref role="3cqZAo" node="zR" resolve="b" />
            </node>
            <node concept="liA8E" id="$2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="$3" role="37wK5m" />
              <node concept="3clFbT" id="$4" role="37wK5m" />
              <node concept="3clFbT" id="$5" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zM" role="3cqZAp">
          <node concept="2OqwBi" id="$6" role="3clFbG">
            <node concept="37vLTw" id="$7" role="2Oq$k0">
              <ref role="3cqZAo" node="Ql" resolve="b" />
            </node>
            <node concept="liA8E" id="$8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="$9" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="$a" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="$b" role="37wK5m">
                <property role="1adDun" value="0xe8aecd6b2519712L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zN" role="3cqZAp">
          <node concept="2OqwBi" id="$c" role="3clFbG">
            <node concept="37vLTw" id="$d" role="2Oq$k0">
              <ref role="3cqZAo" node="zR" resolve="b" />
            </node>
            <node concept="liA8E" id="$e" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="$f" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084500457460" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zO" role="3cqZAp">
          <node concept="2OqwBi" id="$g" role="3clFbG">
            <node concept="37vLTw" id="$h" role="2Oq$k0">
              <ref role="3cqZAo" node="zR" resolve="b" />
            </node>
            <node concept="liA8E" id="$i" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="$j" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zP" role="3cqZAp">
          <node concept="2OqwBi" id="$k" role="3clFbG">
            <node concept="2OqwBi" id="$l" role="2Oq$k0">
              <node concept="2OqwBi" id="$n" role="2Oq$k0">
                <node concept="2OqwBi" id="$p" role="2Oq$k0">
                  <node concept="2OqwBi" id="$r" role="2Oq$k0">
                    <node concept="37vLTw" id="$t" role="2Oq$k0">
                      <ref role="3cqZAo" node="zR" resolve="b" />
                    </node>
                    <node concept="liA8E" id="$u" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="$v" role="37wK5m">
                        <property role="Xl_RC" value="column" />
                      </node>
                      <node concept="1adDum" id="$w" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375157f5L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="$s" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="$x" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="$y" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="$z" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b33L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="$q" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="$$" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="$o" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="$_" role="37wK5m">
                  <property role="Xl_RC" value="1229499084500457461" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="$m" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="zQ" role="3cqZAp">
          <node concept="2OqwBi" id="$A" role="3cqZAk">
            <node concept="37vLTw" id="$B" role="2Oq$k0">
              <ref role="3cqZAo" node="zR" resolve="b" />
            </node>
            <node concept="liA8E" id="$C" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="zI" role="1B3o_S" />
      <node concept="3uibUv" id="zJ" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rN" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCondition" />
      <node concept="3clFbS" id="$D" role="3clF47">
        <node concept="3cpWs8" id="$G" role="3cqZAp">
          <node concept="3cpWsn" id="$M" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="$N" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="$O" role="33vP2m">
              <node concept="1pGfFk" id="$P" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="$Q" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="$R" role="37wK5m">
                  <property role="Xl_RC" value="Condition" />
                </node>
                <node concept="1adDum" id="$S" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="$T" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="$U" role="37wK5m">
                  <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$H" role="3cqZAp">
          <node concept="2OqwBi" id="$V" role="3clFbG">
            <node concept="37vLTw" id="$W" role="2Oq$k0">
              <ref role="3cqZAo" node="$M" resolve="b" />
            </node>
            <node concept="liA8E" id="$X" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$I" role="3cqZAp">
          <node concept="2OqwBi" id="$Y" role="3clFbG">
            <node concept="37vLTw" id="$Z" role="2Oq$k0">
              <ref role="3cqZAo" node="$M" resolve="b" />
            </node>
            <node concept="liA8E" id="_0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="_1" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6839590609873398295" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$J" role="3cqZAp">
          <node concept="2OqwBi" id="_2" role="3clFbG">
            <node concept="37vLTw" id="_3" role="2Oq$k0">
              <ref role="3cqZAo" node="$M" resolve="b" />
            </node>
            <node concept="liA8E" id="_4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="_5" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$K" role="3cqZAp">
          <node concept="2OqwBi" id="_6" role="3clFbG">
            <node concept="2OqwBi" id="_7" role="2Oq$k0">
              <node concept="2OqwBi" id="_9" role="2Oq$k0">
                <node concept="2OqwBi" id="_b" role="2Oq$k0">
                  <node concept="37vLTw" id="_d" role="2Oq$k0">
                    <ref role="3cqZAo" node="$M" resolve="b" />
                  </node>
                  <node concept="liA8E" id="_e" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="_f" role="37wK5m">
                      <property role="Xl_RC" value="textualCondition" />
                    </node>
                    <node concept="1adDum" id="_g" role="37wK5m">
                      <property role="1adDun" value="0x680472640f9c3430L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="_c" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="_h" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="_a" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="_i" role="37wK5m">
                  <property role="Xl_RC" value="7495241453935539248" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="$L" role="3cqZAp">
          <node concept="2OqwBi" id="_j" role="3cqZAk">
            <node concept="37vLTw" id="_k" role="2Oq$k0">
              <ref role="3cqZAo" node="$M" resolve="b" />
            </node>
            <node concept="liA8E" id="_l" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="$E" role="1B3o_S" />
      <node concept="3uibUv" id="$F" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rO" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCount" />
      <node concept="3clFbS" id="_m" role="3clF47">
        <node concept="3cpWs8" id="_p" role="3cqZAp">
          <node concept="3cpWsn" id="_w" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="_x" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="_y" role="33vP2m">
              <node concept="1pGfFk" id="_z" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="_$" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="__" role="37wK5m">
                  <property role="Xl_RC" value="Count" />
                </node>
                <node concept="1adDum" id="_A" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="_B" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="_C" role="37wK5m">
                  <property role="1adDun" value="0x5d7e70837b028392L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_q" role="3cqZAp">
          <node concept="2OqwBi" id="_D" role="3clFbG">
            <node concept="37vLTw" id="_E" role="2Oq$k0">
              <ref role="3cqZAo" node="_w" resolve="b" />
            </node>
            <node concept="liA8E" id="_F" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="_G" role="37wK5m" />
              <node concept="3clFbT" id="_H" role="37wK5m" />
              <node concept="3clFbT" id="_I" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_r" role="3cqZAp">
          <node concept="2OqwBi" id="_J" role="3clFbG">
            <node concept="37vLTw" id="_K" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="_L" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="_M" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="_N" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="_O" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b022e74L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_s" role="3cqZAp">
          <node concept="2OqwBi" id="_P" role="3clFbG">
            <node concept="37vLTw" id="_Q" role="2Oq$k0">
              <ref role="3cqZAo" node="_w" resolve="b" />
            </node>
            <node concept="liA8E" id="_R" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="_S" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6736945802599629714" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_t" role="3cqZAp">
          <node concept="2OqwBi" id="_T" role="3clFbG">
            <node concept="37vLTw" id="_U" role="2Oq$k0">
              <ref role="3cqZAo" node="_w" resolve="b" />
            </node>
            <node concept="liA8E" id="_V" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="_W" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_u" role="3cqZAp">
          <node concept="2OqwBi" id="_X" role="3clFbG">
            <node concept="37vLTw" id="_Y" role="2Oq$k0">
              <ref role="3cqZAo" node="_w" resolve="b" />
            </node>
            <node concept="liA8E" id="_Z" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="A0" role="37wK5m">
                <property role="Xl_RC" value="COUNT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="_v" role="3cqZAp">
          <node concept="2OqwBi" id="A1" role="3cqZAk">
            <node concept="37vLTw" id="A2" role="2Oq$k0">
              <ref role="3cqZAo" node="_w" resolve="b" />
            </node>
            <node concept="liA8E" id="A3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="_n" role="1B3o_S" />
      <node concept="3uibUv" id="_o" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rP" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCreateTable" />
      <node concept="3clFbS" id="A4" role="3clF47">
        <node concept="3cpWs8" id="A7" role="3cqZAp">
          <node concept="3cpWsn" id="Ag" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ah" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Ai" role="33vP2m">
              <node concept="1pGfFk" id="Aj" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Ak" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Al" role="37wK5m">
                  <property role="Xl_RC" value="CreateTable" />
                </node>
                <node concept="1adDum" id="Am" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="An" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Ao" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b2eL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A8" role="3cqZAp">
          <node concept="2OqwBi" id="Ap" role="3clFbG">
            <node concept="37vLTw" id="Aq" role="2Oq$k0">
              <ref role="3cqZAo" node="Ag" resolve="b" />
            </node>
            <node concept="liA8E" id="Ar" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="As" role="37wK5m" />
              <node concept="3clFbT" id="At" role="37wK5m" />
              <node concept="3clFbT" id="Au" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A9" role="3cqZAp">
          <node concept="2OqwBi" id="Av" role="3clFbG">
            <node concept="37vLTw" id="Aw" role="2Oq$k0">
              <ref role="3cqZAo" node="Ag" resolve="b" />
            </node>
            <node concept="liA8E" id="Ax" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Ay" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="Az" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="A$" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aa" role="3cqZAp">
          <node concept="2OqwBi" id="A_" role="3clFbG">
            <node concept="37vLTw" id="AA" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="AB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="AC" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="AD" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="AE" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ab" role="3cqZAp">
          <node concept="2OqwBi" id="AF" role="3clFbG">
            <node concept="37vLTw" id="AG" role="2Oq$k0">
              <ref role="3cqZAo" node="Ag" resolve="b" />
            </node>
            <node concept="liA8E" id="AH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="AI" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598126" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ac" role="3cqZAp">
          <node concept="2OqwBi" id="AJ" role="3clFbG">
            <node concept="37vLTw" id="AK" role="2Oq$k0">
              <ref role="3cqZAo" node="Ag" resolve="b" />
            </node>
            <node concept="liA8E" id="AL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="AM" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ad" role="3cqZAp">
          <node concept="2OqwBi" id="AN" role="3clFbG">
            <node concept="2OqwBi" id="AO" role="2Oq$k0">
              <node concept="2OqwBi" id="AQ" role="2Oq$k0">
                <node concept="2OqwBi" id="AS" role="2Oq$k0">
                  <node concept="2OqwBi" id="AU" role="2Oq$k0">
                    <node concept="2OqwBi" id="AW" role="2Oq$k0">
                      <node concept="2OqwBi" id="AY" role="2Oq$k0">
                        <node concept="37vLTw" id="B0" role="2Oq$k0">
                          <ref role="3cqZAo" node="Ag" resolve="b" />
                        </node>
                        <node concept="liA8E" id="B1" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="B2" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="B3" role="37wK5m">
                            <property role="1adDun" value="0x75900635108ee054L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="AZ" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="B4" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="B5" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="B6" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737443b33L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="AX" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="B7" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="AV" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="B8" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="AT" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="B9" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="AR" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Ba" role="37wK5m">
                  <property role="Xl_RC" value="8471277724064735316" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="AP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ae" role="3cqZAp">
          <node concept="2OqwBi" id="Bb" role="3clFbG">
            <node concept="37vLTw" id="Bc" role="2Oq$k0">
              <ref role="3cqZAo" node="Ag" resolve="b" />
            </node>
            <node concept="liA8E" id="Bd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Be" role="37wK5m">
                <property role="Xl_RC" value="CREATE TABLE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Af" role="3cqZAp">
          <node concept="2OqwBi" id="Bf" role="3cqZAk">
            <node concept="37vLTw" id="Bg" role="2Oq$k0">
              <ref role="3cqZAo" node="Ag" resolve="b" />
            </node>
            <node concept="liA8E" id="Bh" role="2OqNvi">
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
    <node concept="2YIFZL" id="rQ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForDBOperation" />
      <node concept="3clFbS" id="Bi" role="3clF47">
        <node concept="3cpWs8" id="Bl" role="3cqZAp">
          <node concept="3cpWsn" id="Bq" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Br" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Bs" role="33vP2m">
              <node concept="1pGfFk" id="Bt" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Bu" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Bv" role="37wK5m">
                  <property role="Xl_RC" value="DBOperation" />
                </node>
                <node concept="1adDum" id="Bw" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Bx" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="By" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa655164L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bm" role="3cqZAp">
          <node concept="2OqwBi" id="Bz" role="3clFbG">
            <node concept="37vLTw" id="B$" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="B_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bn" role="3cqZAp">
          <node concept="2OqwBi" id="BA" role="3clFbG">
            <node concept="37vLTw" id="BB" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="BC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="BD" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722287075684" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bo" role="3cqZAp">
          <node concept="2OqwBi" id="BE" role="3clFbG">
            <node concept="37vLTw" id="BF" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="BG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="BH" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Bp" role="3cqZAp">
          <node concept="2OqwBi" id="BI" role="3cqZAk">
            <node concept="37vLTw" id="BJ" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="BK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Bj" role="1B3o_S" />
      <node concept="3uibUv" id="Bk" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rR" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForDelete" />
      <node concept="3clFbS" id="BL" role="3clF47">
        <node concept="3cpWs8" id="BO" role="3cqZAp">
          <node concept="3cpWsn" id="BY" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="BZ" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="C0" role="33vP2m">
              <node concept="1pGfFk" id="C1" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="C2" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="C3" role="37wK5m">
                  <property role="Xl_RC" value="Delete" />
                </node>
                <node concept="1adDum" id="C4" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="C5" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="C6" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa642699L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BP" role="3cqZAp">
          <node concept="2OqwBi" id="C7" role="3clFbG">
            <node concept="37vLTw" id="C8" role="2Oq$k0">
              <ref role="3cqZAo" node="BY" resolve="b" />
            </node>
            <node concept="liA8E" id="C9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Ca" role="37wK5m" />
              <node concept="3clFbT" id="Cb" role="37wK5m" />
              <node concept="3clFbT" id="Cc" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="BQ" role="3cqZAp">
          <node concept="1PaTwC" id="Cd" role="1aUNEU">
            <node concept="3oM_SD" id="Ce" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="Cf" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BR" role="3cqZAp">
          <node concept="15s5l7" id="Cg" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="Ch" role="3clFbG">
            <node concept="37vLTw" id="Ci" role="2Oq$k0">
              <ref role="3cqZAo" node="BY" resolve="b" />
            </node>
            <node concept="liA8E" id="Cj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="Ck" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="Cl" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="Cm" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BS" role="3cqZAp">
          <node concept="2OqwBi" id="Cn" role="3clFbG">
            <node concept="37vLTw" id="Co" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="Cp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Cq" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="Cr" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="Cs" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BT" role="3cqZAp">
          <node concept="2OqwBi" id="Ct" role="3clFbG">
            <node concept="37vLTw" id="Cu" role="2Oq$k0">
              <ref role="3cqZAo" node="BY" resolve="b" />
            </node>
            <node concept="liA8E" id="Cv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Cw" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722286999193" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BU" role="3cqZAp">
          <node concept="2OqwBi" id="Cx" role="3clFbG">
            <node concept="37vLTw" id="Cy" role="2Oq$k0">
              <ref role="3cqZAo" node="BY" resolve="b" />
            </node>
            <node concept="liA8E" id="Cz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="C$" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BV" role="3cqZAp">
          <node concept="2OqwBi" id="C_" role="3clFbG">
            <node concept="2OqwBi" id="CA" role="2Oq$k0">
              <node concept="2OqwBi" id="CC" role="2Oq$k0">
                <node concept="2OqwBi" id="CE" role="2Oq$k0">
                  <node concept="2OqwBi" id="CG" role="2Oq$k0">
                    <node concept="2OqwBi" id="CI" role="2Oq$k0">
                      <node concept="2OqwBi" id="CK" role="2Oq$k0">
                        <node concept="37vLTw" id="CM" role="2Oq$k0">
                          <ref role="3cqZAo" node="BY" resolve="b" />
                        </node>
                        <node concept="liA8E" id="CN" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="CO" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="CP" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa64269bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="CL" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="CQ" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="CR" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="CS" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="CJ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="CT" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="CH" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="CU" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="CF" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="CV" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="CD" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="CW" role="37wK5m">
                  <property role="Xl_RC" value="3100867722286999195" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="CB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BW" role="3cqZAp">
          <node concept="2OqwBi" id="CX" role="3clFbG">
            <node concept="37vLTw" id="CY" role="2Oq$k0">
              <ref role="3cqZAo" node="BY" resolve="b" />
            </node>
            <node concept="liA8E" id="CZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="D0" role="37wK5m">
                <property role="Xl_RC" value="DELETE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="BX" role="3cqZAp">
          <node concept="2OqwBi" id="D1" role="3cqZAk">
            <node concept="37vLTw" id="D2" role="2Oq$k0">
              <ref role="3cqZAo" node="BY" resolve="b" />
            </node>
            <node concept="liA8E" id="D3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="BM" role="1B3o_S" />
      <node concept="3uibUv" id="BN" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rS" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForGroupBy" />
      <node concept="3clFbS" id="D4" role="3clF47">
        <node concept="3cpWs8" id="D7" role="3cqZAp">
          <node concept="3cpWsn" id="De" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Df" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Dg" role="33vP2m">
              <node concept="1pGfFk" id="Dh" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Di" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Dj" role="37wK5m">
                  <property role="Xl_RC" value="GroupBy" />
                </node>
                <node concept="1adDum" id="Dk" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Dl" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Dm" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa6a16ceL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="D8" role="3cqZAp">
          <node concept="2OqwBi" id="Dn" role="3clFbG">
            <node concept="37vLTw" id="Do" role="2Oq$k0">
              <ref role="3cqZAo" node="De" resolve="b" />
            </node>
            <node concept="liA8E" id="Dp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Dq" role="37wK5m" />
              <node concept="3clFbT" id="Dr" role="37wK5m" />
              <node concept="3clFbT" id="Ds" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="D9" role="3cqZAp">
          <node concept="2OqwBi" id="Dt" role="3clFbG">
            <node concept="37vLTw" id="Du" role="2Oq$k0">
              <ref role="3cqZAo" node="De" resolve="b" />
            </node>
            <node concept="liA8E" id="Dv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Dw" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722287388366" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Da" role="3cqZAp">
          <node concept="2OqwBi" id="Dx" role="3clFbG">
            <node concept="37vLTw" id="Dy" role="2Oq$k0">
              <ref role="3cqZAo" node="De" resolve="b" />
            </node>
            <node concept="liA8E" id="Dz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="D$" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Db" role="3cqZAp">
          <node concept="2OqwBi" id="D_" role="3clFbG">
            <node concept="2OqwBi" id="DA" role="2Oq$k0">
              <node concept="2OqwBi" id="DC" role="2Oq$k0">
                <node concept="2OqwBi" id="DE" role="2Oq$k0">
                  <node concept="2OqwBi" id="DG" role="2Oq$k0">
                    <node concept="2OqwBi" id="DI" role="2Oq$k0">
                      <node concept="2OqwBi" id="DK" role="2Oq$k0">
                        <node concept="37vLTw" id="DM" role="2Oq$k0">
                          <ref role="3cqZAo" node="De" resolve="b" />
                        </node>
                        <node concept="liA8E" id="DN" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="DO" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="DP" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa6a1759L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="DL" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="DQ" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="DR" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="DS" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="DJ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="DT" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="DH" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="DU" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="DF" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="DV" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="DD" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="DW" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287388505" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="DB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dc" role="3cqZAp">
          <node concept="2OqwBi" id="DX" role="3clFbG">
            <node concept="37vLTw" id="DY" role="2Oq$k0">
              <ref role="3cqZAo" node="De" resolve="b" />
            </node>
            <node concept="liA8E" id="DZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="E0" role="37wK5m">
                <property role="Xl_RC" value="GROUP BY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Dd" role="3cqZAp">
          <node concept="2OqwBi" id="E1" role="3cqZAk">
            <node concept="37vLTw" id="E2" role="2Oq$k0">
              <ref role="3cqZAo" node="De" resolve="b" />
            </node>
            <node concept="liA8E" id="E3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="D5" role="1B3o_S" />
      <node concept="3uibUv" id="D6" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rT" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForInsertInto" />
      <node concept="3clFbS" id="E4" role="3clF47">
        <node concept="3cpWs8" id="E7" role="3cqZAp">
          <node concept="3cpWsn" id="Eh" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ei" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Ej" role="33vP2m">
              <node concept="1pGfFk" id="Ek" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="El" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Em" role="37wK5m">
                  <property role="Xl_RC" value="InsertInto" />
                </node>
                <node concept="1adDum" id="En" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Eo" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Ep" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f1c72c8L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E8" role="3cqZAp">
          <node concept="2OqwBi" id="Eq" role="3clFbG">
            <node concept="37vLTw" id="Er" role="2Oq$k0">
              <ref role="3cqZAo" node="Eh" resolve="b" />
            </node>
            <node concept="liA8E" id="Es" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Et" role="37wK5m" />
              <node concept="3clFbT" id="Eu" role="37wK5m" />
              <node concept="3clFbT" id="Ev" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="E9" role="3cqZAp">
          <node concept="1PaTwC" id="Ew" role="1aUNEU">
            <node concept="3oM_SD" id="Ex" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="Ey" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ea" role="3cqZAp">
          <node concept="15s5l7" id="Ez" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="E$" role="3clFbG">
            <node concept="37vLTw" id="E_" role="2Oq$k0">
              <ref role="3cqZAo" node="Eh" resolve="b" />
            </node>
            <node concept="liA8E" id="EA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="EB" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="EC" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="ED" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Eb" role="3cqZAp">
          <node concept="2OqwBi" id="EE" role="3clFbG">
            <node concept="37vLTw" id="EF" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="EG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="EH" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="EI" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="EJ" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ec" role="3cqZAp">
          <node concept="2OqwBi" id="EK" role="3clFbG">
            <node concept="37vLTw" id="EL" role="2Oq$k0">
              <ref role="3cqZAo" node="Eh" resolve="b" />
            </node>
            <node concept="liA8E" id="EM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="EN" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255225544" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ed" role="3cqZAp">
          <node concept="2OqwBi" id="EO" role="3clFbG">
            <node concept="37vLTw" id="EP" role="2Oq$k0">
              <ref role="3cqZAo" node="Eh" resolve="b" />
            </node>
            <node concept="liA8E" id="EQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="ER" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ee" role="3cqZAp">
          <node concept="2OqwBi" id="ES" role="3clFbG">
            <node concept="2OqwBi" id="ET" role="2Oq$k0">
              <node concept="2OqwBi" id="EV" role="2Oq$k0">
                <node concept="2OqwBi" id="EX" role="2Oq$k0">
                  <node concept="2OqwBi" id="EZ" role="2Oq$k0">
                    <node concept="2OqwBi" id="F1" role="2Oq$k0">
                      <node concept="2OqwBi" id="F3" role="2Oq$k0">
                        <node concept="37vLTw" id="F5" role="2Oq$k0">
                          <ref role="3cqZAo" node="Eh" resolve="b" />
                        </node>
                        <node concept="liA8E" id="F6" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="F7" role="37wK5m">
                            <property role="Xl_RC" value="values" />
                          </node>
                          <node concept="1adDum" id="F8" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f1cc8a3L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="F4" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="F9" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Fa" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Fb" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="F2" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Fc" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="F0" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Fd" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="EY" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Fe" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="EW" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Ff" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247523" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="EU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ef" role="3cqZAp">
          <node concept="2OqwBi" id="Fg" role="3clFbG">
            <node concept="37vLTw" id="Fh" role="2Oq$k0">
              <ref role="3cqZAo" node="Eh" resolve="b" />
            </node>
            <node concept="liA8E" id="Fi" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Fj" role="37wK5m">
                <property role="Xl_RC" value="INSERT INTO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Eg" role="3cqZAp">
          <node concept="2OqwBi" id="Fk" role="3cqZAk">
            <node concept="37vLTw" id="Fl" role="2Oq$k0">
              <ref role="3cqZAo" node="Eh" resolve="b" />
            </node>
            <node concept="liA8E" id="Fm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="E5" role="1B3o_S" />
      <node concept="3uibUv" id="E6" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rU" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForJoinCondition" />
      <node concept="3clFbS" id="Fn" role="3clF47">
        <node concept="3cpWs8" id="Fq" role="3cqZAp">
          <node concept="3cpWsn" id="Fx" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Fy" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Fz" role="33vP2m">
              <node concept="1pGfFk" id="F$" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="F_" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="FA" role="37wK5m">
                  <property role="Xl_RC" value="JoinCondition" />
                </node>
                <node concept="1adDum" id="FB" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="FC" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="FD" role="37wK5m">
                  <property role="1adDun" value="0x6c94f05b7ec9d046L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fr" role="3cqZAp">
          <node concept="2OqwBi" id="FE" role="3clFbG">
            <node concept="37vLTw" id="FF" role="2Oq$k0">
              <ref role="3cqZAo" node="Fx" resolve="b" />
            </node>
            <node concept="liA8E" id="FG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="FH" role="37wK5m" />
              <node concept="3clFbT" id="FI" role="37wK5m" />
              <node concept="3clFbT" id="FJ" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fs" role="3cqZAp">
          <node concept="2OqwBi" id="FK" role="3clFbG">
            <node concept="37vLTw" id="FL" role="2Oq$k0">
              <ref role="3cqZAo" node="Fx" resolve="b" />
            </node>
            <node concept="liA8E" id="FM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="FN" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7824142728409239622" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ft" role="3cqZAp">
          <node concept="2OqwBi" id="FO" role="3clFbG">
            <node concept="37vLTw" id="FP" role="2Oq$k0">
              <ref role="3cqZAo" node="Fx" resolve="b" />
            </node>
            <node concept="liA8E" id="FQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="FR" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fu" role="3cqZAp">
          <node concept="2OqwBi" id="FS" role="3clFbG">
            <node concept="2OqwBi" id="FT" role="2Oq$k0">
              <node concept="2OqwBi" id="FV" role="2Oq$k0">
                <node concept="2OqwBi" id="FX" role="2Oq$k0">
                  <node concept="2OqwBi" id="FZ" role="2Oq$k0">
                    <node concept="2OqwBi" id="G1" role="2Oq$k0">
                      <node concept="2OqwBi" id="G3" role="2Oq$k0">
                        <node concept="37vLTw" id="G5" role="2Oq$k0">
                          <ref role="3cqZAo" node="Fx" resolve="b" />
                        </node>
                        <node concept="liA8E" id="G6" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="G7" role="37wK5m">
                            <property role="Xl_RC" value="leftColumn" />
                          </node>
                          <node concept="1adDum" id="G8" role="37wK5m">
                            <property role="1adDun" value="0x6c94f05b7ec9d049L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="G4" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="G9" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Ga" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Gb" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="G2" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Gc" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="G0" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Gd" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="FY" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Ge" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="FW" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Gf" role="37wK5m">
                  <property role="Xl_RC" value="7824142728409239625" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="FU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fv" role="3cqZAp">
          <node concept="2OqwBi" id="Gg" role="3clFbG">
            <node concept="2OqwBi" id="Gh" role="2Oq$k0">
              <node concept="2OqwBi" id="Gj" role="2Oq$k0">
                <node concept="2OqwBi" id="Gl" role="2Oq$k0">
                  <node concept="2OqwBi" id="Gn" role="2Oq$k0">
                    <node concept="2OqwBi" id="Gp" role="2Oq$k0">
                      <node concept="2OqwBi" id="Gr" role="2Oq$k0">
                        <node concept="37vLTw" id="Gt" role="2Oq$k0">
                          <ref role="3cqZAo" node="Fx" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Gu" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Gv" role="37wK5m">
                            <property role="Xl_RC" value="rightColumn" />
                          </node>
                          <node concept="1adDum" id="Gw" role="37wK5m">
                            <property role="1adDun" value="0x6c94f05b7ec9d04bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Gs" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Gx" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Gy" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Gz" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Gq" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="G$" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Go" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="G_" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Gm" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="GA" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Gk" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="GB" role="37wK5m">
                  <property role="Xl_RC" value="7824142728409239627" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Gi" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Fw" role="3cqZAp">
          <node concept="2OqwBi" id="GC" role="3cqZAk">
            <node concept="37vLTw" id="GD" role="2Oq$k0">
              <ref role="3cqZAo" node="Fx" resolve="b" />
            </node>
            <node concept="liA8E" id="GE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Fo" role="1B3o_S" />
      <node concept="3uibUv" id="Fp" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rV" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMax" />
      <node concept="3clFbS" id="GF" role="3clF47">
        <node concept="3cpWs8" id="GI" role="3cqZAp">
          <node concept="3cpWsn" id="GP" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="GQ" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="GR" role="33vP2m">
              <node concept="1pGfFk" id="GS" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="GT" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="GU" role="37wK5m">
                  <property role="Xl_RC" value="Max" />
                </node>
                <node concept="1adDum" id="GV" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="GW" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="GX" role="37wK5m">
                  <property role="1adDun" value="0x5d7e70837b028390L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GJ" role="3cqZAp">
          <node concept="2OqwBi" id="GY" role="3clFbG">
            <node concept="37vLTw" id="GZ" role="2Oq$k0">
              <ref role="3cqZAo" node="GP" resolve="b" />
            </node>
            <node concept="liA8E" id="H0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="H1" role="37wK5m" />
              <node concept="3clFbT" id="H2" role="37wK5m" />
              <node concept="3clFbT" id="H3" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GK" role="3cqZAp">
          <node concept="2OqwBi" id="H4" role="3clFbG">
            <node concept="37vLTw" id="H5" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="H6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="H7" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="H8" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="H9" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b022e74L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GL" role="3cqZAp">
          <node concept="2OqwBi" id="Ha" role="3clFbG">
            <node concept="37vLTw" id="Hb" role="2Oq$k0">
              <ref role="3cqZAo" node="GP" resolve="b" />
            </node>
            <node concept="liA8E" id="Hc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Hd" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6736945802599629712" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GM" role="3cqZAp">
          <node concept="2OqwBi" id="He" role="3clFbG">
            <node concept="37vLTw" id="Hf" role="2Oq$k0">
              <ref role="3cqZAo" node="GP" resolve="b" />
            </node>
            <node concept="liA8E" id="Hg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Hh" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GN" role="3cqZAp">
          <node concept="2OqwBi" id="Hi" role="3clFbG">
            <node concept="37vLTw" id="Hj" role="2Oq$k0">
              <ref role="3cqZAo" node="GP" resolve="b" />
            </node>
            <node concept="liA8E" id="Hk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Hl" role="37wK5m">
                <property role="Xl_RC" value="MAX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="GO" role="3cqZAp">
          <node concept="2OqwBi" id="Hm" role="3cqZAk">
            <node concept="37vLTw" id="Hn" role="2Oq$k0">
              <ref role="3cqZAo" node="GP" resolve="b" />
            </node>
            <node concept="liA8E" id="Ho" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="GG" role="1B3o_S" />
      <node concept="3uibUv" id="GH" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rW" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMin" />
      <node concept="3clFbS" id="Hp" role="3clF47">
        <node concept="3cpWs8" id="Hs" role="3cqZAp">
          <node concept="3cpWsn" id="Hz" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="H$" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="H_" role="33vP2m">
              <node concept="1pGfFk" id="HA" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="HB" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="HC" role="37wK5m">
                  <property role="Xl_RC" value="Min" />
                </node>
                <node concept="1adDum" id="HD" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="HE" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="HF" role="37wK5m">
                  <property role="1adDun" value="0x5d7e70837b02838dL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ht" role="3cqZAp">
          <node concept="2OqwBi" id="HG" role="3clFbG">
            <node concept="37vLTw" id="HH" role="2Oq$k0">
              <ref role="3cqZAo" node="Hz" resolve="b" />
            </node>
            <node concept="liA8E" id="HI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="HJ" role="37wK5m" />
              <node concept="3clFbT" id="HK" role="37wK5m" />
              <node concept="3clFbT" id="HL" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hu" role="3cqZAp">
          <node concept="2OqwBi" id="HM" role="3clFbG">
            <node concept="37vLTw" id="HN" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="HO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="HP" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="HQ" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="HR" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b022e74L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hv" role="3cqZAp">
          <node concept="2OqwBi" id="HS" role="3clFbG">
            <node concept="37vLTw" id="HT" role="2Oq$k0">
              <ref role="3cqZAo" node="Hz" resolve="b" />
            </node>
            <node concept="liA8E" id="HU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="HV" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6736945802599629709" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hw" role="3cqZAp">
          <node concept="2OqwBi" id="HW" role="3clFbG">
            <node concept="37vLTw" id="HX" role="2Oq$k0">
              <ref role="3cqZAo" node="Hz" resolve="b" />
            </node>
            <node concept="liA8E" id="HY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="HZ" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hx" role="3cqZAp">
          <node concept="2OqwBi" id="I0" role="3clFbG">
            <node concept="37vLTw" id="I1" role="2Oq$k0">
              <ref role="3cqZAo" node="Hz" resolve="b" />
            </node>
            <node concept="liA8E" id="I2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="I3" role="37wK5m">
                <property role="Xl_RC" value="MIN" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Hy" role="3cqZAp">
          <node concept="2OqwBi" id="I4" role="3cqZAk">
            <node concept="37vLTw" id="I5" role="2Oq$k0">
              <ref role="3cqZAo" node="Hz" resolve="b" />
            </node>
            <node concept="liA8E" id="I6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Hq" role="1B3o_S" />
      <node concept="3uibUv" id="Hr" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rX" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMultipleCondition" />
      <node concept="3clFbS" id="I7" role="3clF47">
        <node concept="3cpWs8" id="Ia" role="3cqZAp">
          <node concept="3cpWsn" id="Ij" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ik" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Il" role="33vP2m">
              <node concept="1pGfFk" id="Im" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="In" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Io" role="37wK5m">
                  <property role="Xl_RC" value="MultipleCondition" />
                </node>
                <node concept="1adDum" id="Ip" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Iq" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Ir" role="37wK5m">
                  <property role="1adDun" value="0x5eeb1b6c0699ea1bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ib" role="3cqZAp">
          <node concept="2OqwBi" id="Is" role="3clFbG">
            <node concept="37vLTw" id="It" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="Iu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Iv" role="37wK5m" />
              <node concept="3clFbT" id="Iw" role="37wK5m" />
              <node concept="3clFbT" id="Ix" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ic" role="3cqZAp">
          <node concept="2OqwBi" id="Iy" role="3clFbG">
            <node concept="37vLTw" id="Iz" role="2Oq$k0">
              <ref role="3cqZAo" node="$M" resolve="b" />
            </node>
            <node concept="liA8E" id="I$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="I_" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="IA" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="IB" role="37wK5m">
                <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Id" role="3cqZAp">
          <node concept="2OqwBi" id="IC" role="3clFbG">
            <node concept="37vLTw" id="ID" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="IE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="IF" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6839590609873398299" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ie" role="3cqZAp">
          <node concept="2OqwBi" id="IG" role="3clFbG">
            <node concept="37vLTw" id="IH" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="II" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="IJ" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="If" role="3cqZAp">
          <node concept="2OqwBi" id="IK" role="3clFbG">
            <node concept="2OqwBi" id="IL" role="2Oq$k0">
              <node concept="2OqwBi" id="IN" role="2Oq$k0">
                <node concept="2OqwBi" id="IP" role="2Oq$k0">
                  <node concept="37vLTw" id="IR" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ij" resolve="b" />
                  </node>
                  <node concept="liA8E" id="IS" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="IT" role="37wK5m">
                      <property role="Xl_RC" value="operator" />
                    </node>
                    <node concept="1adDum" id="IU" role="37wK5m">
                      <property role="1adDun" value="0x5eeb1b6c0699ea20L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="IQ" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="IV" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:2582920951876036250" />
                    <node concept="1adDum" id="IW" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                    <node concept="1adDum" id="IX" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                    <node concept="1adDum" id="IY" role="37wK5m">
                      <property role="1adDun" value="0x23d860ebbb7c269aL" />
                      <uo k="s:originTrace" v="n:2582920951876036250" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IO" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="IZ" role="37wK5m">
                  <property role="Xl_RC" value="6839590609873398304" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="IM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ig" role="3cqZAp">
          <node concept="2OqwBi" id="J0" role="3clFbG">
            <node concept="2OqwBi" id="J1" role="2Oq$k0">
              <node concept="2OqwBi" id="J3" role="2Oq$k0">
                <node concept="2OqwBi" id="J5" role="2Oq$k0">
                  <node concept="2OqwBi" id="J7" role="2Oq$k0">
                    <node concept="2OqwBi" id="J9" role="2Oq$k0">
                      <node concept="2OqwBi" id="Jb" role="2Oq$k0">
                        <node concept="37vLTw" id="Jd" role="2Oq$k0">
                          <ref role="3cqZAo" node="Ij" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Je" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Jf" role="37wK5m">
                            <property role="Xl_RC" value="conditionDx" />
                          </node>
                          <node concept="1adDum" id="Jg" role="37wK5m">
                            <property role="1adDun" value="0x5eeb1b6c0699ea4dL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Jc" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Jh" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Ji" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Jj" role="37wK5m">
                          <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Ja" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Jk" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="J8" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Jl" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="J6" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Jm" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="J4" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Jn" role="37wK5m">
                  <property role="Xl_RC" value="6839590609873398349" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="J2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ih" role="3cqZAp">
          <node concept="2OqwBi" id="Jo" role="3clFbG">
            <node concept="2OqwBi" id="Jp" role="2Oq$k0">
              <node concept="2OqwBi" id="Jr" role="2Oq$k0">
                <node concept="2OqwBi" id="Jt" role="2Oq$k0">
                  <node concept="2OqwBi" id="Jv" role="2Oq$k0">
                    <node concept="2OqwBi" id="Jx" role="2Oq$k0">
                      <node concept="2OqwBi" id="Jz" role="2Oq$k0">
                        <node concept="37vLTw" id="J_" role="2Oq$k0">
                          <ref role="3cqZAo" node="Ij" resolve="b" />
                        </node>
                        <node concept="liA8E" id="JA" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="JB" role="37wK5m">
                            <property role="Xl_RC" value="conditionSx" />
                          </node>
                          <node concept="1adDum" id="JC" role="37wK5m">
                            <property role="1adDun" value="0x5eeb1b6c0699ea59L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="J$" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="JD" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="JE" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="JF" role="37wK5m">
                          <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Jy" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="JG" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Jw" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="JH" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Ju" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="JI" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Js" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="JJ" role="37wK5m">
                  <property role="Xl_RC" value="6839590609873398361" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Jq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ii" role="3cqZAp">
          <node concept="2OqwBi" id="JK" role="3cqZAk">
            <node concept="37vLTw" id="JL" role="2Oq$k0">
              <ref role="3cqZAo" node="Ij" resolve="b" />
            </node>
            <node concept="liA8E" id="JM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="I8" role="1B3o_S" />
      <node concept="3uibUv" id="I9" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rY" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForOrderBy" />
      <node concept="3clFbS" id="JN" role="3clF47">
        <node concept="3cpWs8" id="JQ" role="3cqZAp">
          <node concept="3cpWsn" id="JX" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="JY" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="JZ" role="33vP2m">
              <node concept="1pGfFk" id="K0" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="K1" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="K2" role="37wK5m">
                  <property role="Xl_RC" value="OrderBy" />
                </node>
                <node concept="1adDum" id="K3" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="K4" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="K5" role="37wK5m">
                  <property role="1adDun" value="0x2b087ec3aa61e251L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="JR" role="3cqZAp">
          <node concept="2OqwBi" id="K6" role="3clFbG">
            <node concept="37vLTw" id="K7" role="2Oq$k0">
              <ref role="3cqZAo" node="JX" resolve="b" />
            </node>
            <node concept="liA8E" id="K8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="K9" role="37wK5m" />
              <node concept="3clFbT" id="Ka" role="37wK5m" />
              <node concept="3clFbT" id="Kb" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="JS" role="3cqZAp">
          <node concept="2OqwBi" id="Kc" role="3clFbG">
            <node concept="37vLTw" id="Kd" role="2Oq$k0">
              <ref role="3cqZAo" node="JX" resolve="b" />
            </node>
            <node concept="liA8E" id="Ke" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Kf" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/3100867722286850641" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="JT" role="3cqZAp">
          <node concept="2OqwBi" id="Kg" role="3clFbG">
            <node concept="37vLTw" id="Kh" role="2Oq$k0">
              <ref role="3cqZAo" node="JX" resolve="b" />
            </node>
            <node concept="liA8E" id="Ki" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Kj" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="JU" role="3cqZAp">
          <node concept="2OqwBi" id="Kk" role="3clFbG">
            <node concept="2OqwBi" id="Kl" role="2Oq$k0">
              <node concept="2OqwBi" id="Kn" role="2Oq$k0">
                <node concept="2OqwBi" id="Kp" role="2Oq$k0">
                  <node concept="2OqwBi" id="Kr" role="2Oq$k0">
                    <node concept="2OqwBi" id="Kt" role="2Oq$k0">
                      <node concept="2OqwBi" id="Kv" role="2Oq$k0">
                        <node concept="37vLTw" id="Kx" role="2Oq$k0">
                          <ref role="3cqZAo" node="JX" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Ky" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Kz" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="K$" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa6a16cfL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Kw" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="K_" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="KA" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="KB" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Ku" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="KC" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Ks" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="KD" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Kq" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="KE" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Ko" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="KF" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287388367" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Km" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="JV" role="3cqZAp">
          <node concept="2OqwBi" id="KG" role="3clFbG">
            <node concept="37vLTw" id="KH" role="2Oq$k0">
              <ref role="3cqZAo" node="JX" resolve="b" />
            </node>
            <node concept="liA8E" id="KI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="KJ" role="37wK5m">
                <property role="Xl_RC" value="ORDER BY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="JW" role="3cqZAp">
          <node concept="2OqwBi" id="KK" role="3cqZAk">
            <node concept="37vLTw" id="KL" role="2Oq$k0">
              <ref role="3cqZAo" node="JX" resolve="b" />
            </node>
            <node concept="liA8E" id="KM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="JO" role="1B3o_S" />
      <node concept="3uibUv" id="JP" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="rZ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForScript" />
      <node concept="3clFbS" id="KN" role="3clF47">
        <node concept="3cpWs8" id="KQ" role="3cqZAp">
          <node concept="3cpWsn" id="KX" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="KY" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="KZ" role="33vP2m">
              <node concept="1pGfFk" id="L0" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="L1" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="L2" role="37wK5m">
                  <property role="Xl_RC" value="Script" />
                </node>
                <node concept="1adDum" id="L3" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="L4" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="L5" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443bcdL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KR" role="3cqZAp">
          <node concept="2OqwBi" id="L6" role="3clFbG">
            <node concept="37vLTw" id="L7" role="2Oq$k0">
              <ref role="3cqZAo" node="KX" resolve="b" />
            </node>
            <node concept="liA8E" id="L8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="L9" role="37wK5m" />
              <node concept="3clFbT" id="La" role="37wK5m" />
              <node concept="3clFbT" id="Lb" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KS" role="3cqZAp">
          <node concept="2OqwBi" id="Lc" role="3clFbG">
            <node concept="37vLTw" id="Ld" role="2Oq$k0">
              <ref role="3cqZAo" node="KX" resolve="b" />
            </node>
            <node concept="liA8E" id="Le" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Lf" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="Lg" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="Lh" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KT" role="3cqZAp">
          <node concept="2OqwBi" id="Li" role="3clFbG">
            <node concept="37vLTw" id="Lj" role="2Oq$k0">
              <ref role="3cqZAo" node="KX" resolve="b" />
            </node>
            <node concept="liA8E" id="Lk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Ll" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598285" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KU" role="3cqZAp">
          <node concept="2OqwBi" id="Lm" role="3clFbG">
            <node concept="37vLTw" id="Ln" role="2Oq$k0">
              <ref role="3cqZAo" node="KX" resolve="b" />
            </node>
            <node concept="liA8E" id="Lo" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Lp" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KV" role="3cqZAp">
          <node concept="2OqwBi" id="Lq" role="3clFbG">
            <node concept="2OqwBi" id="Lr" role="2Oq$k0">
              <node concept="2OqwBi" id="Lt" role="2Oq$k0">
                <node concept="2OqwBi" id="Lv" role="2Oq$k0">
                  <node concept="2OqwBi" id="Lx" role="2Oq$k0">
                    <node concept="2OqwBi" id="Lz" role="2Oq$k0">
                      <node concept="2OqwBi" id="L_" role="2Oq$k0">
                        <node concept="37vLTw" id="LB" role="2Oq$k0">
                          <ref role="3cqZAo" node="KX" resolve="b" />
                        </node>
                        <node concept="liA8E" id="LC" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="LD" role="37wK5m">
                            <property role="Xl_RC" value="operations" />
                          </node>
                          <node concept="1adDum" id="LE" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa655166L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="LA" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="LF" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="LG" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="LH" role="37wK5m">
                          <property role="1adDun" value="0x2b087ec3aa655164L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="L$" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="LI" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Ly" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="LJ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Lw" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="LK" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Lu" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="LL" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287075686" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Ls" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="KW" role="3cqZAp">
          <node concept="2OqwBi" id="LM" role="3cqZAk">
            <node concept="37vLTw" id="LN" role="2Oq$k0">
              <ref role="3cqZAo" node="KX" resolve="b" />
            </node>
            <node concept="liA8E" id="LO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="KO" role="1B3o_S" />
      <node concept="3uibUv" id="KP" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s0" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSelect" />
      <node concept="3clFbS" id="LP" role="3clF47">
        <node concept="3cpWs8" id="LS" role="3cqZAp">
          <node concept="3cpWsn" id="Mb" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Mc" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Md" role="33vP2m">
              <node concept="1pGfFk" id="Me" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Mf" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Mg" role="37wK5m">
                  <property role="Xl_RC" value="Select" />
                </node>
                <node concept="1adDum" id="Mh" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Mi" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Mj" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e379L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LT" role="3cqZAp">
          <node concept="2OqwBi" id="Mk" role="3clFbG">
            <node concept="37vLTw" id="Ml" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="Mm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Mn" role="37wK5m" />
              <node concept="3clFbT" id="Mo" role="37wK5m" />
              <node concept="3clFbT" id="Mp" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="LU" role="3cqZAp">
          <node concept="1PaTwC" id="Mq" role="1aUNEU">
            <node concept="3oM_SD" id="Mr" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="Ms" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LV" role="3cqZAp">
          <node concept="15s5l7" id="Mt" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="Mu" role="3clFbG">
            <node concept="37vLTw" id="Mv" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="Mw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="Mx" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="My" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="Mz" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LW" role="3cqZAp">
          <node concept="2OqwBi" id="M$" role="3clFbG">
            <node concept="37vLTw" id="M_" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="MA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="MB" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="MC" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="MD" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LX" role="3cqZAp">
          <node concept="2OqwBi" id="ME" role="3clFbG">
            <node concept="37vLTw" id="MF" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="MG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="MH" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="MI" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="MJ" role="37wK5m">
                <property role="1adDun" value="0x33d23ee961a0cbf3L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LY" role="3cqZAp">
          <node concept="2OqwBi" id="MK" role="3clFbG">
            <node concept="37vLTw" id="ML" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="MM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="MN" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7033755722359825273" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LZ" role="3cqZAp">
          <node concept="2OqwBi" id="MO" role="3clFbG">
            <node concept="37vLTw" id="MP" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="MQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="MR" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M0" role="3cqZAp">
          <node concept="2OqwBi" id="MS" role="3clFbG">
            <node concept="2OqwBi" id="MT" role="2Oq$k0">
              <node concept="2OqwBi" id="MV" role="2Oq$k0">
                <node concept="2OqwBi" id="MX" role="2Oq$k0">
                  <node concept="37vLTw" id="MZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="Mb" resolve="b" />
                  </node>
                  <node concept="liA8E" id="N0" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="N1" role="37wK5m">
                      <property role="Xl_RC" value="viewName" />
                    </node>
                    <node concept="1adDum" id="N2" role="37wK5m">
                      <property role="1adDun" value="0x7642dbf63a87dc6eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="MY" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="N3" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="MW" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="N4" role="37wK5m">
                  <property role="Xl_RC" value="8521615295528819822" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="MU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M1" role="3cqZAp">
          <node concept="2OqwBi" id="N5" role="3clFbG">
            <node concept="2OqwBi" id="N6" role="2Oq$k0">
              <node concept="2OqwBi" id="N8" role="2Oq$k0">
                <node concept="2OqwBi" id="Na" role="2Oq$k0">
                  <node concept="2OqwBi" id="Nc" role="2Oq$k0">
                    <node concept="2OqwBi" id="Ne" role="2Oq$k0">
                      <node concept="2OqwBi" id="Ng" role="2Oq$k0">
                        <node concept="37vLTw" id="Ni" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Nj" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Nk" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="Nl" role="37wK5m">
                            <property role="1adDun" value="0x11100ee73745172dL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Nh" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Nm" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Nn" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="No" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Nf" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Np" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Nd" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Nq" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Nb" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Nr" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="N9" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Ns" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499654445" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="N7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M2" role="3cqZAp">
          <node concept="2OqwBi" id="Nt" role="3clFbG">
            <node concept="2OqwBi" id="Nu" role="2Oq$k0">
              <node concept="2OqwBi" id="Nw" role="2Oq$k0">
                <node concept="2OqwBi" id="Ny" role="2Oq$k0">
                  <node concept="2OqwBi" id="N$" role="2Oq$k0">
                    <node concept="2OqwBi" id="NA" role="2Oq$k0">
                      <node concept="2OqwBi" id="NC" role="2Oq$k0">
                        <node concept="37vLTw" id="NE" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="NF" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="NG" role="37wK5m">
                            <property role="Xl_RC" value="groupBy" />
                          </node>
                          <node concept="1adDum" id="NH" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa6a1779L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ND" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="NI" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="NJ" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="NK" role="37wK5m">
                          <property role="1adDun" value="0x2b087ec3aa6a16ceL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="NB" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="NL" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="N_" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="NM" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Nz" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="NN" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Nx" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="NO" role="37wK5m">
                  <property role="Xl_RC" value="3100867722287388537" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Nv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M3" role="3cqZAp">
          <node concept="2OqwBi" id="NP" role="3clFbG">
            <node concept="2OqwBi" id="NQ" role="2Oq$k0">
              <node concept="2OqwBi" id="NS" role="2Oq$k0">
                <node concept="2OqwBi" id="NU" role="2Oq$k0">
                  <node concept="2OqwBi" id="NW" role="2Oq$k0">
                    <node concept="2OqwBi" id="NY" role="2Oq$k0">
                      <node concept="2OqwBi" id="O0" role="2Oq$k0">
                        <node concept="37vLTw" id="O2" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="O3" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="O4" role="37wK5m">
                            <property role="Xl_RC" value="orderBy" />
                          </node>
                          <node concept="1adDum" id="O5" role="37wK5m">
                            <property role="1adDun" value="0x2b087ec3aa61e429L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="O1" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="O6" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="O7" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="O8" role="37wK5m">
                          <property role="1adDun" value="0x2b087ec3aa61e251L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="NZ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="O9" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="NX" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Oa" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="NV" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Ob" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="NT" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Oc" role="37wK5m">
                  <property role="Xl_RC" value="3100867722286851113" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="NR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M4" role="3cqZAp">
          <node concept="2OqwBi" id="Od" role="3clFbG">
            <node concept="2OqwBi" id="Oe" role="2Oq$k0">
              <node concept="2OqwBi" id="Og" role="2Oq$k0">
                <node concept="2OqwBi" id="Oi" role="2Oq$k0">
                  <node concept="2OqwBi" id="Ok" role="2Oq$k0">
                    <node concept="2OqwBi" id="Om" role="2Oq$k0">
                      <node concept="2OqwBi" id="Oo" role="2Oq$k0">
                        <node concept="37vLTw" id="Oq" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Or" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Os" role="37wK5m">
                            <property role="Xl_RC" value="aggregateFunction" />
                          </node>
                          <node concept="1adDum" id="Ot" role="37wK5m">
                            <property role="1adDun" value="0x5d7e70837b028396L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Op" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Ou" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Ov" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Ow" role="37wK5m">
                          <property role="1adDun" value="0x5d7e70837b022e74L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="On" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Ox" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Ol" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Oy" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Oj" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Oz" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Oh" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="O$" role="37wK5m">
                  <property role="Xl_RC" value="6736945802599629718" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Of" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M5" role="3cqZAp">
          <node concept="2OqwBi" id="O_" role="3clFbG">
            <node concept="2OqwBi" id="OA" role="2Oq$k0">
              <node concept="2OqwBi" id="OC" role="2Oq$k0">
                <node concept="2OqwBi" id="OE" role="2Oq$k0">
                  <node concept="2OqwBi" id="OG" role="2Oq$k0">
                    <node concept="2OqwBi" id="OI" role="2Oq$k0">
                      <node concept="2OqwBi" id="OK" role="2Oq$k0">
                        <node concept="37vLTw" id="OM" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="ON" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="OO" role="37wK5m">
                            <property role="Xl_RC" value="tables" />
                          </node>
                          <node concept="1adDum" id="OP" role="37wK5m">
                            <property role="1adDun" value="0x207f13a8b54616bfL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="OL" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="OQ" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="OR" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="OS" role="37wK5m">
                          <property role="1adDun" value="0x207f13a8b545f6deL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="OJ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="OT" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="OH" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="OU" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="OF" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="OV" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="OD" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="OW" role="37wK5m">
                  <property role="Xl_RC" value="2341611946572650175" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="OB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M6" role="3cqZAp">
          <node concept="2OqwBi" id="OX" role="3clFbG">
            <node concept="2OqwBi" id="OY" role="2Oq$k0">
              <node concept="2OqwBi" id="P0" role="2Oq$k0">
                <node concept="2OqwBi" id="P2" role="2Oq$k0">
                  <node concept="2OqwBi" id="P4" role="2Oq$k0">
                    <node concept="2OqwBi" id="P6" role="2Oq$k0">
                      <node concept="2OqwBi" id="P8" role="2Oq$k0">
                        <node concept="37vLTw" id="Pa" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Pb" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Pc" role="37wK5m">
                            <property role="Xl_RC" value="cols" />
                          </node>
                          <node concept="1adDum" id="Pd" role="37wK5m">
                            <property role="1adDun" value="0xe8aecd6b255930cL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="P9" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Pe" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Pf" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Pg" role="37wK5m">
                          <property role="1adDun" value="0xe8aecd6b2519712L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="P7" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Ph" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="P5" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Pi" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="P3" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Pj" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="P1" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Pk" role="37wK5m">
                  <property role="Xl_RC" value="1047910270176170764" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="OZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M7" role="3cqZAp">
          <node concept="2OqwBi" id="Pl" role="3clFbG">
            <node concept="2OqwBi" id="Pm" role="2Oq$k0">
              <node concept="2OqwBi" id="Po" role="2Oq$k0">
                <node concept="2OqwBi" id="Pq" role="2Oq$k0">
                  <node concept="2OqwBi" id="Ps" role="2Oq$k0">
                    <node concept="2OqwBi" id="Pu" role="2Oq$k0">
                      <node concept="2OqwBi" id="Pw" role="2Oq$k0">
                        <node concept="37vLTw" id="Py" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Pz" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="P$" role="37wK5m">
                            <property role="Xl_RC" value="viewTable" />
                          </node>
                          <node concept="1adDum" id="P_" role="37wK5m">
                            <property role="1adDun" value="0xb59df187aa1e081L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Px" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="PA" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="PB" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="PC" role="37wK5m">
                          <property role="1adDun" value="0x11100ee737443b2eL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Pv" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="PD" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Pt" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="PE" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Pr" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="PF" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Pp" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="PG" role="37wK5m">
                  <property role="Xl_RC" value="817930103574093953" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Pn" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M8" role="3cqZAp">
          <node concept="2OqwBi" id="PH" role="3clFbG">
            <node concept="2OqwBi" id="PI" role="2Oq$k0">
              <node concept="2OqwBi" id="PK" role="2Oq$k0">
                <node concept="2OqwBi" id="PM" role="2Oq$k0">
                  <node concept="2OqwBi" id="PO" role="2Oq$k0">
                    <node concept="2OqwBi" id="PQ" role="2Oq$k0">
                      <node concept="2OqwBi" id="PS" role="2Oq$k0">
                        <node concept="37vLTw" id="PU" role="2Oq$k0">
                          <ref role="3cqZAo" node="Mb" resolve="b" />
                        </node>
                        <node concept="liA8E" id="PV" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="PW" role="37wK5m">
                            <property role="Xl_RC" value="joinCondition" />
                          </node>
                          <node concept="1adDum" id="PX" role="37wK5m">
                            <property role="1adDun" value="0x6c94f05b7ec9d072L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="PT" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="PY" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="PZ" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Q0" role="37wK5m">
                          <property role="1adDun" value="0x6c94f05b7ec9d046L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="PR" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Q1" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="PP" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Q2" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="PN" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Q3" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="PL" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Q4" role="37wK5m">
                  <property role="Xl_RC" value="7824142728409239666" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="PJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M9" role="3cqZAp">
          <node concept="2OqwBi" id="Q5" role="3clFbG">
            <node concept="37vLTw" id="Q6" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="Q7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Q8" role="37wK5m">
                <property role="Xl_RC" value="SELECT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ma" role="3cqZAp">
          <node concept="2OqwBi" id="Q9" role="3cqZAk">
            <node concept="37vLTw" id="Qa" role="2Oq$k0">
              <ref role="3cqZAo" node="Mb" resolve="b" />
            </node>
            <node concept="liA8E" id="Qb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="LQ" role="1B3o_S" />
      <node concept="3uibUv" id="LR" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s1" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSelectColumn" />
      <node concept="3clFbS" id="Qc" role="3clF47">
        <node concept="3cpWs8" id="Qf" role="3cqZAp">
          <node concept="3cpWsn" id="Ql" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Qm" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Qn" role="33vP2m">
              <node concept="1pGfFk" id="Qo" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Qp" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Qq" role="37wK5m">
                  <property role="Xl_RC" value="SelectColumn" />
                </node>
                <node concept="1adDum" id="Qr" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Qs" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Qt" role="37wK5m">
                  <property role="1adDun" value="0xe8aecd6b2519712L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Qg" role="3cqZAp">
          <node concept="2OqwBi" id="Qu" role="3clFbG">
            <node concept="37vLTw" id="Qv" role="2Oq$k0">
              <ref role="3cqZAo" node="Ql" resolve="b" />
            </node>
            <node concept="liA8E" id="Qw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Qh" role="3cqZAp">
          <node concept="2OqwBi" id="Qx" role="3clFbG">
            <node concept="37vLTw" id="Qy" role="2Oq$k0">
              <ref role="3cqZAo" node="Ql" resolve="b" />
            </node>
            <node concept="liA8E" id="Qz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Q$" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1047910270175909650" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Qi" role="3cqZAp">
          <node concept="2OqwBi" id="Q_" role="3clFbG">
            <node concept="37vLTw" id="QA" role="2Oq$k0">
              <ref role="3cqZAo" node="Ql" resolve="b" />
            </node>
            <node concept="liA8E" id="QB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="QC" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Qj" role="3cqZAp">
          <node concept="2OqwBi" id="QD" role="3clFbG">
            <node concept="2OqwBi" id="QE" role="2Oq$k0">
              <node concept="2OqwBi" id="QG" role="2Oq$k0">
                <node concept="2OqwBi" id="QI" role="2Oq$k0">
                  <node concept="2OqwBi" id="QK" role="2Oq$k0">
                    <node concept="2OqwBi" id="QM" role="2Oq$k0">
                      <node concept="2OqwBi" id="QO" role="2Oq$k0">
                        <node concept="37vLTw" id="QQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="Ql" resolve="b" />
                        </node>
                        <node concept="liA8E" id="QR" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="QS" role="37wK5m">
                            <property role="Xl_RC" value="aggregationFunction" />
                          </node>
                          <node concept="1adDum" id="QT" role="37wK5m">
                            <property role="1adDun" value="0xb59df187aaa4b3dL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="QP" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="QU" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="QV" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="QW" role="37wK5m">
                          <property role="1adDun" value="0x5d7e70837b022e74L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="QN" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="QX" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="QL" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="QY" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="QJ" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="QZ" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="QH" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="R0" role="37wK5m">
                  <property role="Xl_RC" value="817930103574645565" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="QF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Qk" role="3cqZAp">
          <node concept="2OqwBi" id="R1" role="3cqZAk">
            <node concept="37vLTw" id="R2" role="2Oq$k0">
              <ref role="3cqZAo" node="Ql" resolve="b" />
            </node>
            <node concept="liA8E" id="R3" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Qd" role="1B3o_S" />
      <node concept="3uibUv" id="Qe" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s2" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSimpleCondition" />
      <node concept="3clFbS" id="R4" role="3clF47">
        <node concept="3cpWs8" id="R7" role="3cqZAp">
          <node concept="3cpWsn" id="Rg" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Rh" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Ri" role="33vP2m">
              <node concept="1pGfFk" id="Rj" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Rk" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Rl" role="37wK5m">
                  <property role="Xl_RC" value="SimpleCondition" />
                </node>
                <node concept="1adDum" id="Rm" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Rn" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Ro" role="37wK5m">
                  <property role="1adDun" value="0x5eeb1b6c0699ea18L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R8" role="3cqZAp">
          <node concept="2OqwBi" id="Rp" role="3clFbG">
            <node concept="37vLTw" id="Rq" role="2Oq$k0">
              <ref role="3cqZAo" node="Rg" resolve="b" />
            </node>
            <node concept="liA8E" id="Rr" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Rs" role="37wK5m" />
              <node concept="3clFbT" id="Rt" role="37wK5m" />
              <node concept="3clFbT" id="Ru" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R9" role="3cqZAp">
          <node concept="2OqwBi" id="Rv" role="3clFbG">
            <node concept="37vLTw" id="Rw" role="2Oq$k0">
              <ref role="3cqZAo" node="$M" resolve="b" />
            </node>
            <node concept="liA8E" id="Rx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Ry" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="Rz" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="R$" role="37wK5m">
                <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ra" role="3cqZAp">
          <node concept="2OqwBi" id="R_" role="3clFbG">
            <node concept="37vLTw" id="RA" role="2Oq$k0">
              <ref role="3cqZAo" node="Rg" resolve="b" />
            </node>
            <node concept="liA8E" id="RB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="RC" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6839590609873398296" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Rb" role="3cqZAp">
          <node concept="2OqwBi" id="RD" role="3clFbG">
            <node concept="37vLTw" id="RE" role="2Oq$k0">
              <ref role="3cqZAo" node="Rg" resolve="b" />
            </node>
            <node concept="liA8E" id="RF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="RG" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Rc" role="3cqZAp">
          <node concept="2OqwBi" id="RH" role="3clFbG">
            <node concept="2OqwBi" id="RI" role="2Oq$k0">
              <node concept="2OqwBi" id="RK" role="2Oq$k0">
                <node concept="2OqwBi" id="RM" role="2Oq$k0">
                  <node concept="37vLTw" id="RO" role="2Oq$k0">
                    <ref role="3cqZAo" node="Rg" resolve="b" />
                  </node>
                  <node concept="liA8E" id="RP" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="RQ" role="37wK5m">
                      <property role="Xl_RC" value="operator" />
                    </node>
                    <node concept="1adDum" id="RR" role="37wK5m">
                      <property role="1adDun" value="0x5eeb1b6c0699ea24L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="RN" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="RS" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499783673" />
                    <node concept="1adDum" id="RT" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                    <node concept="1adDum" id="RU" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                    <node concept="1adDum" id="RV" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737470ff9L" />
                      <uo k="s:originTrace" v="n:1229499084499783673" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="RL" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="RW" role="37wK5m">
                  <property role="Xl_RC" value="6839590609873398308" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="RJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Rd" role="3cqZAp">
          <node concept="2OqwBi" id="RX" role="3clFbG">
            <node concept="2OqwBi" id="RY" role="2Oq$k0">
              <node concept="2OqwBi" id="S0" role="2Oq$k0">
                <node concept="2OqwBi" id="S2" role="2Oq$k0">
                  <node concept="2OqwBi" id="S4" role="2Oq$k0">
                    <node concept="2OqwBi" id="S6" role="2Oq$k0">
                      <node concept="2OqwBi" id="S8" role="2Oq$k0">
                        <node concept="37vLTw" id="Sa" role="2Oq$k0">
                          <ref role="3cqZAo" node="Rg" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Sb" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Sc" role="37wK5m">
                            <property role="Xl_RC" value="value" />
                          </node>
                          <node concept="1adDum" id="Sd" role="37wK5m">
                            <property role="1adDun" value="0x5eeb1b6c0699ea26L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="S9" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Se" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Sf" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Sg" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="S7" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Sh" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="S5" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Si" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="S3" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Sj" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="S1" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Sk" role="37wK5m">
                  <property role="Xl_RC" value="6839590609873398310" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="RZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Re" role="3cqZAp">
          <node concept="2OqwBi" id="Sl" role="3clFbG">
            <node concept="2OqwBi" id="Sm" role="2Oq$k0">
              <node concept="2OqwBi" id="So" role="2Oq$k0">
                <node concept="2OqwBi" id="Sq" role="2Oq$k0">
                  <node concept="2OqwBi" id="Ss" role="2Oq$k0">
                    <node concept="2OqwBi" id="Su" role="2Oq$k0">
                      <node concept="2OqwBi" id="Sw" role="2Oq$k0">
                        <node concept="37vLTw" id="Sy" role="2Oq$k0">
                          <ref role="3cqZAo" node="Rg" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Sz" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="S$" role="37wK5m">
                            <property role="Xl_RC" value="column" />
                          </node>
                          <node concept="1adDum" id="S_" role="37wK5m">
                            <property role="1adDun" value="0x5eeb1b6c0699ea2bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Sx" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="SA" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="SB" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="SC" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Sv" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="SD" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="St" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="SE" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Sr" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="SF" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Sp" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="SG" role="37wK5m">
                  <property role="Xl_RC" value="6839590609873398315" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Sn" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Rf" role="3cqZAp">
          <node concept="2OqwBi" id="SH" role="3cqZAk">
            <node concept="37vLTw" id="SI" role="2Oq$k0">
              <ref role="3cqZAo" node="Rg" resolve="b" />
            </node>
            <node concept="liA8E" id="SJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="R5" role="1B3o_S" />
      <node concept="3uibUv" id="R6" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s3" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForStatement" />
      <node concept="3clFbS" id="SK" role="3clF47">
        <node concept="3cpWs8" id="SN" role="3cqZAp">
          <node concept="3cpWsn" id="SV" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="SW" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="SX" role="33vP2m">
              <node concept="1pGfFk" id="SY" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="SZ" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="T0" role="37wK5m">
                  <property role="Xl_RC" value="Statement" />
                </node>
                <node concept="1adDum" id="T1" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="T2" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="T3" role="37wK5m">
                  <property role="1adDun" value="0x11100ee737443b30L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="SO" role="3cqZAp">
          <node concept="2OqwBi" id="T4" role="3clFbG">
            <node concept="37vLTw" id="T5" role="2Oq$k0">
              <ref role="3cqZAo" node="SV" resolve="b" />
            </node>
            <node concept="liA8E" id="T6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="T7" role="37wK5m" />
              <node concept="3clFbT" id="T8" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="T9" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="SP" role="3cqZAp">
          <node concept="2OqwBi" id="Ta" role="3clFbG">
            <node concept="37vLTw" id="Tb" role="2Oq$k0">
              <ref role="3cqZAo" node="SV" resolve="b" />
            </node>
            <node concept="liA8E" id="Tc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Td" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="Te" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="Tf" role="37wK5m">
                <property role="1adDun" value="0x33d23ee961a0cbf3L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="SQ" role="3cqZAp">
          <node concept="2OqwBi" id="Tg" role="3clFbG">
            <node concept="37vLTw" id="Th" role="2Oq$k0">
              <ref role="3cqZAo" node="SV" resolve="b" />
            </node>
            <node concept="liA8E" id="Ti" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Tj" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/1229499084499598128" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="SR" role="3cqZAp">
          <node concept="2OqwBi" id="Tk" role="3clFbG">
            <node concept="37vLTw" id="Tl" role="2Oq$k0">
              <ref role="3cqZAo" node="SV" resolve="b" />
            </node>
            <node concept="liA8E" id="Tm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Tn" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="SS" role="3cqZAp">
          <node concept="2OqwBi" id="To" role="3clFbG">
            <node concept="2OqwBi" id="Tp" role="2Oq$k0">
              <node concept="2OqwBi" id="Tr" role="2Oq$k0">
                <node concept="2OqwBi" id="Tt" role="2Oq$k0">
                  <node concept="2OqwBi" id="Tv" role="2Oq$k0">
                    <node concept="37vLTw" id="Tx" role="2Oq$k0">
                      <ref role="3cqZAo" node="SV" resolve="b" />
                    </node>
                    <node concept="liA8E" id="Ty" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="Tz" role="37wK5m">
                        <property role="Xl_RC" value="table" />
                      </node>
                      <node concept="1adDum" id="T$" role="37wK5m">
                        <property role="1adDun" value="0x207f13a8b5460e46L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Tw" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="T_" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="TA" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="TB" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b2eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Tu" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="TC" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Ts" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="TD" role="37wK5m">
                  <property role="Xl_RC" value="2341611946572648006" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Tq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ST" role="3cqZAp">
          <node concept="2OqwBi" id="TE" role="3clFbG">
            <node concept="2OqwBi" id="TF" role="2Oq$k0">
              <node concept="2OqwBi" id="TH" role="2Oq$k0">
                <node concept="2OqwBi" id="TJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="TL" role="2Oq$k0">
                    <node concept="2OqwBi" id="TN" role="2Oq$k0">
                      <node concept="2OqwBi" id="TP" role="2Oq$k0">
                        <node concept="37vLTw" id="TR" role="2Oq$k0">
                          <ref role="3cqZAo" node="SV" resolve="b" />
                        </node>
                        <node concept="liA8E" id="TS" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="TT" role="37wK5m">
                            <property role="Xl_RC" value="columns" />
                          </node>
                          <node concept="1adDum" id="TU" role="37wK5m">
                            <property role="1adDun" value="0x75900635108a5f3bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="TQ" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="TV" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="TW" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="TX" role="37wK5m">
                          <property role="1adDun" value="0x11100ee7375157f4L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="TO" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="TY" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="TM" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="TZ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="TK" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="U0" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="TI" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="U1" role="37wK5m">
                  <property role="Xl_RC" value="8471277724064440123" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="TG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="SU" role="3cqZAp">
          <node concept="2OqwBi" id="U2" role="3cqZAk">
            <node concept="37vLTw" id="U3" role="2Oq$k0">
              <ref role="3cqZAo" node="SV" resolve="b" />
            </node>
            <node concept="liA8E" id="U4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="SL" role="1B3o_S" />
      <node concept="3uibUv" id="SM" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s4" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSum" />
      <node concept="3clFbS" id="U5" role="3clF47">
        <node concept="3cpWs8" id="U8" role="3cqZAp">
          <node concept="3cpWsn" id="Uf" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ug" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Uh" role="33vP2m">
              <node concept="1pGfFk" id="Ui" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Uj" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Uk" role="37wK5m">
                  <property role="Xl_RC" value="Sum" />
                </node>
                <node concept="1adDum" id="Ul" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="Um" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="Un" role="37wK5m">
                  <property role="1adDun" value="0x5d7e70837b028393L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="U9" role="3cqZAp">
          <node concept="2OqwBi" id="Uo" role="3clFbG">
            <node concept="37vLTw" id="Up" role="2Oq$k0">
              <ref role="3cqZAo" node="Uf" resolve="b" />
            </node>
            <node concept="liA8E" id="Uq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Ur" role="37wK5m" />
              <node concept="3clFbT" id="Us" role="37wK5m" />
              <node concept="3clFbT" id="Ut" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ua" role="3cqZAp">
          <node concept="2OqwBi" id="Uu" role="3clFbG">
            <node concept="37vLTw" id="Uv" role="2Oq$k0">
              <ref role="3cqZAo" node="wM" resolve="b" />
            </node>
            <node concept="liA8E" id="Uw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Ux" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="Uy" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="Uz" role="37wK5m">
                <property role="1adDun" value="0x5d7e70837b022e74L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ub" role="3cqZAp">
          <node concept="2OqwBi" id="U$" role="3clFbG">
            <node concept="37vLTw" id="U_" role="2Oq$k0">
              <ref role="3cqZAo" node="Uf" resolve="b" />
            </node>
            <node concept="liA8E" id="UA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="UB" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/6736945802599629715" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Uc" role="3cqZAp">
          <node concept="2OqwBi" id="UC" role="3clFbG">
            <node concept="37vLTw" id="UD" role="2Oq$k0">
              <ref role="3cqZAo" node="Uf" resolve="b" />
            </node>
            <node concept="liA8E" id="UE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="UF" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ud" role="3cqZAp">
          <node concept="2OqwBi" id="UG" role="3clFbG">
            <node concept="37vLTw" id="UH" role="2Oq$k0">
              <ref role="3cqZAo" node="Uf" resolve="b" />
            </node>
            <node concept="liA8E" id="UI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="UJ" role="37wK5m">
                <property role="Xl_RC" value="SUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ue" role="3cqZAp">
          <node concept="2OqwBi" id="UK" role="3cqZAk">
            <node concept="37vLTw" id="UL" role="2Oq$k0">
              <ref role="3cqZAo" node="Uf" resolve="b" />
            </node>
            <node concept="liA8E" id="UM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="U6" role="1B3o_S" />
      <node concept="3uibUv" id="U7" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s5" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForTableReference" />
      <node concept="3clFbS" id="UN" role="3clF47">
        <node concept="3cpWs8" id="UQ" role="3cqZAp">
          <node concept="3cpWsn" id="UW" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="UX" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="UY" role="33vP2m">
              <node concept="1pGfFk" id="UZ" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="V0" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="V1" role="37wK5m">
                  <property role="Xl_RC" value="TableReference" />
                </node>
                <node concept="1adDum" id="V2" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="V3" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="V4" role="37wK5m">
                  <property role="1adDun" value="0x207f13a8b545f6deL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UR" role="3cqZAp">
          <node concept="2OqwBi" id="V5" role="3clFbG">
            <node concept="37vLTw" id="V6" role="2Oq$k0">
              <ref role="3cqZAo" node="UW" resolve="b" />
            </node>
            <node concept="liA8E" id="V7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="V8" role="37wK5m" />
              <node concept="3clFbT" id="V9" role="37wK5m" />
              <node concept="3clFbT" id="Va" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="US" role="3cqZAp">
          <node concept="2OqwBi" id="Vb" role="3clFbG">
            <node concept="37vLTw" id="Vc" role="2Oq$k0">
              <ref role="3cqZAo" node="UW" resolve="b" />
            </node>
            <node concept="liA8E" id="Vd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Ve" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/2341611946572642014" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UT" role="3cqZAp">
          <node concept="2OqwBi" id="Vf" role="3clFbG">
            <node concept="37vLTw" id="Vg" role="2Oq$k0">
              <ref role="3cqZAo" node="UW" resolve="b" />
            </node>
            <node concept="liA8E" id="Vh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Vi" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UU" role="3cqZAp">
          <node concept="2OqwBi" id="Vj" role="3clFbG">
            <node concept="2OqwBi" id="Vk" role="2Oq$k0">
              <node concept="2OqwBi" id="Vm" role="2Oq$k0">
                <node concept="2OqwBi" id="Vo" role="2Oq$k0">
                  <node concept="2OqwBi" id="Vq" role="2Oq$k0">
                    <node concept="37vLTw" id="Vs" role="2Oq$k0">
                      <ref role="3cqZAo" node="UW" resolve="b" />
                    </node>
                    <node concept="liA8E" id="Vt" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="Vu" role="37wK5m">
                        <property role="Xl_RC" value="tableRef" />
                      </node>
                      <node concept="1adDum" id="Vv" role="37wK5m">
                        <property role="1adDun" value="0x207f13a8b545f6dfL" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Vr" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="Vw" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                    </node>
                    <node concept="1adDum" id="Vx" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    </node>
                    <node concept="1adDum" id="Vy" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b2eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Vp" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="Vz" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Vn" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="V$" role="37wK5m">
                  <property role="Xl_RC" value="2341611946572642015" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Vl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="UV" role="3cqZAp">
          <node concept="2OqwBi" id="V_" role="3cqZAk">
            <node concept="37vLTw" id="VA" role="2Oq$k0">
              <ref role="3cqZAo" node="UW" resolve="b" />
            </node>
            <node concept="liA8E" id="VB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="UO" role="1B3o_S" />
      <node concept="3uibUv" id="UP" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s6" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForUpdate" />
      <node concept="3clFbS" id="VC" role="3clF47">
        <node concept="3cpWs8" id="VF" role="3cqZAp">
          <node concept="3cpWsn" id="VQ" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="VR" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="VS" role="33vP2m">
              <node concept="1pGfFk" id="VT" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="VU" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="VV" role="37wK5m">
                  <property role="Xl_RC" value="Update" />
                </node>
                <node concept="1adDum" id="VW" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="VX" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="VY" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f23853fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VG" role="3cqZAp">
          <node concept="2OqwBi" id="VZ" role="3clFbG">
            <node concept="37vLTw" id="W0" role="2Oq$k0">
              <ref role="3cqZAo" node="VQ" resolve="b" />
            </node>
            <node concept="liA8E" id="W1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="W2" role="37wK5m" />
              <node concept="3clFbT" id="W3" role="37wK5m" />
              <node concept="3clFbT" id="W4" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="VH" role="3cqZAp">
          <node concept="1PaTwC" id="W5" role="1aUNEU">
            <node concept="3oM_SD" id="W6" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="W7" role="1PaTwD">
              <property role="3oM_SC" value="QueryLanguage.structure.Statement" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VI" role="3cqZAp">
          <node concept="15s5l7" id="W8" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="W9" role="3clFbG">
            <node concept="37vLTw" id="Wa" role="2Oq$k0">
              <ref role="3cqZAo" node="VQ" resolve="b" />
            </node>
            <node concept="liA8E" id="Wb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="1adDum" id="Wc" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="Wd" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="We" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b30L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VJ" role="3cqZAp">
          <node concept="2OqwBi" id="Wf" role="3clFbG">
            <node concept="37vLTw" id="Wg" role="2Oq$k0">
              <ref role="3cqZAo" node="Bq" resolve="b" />
            </node>
            <node concept="liA8E" id="Wh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Wi" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
              </node>
              <node concept="1adDum" id="Wj" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
              </node>
              <node concept="1adDum" id="Wk" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa655164L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VK" role="3cqZAp">
          <node concept="2OqwBi" id="Wl" role="3clFbG">
            <node concept="37vLTw" id="Wm" role="2Oq$k0">
              <ref role="3cqZAo" node="VQ" resolve="b" />
            </node>
            <node concept="liA8E" id="Wn" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Wo" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255689023" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VL" role="3cqZAp">
          <node concept="2OqwBi" id="Wp" role="3clFbG">
            <node concept="37vLTw" id="Wq" role="2Oq$k0">
              <ref role="3cqZAo" node="VQ" resolve="b" />
            </node>
            <node concept="liA8E" id="Wr" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Ws" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VM" role="3cqZAp">
          <node concept="2OqwBi" id="Wt" role="3clFbG">
            <node concept="2OqwBi" id="Wu" role="2Oq$k0">
              <node concept="2OqwBi" id="Ww" role="2Oq$k0">
                <node concept="2OqwBi" id="Wy" role="2Oq$k0">
                  <node concept="2OqwBi" id="W$" role="2Oq$k0">
                    <node concept="2OqwBi" id="WA" role="2Oq$k0">
                      <node concept="2OqwBi" id="WC" role="2Oq$k0">
                        <node concept="37vLTw" id="WE" role="2Oq$k0">
                          <ref role="3cqZAo" node="VQ" resolve="b" />
                        </node>
                        <node concept="liA8E" id="WF" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="WG" role="37wK5m">
                            <property role="Xl_RC" value="where" />
                          </node>
                          <node concept="1adDum" id="WH" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f238543L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="WD" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="WI" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="WJ" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="WK" role="37wK5m">
                          <property role="1adDun" value="0x619ceb902420e37bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="WB" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="WL" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="W_" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="WM" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Wz" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="WN" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Wx" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="WO" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689027" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Wv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VN" role="3cqZAp">
          <node concept="2OqwBi" id="WP" role="3clFbG">
            <node concept="2OqwBi" id="WQ" role="2Oq$k0">
              <node concept="2OqwBi" id="WS" role="2Oq$k0">
                <node concept="2OqwBi" id="WU" role="2Oq$k0">
                  <node concept="2OqwBi" id="WW" role="2Oq$k0">
                    <node concept="2OqwBi" id="WY" role="2Oq$k0">
                      <node concept="2OqwBi" id="X0" role="2Oq$k0">
                        <node concept="37vLTw" id="X2" role="2Oq$k0">
                          <ref role="3cqZAo" node="VQ" resolve="b" />
                        </node>
                        <node concept="liA8E" id="X3" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="X4" role="37wK5m">
                            <property role="Xl_RC" value="values" />
                          </node>
                          <node concept="1adDum" id="X5" role="37wK5m">
                            <property role="1adDun" value="0x625a3ba00f23854bL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="X1" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="X6" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="X7" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="X8" role="37wK5m">
                          <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="WZ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="X9" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="WX" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Xa" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="WV" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Xb" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="WT" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Xc" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255689035" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="WR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="VO" role="3cqZAp">
          <node concept="2OqwBi" id="Xd" role="3clFbG">
            <node concept="37vLTw" id="Xe" role="2Oq$k0">
              <ref role="3cqZAo" node="VQ" resolve="b" />
            </node>
            <node concept="liA8E" id="Xf" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Xg" role="37wK5m">
                <property role="Xl_RC" value="UPDATE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="VP" role="3cqZAp">
          <node concept="2OqwBi" id="Xh" role="3cqZAk">
            <node concept="37vLTw" id="Xi" role="2Oq$k0">
              <ref role="3cqZAo" node="VQ" resolve="b" />
            </node>
            <node concept="liA8E" id="Xj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="VD" role="1B3o_S" />
      <node concept="3uibUv" id="VE" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s7" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForValue" />
      <node concept="3clFbS" id="Xk" role="3clF47">
        <node concept="3cpWs8" id="Xn" role="3cqZAp">
          <node concept="3cpWsn" id="Xu" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Xv" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Xw" role="33vP2m">
              <node concept="1pGfFk" id="Xx" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Xy" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Xz" role="37wK5m">
                  <property role="Xl_RC" value="Value" />
                </node>
                <node concept="1adDum" id="X$" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="X_" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="XA" role="37wK5m">
                  <property role="1adDun" value="0x625a3ba00f1cc88bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Xo" role="3cqZAp">
          <node concept="2OqwBi" id="XB" role="3clFbG">
            <node concept="37vLTw" id="XC" role="2Oq$k0">
              <ref role="3cqZAo" node="Xu" resolve="b" />
            </node>
            <node concept="liA8E" id="XD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="XE" role="37wK5m" />
              <node concept="3clFbT" id="XF" role="37wK5m" />
              <node concept="3clFbT" id="XG" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Xp" role="3cqZAp">
          <node concept="2OqwBi" id="XH" role="3clFbG">
            <node concept="37vLTw" id="XI" role="2Oq$k0">
              <ref role="3cqZAo" node="Xu" resolve="b" />
            </node>
            <node concept="liA8E" id="XJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="XK" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7087042522255247499" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Xq" role="3cqZAp">
          <node concept="2OqwBi" id="XL" role="3clFbG">
            <node concept="37vLTw" id="XM" role="2Oq$k0">
              <ref role="3cqZAo" node="Xu" resolve="b" />
            </node>
            <node concept="liA8E" id="XN" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="XO" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Xr" role="3cqZAp">
          <node concept="2OqwBi" id="XP" role="3clFbG">
            <node concept="2OqwBi" id="XQ" role="2Oq$k0">
              <node concept="2OqwBi" id="XS" role="2Oq$k0">
                <node concept="2OqwBi" id="XU" role="2Oq$k0">
                  <node concept="37vLTw" id="XW" role="2Oq$k0">
                    <ref role="3cqZAo" node="Xu" resolve="b" />
                  </node>
                  <node concept="liA8E" id="XX" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="XY" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="XZ" role="37wK5m">
                      <property role="1adDun" value="0x625a3ba00f1cc88cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="XV" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="Y0" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:1229499084499598137" />
                    <node concept="1adDum" id="Y1" role="37wK5m">
                      <property role="1adDun" value="0x26d1395b1ee643adL" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="Y2" role="37wK5m">
                      <property role="1adDun" value="0xb522c0cdd699ded3L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                    <node concept="1adDum" id="Y3" role="37wK5m">
                      <property role="1adDun" value="0x11100ee737443b39L" />
                      <uo k="s:originTrace" v="n:1229499084499598137" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="XT" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Y4" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247500" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="XR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Xs" role="3cqZAp">
          <node concept="2OqwBi" id="Y5" role="3clFbG">
            <node concept="2OqwBi" id="Y6" role="2Oq$k0">
              <node concept="2OqwBi" id="Y8" role="2Oq$k0">
                <node concept="2OqwBi" id="Ya" role="2Oq$k0">
                  <node concept="37vLTw" id="Yc" role="2Oq$k0">
                    <ref role="3cqZAo" node="Xu" resolve="b" />
                  </node>
                  <node concept="liA8E" id="Yd" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Ye" role="37wK5m">
                      <property role="Xl_RC" value="value" />
                    </node>
                    <node concept="1adDum" id="Yf" role="37wK5m">
                      <property role="1adDun" value="0x625a3ba00f1cc88eL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Yb" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="Yg" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Y9" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Yh" role="37wK5m">
                  <property role="Xl_RC" value="7087042522255247502" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Y7" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Xt" role="3cqZAp">
          <node concept="2OqwBi" id="Yi" role="3cqZAk">
            <node concept="37vLTw" id="Yj" role="2Oq$k0">
              <ref role="3cqZAo" node="Xu" resolve="b" />
            </node>
            <node concept="liA8E" id="Yk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Xl" role="1B3o_S" />
      <node concept="3uibUv" id="Xm" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="s8" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForWhere" />
      <node concept="3clFbS" id="Yl" role="3clF47">
        <node concept="3cpWs8" id="Yo" role="3cqZAp">
          <node concept="3cpWsn" id="Yv" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Yw" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Yx" role="33vP2m">
              <node concept="1pGfFk" id="Yy" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Yz" role="37wK5m">
                  <property role="Xl_RC" value="QueryLanguage" />
                </node>
                <node concept="Xl_RD" id="Y$" role="37wK5m">
                  <property role="Xl_RC" value="Where" />
                </node>
                <node concept="1adDum" id="Y_" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                </node>
                <node concept="1adDum" id="YA" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                </node>
                <node concept="1adDum" id="YB" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e37bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Yp" role="3cqZAp">
          <node concept="2OqwBi" id="YC" role="3clFbG">
            <node concept="37vLTw" id="YD" role="2Oq$k0">
              <ref role="3cqZAo" node="Yv" resolve="b" />
            </node>
            <node concept="liA8E" id="YE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="YF" role="37wK5m" />
              <node concept="3clFbT" id="YG" role="37wK5m" />
              <node concept="3clFbT" id="YH" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Yq" role="3cqZAp">
          <node concept="2OqwBi" id="YI" role="3clFbG">
            <node concept="37vLTw" id="YJ" role="2Oq$k0">
              <ref role="3cqZAo" node="Yv" resolve="b" />
            </node>
            <node concept="liA8E" id="YK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="YL" role="37wK5m">
                <property role="Xl_RC" value="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)/7033755722359825275" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Yr" role="3cqZAp">
          <node concept="2OqwBi" id="YM" role="3clFbG">
            <node concept="37vLTw" id="YN" role="2Oq$k0">
              <ref role="3cqZAo" node="Yv" resolve="b" />
            </node>
            <node concept="liA8E" id="YO" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="YP" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ys" role="3cqZAp">
          <node concept="2OqwBi" id="YQ" role="3clFbG">
            <node concept="2OqwBi" id="YR" role="2Oq$k0">
              <node concept="2OqwBi" id="YT" role="2Oq$k0">
                <node concept="2OqwBi" id="YV" role="2Oq$k0">
                  <node concept="2OqwBi" id="YX" role="2Oq$k0">
                    <node concept="2OqwBi" id="YZ" role="2Oq$k0">
                      <node concept="2OqwBi" id="Z1" role="2Oq$k0">
                        <node concept="37vLTw" id="Z3" role="2Oq$k0">
                          <ref role="3cqZAo" node="Yv" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Z4" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Z5" role="37wK5m">
                            <property role="Xl_RC" value="condition" />
                          </node>
                          <node concept="1adDum" id="Z6" role="37wK5m">
                            <property role="1adDun" value="0x11100ee7374a23b4L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Z2" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Z7" role="37wK5m">
                          <property role="1adDun" value="0x26d1395b1ee643adL" />
                        </node>
                        <node concept="1adDum" id="Z8" role="37wK5m">
                          <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        </node>
                        <node concept="1adDum" id="Z9" role="37wK5m">
                          <property role="1adDun" value="0x5eeb1b6c0699ea17L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Z0" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Za" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="YY" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Zb" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="YW" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Zc" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="YU" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Zd" role="37wK5m">
                  <property role="Xl_RC" value="1229499084499985332" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="YS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Yt" role="3cqZAp">
          <node concept="2OqwBi" id="Ze" role="3clFbG">
            <node concept="37vLTw" id="Zf" role="2Oq$k0">
              <ref role="3cqZAo" node="Yv" resolve="b" />
            </node>
            <node concept="liA8E" id="Zg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Zh" role="37wK5m">
                <property role="Xl_RC" value="WHERE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Yu" role="3cqZAp">
          <node concept="2OqwBi" id="Zi" role="3cqZAk">
            <node concept="37vLTw" id="Zj" role="2Oq$k0">
              <ref role="3cqZAo" node="Yv" resolve="b" />
            </node>
            <node concept="liA8E" id="Zk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Ym" role="1B3o_S" />
      <node concept="3uibUv" id="Yn" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
  </node>
</model>

