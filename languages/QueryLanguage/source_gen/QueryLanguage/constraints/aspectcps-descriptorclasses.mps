<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f07d253(checkpoints/QueryLanguage.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="bkxw" ref="r:7edf4f40-f81a-49df-87e2-b00351b83558(QueryLanguage.constraints)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pl" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="8353134822275456723" name="jetbrains.mps.baseLanguage.structure.HexLongLiteral" flags="ng" index="11gdke">
        <property id="8353134822275456796" name="hexValue" index="11gdj1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="column" />
    <property role="TrG5h" value="ColumnRef_Constraints" />
    <uo k="s:originTrace" v="n:2823449341854454754" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:2823449341854454754" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2823449341854454754" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:2823449341854454754" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:2823449341854454754" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ColumnRef$XM" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="b522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="11100ee7375157f4L" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.ColumnRef" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="1pGfFk" id="l" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="n" resolve="ColumnRef_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
                <node concept="Xjq3P" id="m" role="37wK5m">
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:2823449341854454754" />
    </node>
    <node concept="312cEu" id="5" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2823449341854454754" />
      <node concept="3clFbW" id="n" role="jymVt">
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="37vLTG" id="q" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="3uibUv" id="t" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
          </node>
        </node>
        <node concept="3cqZAl" id="r" role="3clF45">
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
        <node concept="3clFbS" id="s" role="3clF47">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="XkiVB" id="u" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="1BaE9c" id="v" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="column$Wyeu" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="2YIFZM" id="z" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
                <node concept="11gdke" id="$" role="37wK5m">
                  <property role="11gdj1" value="26d1395b1ee643adL" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
                <node concept="11gdke" id="_" role="37wK5m">
                  <property role="11gdj1" value="b522c0cdd699ded3L" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
                <node concept="11gdke" id="A" role="37wK5m">
                  <property role="11gdj1" value="11100ee7375157f4L" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
                <node concept="11gdke" id="B" role="37wK5m">
                  <property role="11gdj1" value="11100ee7375157f5L" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
                <node concept="Xl_RD" id="C" role="37wK5m">
                  <property role="Xl_RC" value="column" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="w" role="37wK5m">
              <ref role="3cqZAo" node="q" resolve="container" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
            </node>
            <node concept="3clFbT" id="x" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
            </node>
            <node concept="3clFbT" id="y" role="37wK5m">
              <uo k="s:originTrace" v="n:2823449341854454754" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="3Tm1VV" id="D" role="1B3o_S">
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
        <node concept="3uibUv" id="E" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
        <node concept="2AHcQZ" id="F" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
        <node concept="3clFbS" id="G" role="3clF47">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="3cpWs6" id="I" role="3cqZAp">
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="2YIFZM" id="J" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:6649776843795359366" />
              <node concept="35c_gC" id="K" role="37wK5m">
                <ref role="35c_gD" to="p6im:14g3IsRh3GN" resolve="Column" />
                <uo k="s:originTrace" v="n:6649776843795359366" />
              </node>
              <node concept="2ShNRf" id="L" role="37wK5m">
                <uo k="s:originTrace" v="n:6649776843795359366" />
                <node concept="1pGfFk" id="M" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:6649776843795359366" />
                  <node concept="Xl_RD" id="N" role="37wK5m">
                    <property role="Xl_RC" value="r:7edf4f40-f81a-49df-87e2-b00351b83558(QueryLanguage.constraints)" />
                    <uo k="s:originTrace" v="n:6649776843795359366" />
                  </node>
                  <node concept="Xl_RD" id="O" role="37wK5m">
                    <property role="Xl_RC" value="6649776843795359366" />
                    <uo k="s:originTrace" v="n:6649776843795359366" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
      </node>
      <node concept="3uibUv" id="p" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2823449341854454754" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="P">
    <property role="3GE5qa" value="column" />
    <property role="TrG5h" value="Column_Constraints" />
    <uo k="s:originTrace" v="n:2341611946574946046" />
    <node concept="3Tm1VV" id="Q" role="1B3o_S">
      <uo k="s:originTrace" v="n:2341611946574946046" />
    </node>
    <node concept="3uibUv" id="R" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2341611946574946046" />
    </node>
    <node concept="3clFbW" id="S" role="jymVt">
      <uo k="s:originTrace" v="n:2341611946574946046" />
      <node concept="37vLTG" id="V" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3uibUv" id="Y" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
      </node>
      <node concept="3cqZAl" id="W" role="3clF45">
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
      <node concept="3clFbS" id="X" role="3clF47">
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="XkiVB" id="Z" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="1BaE9c" id="11" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Column$oK" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="2YIFZM" id="13" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="11gdke" id="14" role="37wK5m">
                <property role="11gdj1" value="26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="11gdke" id="15" role="37wK5m">
                <property role="11gdj1" value="b522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="11gdke" id="16" role="37wK5m">
                <property role="11gdj1" value="11100ee737443b33L" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="Xl_RD" id="17" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.Column" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="12" role="37wK5m">
            <ref role="3cqZAo" node="V" resolve="initContext" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="3clFbF" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="1rXfSq" id="18" role="3clFbG">
            <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="2ShNRf" id="19" role="37wK5m">
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="1pGfFk" id="1a" role="2ShVmc">
                <ref role="37wK5l" node="1c" resolve="Column_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="Xjq3P" id="1b" role="37wK5m">
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="T" role="jymVt">
      <uo k="s:originTrace" v="n:2341611946574946046" />
    </node>
    <node concept="312cEu" id="U" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:2341611946574946046" />
      <node concept="3clFbW" id="1c" role="jymVt">
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3cqZAl" id="1g" role="3clF45">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3Tm1VV" id="1h" role="1B3o_S">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3clFbS" id="1i" role="3clF47">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="XkiVB" id="1k" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="1BaE9c" id="1l" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="2YIFZM" id="1q" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="11gdke" id="1r" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="11gdke" id="1s" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="11gdke" id="1t" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="11gdke" id="1u" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="Xl_RD" id="1v" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1m" role="37wK5m">
              <ref role="3cqZAo" node="1j" resolve="container" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="3clFbT" id="1n" role="37wK5m">
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="3clFbT" id="1o" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="3clFbT" id="1p" role="37wK5m">
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1j" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3uibUv" id="1w" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1d" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3Tm1VV" id="1x" role="1B3o_S">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3cqZAl" id="1y" role="3clF45">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="37vLTG" id="1z" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3Tqbb2" id="1B" role="1tU5fm">
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="37vLTG" id="1$" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3uibUv" id="1C" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3clFbS" id="1A" role="3clF47">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3clFbF" id="1D" role="3cqZAp">
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="1rXfSq" id="1E" role="3clFbG">
              <ref role="37wK5l" node="1e" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="37vLTw" id="1F" role="37wK5m">
                <ref role="3cqZAo" node="1z" resolve="node" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="2YIFZM" id="1G" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="37vLTw" id="1H" role="37wK5m">
                  <ref role="3cqZAo" node="1$" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="1e" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3clFbS" id="1I" role="3clF47">
          <uo k="s:originTrace" v="n:2341611946574946101" />
          <node concept="3clFbF" id="1N" role="3cqZAp">
            <uo k="s:originTrace" v="n:2341611946575153267" />
            <node concept="37vLTI" id="1P" role="3clFbG">
              <uo k="s:originTrace" v="n:2341611946575164393" />
              <node concept="37vLTw" id="1Q" role="37vLTx">
                <ref role="3cqZAo" node="1M" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:2341611946575165453" />
              </node>
              <node concept="2OqwBi" id="1R" role="37vLTJ">
                <uo k="s:originTrace" v="n:2341611946575153346" />
                <node concept="37vLTw" id="1S" role="2Oq$k0">
                  <ref role="3cqZAo" node="1L" resolve="node" />
                  <uo k="s:originTrace" v="n:2341611946575153266" />
                </node>
                <node concept="3TrcHB" id="1T" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:2341611946575154181" />
                </node>
              </node>
            </node>
          </node>
          <node concept="Jncv_" id="1O" role="3cqZAp">
            <ref role="JncvD" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
            <uo k="s:originTrace" v="n:2341611946574947728" />
            <node concept="2OqwBi" id="1U" role="JncvB">
              <uo k="s:originTrace" v="n:2341611946574947860" />
              <node concept="37vLTw" id="1X" role="2Oq$k0">
                <ref role="3cqZAo" node="1L" resolve="node" />
                <uo k="s:originTrace" v="n:2341611946574947770" />
              </node>
              <node concept="1mfA1w" id="1Y" role="2OqNvi">
                <uo k="s:originTrace" v="n:2341611946574948112" />
              </node>
            </node>
            <node concept="3clFbS" id="1V" role="Jncv$">
              <uo k="s:originTrace" v="n:2341611946574947730" />
              <node concept="3clFbF" id="1Z" role="3cqZAp">
                <uo k="s:originTrace" v="n:2341611946574948325" />
                <node concept="37vLTI" id="20" role="3clFbG">
                  <uo k="s:originTrace" v="n:2341611946574960027" />
                  <node concept="3cpWs3" id="21" role="37vLTx">
                    <uo k="s:originTrace" v="n:2341611946574987771" />
                    <node concept="2OqwBi" id="23" role="3uHU7w">
                      <uo k="s:originTrace" v="n:2341611946574990452" />
                      <node concept="37vLTw" id="25" role="2Oq$k0">
                        <ref role="3cqZAo" node="1L" resolve="node" />
                        <uo k="s:originTrace" v="n:2341611946574988866" />
                      </node>
                      <node concept="3TrcHB" id="26" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        <uo k="s:originTrace" v="n:2341611946574991305" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="24" role="3uHU7B">
                      <uo k="s:originTrace" v="n:2341611946574975470" />
                      <node concept="2OqwBi" id="27" role="3uHU7B">
                        <uo k="s:originTrace" v="n:2341611946574962812" />
                        <node concept="Jnkvi" id="29" role="2Oq$k0">
                          <ref role="1M0zk5" node="1W" resolve="table" />
                          <uo k="s:originTrace" v="n:2341611946574962093" />
                        </node>
                        <node concept="3TrcHB" id="2a" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          <uo k="s:originTrace" v="n:2341611946574965072" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="28" role="3uHU7w">
                        <property role="Xl_RC" value="." />
                        <uo k="s:originTrace" v="n:2341611946574975482" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="22" role="37vLTJ">
                    <uo k="s:originTrace" v="n:2341611946574948979" />
                    <node concept="37vLTw" id="2b" role="2Oq$k0">
                      <ref role="3cqZAo" node="1L" resolve="node" />
                      <uo k="s:originTrace" v="n:2341611946574948324" />
                    </node>
                    <node concept="3TrcHB" id="2c" role="2OqNvi">
                      <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                      <uo k="s:originTrace" v="n:2341611946574949702" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="1W" role="JncvA">
              <property role="TrG5h" value="table" />
              <uo k="s:originTrace" v="n:2341611946574947731" />
              <node concept="2jxLKc" id="2d" role="1tU5fm">
                <uo k="s:originTrace" v="n:2341611946574947732" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1J" role="1B3o_S">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3cqZAl" id="1K" role="3clF45">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="37vLTG" id="1L" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3Tqbb2" id="2e" role="1tU5fm">
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="37vLTG" id="1M" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3uibUv" id="2f" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1f" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2g">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="2h" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="2i" role="1B3o_S" />
    <node concept="3clFbW" id="2j" role="jymVt">
      <node concept="3cqZAl" id="2m" role="3clF45" />
      <node concept="3Tm1VV" id="2n" role="1B3o_S" />
      <node concept="3clFbS" id="2o" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2k" role="jymVt" />
    <node concept="3clFb_" id="2l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="2p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="2q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="2r" role="1B3o_S" />
      <node concept="3uibUv" id="2s" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="2t" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="2w" role="1tU5fm" />
        <node concept="2AHcQZ" id="2x" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2u" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2y" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="2z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2v" role="3clF47">
        <node concept="1_3QMa" id="2$" role="3cqZAp">
          <node concept="37vLTw" id="2A" role="1_3QMn">
            <ref role="3cqZAo" node="2t" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="2B" role="1_3QMm">
            <node concept="3clFbS" id="2I" role="1pnPq1">
              <node concept="3cpWs6" id="2K" role="3cqZAp">
                <node concept="2ShNRf" id="2L" role="3cqZAk">
                  <node concept="1pGfFk" id="2M" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="ColumnRef_Constraints" />
                    <node concept="37vLTw" id="2N" role="37wK5m">
                      <ref role="3cqZAo" node="2u" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2J" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="1pnPoh" id="2C" role="1_3QMm">
            <node concept="3clFbS" id="2O" role="1pnPq1">
              <node concept="3cpWs6" id="2Q" role="3cqZAp">
                <node concept="2ShNRf" id="2R" role="3cqZAk">
                  <node concept="1pGfFk" id="2S" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="4c" resolve="OrderBy_Constraints" />
                    <node concept="37vLTw" id="2T" role="37wK5m">
                      <ref role="3cqZAo" node="2u" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2P" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:2G8vGeEou9h" resolve="OrderBy" />
            </node>
          </node>
          <node concept="1pnPoh" id="2D" role="1_3QMm">
            <node concept="3clFbS" id="2U" role="1pnPq1">
              <node concept="3cpWs6" id="2W" role="3cqZAp">
                <node concept="2ShNRf" id="2X" role="3cqZAk">
                  <node concept="1pGfFk" id="2Y" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="S" resolve="Column_Constraints" />
                    <node concept="37vLTw" id="2Z" role="37wK5m">
                      <ref role="3cqZAo" node="2u" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2V" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:14g3IsRh3GN" resolve="Column" />
            </node>
          </node>
          <node concept="1pnPoh" id="2E" role="1_3QMm">
            <node concept="3clFbS" id="30" role="1pnPq1">
              <node concept="3cpWs6" id="32" role="3cqZAp">
                <node concept="2ShNRf" id="33" role="3cqZAk">
                  <node concept="1pGfFk" id="34" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="4t" resolve="Select_Constraints" />
                    <node concept="37vLTw" id="35" role="37wK5m">
                      <ref role="3cqZAo" node="2u" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="31" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:66sUT0$8edT" resolve="Select" />
            </node>
          </node>
          <node concept="1pnPoh" id="2F" role="1_3QMm">
            <node concept="3clFbS" id="36" role="1pnPq1">
              <node concept="3cpWs6" id="38" role="3cqZAp">
                <node concept="2ShNRf" id="39" role="3cqZAk">
                  <node concept="1pGfFk" id="3a" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="8c" resolve="SimpleCondition_Constraints" />
                    <node concept="37vLTw" id="3b" role="37wK5m">
                      <ref role="3cqZAo" node="2u" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="37" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5VF6QK6AuCo" resolve="SimpleCondition" />
            </node>
          </node>
          <node concept="1pnPoh" id="2G" role="1_3QMm">
            <node concept="3clFbS" id="3c" role="1pnPq1">
              <node concept="3cpWs6" id="3e" role="3cqZAp">
                <node concept="2ShNRf" id="3f" role="3cqZAk">
                  <node concept="1pGfFk" id="3g" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="8t" resolve="TableReference_Constraints" />
                    <node concept="37vLTw" id="3h" role="37wK5m">
                      <ref role="3cqZAo" node="2u" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3d" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:21Z4UyPhvru" resolve="TableReference" />
            </node>
          </node>
          <node concept="3clFbS" id="2H" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="2_" role="3cqZAp">
          <node concept="10Nm6u" id="3i" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="3j">
    <node concept="39e2AJ" id="3k" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="3n" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:2sIU3umyTfy" resolve="ColumnRef_Constraints" />
        <node concept="385nmt" id="3t" role="385vvn">
          <property role="385vuF" value="ColumnRef_Constraints" />
          <node concept="3u3nmq" id="3v" role="385v07">
            <property role="3u3nmv" value="2823449341854454754" />
          </node>
        </node>
        <node concept="39e2AT" id="3u" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ColumnRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3o" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:21Z4UyPqhVY" resolve="Column_Constraints" />
        <node concept="385nmt" id="3w" role="385vvn">
          <property role="385vuF" value="Column_Constraints" />
          <node concept="3u3nmq" id="3y" role="385v07">
            <property role="3u3nmv" value="2341611946574946046" />
          </node>
        </node>
        <node concept="39e2AT" id="3x" role="39e2AY">
          <ref role="39e2AS" node="P" resolve="Column_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3p" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:2G8vGeEou9W" resolve="OrderBy_Constraints" />
        <node concept="385nmt" id="3z" role="385vvn">
          <property role="385vuF" value="OrderBy_Constraints" />
          <node concept="3u3nmq" id="3_" role="385v07">
            <property role="3u3nmv" value="3100867722286850684" />
          </node>
        </node>
        <node concept="39e2AT" id="3$" role="39e2AY">
          <ref role="39e2AS" node="49" resolve="OrderBy_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3q" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:HpRLxUp5ji" resolve="Select_Constraints" />
        <node concept="385nmt" id="3A" role="385vvn">
          <property role="385vuF" value="Select_Constraints" />
          <node concept="3u3nmq" id="3C" role="385v07">
            <property role="3u3nmv" value="817930103570060498" />
          </node>
        </node>
        <node concept="39e2AT" id="3B" role="39e2AY">
          <ref role="39e2AS" node="4q" resolve="Select_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3r" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:6w4sAgfAlZ0" resolve="SimpleCondition_Constraints" />
        <node concept="385nmt" id="3D" role="385vvn">
          <property role="385vuF" value="SimpleCondition_Constraints" />
          <node concept="3u3nmq" id="3F" role="385v07">
            <property role="3u3nmv" value="7495241453935353792" />
          </node>
        </node>
        <node concept="39e2AT" id="3E" role="39e2AY">
          <ref role="39e2AS" node="89" resolve="SimpleCondition_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3s" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:3Gp_4Vpb1Hz" resolve="TableReference_Constraints" />
        <node concept="385nmt" id="3G" role="385vvn">
          <property role="385vuF" value="TableReference_Constraints" />
          <node concept="3u3nmq" id="3I" role="385v07">
            <property role="3u3nmv" value="4258597989027421027" />
          </node>
        </node>
        <node concept="39e2AT" id="3H" role="39e2AY">
          <ref role="39e2AS" node="8q" resolve="TableReference_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3l" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="3J" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:2sIU3umyTfy" resolve="ColumnRef_Constraints" />
        <node concept="385nmt" id="3P" role="385vvn">
          <property role="385vuF" value="ColumnRef_Constraints" />
          <node concept="3u3nmq" id="3R" role="385v07">
            <property role="3u3nmv" value="2823449341854454754" />
          </node>
        </node>
        <node concept="39e2AT" id="3Q" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="ColumnRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3K" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:21Z4UyPqhVY" resolve="Column_Constraints" />
        <node concept="385nmt" id="3S" role="385vvn">
          <property role="385vuF" value="Column_Constraints" />
          <node concept="3u3nmq" id="3U" role="385v07">
            <property role="3u3nmv" value="2341611946574946046" />
          </node>
        </node>
        <node concept="39e2AT" id="3T" role="39e2AY">
          <ref role="39e2AS" node="S" resolve="Column_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3L" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:2G8vGeEou9W" resolve="OrderBy_Constraints" />
        <node concept="385nmt" id="3V" role="385vvn">
          <property role="385vuF" value="OrderBy_Constraints" />
          <node concept="3u3nmq" id="3X" role="385v07">
            <property role="3u3nmv" value="3100867722286850684" />
          </node>
        </node>
        <node concept="39e2AT" id="3W" role="39e2AY">
          <ref role="39e2AS" node="4c" resolve="OrderBy_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3M" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:HpRLxUp5ji" resolve="Select_Constraints" />
        <node concept="385nmt" id="3Y" role="385vvn">
          <property role="385vuF" value="Select_Constraints" />
          <node concept="3u3nmq" id="40" role="385v07">
            <property role="3u3nmv" value="817930103570060498" />
          </node>
        </node>
        <node concept="39e2AT" id="3Z" role="39e2AY">
          <ref role="39e2AS" node="4t" resolve="Select_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3N" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:6w4sAgfAlZ0" resolve="SimpleCondition_Constraints" />
        <node concept="385nmt" id="41" role="385vvn">
          <property role="385vuF" value="SimpleCondition_Constraints" />
          <node concept="3u3nmq" id="43" role="385v07">
            <property role="3u3nmv" value="7495241453935353792" />
          </node>
        </node>
        <node concept="39e2AT" id="42" role="39e2AY">
          <ref role="39e2AS" node="8c" resolve="SimpleCondition_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3O" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:3Gp_4Vpb1Hz" resolve="TableReference_Constraints" />
        <node concept="385nmt" id="44" role="385vvn">
          <property role="385vuF" value="TableReference_Constraints" />
          <node concept="3u3nmq" id="46" role="385v07">
            <property role="3u3nmv" value="4258597989027421027" />
          </node>
        </node>
        <node concept="39e2AT" id="45" role="39e2AY">
          <ref role="39e2AS" node="8t" resolve="TableReference_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3m" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="47" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="48" role="39e2AY">
          <ref role="39e2AS" node="2g" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="49">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="OrderBy_Constraints" />
    <uo k="s:originTrace" v="n:3100867722286850684" />
    <node concept="3Tm1VV" id="4a" role="1B3o_S">
      <uo k="s:originTrace" v="n:3100867722286850684" />
    </node>
    <node concept="3uibUv" id="4b" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3100867722286850684" />
    </node>
    <node concept="3clFbW" id="4c" role="jymVt">
      <uo k="s:originTrace" v="n:3100867722286850684" />
      <node concept="37vLTG" id="4e" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:3100867722286850684" />
        <node concept="3uibUv" id="4h" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:3100867722286850684" />
        </node>
      </node>
      <node concept="3cqZAl" id="4f" role="3clF45">
        <uo k="s:originTrace" v="n:3100867722286850684" />
      </node>
      <node concept="3clFbS" id="4g" role="3clF47">
        <uo k="s:originTrace" v="n:3100867722286850684" />
        <node concept="XkiVB" id="4i" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3100867722286850684" />
          <node concept="1BaE9c" id="4j" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="OrderBy$4F" />
            <uo k="s:originTrace" v="n:3100867722286850684" />
            <node concept="2YIFZM" id="4l" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3100867722286850684" />
              <node concept="11gdke" id="4m" role="37wK5m">
                <property role="11gdj1" value="26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
              <node concept="11gdke" id="4n" role="37wK5m">
                <property role="11gdj1" value="b522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
              <node concept="11gdke" id="4o" role="37wK5m">
                <property role="11gdj1" value="2b087ec3aa61e251L" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
              <node concept="Xl_RD" id="4p" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.OrderBy" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4k" role="37wK5m">
            <ref role="3cqZAo" node="4e" resolve="initContext" />
            <uo k="s:originTrace" v="n:3100867722286850684" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4d" role="jymVt">
      <uo k="s:originTrace" v="n:3100867722286850684" />
    </node>
  </node>
  <node concept="312cEu" id="4q">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="Select_Constraints" />
    <uo k="s:originTrace" v="n:817930103570060498" />
    <node concept="3Tm1VV" id="4r" role="1B3o_S">
      <uo k="s:originTrace" v="n:817930103570060498" />
    </node>
    <node concept="3uibUv" id="4s" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:817930103570060498" />
    </node>
    <node concept="3clFbW" id="4t" role="jymVt">
      <uo k="s:originTrace" v="n:817930103570060498" />
      <node concept="37vLTG" id="4w" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3uibUv" id="4z" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
      </node>
      <node concept="3cqZAl" id="4x" role="3clF45">
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
      <node concept="3clFbS" id="4y" role="3clF47">
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="XkiVB" id="4$" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="1BaE9c" id="4A" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Select$Te" />
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="2YIFZM" id="4C" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="11gdke" id="4D" role="37wK5m">
                <property role="11gdj1" value="26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="11gdke" id="4E" role="37wK5m">
                <property role="11gdj1" value="b522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="11gdke" id="4F" role="37wK5m">
                <property role="11gdj1" value="619ceb902420e379L" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="Xl_RD" id="4G" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.Select" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4B" role="37wK5m">
            <ref role="3cqZAo" node="4w" resolve="initContext" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="3clFbF" id="4_" role="3cqZAp">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="1rXfSq" id="4H" role="3clFbG">
            <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="2ShNRf" id="4I" role="37wK5m">
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="1pGfFk" id="4J" role="2ShVmc">
                <ref role="37wK5l" node="4L" resolve="Select_Constraints.ViewName_PD" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="Xjq3P" id="4K" role="37wK5m">
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4u" role="jymVt">
      <uo k="s:originTrace" v="n:817930103570060498" />
    </node>
    <node concept="312cEu" id="4v" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="ViewName_PD" />
      <uo k="s:originTrace" v="n:817930103570060498" />
      <node concept="3clFbW" id="4L" role="jymVt">
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3cqZAl" id="4P" role="3clF45">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3Tm1VV" id="4Q" role="1B3o_S">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3clFbS" id="4R" role="3clF47">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="XkiVB" id="4T" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="1BaE9c" id="4U" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="viewName$yY2f" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="2YIFZM" id="4Z" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="11gdke" id="50" role="37wK5m">
                  <property role="11gdj1" value="26d1395b1ee643adL" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="11gdke" id="51" role="37wK5m">
                  <property role="11gdj1" value="b522c0cdd699ded3L" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="11gdke" id="52" role="37wK5m">
                  <property role="11gdj1" value="619ceb902420e379L" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="11gdke" id="53" role="37wK5m">
                  <property role="11gdj1" value="7642dbf63a87dc6eL" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="Xl_RD" id="54" role="37wK5m">
                  <property role="Xl_RC" value="viewName" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4V" role="37wK5m">
              <ref role="3cqZAo" node="4S" resolve="container" />
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="3clFbT" id="4W" role="37wK5m">
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="3clFbT" id="4X" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="3clFbT" id="4Y" role="37wK5m">
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4S" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3uibUv" id="55" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4M" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3Tm1VV" id="56" role="1B3o_S">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3cqZAl" id="57" role="3clF45">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="37vLTG" id="58" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3Tqbb2" id="5c" role="1tU5fm">
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="37vLTG" id="59" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3uibUv" id="5d" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5a" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3clFbS" id="5b" role="3clF47">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3clFbF" id="5e" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="1rXfSq" id="5f" role="3clFbG">
              <ref role="37wK5l" node="4N" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="37vLTw" id="5g" role="37wK5m">
                <ref role="3cqZAo" node="58" resolve="node" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="2YIFZM" id="5h" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="37vLTw" id="5i" role="37wK5m">
                  <ref role="3cqZAo" node="59" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="4N" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3clFbS" id="5j" role="3clF47">
          <uo k="s:originTrace" v="n:817930103570060555" />
          <node concept="3clFbH" id="5o" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103573559240" />
          </node>
          <node concept="3clFbJ" id="5p" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103573560271" />
            <node concept="3clFbS" id="5$" role="3clFbx">
              <uo k="s:originTrace" v="n:817930103573560273" />
              <node concept="3clFbF" id="5A" role="3cqZAp">
                <uo k="s:originTrace" v="n:817930103574113425" />
                <node concept="37vLTI" id="5G" role="3clFbG">
                  <uo k="s:originTrace" v="n:817930103574125358" />
                  <node concept="37vLTw" id="5H" role="37vLTx">
                    <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:817930103574127743" />
                  </node>
                  <node concept="2OqwBi" id="5I" role="37vLTJ">
                    <uo k="s:originTrace" v="n:817930103574118917" />
                    <node concept="2OqwBi" id="5J" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:817930103574115519" />
                      <node concept="37vLTw" id="5L" role="2Oq$k0">
                        <ref role="3cqZAo" node="5m" resolve="node" />
                        <uo k="s:originTrace" v="n:817930103574113424" />
                      </node>
                      <node concept="3TrEf2" id="5M" role="2OqNvi">
                        <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                        <uo k="s:originTrace" v="n:817930103574118075" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5K" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:817930103574120199" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5B" role="3cqZAp">
                <uo k="s:originTrace" v="n:817930103574129403" />
                <node concept="37vLTI" id="5N" role="3clFbG">
                  <uo k="s:originTrace" v="n:817930103574139406" />
                  <node concept="37vLTw" id="5O" role="37vLTx">
                    <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:817930103574140474" />
                  </node>
                  <node concept="2OqwBi" id="5P" role="37vLTJ">
                    <uo k="s:originTrace" v="n:817930103574131517" />
                    <node concept="37vLTw" id="5Q" role="2Oq$k0">
                      <ref role="3cqZAo" node="5m" resolve="node" />
                      <uo k="s:originTrace" v="n:817930103574129402" />
                    </node>
                    <node concept="3TrcHB" id="5R" role="2OqNvi">
                      <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="viewName" />
                      <uo k="s:originTrace" v="n:817930103574134260" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5C" role="3cqZAp">
                <uo k="s:originTrace" v="n:7824142728408665482" />
              </node>
              <node concept="2Gpval" id="5D" role="3cqZAp">
                <uo k="s:originTrace" v="n:7824142728408669302" />
                <node concept="2GrKxI" id="5S" role="2Gsz3X">
                  <property role="TrG5h" value="col" />
                  <uo k="s:originTrace" v="n:7824142728408669304" />
                </node>
                <node concept="2OqwBi" id="5T" role="2GsD0m">
                  <uo k="s:originTrace" v="n:7824142728408675911" />
                  <node concept="2OqwBi" id="5V" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7824142728408671187" />
                    <node concept="37vLTw" id="5X" role="2Oq$k0">
                      <ref role="3cqZAo" node="5m" resolve="node" />
                      <uo k="s:originTrace" v="n:7824142728408670335" />
                    </node>
                    <node concept="3TrEf2" id="5Y" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                      <uo k="s:originTrace" v="n:7824142728408673623" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5W" role="2OqNvi">
                    <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                    <uo k="s:originTrace" v="n:7824142728408677061" />
                  </node>
                </node>
                <node concept="3clFbS" id="5U" role="2LFqv$">
                  <uo k="s:originTrace" v="n:7824142728408669308" />
                  <node concept="3clFbF" id="5Z" role="3cqZAp">
                    <uo k="s:originTrace" v="n:7824142728408677354" />
                    <node concept="37vLTI" id="60" role="3clFbG">
                      <uo k="s:originTrace" v="n:7824142728408692225" />
                      <node concept="3cpWs3" id="61" role="37vLTx">
                        <uo k="s:originTrace" v="n:7824142728408703765" />
                        <node concept="AH0OO" id="63" role="3uHU7w">
                          <uo k="s:originTrace" v="n:7824142728408726454" />
                          <node concept="3cmrfG" id="65" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                            <uo k="s:originTrace" v="n:7824142728408726472" />
                          </node>
                          <node concept="2OqwBi" id="66" role="AHHXb">
                            <uo k="s:originTrace" v="n:7824142728408719007" />
                            <node concept="2OqwBi" id="67" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:7824142728408708451" />
                              <node concept="2GrUjf" id="69" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="5S" resolve="col" />
                                <uo k="s:originTrace" v="n:7824142728408705833" />
                              </node>
                              <node concept="3TrcHB" id="6a" role="2OqNvi">
                                <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                <uo k="s:originTrace" v="n:7824142728408714303" />
                              </node>
                            </node>
                            <node concept="liA8E" id="68" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                              <uo k="s:originTrace" v="n:7824142728408723054" />
                              <node concept="Xl_RD" id="6b" role="37wK5m">
                                <property role="Xl_RC" value="\\." />
                                <uo k="s:originTrace" v="n:7824142728408723226" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="64" role="3uHU7B">
                          <uo k="s:originTrace" v="n:7824142728408699578" />
                          <node concept="37vLTw" id="6c" role="3uHU7B">
                            <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                            <uo k="s:originTrace" v="n:7824142728408693321" />
                          </node>
                          <node concept="Xl_RD" id="6d" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                            <uo k="s:originTrace" v="n:7824142728408700628" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="62" role="37vLTJ">
                        <uo k="s:originTrace" v="n:7824142728408678063" />
                        <node concept="2GrUjf" id="6e" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="5S" resolve="col" />
                          <uo k="s:originTrace" v="n:7824142728408677353" />
                        </node>
                        <node concept="3TrcHB" id="6f" role="2OqNvi">
                          <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                          <uo k="s:originTrace" v="n:7824142728408681393" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5E" role="3cqZAp">
                <uo k="s:originTrace" v="n:7824142728408665500" />
              </node>
              <node concept="3cpWs6" id="5F" role="3cqZAp">
                <uo k="s:originTrace" v="n:817930103574142453" />
              </node>
            </node>
            <node concept="2OqwBi" id="5_" role="3clFbw">
              <uo k="s:originTrace" v="n:817930103573569695" />
              <node concept="2OqwBi" id="6g" role="2Oq$k0">
                <uo k="s:originTrace" v="n:817930103573562941" />
                <node concept="37vLTw" id="6i" role="2Oq$k0">
                  <ref role="3cqZAo" node="5m" resolve="node" />
                  <uo k="s:originTrace" v="n:817930103573561958" />
                </node>
                <node concept="3TrcHB" id="6j" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="viewName" />
                  <uo k="s:originTrace" v="n:817930103573564382" />
                </node>
              </node>
              <node concept="17RvpY" id="6h" role="2OqNvi">
                <uo k="s:originTrace" v="n:817930103573577327" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5q" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570940797" />
          </node>
          <node concept="3clFbF" id="5r" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570943090" />
            <node concept="37vLTI" id="6k" role="3clFbG">
              <uo k="s:originTrace" v="n:817930103570957686" />
              <node concept="37vLTw" id="6l" role="37vLTx">
                <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:817930103570958750" />
              </node>
              <node concept="2OqwBi" id="6m" role="37vLTJ">
                <uo k="s:originTrace" v="n:817930103570945325" />
                <node concept="37vLTw" id="6n" role="2Oq$k0">
                  <ref role="3cqZAo" node="5m" resolve="node" />
                  <uo k="s:originTrace" v="n:817930103570943089" />
                </node>
                <node concept="3TrcHB" id="6o" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="viewName" />
                  <uo k="s:originTrace" v="n:817930103570947478" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5s" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570940873" />
          </node>
          <node concept="3cpWs8" id="5t" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570060792" />
            <node concept="3cpWsn" id="6p" role="3cpWs9">
              <property role="TrG5h" value="newTable" />
              <uo k="s:originTrace" v="n:817930103570060795" />
              <node concept="3Tqbb2" id="6q" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                <uo k="s:originTrace" v="n:817930103570060791" />
              </node>
              <node concept="2ShNRf" id="6r" role="33vP2m">
                <uo k="s:originTrace" v="n:817930103570060932" />
                <node concept="3zrR0B" id="6s" role="2ShVmc">
                  <uo k="s:originTrace" v="n:817930103570060930" />
                  <node concept="3Tqbb2" id="6t" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                    <uo k="s:originTrace" v="n:817930103570060931" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5u" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103572494573" />
            <node concept="37vLTI" id="6u" role="3clFbG">
              <uo k="s:originTrace" v="n:817930103572502712" />
              <node concept="37vLTw" id="6v" role="37vLTx">
                <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:817930103572503772" />
              </node>
              <node concept="2OqwBi" id="6w" role="37vLTJ">
                <uo k="s:originTrace" v="n:817930103572496468" />
                <node concept="37vLTw" id="6x" role="2Oq$k0">
                  <ref role="3cqZAo" node="6p" resolve="newTable" />
                  <uo k="s:originTrace" v="n:817930103572494571" />
                </node>
                <node concept="3TrcHB" id="6y" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:817930103572497589" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5v" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103572503811" />
          </node>
          <node concept="2Gpval" id="5w" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570061075" />
            <node concept="2GrKxI" id="6z" role="2Gsz3X">
              <property role="TrG5h" value="col" />
              <uo k="s:originTrace" v="n:817930103570061077" />
            </node>
            <node concept="2OqwBi" id="6$" role="2GsD0m">
              <uo k="s:originTrace" v="n:817930103570062006" />
              <node concept="37vLTw" id="6A" role="2Oq$k0">
                <ref role="3cqZAo" node="5m" resolve="node" />
                <uo k="s:originTrace" v="n:817930103570061154" />
              </node>
              <node concept="3Tsc0h" id="6B" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:UaVdqMlpcc" resolve="cols" />
                <uo k="s:originTrace" v="n:817930103570063185" />
              </node>
            </node>
            <node concept="3clFbS" id="6_" role="2LFqv$">
              <uo k="s:originTrace" v="n:817930103570061081" />
              <node concept="Jncv_" id="6C" role="3cqZAp">
                <ref role="JncvD" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
                <uo k="s:originTrace" v="n:817930103570063926" />
                <node concept="2GrUjf" id="6E" role="JncvB">
                  <ref role="2Gs0qQ" node="6z" resolve="col" />
                  <uo k="s:originTrace" v="n:817930103570063968" />
                </node>
                <node concept="3clFbS" id="6F" role="Jncv$">
                  <uo k="s:originTrace" v="n:817930103570063928" />
                  <node concept="3clFbF" id="6H" role="3cqZAp">
                    <uo k="s:originTrace" v="n:7824142728408016739" />
                    <node concept="37vLTI" id="6J" role="3clFbG">
                      <uo k="s:originTrace" v="n:7824142728408031035" />
                      <node concept="3cpWs3" id="6K" role="37vLTx">
                        <uo k="s:originTrace" v="n:7824142728408042751" />
                        <node concept="AH0OO" id="6M" role="3uHU7w">
                          <uo k="s:originTrace" v="n:7824142728408077757" />
                          <node concept="3cmrfG" id="6O" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                            <uo k="s:originTrace" v="n:7824142728408079555" />
                          </node>
                          <node concept="2OqwBi" id="6P" role="AHHXb">
                            <uo k="s:originTrace" v="n:7824142728408062387" />
                            <node concept="2OqwBi" id="6Q" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:7824142728408050739" />
                              <node concept="2OqwBi" id="6S" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:7824142728408045527" />
                                <node concept="Jnkvi" id="6U" role="2Oq$k0">
                                  <ref role="1M0zk5" node="6G" resolve="columnRef" />
                                  <uo k="s:originTrace" v="n:7824142728408043819" />
                                </node>
                                <node concept="3TrEf2" id="6V" role="2OqNvi">
                                  <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                                  <uo k="s:originTrace" v="n:7824142728408048878" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="6T" role="2OqNvi">
                                <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                <uo k="s:originTrace" v="n:7824142728408054839" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6R" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                              <uo k="s:originTrace" v="n:7824142728408072338" />
                              <node concept="Xl_RD" id="6W" role="37wK5m">
                                <property role="Xl_RC" value="\\." />
                                <uo k="s:originTrace" v="n:7824142728408074078" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="6N" role="3uHU7B">
                          <uo k="s:originTrace" v="n:7824142728408034424" />
                          <node concept="37vLTw" id="6X" role="3uHU7B">
                            <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                            <uo k="s:originTrace" v="n:7824142728408034371" />
                          </node>
                          <node concept="Xl_RD" id="6Y" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                            <uo k="s:originTrace" v="n:7824142728408036617" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6L" role="37vLTJ">
                        <uo k="s:originTrace" v="n:7824142728408022356" />
                        <node concept="2OqwBi" id="6Z" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:7824142728408019419" />
                          <node concept="Jnkvi" id="71" role="2Oq$k0">
                            <ref role="1M0zk5" node="6G" resolve="columnRef" />
                            <uo k="s:originTrace" v="n:7824142728408016737" />
                          </node>
                          <node concept="3TrEf2" id="72" role="2OqNvi">
                            <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                            <uo k="s:originTrace" v="n:7824142728408021565" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="70" role="2OqNvi">
                          <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                          <uo k="s:originTrace" v="n:7824142728408025756" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6I" role="3cqZAp">
                    <uo k="s:originTrace" v="n:817930103570065121" />
                    <node concept="2OqwBi" id="73" role="3clFbG">
                      <uo k="s:originTrace" v="n:817930103570078616" />
                      <node concept="2OqwBi" id="74" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:817930103570065917" />
                        <node concept="37vLTw" id="76" role="2Oq$k0">
                          <ref role="3cqZAo" node="6p" resolve="newTable" />
                          <uo k="s:originTrace" v="n:817930103570065120" />
                        </node>
                        <node concept="3Tsc0h" id="77" role="2OqNvi">
                          <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                          <uo k="s:originTrace" v="n:817930103570066935" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="75" role="2OqNvi">
                        <uo k="s:originTrace" v="n:817930103570101453" />
                        <node concept="2OqwBi" id="78" role="25WWJ7">
                          <uo k="s:originTrace" v="n:817930103571978581" />
                          <node concept="2OqwBi" id="79" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:817930103570102802" />
                            <node concept="Jnkvi" id="7b" role="2Oq$k0">
                              <ref role="1M0zk5" node="6G" resolve="columnRef" />
                              <uo k="s:originTrace" v="n:817930103570101716" />
                            </node>
                            <node concept="3TrEf2" id="7c" role="2OqNvi">
                              <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                              <uo k="s:originTrace" v="n:817930103570104363" />
                            </node>
                          </node>
                          <node concept="1$rogu" id="7a" role="2OqNvi">
                            <uo k="s:originTrace" v="n:817930103571982466" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="JncvC" id="6G" role="JncvA">
                  <property role="TrG5h" value="columnRef" />
                  <uo k="s:originTrace" v="n:817930103570063929" />
                  <node concept="2jxLKc" id="7d" role="1tU5fm">
                    <uo k="s:originTrace" v="n:817930103570063930" />
                  </node>
                </node>
              </node>
              <node concept="Jncv_" id="6D" role="3cqZAp">
                <ref role="JncvD" to="p6im:UaVdqMkpsj" resolve="AllColumns" />
                <uo k="s:originTrace" v="n:817930103570105038" />
                <node concept="2GrUjf" id="7e" role="JncvB">
                  <ref role="2Gs0qQ" node="6z" resolve="col" />
                  <uo k="s:originTrace" v="n:817930103570105102" />
                </node>
                <node concept="3clFbS" id="7f" role="Jncv$">
                  <uo k="s:originTrace" v="n:817930103570105042" />
                  <node concept="2Gpval" id="7h" role="3cqZAp">
                    <uo k="s:originTrace" v="n:817930103570317460" />
                    <node concept="2GrKxI" id="7i" role="2Gsz3X">
                      <property role="TrG5h" value="column" />
                      <uo k="s:originTrace" v="n:817930103570317462" />
                    </node>
                    <node concept="2OqwBi" id="7j" role="2GsD0m">
                      <uo k="s:originTrace" v="n:817930103570357143" />
                      <node concept="2OqwBi" id="7l" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:817930103570349006" />
                        <node concept="2OqwBi" id="7n" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:817930103570327923" />
                          <node concept="2OqwBi" id="7p" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:817930103570318414" />
                            <node concept="37vLTw" id="7r" role="2Oq$k0">
                              <ref role="3cqZAo" node="5m" resolve="node" />
                              <uo k="s:originTrace" v="n:817930103570317562" />
                            </node>
                            <node concept="3Tsc0h" id="7s" role="2OqNvi">
                              <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                              <uo k="s:originTrace" v="n:817930103570319852" />
                            </node>
                          </node>
                          <node concept="34jXtK" id="7q" role="2OqNvi">
                            <uo k="s:originTrace" v="n:817930103570348089" />
                            <node concept="3cmrfG" id="7t" role="25WWJ7">
                              <property role="3cmrfH" value="0" />
                              <uo k="s:originTrace" v="n:817930103570348296" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7o" role="2OqNvi">
                          <ref role="3Tt5mk" to="p6im:21Z4UyPhvrv" resolve="tableRef" />
                          <uo k="s:originTrace" v="n:817930103570355734" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="7m" role="2OqNvi">
                        <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                        <uo k="s:originTrace" v="n:817930103570358526" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7k" role="2LFqv$">
                      <uo k="s:originTrace" v="n:817930103570317466" />
                      <node concept="3clFbJ" id="7u" role="3cqZAp">
                        <uo k="s:originTrace" v="n:817930103570278346" />
                        <node concept="3fqX7Q" id="7v" role="3clFbw">
                          <uo k="s:originTrace" v="n:817930103570317225" />
                          <node concept="2OqwBi" id="7x" role="3fr31v">
                            <uo k="s:originTrace" v="n:817930103570317227" />
                            <node concept="2OqwBi" id="7y" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:817930103570317228" />
                              <node concept="37vLTw" id="7$" role="2Oq$k0">
                                <ref role="3cqZAo" node="6p" resolve="newTable" />
                                <uo k="s:originTrace" v="n:817930103570317229" />
                              </node>
                              <node concept="3Tsc0h" id="7_" role="2OqNvi">
                                <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                                <uo k="s:originTrace" v="n:817930103570317230" />
                              </node>
                            </node>
                            <node concept="3JPx81" id="7z" role="2OqNvi">
                              <uo k="s:originTrace" v="n:817930103570317231" />
                              <node concept="2GrUjf" id="7A" role="25WWJ7">
                                <ref role="2Gs0qQ" node="7i" resolve="column" />
                                <uo k="s:originTrace" v="n:817930103570359431" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7w" role="3clFbx">
                          <uo k="s:originTrace" v="n:817930103570278348" />
                          <node concept="3clFbF" id="7B" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7824142728408082874" />
                            <node concept="37vLTI" id="7D" role="3clFbG">
                              <uo k="s:originTrace" v="n:7824142728408103700" />
                              <node concept="2OqwBi" id="7E" role="37vLTJ">
                                <uo k="s:originTrace" v="n:7824142728408086790" />
                                <node concept="2GrUjf" id="7G" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7i" resolve="column" />
                                  <uo k="s:originTrace" v="n:7824142728408082872" />
                                </node>
                                <node concept="3TrcHB" id="7H" role="2OqNvi">
                                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                  <uo k="s:originTrace" v="n:7824142728408097653" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="7F" role="37vLTx">
                                <uo k="s:originTrace" v="n:7824142728408118094" />
                                <node concept="AH0OO" id="7I" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:7824142728408150997" />
                                  <node concept="3cmrfG" id="7K" role="AHEQo">
                                    <property role="3cmrfH" value="1" />
                                    <uo k="s:originTrace" v="n:7824142728408151015" />
                                  </node>
                                  <node concept="2OqwBi" id="7L" role="AHHXb">
                                    <uo k="s:originTrace" v="n:7824142728408140920" />
                                    <node concept="2OqwBi" id="7M" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:7824142728408121780" />
                                      <node concept="2GrUjf" id="7O" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="7i" resolve="column" />
                                        <uo k="s:originTrace" v="n:7824142728408119162" />
                                      </node>
                                      <node concept="3TrcHB" id="7P" role="2OqNvi">
                                        <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                        <uo k="s:originTrace" v="n:7824142728408135139" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7N" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                                      <uo k="s:originTrace" v="n:7824142728408146129" />
                                      <node concept="Xl_RD" id="7Q" role="37wK5m">
                                        <property role="Xl_RC" value="\\." />
                                        <uo k="s:originTrace" v="n:7824142728408146951" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="7J" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:7824142728408114923" />
                                  <node concept="37vLTw" id="7R" role="3uHU7B">
                                    <ref role="3cqZAo" node="5n" resolve="propertyValue" />
                                    <uo k="s:originTrace" v="n:7824142728408109809" />
                                  </node>
                                  <node concept="Xl_RD" id="7S" role="3uHU7w">
                                    <property role="Xl_RC" value="." />
                                    <uo k="s:originTrace" v="n:7824142728408114968" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="7C" role="3cqZAp">
                            <uo k="s:originTrace" v="n:817930103570359620" />
                            <node concept="2OqwBi" id="7T" role="3clFbG">
                              <uo k="s:originTrace" v="n:817930103570373341" />
                              <node concept="2OqwBi" id="7U" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:817930103570360416" />
                                <node concept="37vLTw" id="7W" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6p" resolve="newTable" />
                                  <uo k="s:originTrace" v="n:817930103570359619" />
                                </node>
                                <node concept="3Tsc0h" id="7X" role="2OqNvi">
                                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                                  <uo k="s:originTrace" v="n:817930103570361660" />
                                </node>
                              </node>
                              <node concept="TSZUe" id="7V" role="2OqNvi">
                                <uo k="s:originTrace" v="n:817930103570396178" />
                                <node concept="2OqwBi" id="7Y" role="25WWJ7">
                                  <uo k="s:originTrace" v="n:817930103571982566" />
                                  <node concept="2GrUjf" id="7Z" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7i" resolve="column" />
                                    <uo k="s:originTrace" v="n:817930103570396536" />
                                  </node>
                                  <node concept="1$rogu" id="80" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:817930103571987181" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="JncvC" id="7g" role="JncvA">
                  <property role="TrG5h" value="allColumns" />
                  <uo k="s:originTrace" v="n:817930103570105044" />
                  <node concept="2jxLKc" id="81" role="1tU5fm">
                    <uo k="s:originTrace" v="n:817930103570105045" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5x" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570397296" />
          </node>
          <node concept="3clFbF" id="5y" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103574105386" />
            <node concept="37vLTI" id="82" role="3clFbG">
              <uo k="s:originTrace" v="n:817930103574111086" />
              <node concept="37vLTw" id="83" role="37vLTx">
                <ref role="3cqZAo" node="6p" resolve="newTable" />
                <uo k="s:originTrace" v="n:817930103574111289" />
              </node>
              <node concept="2OqwBi" id="84" role="37vLTJ">
                <uo k="s:originTrace" v="n:817930103574107484" />
                <node concept="37vLTw" id="85" role="2Oq$k0">
                  <ref role="3cqZAo" node="5m" resolve="node" />
                  <uo k="s:originTrace" v="n:817930103574105385" />
                </node>
                <node concept="3TrEf2" id="86" role="2OqNvi">
                  <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                  <uo k="s:originTrace" v="n:817930103574110247" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5z" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570277126" />
          </node>
        </node>
        <node concept="3Tm6S6" id="5k" role="1B3o_S">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3cqZAl" id="5l" role="3clF45">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="37vLTG" id="5m" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3Tqbb2" id="87" role="1tU5fm">
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="37vLTG" id="5n" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3uibUv" id="88" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4O" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="89">
    <property role="3GE5qa" value="where.condition" />
    <property role="TrG5h" value="SimpleCondition_Constraints" />
    <uo k="s:originTrace" v="n:7495241453935353792" />
    <node concept="3Tm1VV" id="8a" role="1B3o_S">
      <uo k="s:originTrace" v="n:7495241453935353792" />
    </node>
    <node concept="3uibUv" id="8b" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7495241453935353792" />
    </node>
    <node concept="3clFbW" id="8c" role="jymVt">
      <uo k="s:originTrace" v="n:7495241453935353792" />
      <node concept="37vLTG" id="8e" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7495241453935353792" />
        <node concept="3uibUv" id="8h" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7495241453935353792" />
        </node>
      </node>
      <node concept="3cqZAl" id="8f" role="3clF45">
        <uo k="s:originTrace" v="n:7495241453935353792" />
      </node>
      <node concept="3clFbS" id="8g" role="3clF47">
        <uo k="s:originTrace" v="n:7495241453935353792" />
        <node concept="XkiVB" id="8i" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7495241453935353792" />
          <node concept="1BaE9c" id="8j" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SimpleCondition$89" />
            <uo k="s:originTrace" v="n:7495241453935353792" />
            <node concept="2YIFZM" id="8l" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7495241453935353792" />
              <node concept="11gdke" id="8m" role="37wK5m">
                <property role="11gdj1" value="26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
              <node concept="11gdke" id="8n" role="37wK5m">
                <property role="11gdj1" value="b522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
              <node concept="11gdke" id="8o" role="37wK5m">
                <property role="11gdj1" value="5eeb1b6c0699ea18L" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
              <node concept="Xl_RD" id="8p" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.SimpleCondition" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="8k" role="37wK5m">
            <ref role="3cqZAo" node="8e" resolve="initContext" />
            <uo k="s:originTrace" v="n:7495241453935353792" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8d" role="jymVt">
      <uo k="s:originTrace" v="n:7495241453935353792" />
    </node>
  </node>
  <node concept="312cEu" id="8q">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="TableReference_Constraints" />
    <uo k="s:originTrace" v="n:4258597989027421027" />
    <node concept="3Tm1VV" id="8r" role="1B3o_S">
      <uo k="s:originTrace" v="n:4258597989027421027" />
    </node>
    <node concept="3uibUv" id="8s" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4258597989027421027" />
    </node>
    <node concept="3clFbW" id="8t" role="jymVt">
      <uo k="s:originTrace" v="n:4258597989027421027" />
      <node concept="37vLTG" id="8w" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="3uibUv" id="8z" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
      </node>
      <node concept="3cqZAl" id="8x" role="3clF45">
        <uo k="s:originTrace" v="n:4258597989027421027" />
      </node>
      <node concept="3clFbS" id="8y" role="3clF47">
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="XkiVB" id="8$" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="1BaE9c" id="8A" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TableReference$DN" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="2YIFZM" id="8C" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="11gdke" id="8D" role="37wK5m">
                <property role="11gdj1" value="26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="11gdke" id="8E" role="37wK5m">
                <property role="11gdj1" value="b522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="11gdke" id="8F" role="37wK5m">
                <property role="11gdj1" value="207f13a8b545f6deL" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="Xl_RD" id="8G" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.TableReference" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="8B" role="37wK5m">
            <ref role="3cqZAo" node="8w" resolve="initContext" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
          </node>
        </node>
        <node concept="3clFbF" id="8_" role="3cqZAp">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="1rXfSq" id="8H" role="3clFbG">
            <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="2ShNRf" id="8I" role="37wK5m">
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="1pGfFk" id="8J" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="8L" resolve="TableReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
                <node concept="Xjq3P" id="8K" role="37wK5m">
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8u" role="jymVt">
      <uo k="s:originTrace" v="n:4258597989027421027" />
    </node>
    <node concept="312cEu" id="8v" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4258597989027421027" />
      <node concept="3clFbW" id="8L" role="jymVt">
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="37vLTG" id="8O" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="3uibUv" id="8R" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
          </node>
        </node>
        <node concept="3cqZAl" id="8P" role="3clF45">
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
        <node concept="3clFbS" id="8Q" role="3clF47">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="XkiVB" id="8S" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="1BaE9c" id="8T" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="tableRef$boeY" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="2YIFZM" id="8X" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
                <node concept="11gdke" id="8Y" role="37wK5m">
                  <property role="11gdj1" value="26d1395b1ee643adL" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
                <node concept="11gdke" id="8Z" role="37wK5m">
                  <property role="11gdj1" value="b522c0cdd699ded3L" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
                <node concept="11gdke" id="90" role="37wK5m">
                  <property role="11gdj1" value="207f13a8b545f6deL" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
                <node concept="11gdke" id="91" role="37wK5m">
                  <property role="11gdj1" value="207f13a8b545f6dfL" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
                <node concept="Xl_RD" id="92" role="37wK5m">
                  <property role="Xl_RC" value="tableRef" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="8U" role="37wK5m">
              <ref role="3cqZAo" node="8O" resolve="container" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
            </node>
            <node concept="3clFbT" id="8V" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
            </node>
            <node concept="3clFbT" id="8W" role="37wK5m">
              <uo k="s:originTrace" v="n:4258597989027421027" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="8M" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="3Tm1VV" id="93" role="1B3o_S">
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
        <node concept="3uibUv" id="94" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
        <node concept="2AHcQZ" id="95" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
        <node concept="3clFbS" id="96" role="3clF47">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="3cpWs6" id="98" role="3cqZAp">
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="2YIFZM" id="99" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:4258597989027530045" />
              <node concept="35c_gC" id="9a" role="37wK5m">
                <ref role="35c_gD" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                <uo k="s:originTrace" v="n:4258597989027530045" />
              </node>
              <node concept="2ShNRf" id="9b" role="37wK5m">
                <uo k="s:originTrace" v="n:4258597989027530045" />
                <node concept="1pGfFk" id="9c" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:4258597989027530045" />
                  <node concept="Xl_RD" id="9d" role="37wK5m">
                    <property role="Xl_RC" value="r:7edf4f40-f81a-49df-87e2-b00351b83558(QueryLanguage.constraints)" />
                    <uo k="s:originTrace" v="n:4258597989027530045" />
                  </node>
                  <node concept="Xl_RD" id="9e" role="37wK5m">
                    <property role="Xl_RC" value="4258597989027530045" />
                    <uo k="s:originTrace" v="n:4258597989027530045" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="97" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
      </node>
      <node concept="3uibUv" id="8N" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4258597989027421027" />
      </node>
    </node>
  </node>
</model>

