<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f07d253(checkpoints/QueryLanguage.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="bkxw" ref="r:7edf4f40-f81a-49df-87e2-b00351b83558(QueryLanguage.constraints)" />
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ze1j" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
      </concept>
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
      <node concept="3cqZAl" id="6" role="3clF45">
        <uo k="s:originTrace" v="n:2823449341854454754" />
      </node>
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="XkiVB" id="9" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="1BaE9c" id="a" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ColumnRef$XM" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="2YIFZM" id="b" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="1adDum" id="c" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="1adDum" id="d" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="1adDum" id="e" role="37wK5m">
                <property role="1adDun" value="0x11100ee7375157f4L" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="Xl_RD" id="f" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.ColumnRef" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8" role="1B3o_S">
        <uo k="s:originTrace" v="n:2823449341854454754" />
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:2823449341854454754" />
    </node>
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedReferences" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:2823449341854454754" />
      <node concept="3Tmbuc" id="g" role="1B3o_S">
        <uo k="s:originTrace" v="n:2823449341854454754" />
      </node>
      <node concept="3uibUv" id="h" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="3uibUv" id="k" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
        <node concept="3uibUv" id="l" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2823449341854454754" />
        </node>
      </node>
      <node concept="3clFbS" id="i" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341854454754" />
        <node concept="3cpWs8" id="m" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="3cpWsn" id="q" role="3cpWs9">
            <property role="TrG5h" value="d0" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="3uibUv" id="r" role="1tU5fm">
              <ref role="3uigEE" to="79pl:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
            </node>
            <node concept="2ShNRf" id="s" role="33vP2m">
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="YeOm9" id="t" role="2ShVmc">
                <uo k="s:originTrace" v="n:2823449341854454754" />
                <node concept="1Y3b0j" id="u" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pl:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pl:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                  <node concept="1BaE9c" id="v" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="column$Wyeu" />
                    <uo k="s:originTrace" v="n:2823449341854454754" />
                    <node concept="2YIFZM" id="_" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:2823449341854454754" />
                      <node concept="1adDum" id="A" role="37wK5m">
                        <property role="1adDun" value="0x26d1395b1ee643adL" />
                        <uo k="s:originTrace" v="n:2823449341854454754" />
                      </node>
                      <node concept="1adDum" id="B" role="37wK5m">
                        <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        <uo k="s:originTrace" v="n:2823449341854454754" />
                      </node>
                      <node concept="1adDum" id="C" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375157f4L" />
                        <uo k="s:originTrace" v="n:2823449341854454754" />
                      </node>
                      <node concept="1adDum" id="D" role="37wK5m">
                        <property role="1adDun" value="0x11100ee7375157f5L" />
                        <uo k="s:originTrace" v="n:2823449341854454754" />
                      </node>
                      <node concept="Xl_RD" id="E" role="37wK5m">
                        <property role="Xl_RC" value="column" />
                        <uo k="s:originTrace" v="n:2823449341854454754" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="w" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2823449341854454754" />
                  </node>
                  <node concept="Xjq3P" id="x" role="37wK5m">
                    <uo k="s:originTrace" v="n:2823449341854454754" />
                  </node>
                  <node concept="3clFbT" id="y" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:2823449341854454754" />
                  </node>
                  <node concept="3clFbT" id="z" role="37wK5m">
                    <uo k="s:originTrace" v="n:2823449341854454754" />
                  </node>
                  <node concept="3clFb_" id="$" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:2823449341854454754" />
                    <node concept="3Tm1VV" id="F" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2823449341854454754" />
                    </node>
                    <node concept="3uibUv" id="G" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:2823449341854454754" />
                    </node>
                    <node concept="2AHcQZ" id="H" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:2823449341854454754" />
                    </node>
                    <node concept="3clFbS" id="I" role="3clF47">
                      <uo k="s:originTrace" v="n:2823449341854454754" />
                      <node concept="3cpWs6" id="K" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2823449341854454754" />
                        <node concept="2YIFZM" id="L" role="3cqZAk">
                          <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                          <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                          <uo k="s:originTrace" v="n:6649776843795359366" />
                          <node concept="35c_gC" id="M" role="37wK5m">
                            <ref role="35c_gD" to="p6im:14g3IsRh3GN" resolve="Column" />
                            <uo k="s:originTrace" v="n:6649776843795359366" />
                          </node>
                          <node concept="2ShNRf" id="N" role="37wK5m">
                            <uo k="s:originTrace" v="n:6649776843795359366" />
                            <node concept="1pGfFk" id="O" role="2ShVmc">
                              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                              <uo k="s:originTrace" v="n:6649776843795359366" />
                              <node concept="Xl_RD" id="P" role="37wK5m">
                                <property role="Xl_RC" value="r:7edf4f40-f81a-49df-87e2-b00351b83558(QueryLanguage.constraints)" />
                                <uo k="s:originTrace" v="n:6649776843795359366" />
                              </node>
                              <node concept="Xl_RD" id="Q" role="37wK5m">
                                <property role="Xl_RC" value="6649776843795359366" />
                                <uo k="s:originTrace" v="n:6649776843795359366" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="J" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:2823449341854454754" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="n" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="3cpWsn" id="R" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="3uibUv" id="S" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="3uibUv" id="U" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
              <node concept="3uibUv" id="V" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
            </node>
            <node concept="2ShNRf" id="T" role="33vP2m">
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="1pGfFk" id="W" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
                <node concept="3uibUv" id="X" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
                <node concept="3uibUv" id="Y" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="2OqwBi" id="Z" role="3clFbG">
            <uo k="s:originTrace" v="n:2823449341854454754" />
            <node concept="37vLTw" id="10" role="2Oq$k0">
              <ref role="3cqZAo" node="R" resolve="references" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
            </node>
            <node concept="liA8E" id="11" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:2823449341854454754" />
              <node concept="2OqwBi" id="12" role="37wK5m">
                <uo k="s:originTrace" v="n:2823449341854454754" />
                <node concept="37vLTw" id="14" role="2Oq$k0">
                  <ref role="3cqZAo" node="q" resolve="d0" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
                <node concept="liA8E" id="15" role="2OqNvi">
                  <ref role="37wK5l" to="79pl:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:2823449341854454754" />
                </node>
              </node>
              <node concept="37vLTw" id="13" role="37wK5m">
                <ref role="3cqZAo" node="q" resolve="d0" />
                <uo k="s:originTrace" v="n:2823449341854454754" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="p" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341854454754" />
          <node concept="37vLTw" id="16" role="3clFbG">
            <ref role="3cqZAo" node="R" resolve="references" />
            <uo k="s:originTrace" v="n:2823449341854454754" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2823449341854454754" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="17">
    <property role="3GE5qa" value="column" />
    <property role="TrG5h" value="Column_Constraints" />
    <uo k="s:originTrace" v="n:2341611946574946046" />
    <node concept="3Tm1VV" id="18" role="1B3o_S">
      <uo k="s:originTrace" v="n:2341611946574946046" />
    </node>
    <node concept="3uibUv" id="19" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2341611946574946046" />
    </node>
    <node concept="3clFbW" id="1a" role="jymVt">
      <uo k="s:originTrace" v="n:2341611946574946046" />
      <node concept="3cqZAl" id="1e" role="3clF45">
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
      <node concept="3clFbS" id="1f" role="3clF47">
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="XkiVB" id="1h" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="1BaE9c" id="1i" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Column$oK" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="2YIFZM" id="1j" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="1adDum" id="1k" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="1adDum" id="1l" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="1adDum" id="1m" role="37wK5m">
                <property role="1adDun" value="0x11100ee737443b33L" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="Xl_RD" id="1n" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.Column" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1g" role="1B3o_S">
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
    </node>
    <node concept="2tJIrI" id="1b" role="jymVt">
      <uo k="s:originTrace" v="n:2341611946574946046" />
    </node>
    <node concept="312cEu" id="1c" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:2341611946574946046" />
      <node concept="3clFbW" id="1o" role="jymVt">
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3cqZAl" id="1t" role="3clF45">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3Tm1VV" id="1u" role="1B3o_S">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3clFbS" id="1v" role="3clF47">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="XkiVB" id="1x" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="1BaE9c" id="1y" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="2YIFZM" id="1B" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="1adDum" id="1C" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="1adDum" id="1D" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="1adDum" id="1E" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="1adDum" id="1F" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="Xl_RD" id="1G" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1z" role="37wK5m">
              <ref role="3cqZAo" node="1w" resolve="container" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="3clFbT" id="1$" role="37wK5m">
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="3clFbT" id="1_" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="3clFbT" id="1A" role="37wK5m">
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1w" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3uibUv" id="1H" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1p" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3Tm1VV" id="1I" role="1B3o_S">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3cqZAl" id="1J" role="3clF45">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="37vLTG" id="1K" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3Tqbb2" id="1O" role="1tU5fm">
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="37vLTG" id="1L" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3uibUv" id="1P" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1M" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3clFbS" id="1N" role="3clF47">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3clFbF" id="1Q" role="3cqZAp">
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="1rXfSq" id="1R" role="3clFbG">
              <ref role="37wK5l" node="1q" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="37vLTw" id="1S" role="37wK5m">
                <ref role="3cqZAo" node="1K" resolve="node" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="2YIFZM" id="1T" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="37vLTw" id="1U" role="37wK5m">
                  <ref role="3cqZAo" node="1L" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="1q" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3clFbS" id="1V" role="3clF47">
          <uo k="s:originTrace" v="n:2341611946574946101" />
          <node concept="3clFbF" id="20" role="3cqZAp">
            <uo k="s:originTrace" v="n:2341611946575153267" />
            <node concept="37vLTI" id="22" role="3clFbG">
              <uo k="s:originTrace" v="n:2341611946575164393" />
              <node concept="37vLTw" id="23" role="37vLTx">
                <ref role="3cqZAo" node="1Z" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:2341611946575165453" />
              </node>
              <node concept="2OqwBi" id="24" role="37vLTJ">
                <uo k="s:originTrace" v="n:2341611946575153346" />
                <node concept="37vLTw" id="25" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Y" resolve="node" />
                  <uo k="s:originTrace" v="n:2341611946575153266" />
                </node>
                <node concept="3TrcHB" id="26" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:2341611946575154181" />
                </node>
              </node>
            </node>
          </node>
          <node concept="Jncv_" id="21" role="3cqZAp">
            <ref role="JncvD" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
            <uo k="s:originTrace" v="n:2341611946574947728" />
            <node concept="2OqwBi" id="27" role="JncvB">
              <uo k="s:originTrace" v="n:2341611946574947860" />
              <node concept="37vLTw" id="2a" role="2Oq$k0">
                <ref role="3cqZAo" node="1Y" resolve="node" />
                <uo k="s:originTrace" v="n:2341611946574947770" />
              </node>
              <node concept="1mfA1w" id="2b" role="2OqNvi">
                <uo k="s:originTrace" v="n:2341611946574948112" />
              </node>
            </node>
            <node concept="3clFbS" id="28" role="Jncv$">
              <uo k="s:originTrace" v="n:2341611946574947730" />
              <node concept="3clFbF" id="2c" role="3cqZAp">
                <uo k="s:originTrace" v="n:2341611946574948325" />
                <node concept="37vLTI" id="2d" role="3clFbG">
                  <uo k="s:originTrace" v="n:2341611946574960027" />
                  <node concept="3cpWs3" id="2e" role="37vLTx">
                    <uo k="s:originTrace" v="n:2341611946574987771" />
                    <node concept="2OqwBi" id="2g" role="3uHU7w">
                      <uo k="s:originTrace" v="n:2341611946574990452" />
                      <node concept="37vLTw" id="2i" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Y" resolve="node" />
                        <uo k="s:originTrace" v="n:2341611946574988866" />
                      </node>
                      <node concept="3TrcHB" id="2j" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        <uo k="s:originTrace" v="n:2341611946574991305" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="2h" role="3uHU7B">
                      <uo k="s:originTrace" v="n:2341611946574975470" />
                      <node concept="2OqwBi" id="2k" role="3uHU7B">
                        <uo k="s:originTrace" v="n:2341611946574962812" />
                        <node concept="Jnkvi" id="2m" role="2Oq$k0">
                          <ref role="1M0zk5" node="29" resolve="table" />
                          <uo k="s:originTrace" v="n:2341611946574962093" />
                        </node>
                        <node concept="3TrcHB" id="2n" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          <uo k="s:originTrace" v="n:2341611946574965072" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2l" role="3uHU7w">
                        <property role="Xl_RC" value="." />
                        <uo k="s:originTrace" v="n:2341611946574975482" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2f" role="37vLTJ">
                    <uo k="s:originTrace" v="n:2341611946574948979" />
                    <node concept="37vLTw" id="2o" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Y" resolve="node" />
                      <uo k="s:originTrace" v="n:2341611946574948324" />
                    </node>
                    <node concept="3TrcHB" id="2p" role="2OqNvi">
                      <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                      <uo k="s:originTrace" v="n:2341611946574949702" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="29" role="JncvA">
              <property role="TrG5h" value="table" />
              <uo k="s:originTrace" v="n:2341611946574947731" />
              <node concept="2jxLKc" id="2q" role="1tU5fm">
                <uo k="s:originTrace" v="n:2341611946574947732" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1W" role="1B3o_S">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3cqZAl" id="1X" role="3clF45">
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="37vLTG" id="1Y" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3Tqbb2" id="2r" role="1tU5fm">
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
        <node concept="37vLTG" id="1Z" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3uibUv" id="2s" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1r" role="1B3o_S">
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
      <node concept="3uibUv" id="1s" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
    </node>
    <node concept="3clFb_" id="1d" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:2341611946574946046" />
      <node concept="3Tmbuc" id="2t" role="1B3o_S">
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
      <node concept="3uibUv" id="2u" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3uibUv" id="2x" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
        <node concept="3uibUv" id="2y" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2341611946574946046" />
        </node>
      </node>
      <node concept="3clFbS" id="2v" role="3clF47">
        <uo k="s:originTrace" v="n:2341611946574946046" />
        <node concept="3cpWs8" id="2z" role="3cqZAp">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="3cpWsn" id="2A" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="3uibUv" id="2B" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="3uibUv" id="2D" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
              <node concept="3uibUv" id="2E" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
              </node>
            </node>
            <node concept="2ShNRf" id="2C" role="33vP2m">
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="1pGfFk" id="2F" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="3uibUv" id="2G" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
                <node concept="3uibUv" id="2H" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2$" role="3cqZAp">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="2OqwBi" id="2I" role="3clFbG">
            <uo k="s:originTrace" v="n:2341611946574946046" />
            <node concept="37vLTw" id="2J" role="2Oq$k0">
              <ref role="3cqZAo" node="2A" resolve="properties" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
            </node>
            <node concept="liA8E" id="2K" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:2341611946574946046" />
              <node concept="1BaE9c" id="2L" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="2YIFZM" id="2N" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                  <node concept="1adDum" id="2O" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:2341611946574946046" />
                  </node>
                  <node concept="1adDum" id="2P" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:2341611946574946046" />
                  </node>
                  <node concept="1adDum" id="2Q" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:2341611946574946046" />
                  </node>
                  <node concept="1adDum" id="2R" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:2341611946574946046" />
                  </node>
                  <node concept="Xl_RD" id="2S" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:2341611946574946046" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2M" role="37wK5m">
                <uo k="s:originTrace" v="n:2341611946574946046" />
                <node concept="1pGfFk" id="2T" role="2ShVmc">
                  <ref role="37wK5l" node="1o" resolve="Column_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:2341611946574946046" />
                  <node concept="Xjq3P" id="2U" role="37wK5m">
                    <uo k="s:originTrace" v="n:2341611946574946046" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2341611946574946046" />
          <node concept="37vLTw" id="2V" role="3clFbG">
            <ref role="3cqZAo" node="2A" resolve="properties" />
            <uo k="s:originTrace" v="n:2341611946574946046" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2341611946574946046" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2W">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="2X" role="1zkMxy">
      <ref role="3uigEE" to="ze1j:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="2Y" role="1B3o_S" />
    <node concept="3clFbW" id="2Z" role="jymVt">
      <node concept="3cqZAl" id="32" role="3clF45" />
      <node concept="3Tm1VV" id="33" role="1B3o_S" />
      <node concept="3clFbS" id="34" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="30" role="jymVt" />
    <node concept="3clFb_" id="31" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="35" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="36" role="1B3o_S" />
      <node concept="3uibUv" id="37" role="3clF45">
        <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="38" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="3a" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="39" role="3clF47">
        <node concept="1_3QMa" id="3b" role="3cqZAp">
          <node concept="37vLTw" id="3d" role="1_3QMn">
            <ref role="3cqZAo" node="38" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="3e" role="1_3QMm">
            <node concept="3clFbS" id="3l" role="1pnPq1">
              <node concept="3cpWs6" id="3n" role="3cqZAp">
                <node concept="1nCR9W" id="3o" role="3cqZAk">
                  <property role="1nD$Q0" value="QueryLanguage.constraints.ColumnRef_Constraints" />
                  <node concept="3uibUv" id="3p" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3m" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
            </node>
          </node>
          <node concept="1pnPoh" id="3f" role="1_3QMm">
            <node concept="3clFbS" id="3q" role="1pnPq1">
              <node concept="3cpWs6" id="3s" role="3cqZAp">
                <node concept="1nCR9W" id="3t" role="3cqZAk">
                  <property role="1nD$Q0" value="QueryLanguage.constraints.OrderBy_Constraints" />
                  <node concept="3uibUv" id="3u" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3r" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:2G8vGeEou9h" resolve="OrderBy" />
            </node>
          </node>
          <node concept="1pnPoh" id="3g" role="1_3QMm">
            <node concept="3clFbS" id="3v" role="1pnPq1">
              <node concept="3cpWs6" id="3x" role="3cqZAp">
                <node concept="1nCR9W" id="3y" role="3cqZAk">
                  <property role="1nD$Q0" value="QueryLanguage.constraints.Column_Constraints" />
                  <node concept="3uibUv" id="3z" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3w" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:14g3IsRh3GN" resolve="Column" />
            </node>
          </node>
          <node concept="1pnPoh" id="3h" role="1_3QMm">
            <node concept="3clFbS" id="3$" role="1pnPq1">
              <node concept="3cpWs6" id="3A" role="3cqZAp">
                <node concept="1nCR9W" id="3B" role="3cqZAk">
                  <property role="1nD$Q0" value="QueryLanguage.constraints.Select_Constraints" />
                  <node concept="3uibUv" id="3C" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3_" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:66sUT0$8edT" resolve="Select" />
            </node>
          </node>
          <node concept="1pnPoh" id="3i" role="1_3QMm">
            <node concept="3clFbS" id="3D" role="1pnPq1">
              <node concept="3cpWs6" id="3F" role="3cqZAp">
                <node concept="1nCR9W" id="3G" role="3cqZAk">
                  <property role="1nD$Q0" value="QueryLanguage.constraints.SimpleCondition_Constraints" />
                  <node concept="3uibUv" id="3H" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3E" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5VF6QK6AuCo" resolve="SimpleCondition" />
            </node>
          </node>
          <node concept="1pnPoh" id="3j" role="1_3QMm">
            <node concept="3clFbS" id="3I" role="1pnPq1">
              <node concept="3cpWs6" id="3K" role="3cqZAp">
                <node concept="1nCR9W" id="3L" role="3cqZAk">
                  <property role="1nD$Q0" value="QueryLanguage.constraints.TableReference_Constraints" />
                  <node concept="3uibUv" id="3M" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3J" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:21Z4UyPhvru" resolve="TableReference" />
            </node>
          </node>
          <node concept="3clFbS" id="3k" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="3c" role="3cqZAp">
          <node concept="2ShNRf" id="3N" role="3cqZAk">
            <node concept="1pGfFk" id="3O" role="2ShVmc">
              <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
              <node concept="37vLTw" id="3P" role="37wK5m">
                <ref role="3cqZAo" node="38" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="3Q">
    <node concept="39e2AJ" id="3R" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="3T" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:2sIU3umyTfy" resolve="ColumnRef_Constraints" />
        <node concept="385nmt" id="3Z" role="385vvn">
          <property role="385vuF" value="ColumnRef_Constraints" />
          <node concept="3u3nmq" id="41" role="385v07">
            <property role="3u3nmv" value="2823449341854454754" />
          </node>
        </node>
        <node concept="39e2AT" id="40" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ColumnRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3U" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:21Z4UyPqhVY" resolve="Column_Constraints" />
        <node concept="385nmt" id="42" role="385vvn">
          <property role="385vuF" value="Column_Constraints" />
          <node concept="3u3nmq" id="44" role="385v07">
            <property role="3u3nmv" value="2341611946574946046" />
          </node>
        </node>
        <node concept="39e2AT" id="43" role="39e2AY">
          <ref role="39e2AS" node="17" resolve="Column_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3V" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:2G8vGeEou9W" resolve="OrderBy_Constraints" />
        <node concept="385nmt" id="45" role="385vvn">
          <property role="385vuF" value="OrderBy_Constraints" />
          <node concept="3u3nmq" id="47" role="385v07">
            <property role="3u3nmv" value="3100867722286850684" />
          </node>
        </node>
        <node concept="39e2AT" id="46" role="39e2AY">
          <ref role="39e2AS" node="4j" resolve="OrderBy_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3W" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:HpRLxUp5ji" resolve="Select_Constraints" />
        <node concept="385nmt" id="48" role="385vvn">
          <property role="385vuF" value="Select_Constraints" />
          <node concept="3u3nmq" id="4a" role="385v07">
            <property role="3u3nmv" value="817930103570060498" />
          </node>
        </node>
        <node concept="39e2AT" id="49" role="39e2AY">
          <ref role="39e2AS" node="4y" resolve="Select_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3X" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:6w4sAgfAlZ0" resolve="SimpleCondition_Constraints" />
        <node concept="385nmt" id="4b" role="385vvn">
          <property role="385vuF" value="SimpleCondition_Constraints" />
          <node concept="3u3nmq" id="4d" role="385v07">
            <property role="3u3nmv" value="7495241453935353792" />
          </node>
        </node>
        <node concept="39e2AT" id="4c" role="39e2AY">
          <ref role="39e2AS" node="8F" resolve="SimpleCondition_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="3Y" role="39e3Y0">
        <ref role="39e2AK" to="bkxw:3Gp_4Vpb1Hz" resolve="TableReference_Constraints" />
        <node concept="385nmt" id="4e" role="385vvn">
          <property role="385vuF" value="TableReference_Constraints" />
          <node concept="3u3nmq" id="4g" role="385v07">
            <property role="3u3nmv" value="4258597989027421027" />
          </node>
        </node>
        <node concept="39e2AT" id="4f" role="39e2AY">
          <ref role="39e2AS" node="8U" resolve="TableReference_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3S" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="4h" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="4i" role="39e2AY">
          <ref role="39e2AS" node="2W" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4j">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="OrderBy_Constraints" />
    <uo k="s:originTrace" v="n:3100867722286850684" />
    <node concept="3Tm1VV" id="4k" role="1B3o_S">
      <uo k="s:originTrace" v="n:3100867722286850684" />
    </node>
    <node concept="3uibUv" id="4l" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3100867722286850684" />
    </node>
    <node concept="3clFbW" id="4m" role="jymVt">
      <uo k="s:originTrace" v="n:3100867722286850684" />
      <node concept="3cqZAl" id="4o" role="3clF45">
        <uo k="s:originTrace" v="n:3100867722286850684" />
      </node>
      <node concept="3clFbS" id="4p" role="3clF47">
        <uo k="s:originTrace" v="n:3100867722286850684" />
        <node concept="XkiVB" id="4r" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3100867722286850684" />
          <node concept="1BaE9c" id="4s" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="OrderBy$4F" />
            <uo k="s:originTrace" v="n:3100867722286850684" />
            <node concept="2YIFZM" id="4t" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3100867722286850684" />
              <node concept="1adDum" id="4u" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
              <node concept="1adDum" id="4v" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
              <node concept="1adDum" id="4w" role="37wK5m">
                <property role="1adDun" value="0x2b087ec3aa61e251L" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
              <node concept="Xl_RD" id="4x" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.OrderBy" />
                <uo k="s:originTrace" v="n:3100867722286850684" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4q" role="1B3o_S">
        <uo k="s:originTrace" v="n:3100867722286850684" />
      </node>
    </node>
    <node concept="2tJIrI" id="4n" role="jymVt">
      <uo k="s:originTrace" v="n:3100867722286850684" />
    </node>
  </node>
  <node concept="312cEu" id="4y">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="Select_Constraints" />
    <uo k="s:originTrace" v="n:817930103570060498" />
    <node concept="3Tm1VV" id="4z" role="1B3o_S">
      <uo k="s:originTrace" v="n:817930103570060498" />
    </node>
    <node concept="3uibUv" id="4$" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:817930103570060498" />
    </node>
    <node concept="3clFbW" id="4_" role="jymVt">
      <uo k="s:originTrace" v="n:817930103570060498" />
      <node concept="3cqZAl" id="4D" role="3clF45">
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
      <node concept="3clFbS" id="4E" role="3clF47">
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="XkiVB" id="4G" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="1BaE9c" id="4H" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Select$Te" />
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="2YIFZM" id="4I" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="1adDum" id="4J" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="1adDum" id="4K" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="1adDum" id="4L" role="37wK5m">
                <property role="1adDun" value="0x619ceb902420e379L" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="Xl_RD" id="4M" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.Select" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4F" role="1B3o_S">
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
    </node>
    <node concept="2tJIrI" id="4A" role="jymVt">
      <uo k="s:originTrace" v="n:817930103570060498" />
    </node>
    <node concept="312cEu" id="4B" role="jymVt">
      <property role="TrG5h" value="ViewName_Property" />
      <uo k="s:originTrace" v="n:817930103570060498" />
      <node concept="3clFbW" id="4N" role="jymVt">
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3cqZAl" id="4S" role="3clF45">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3Tm1VV" id="4T" role="1B3o_S">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3clFbS" id="4U" role="3clF47">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="XkiVB" id="4W" role="3cqZAp">
            <ref role="37wK5l" to="79pl:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="1BaE9c" id="4X" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="viewName$yY2f" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="2YIFZM" id="52" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="1adDum" id="53" role="37wK5m">
                  <property role="1adDun" value="0x26d1395b1ee643adL" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="1adDum" id="54" role="37wK5m">
                  <property role="1adDun" value="0xb522c0cdd699ded3L" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="1adDum" id="55" role="37wK5m">
                  <property role="1adDun" value="0x619ceb902420e379L" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="1adDum" id="56" role="37wK5m">
                  <property role="1adDun" value="0x7642dbf63a87dc6eL" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="Xl_RD" id="57" role="37wK5m">
                  <property role="Xl_RC" value="viewName" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4Y" role="37wK5m">
              <ref role="3cqZAo" node="4V" resolve="container" />
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="3clFbT" id="4Z" role="37wK5m">
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="3clFbT" id="50" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="3clFbT" id="51" role="37wK5m">
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4V" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3uibUv" id="58" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3Tm1VV" id="59" role="1B3o_S">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3cqZAl" id="5a" role="3clF45">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="37vLTG" id="5b" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3Tqbb2" id="5f" role="1tU5fm">
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="37vLTG" id="5c" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3uibUv" id="5g" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5d" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3clFbS" id="5e" role="3clF47">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3clFbF" id="5h" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="1rXfSq" id="5i" role="3clFbG">
              <ref role="37wK5l" node="4P" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="37vLTw" id="5j" role="37wK5m">
                <ref role="3cqZAo" node="5b" resolve="node" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="2YIFZM" id="5k" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="37vLTw" id="5l" role="37wK5m">
                  <ref role="3cqZAo" node="5c" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="4P" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3clFbS" id="5m" role="3clF47">
          <uo k="s:originTrace" v="n:817930103570060555" />
          <node concept="3clFbH" id="5r" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103573559240" />
          </node>
          <node concept="3clFbJ" id="5s" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103573560271" />
            <node concept="3clFbS" id="5B" role="3clFbx">
              <uo k="s:originTrace" v="n:817930103573560273" />
              <node concept="3clFbF" id="5D" role="3cqZAp">
                <uo k="s:originTrace" v="n:817930103574113425" />
                <node concept="37vLTI" id="5J" role="3clFbG">
                  <uo k="s:originTrace" v="n:817930103574125358" />
                  <node concept="37vLTw" id="5K" role="37vLTx">
                    <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:817930103574127743" />
                  </node>
                  <node concept="2OqwBi" id="5L" role="37vLTJ">
                    <uo k="s:originTrace" v="n:817930103574118917" />
                    <node concept="2OqwBi" id="5M" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:817930103574115519" />
                      <node concept="37vLTw" id="5O" role="2Oq$k0">
                        <ref role="3cqZAo" node="5p" resolve="node" />
                        <uo k="s:originTrace" v="n:817930103574113424" />
                      </node>
                      <node concept="3TrEf2" id="5P" role="2OqNvi">
                        <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                        <uo k="s:originTrace" v="n:817930103574118075" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5N" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:817930103574120199" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5E" role="3cqZAp">
                <uo k="s:originTrace" v="n:817930103574129403" />
                <node concept="37vLTI" id="5Q" role="3clFbG">
                  <uo k="s:originTrace" v="n:817930103574139406" />
                  <node concept="37vLTw" id="5R" role="37vLTx">
                    <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:817930103574140474" />
                  </node>
                  <node concept="2OqwBi" id="5S" role="37vLTJ">
                    <uo k="s:originTrace" v="n:817930103574131517" />
                    <node concept="37vLTw" id="5T" role="2Oq$k0">
                      <ref role="3cqZAo" node="5p" resolve="node" />
                      <uo k="s:originTrace" v="n:817930103574129402" />
                    </node>
                    <node concept="3TrcHB" id="5U" role="2OqNvi">
                      <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="viewName" />
                      <uo k="s:originTrace" v="n:817930103574134260" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5F" role="3cqZAp">
                <uo k="s:originTrace" v="n:7824142728408665482" />
              </node>
              <node concept="2Gpval" id="5G" role="3cqZAp">
                <uo k="s:originTrace" v="n:7824142728408669302" />
                <node concept="2GrKxI" id="5V" role="2Gsz3X">
                  <property role="TrG5h" value="col" />
                  <uo k="s:originTrace" v="n:7824142728408669304" />
                </node>
                <node concept="2OqwBi" id="5W" role="2GsD0m">
                  <uo k="s:originTrace" v="n:7824142728408675911" />
                  <node concept="2OqwBi" id="5Y" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7824142728408671187" />
                    <node concept="37vLTw" id="60" role="2Oq$k0">
                      <ref role="3cqZAo" node="5p" resolve="node" />
                      <uo k="s:originTrace" v="n:7824142728408670335" />
                    </node>
                    <node concept="3TrEf2" id="61" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                      <uo k="s:originTrace" v="n:7824142728408673623" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5Z" role="2OqNvi">
                    <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                    <uo k="s:originTrace" v="n:7824142728408677061" />
                  </node>
                </node>
                <node concept="3clFbS" id="5X" role="2LFqv$">
                  <uo k="s:originTrace" v="n:7824142728408669308" />
                  <node concept="3clFbF" id="62" role="3cqZAp">
                    <uo k="s:originTrace" v="n:7824142728408677354" />
                    <node concept="37vLTI" id="63" role="3clFbG">
                      <uo k="s:originTrace" v="n:7824142728408692225" />
                      <node concept="3cpWs3" id="64" role="37vLTx">
                        <uo k="s:originTrace" v="n:7824142728408703765" />
                        <node concept="AH0OO" id="66" role="3uHU7w">
                          <uo k="s:originTrace" v="n:7824142728408726454" />
                          <node concept="3cmrfG" id="68" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                            <uo k="s:originTrace" v="n:7824142728408726472" />
                          </node>
                          <node concept="2OqwBi" id="69" role="AHHXb">
                            <uo k="s:originTrace" v="n:7824142728408719007" />
                            <node concept="2OqwBi" id="6a" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:7824142728408708451" />
                              <node concept="2GrUjf" id="6c" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="5V" resolve="col" />
                                <uo k="s:originTrace" v="n:7824142728408705833" />
                              </node>
                              <node concept="3TrcHB" id="6d" role="2OqNvi">
                                <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                <uo k="s:originTrace" v="n:7824142728408714303" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6b" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                              <uo k="s:originTrace" v="n:7824142728408723054" />
                              <node concept="Xl_RD" id="6e" role="37wK5m">
                                <property role="Xl_RC" value="\\." />
                                <uo k="s:originTrace" v="n:7824142728408723226" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="67" role="3uHU7B">
                          <uo k="s:originTrace" v="n:7824142728408699578" />
                          <node concept="37vLTw" id="6f" role="3uHU7B">
                            <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                            <uo k="s:originTrace" v="n:7824142728408693321" />
                          </node>
                          <node concept="Xl_RD" id="6g" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                            <uo k="s:originTrace" v="n:7824142728408700628" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="65" role="37vLTJ">
                        <uo k="s:originTrace" v="n:7824142728408678063" />
                        <node concept="2GrUjf" id="6h" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="5V" resolve="col" />
                          <uo k="s:originTrace" v="n:7824142728408677353" />
                        </node>
                        <node concept="3TrcHB" id="6i" role="2OqNvi">
                          <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                          <uo k="s:originTrace" v="n:7824142728408681393" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5H" role="3cqZAp">
                <uo k="s:originTrace" v="n:7824142728408665500" />
              </node>
              <node concept="3cpWs6" id="5I" role="3cqZAp">
                <uo k="s:originTrace" v="n:817930103574142453" />
              </node>
            </node>
            <node concept="2OqwBi" id="5C" role="3clFbw">
              <uo k="s:originTrace" v="n:817930103573569695" />
              <node concept="2OqwBi" id="6j" role="2Oq$k0">
                <uo k="s:originTrace" v="n:817930103573562941" />
                <node concept="37vLTw" id="6l" role="2Oq$k0">
                  <ref role="3cqZAo" node="5p" resolve="node" />
                  <uo k="s:originTrace" v="n:817930103573561958" />
                </node>
                <node concept="3TrcHB" id="6m" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="viewName" />
                  <uo k="s:originTrace" v="n:817930103573564382" />
                </node>
              </node>
              <node concept="17RvpY" id="6k" role="2OqNvi">
                <uo k="s:originTrace" v="n:817930103573577327" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5t" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570940797" />
          </node>
          <node concept="3clFbF" id="5u" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570943090" />
            <node concept="37vLTI" id="6n" role="3clFbG">
              <uo k="s:originTrace" v="n:817930103570957686" />
              <node concept="37vLTw" id="6o" role="37vLTx">
                <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:817930103570958750" />
              </node>
              <node concept="2OqwBi" id="6p" role="37vLTJ">
                <uo k="s:originTrace" v="n:817930103570945325" />
                <node concept="37vLTw" id="6q" role="2Oq$k0">
                  <ref role="3cqZAo" node="5p" resolve="node" />
                  <uo k="s:originTrace" v="n:817930103570943089" />
                </node>
                <node concept="3TrcHB" id="6r" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="viewName" />
                  <uo k="s:originTrace" v="n:817930103570947478" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5v" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570940873" />
          </node>
          <node concept="3cpWs8" id="5w" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570060792" />
            <node concept="3cpWsn" id="6s" role="3cpWs9">
              <property role="TrG5h" value="newTable" />
              <uo k="s:originTrace" v="n:817930103570060795" />
              <node concept="3Tqbb2" id="6t" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                <uo k="s:originTrace" v="n:817930103570060791" />
              </node>
              <node concept="2ShNRf" id="6u" role="33vP2m">
                <uo k="s:originTrace" v="n:817930103570060932" />
                <node concept="3zrR0B" id="6v" role="2ShVmc">
                  <uo k="s:originTrace" v="n:817930103570060930" />
                  <node concept="3Tqbb2" id="6w" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                    <uo k="s:originTrace" v="n:817930103570060931" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5x" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103572494573" />
            <node concept="37vLTI" id="6x" role="3clFbG">
              <uo k="s:originTrace" v="n:817930103572502712" />
              <node concept="37vLTw" id="6y" role="37vLTx">
                <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:817930103572503772" />
              </node>
              <node concept="2OqwBi" id="6z" role="37vLTJ">
                <uo k="s:originTrace" v="n:817930103572496468" />
                <node concept="37vLTw" id="6$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6s" resolve="newTable" />
                  <uo k="s:originTrace" v="n:817930103572494571" />
                </node>
                <node concept="3TrcHB" id="6_" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:817930103572497589" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5y" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103572503811" />
          </node>
          <node concept="2Gpval" id="5z" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570061075" />
            <node concept="2GrKxI" id="6A" role="2Gsz3X">
              <property role="TrG5h" value="col" />
              <uo k="s:originTrace" v="n:817930103570061077" />
            </node>
            <node concept="2OqwBi" id="6B" role="2GsD0m">
              <uo k="s:originTrace" v="n:817930103570062006" />
              <node concept="37vLTw" id="6D" role="2Oq$k0">
                <ref role="3cqZAo" node="5p" resolve="node" />
                <uo k="s:originTrace" v="n:817930103570061154" />
              </node>
              <node concept="3Tsc0h" id="6E" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:UaVdqMlpcc" resolve="cols" />
                <uo k="s:originTrace" v="n:817930103570063185" />
              </node>
            </node>
            <node concept="3clFbS" id="6C" role="2LFqv$">
              <uo k="s:originTrace" v="n:817930103570061081" />
              <node concept="Jncv_" id="6F" role="3cqZAp">
                <ref role="JncvD" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
                <uo k="s:originTrace" v="n:817930103570063926" />
                <node concept="2GrUjf" id="6H" role="JncvB">
                  <ref role="2Gs0qQ" node="6A" resolve="col" />
                  <uo k="s:originTrace" v="n:817930103570063968" />
                </node>
                <node concept="3clFbS" id="6I" role="Jncv$">
                  <uo k="s:originTrace" v="n:817930103570063928" />
                  <node concept="3clFbF" id="6K" role="3cqZAp">
                    <uo k="s:originTrace" v="n:7824142728408016739" />
                    <node concept="37vLTI" id="6M" role="3clFbG">
                      <uo k="s:originTrace" v="n:7824142728408031035" />
                      <node concept="3cpWs3" id="6N" role="37vLTx">
                        <uo k="s:originTrace" v="n:7824142728408042751" />
                        <node concept="AH0OO" id="6P" role="3uHU7w">
                          <uo k="s:originTrace" v="n:7824142728408077757" />
                          <node concept="3cmrfG" id="6R" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                            <uo k="s:originTrace" v="n:7824142728408079555" />
                          </node>
                          <node concept="2OqwBi" id="6S" role="AHHXb">
                            <uo k="s:originTrace" v="n:7824142728408062387" />
                            <node concept="2OqwBi" id="6T" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:7824142728408050739" />
                              <node concept="2OqwBi" id="6V" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:7824142728408045527" />
                                <node concept="Jnkvi" id="6X" role="2Oq$k0">
                                  <ref role="1M0zk5" node="6J" resolve="columnRef" />
                                  <uo k="s:originTrace" v="n:7824142728408043819" />
                                </node>
                                <node concept="3TrEf2" id="6Y" role="2OqNvi">
                                  <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                                  <uo k="s:originTrace" v="n:7824142728408048878" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="6W" role="2OqNvi">
                                <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                <uo k="s:originTrace" v="n:7824142728408054839" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6U" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                              <uo k="s:originTrace" v="n:7824142728408072338" />
                              <node concept="Xl_RD" id="6Z" role="37wK5m">
                                <property role="Xl_RC" value="\\." />
                                <uo k="s:originTrace" v="n:7824142728408074078" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="6Q" role="3uHU7B">
                          <uo k="s:originTrace" v="n:7824142728408034424" />
                          <node concept="37vLTw" id="70" role="3uHU7B">
                            <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                            <uo k="s:originTrace" v="n:7824142728408034371" />
                          </node>
                          <node concept="Xl_RD" id="71" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                            <uo k="s:originTrace" v="n:7824142728408036617" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6O" role="37vLTJ">
                        <uo k="s:originTrace" v="n:7824142728408022356" />
                        <node concept="2OqwBi" id="72" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:7824142728408019419" />
                          <node concept="Jnkvi" id="74" role="2Oq$k0">
                            <ref role="1M0zk5" node="6J" resolve="columnRef" />
                            <uo k="s:originTrace" v="n:7824142728408016737" />
                          </node>
                          <node concept="3TrEf2" id="75" role="2OqNvi">
                            <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                            <uo k="s:originTrace" v="n:7824142728408021565" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="73" role="2OqNvi">
                          <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                          <uo k="s:originTrace" v="n:7824142728408025756" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6L" role="3cqZAp">
                    <uo k="s:originTrace" v="n:817930103570065121" />
                    <node concept="2OqwBi" id="76" role="3clFbG">
                      <uo k="s:originTrace" v="n:817930103570078616" />
                      <node concept="2OqwBi" id="77" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:817930103570065917" />
                        <node concept="37vLTw" id="79" role="2Oq$k0">
                          <ref role="3cqZAo" node="6s" resolve="newTable" />
                          <uo k="s:originTrace" v="n:817930103570065120" />
                        </node>
                        <node concept="3Tsc0h" id="7a" role="2OqNvi">
                          <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                          <uo k="s:originTrace" v="n:817930103570066935" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="78" role="2OqNvi">
                        <uo k="s:originTrace" v="n:817930103570101453" />
                        <node concept="2OqwBi" id="7b" role="25WWJ7">
                          <uo k="s:originTrace" v="n:817930103571978581" />
                          <node concept="2OqwBi" id="7c" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:817930103570102802" />
                            <node concept="Jnkvi" id="7e" role="2Oq$k0">
                              <ref role="1M0zk5" node="6J" resolve="columnRef" />
                              <uo k="s:originTrace" v="n:817930103570101716" />
                            </node>
                            <node concept="3TrEf2" id="7f" role="2OqNvi">
                              <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                              <uo k="s:originTrace" v="n:817930103570104363" />
                            </node>
                          </node>
                          <node concept="1$rogu" id="7d" role="2OqNvi">
                            <uo k="s:originTrace" v="n:817930103571982466" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="JncvC" id="6J" role="JncvA">
                  <property role="TrG5h" value="columnRef" />
                  <uo k="s:originTrace" v="n:817930103570063929" />
                  <node concept="2jxLKc" id="7g" role="1tU5fm">
                    <uo k="s:originTrace" v="n:817930103570063930" />
                  </node>
                </node>
              </node>
              <node concept="Jncv_" id="6G" role="3cqZAp">
                <ref role="JncvD" to="p6im:UaVdqMkpsj" resolve="AllColumns" />
                <uo k="s:originTrace" v="n:817930103570105038" />
                <node concept="2GrUjf" id="7h" role="JncvB">
                  <ref role="2Gs0qQ" node="6A" resolve="col" />
                  <uo k="s:originTrace" v="n:817930103570105102" />
                </node>
                <node concept="3clFbS" id="7i" role="Jncv$">
                  <uo k="s:originTrace" v="n:817930103570105042" />
                  <node concept="2Gpval" id="7k" role="3cqZAp">
                    <uo k="s:originTrace" v="n:817930103570317460" />
                    <node concept="2GrKxI" id="7l" role="2Gsz3X">
                      <property role="TrG5h" value="column" />
                      <uo k="s:originTrace" v="n:817930103570317462" />
                    </node>
                    <node concept="2OqwBi" id="7m" role="2GsD0m">
                      <uo k="s:originTrace" v="n:817930103570357143" />
                      <node concept="2OqwBi" id="7o" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:817930103570349006" />
                        <node concept="2OqwBi" id="7q" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:817930103570327923" />
                          <node concept="2OqwBi" id="7s" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:817930103570318414" />
                            <node concept="37vLTw" id="7u" role="2Oq$k0">
                              <ref role="3cqZAo" node="5p" resolve="node" />
                              <uo k="s:originTrace" v="n:817930103570317562" />
                            </node>
                            <node concept="3Tsc0h" id="7v" role="2OqNvi">
                              <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                              <uo k="s:originTrace" v="n:817930103570319852" />
                            </node>
                          </node>
                          <node concept="34jXtK" id="7t" role="2OqNvi">
                            <uo k="s:originTrace" v="n:817930103570348089" />
                            <node concept="3cmrfG" id="7w" role="25WWJ7">
                              <property role="3cmrfH" value="0" />
                              <uo k="s:originTrace" v="n:817930103570348296" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7r" role="2OqNvi">
                          <ref role="3Tt5mk" to="p6im:21Z4UyPhvrv" resolve="tableRef" />
                          <uo k="s:originTrace" v="n:817930103570355734" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="7p" role="2OqNvi">
                        <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                        <uo k="s:originTrace" v="n:817930103570358526" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7n" role="2LFqv$">
                      <uo k="s:originTrace" v="n:817930103570317466" />
                      <node concept="3clFbJ" id="7x" role="3cqZAp">
                        <uo k="s:originTrace" v="n:817930103570278346" />
                        <node concept="3fqX7Q" id="7y" role="3clFbw">
                          <uo k="s:originTrace" v="n:817930103570317225" />
                          <node concept="2OqwBi" id="7$" role="3fr31v">
                            <uo k="s:originTrace" v="n:817930103570317227" />
                            <node concept="2OqwBi" id="7_" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:817930103570317228" />
                              <node concept="37vLTw" id="7B" role="2Oq$k0">
                                <ref role="3cqZAo" node="6s" resolve="newTable" />
                                <uo k="s:originTrace" v="n:817930103570317229" />
                              </node>
                              <node concept="3Tsc0h" id="7C" role="2OqNvi">
                                <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                                <uo k="s:originTrace" v="n:817930103570317230" />
                              </node>
                            </node>
                            <node concept="3JPx81" id="7A" role="2OqNvi">
                              <uo k="s:originTrace" v="n:817930103570317231" />
                              <node concept="2GrUjf" id="7D" role="25WWJ7">
                                <ref role="2Gs0qQ" node="7l" resolve="column" />
                                <uo k="s:originTrace" v="n:817930103570359431" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7z" role="3clFbx">
                          <uo k="s:originTrace" v="n:817930103570278348" />
                          <node concept="3clFbF" id="7E" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7824142728408082874" />
                            <node concept="37vLTI" id="7G" role="3clFbG">
                              <uo k="s:originTrace" v="n:7824142728408103700" />
                              <node concept="2OqwBi" id="7H" role="37vLTJ">
                                <uo k="s:originTrace" v="n:7824142728408086790" />
                                <node concept="2GrUjf" id="7J" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7l" resolve="column" />
                                  <uo k="s:originTrace" v="n:7824142728408082872" />
                                </node>
                                <node concept="3TrcHB" id="7K" role="2OqNvi">
                                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                  <uo k="s:originTrace" v="n:7824142728408097653" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="7I" role="37vLTx">
                                <uo k="s:originTrace" v="n:7824142728408118094" />
                                <node concept="AH0OO" id="7L" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:7824142728408150997" />
                                  <node concept="3cmrfG" id="7N" role="AHEQo">
                                    <property role="3cmrfH" value="1" />
                                    <uo k="s:originTrace" v="n:7824142728408151015" />
                                  </node>
                                  <node concept="2OqwBi" id="7O" role="AHHXb">
                                    <uo k="s:originTrace" v="n:7824142728408140920" />
                                    <node concept="2OqwBi" id="7P" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:7824142728408121780" />
                                      <node concept="2GrUjf" id="7R" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="7l" resolve="column" />
                                        <uo k="s:originTrace" v="n:7824142728408119162" />
                                      </node>
                                      <node concept="3TrcHB" id="7S" role="2OqNvi">
                                        <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                                        <uo k="s:originTrace" v="n:7824142728408135139" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7Q" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                                      <uo k="s:originTrace" v="n:7824142728408146129" />
                                      <node concept="Xl_RD" id="7T" role="37wK5m">
                                        <property role="Xl_RC" value="\\." />
                                        <uo k="s:originTrace" v="n:7824142728408146951" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="7M" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:7824142728408114923" />
                                  <node concept="37vLTw" id="7U" role="3uHU7B">
                                    <ref role="3cqZAo" node="5q" resolve="propertyValue" />
                                    <uo k="s:originTrace" v="n:7824142728408109809" />
                                  </node>
                                  <node concept="Xl_RD" id="7V" role="3uHU7w">
                                    <property role="Xl_RC" value="." />
                                    <uo k="s:originTrace" v="n:7824142728408114968" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="7F" role="3cqZAp">
                            <uo k="s:originTrace" v="n:817930103570359620" />
                            <node concept="2OqwBi" id="7W" role="3clFbG">
                              <uo k="s:originTrace" v="n:817930103570373341" />
                              <node concept="2OqwBi" id="7X" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:817930103570360416" />
                                <node concept="37vLTw" id="7Z" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6s" resolve="newTable" />
                                  <uo k="s:originTrace" v="n:817930103570359619" />
                                </node>
                                <node concept="3Tsc0h" id="80" role="2OqNvi">
                                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                                  <uo k="s:originTrace" v="n:817930103570361660" />
                                </node>
                              </node>
                              <node concept="TSZUe" id="7Y" role="2OqNvi">
                                <uo k="s:originTrace" v="n:817930103570396178" />
                                <node concept="2OqwBi" id="81" role="25WWJ7">
                                  <uo k="s:originTrace" v="n:817930103571982566" />
                                  <node concept="2GrUjf" id="82" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7l" resolve="column" />
                                    <uo k="s:originTrace" v="n:817930103570396536" />
                                  </node>
                                  <node concept="1$rogu" id="83" role="2OqNvi">
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
                <node concept="JncvC" id="7j" role="JncvA">
                  <property role="TrG5h" value="allColumns" />
                  <uo k="s:originTrace" v="n:817930103570105044" />
                  <node concept="2jxLKc" id="84" role="1tU5fm">
                    <uo k="s:originTrace" v="n:817930103570105045" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5$" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570397296" />
          </node>
          <node concept="3clFbF" id="5_" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103574105386" />
            <node concept="37vLTI" id="85" role="3clFbG">
              <uo k="s:originTrace" v="n:817930103574111086" />
              <node concept="37vLTw" id="86" role="37vLTx">
                <ref role="3cqZAo" node="6s" resolve="newTable" />
                <uo k="s:originTrace" v="n:817930103574111289" />
              </node>
              <node concept="2OqwBi" id="87" role="37vLTJ">
                <uo k="s:originTrace" v="n:817930103574107484" />
                <node concept="37vLTw" id="88" role="2Oq$k0">
                  <ref role="3cqZAo" node="5p" resolve="node" />
                  <uo k="s:originTrace" v="n:817930103574105385" />
                </node>
                <node concept="3TrEf2" id="89" role="2OqNvi">
                  <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                  <uo k="s:originTrace" v="n:817930103574110247" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5A" role="3cqZAp">
            <uo k="s:originTrace" v="n:817930103570277126" />
          </node>
        </node>
        <node concept="3Tm6S6" id="5n" role="1B3o_S">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3cqZAl" id="5o" role="3clF45">
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="37vLTG" id="5p" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3Tqbb2" id="8a" role="1tU5fm">
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
        <node concept="37vLTG" id="5q" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3uibUv" id="8b" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Q" role="1B3o_S">
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
      <node concept="3uibUv" id="4R" role="1zkMxy">
        <ref role="3uigEE" to="79pl:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
    </node>
    <node concept="3clFb_" id="4C" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:817930103570060498" />
      <node concept="3Tmbuc" id="8c" role="1B3o_S">
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
      <node concept="3uibUv" id="8d" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3uibUv" id="8g" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
        <node concept="3uibUv" id="8h" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:817930103570060498" />
        </node>
      </node>
      <node concept="3clFbS" id="8e" role="3clF47">
        <uo k="s:originTrace" v="n:817930103570060498" />
        <node concept="3cpWs8" id="8i" role="3cqZAp">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="3cpWsn" id="8l" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="3uibUv" id="8m" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="3uibUv" id="8o" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
              <node concept="3uibUv" id="8p" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:817930103570060498" />
              </node>
            </node>
            <node concept="2ShNRf" id="8n" role="33vP2m">
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="1pGfFk" id="8q" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="3uibUv" id="8r" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
                <node concept="3uibUv" id="8s" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8j" role="3cqZAp">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="2OqwBi" id="8t" role="3clFbG">
            <uo k="s:originTrace" v="n:817930103570060498" />
            <node concept="37vLTw" id="8u" role="2Oq$k0">
              <ref role="3cqZAo" node="8l" resolve="properties" />
              <uo k="s:originTrace" v="n:817930103570060498" />
            </node>
            <node concept="liA8E" id="8v" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:817930103570060498" />
              <node concept="1BaE9c" id="8w" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="viewName$yY2f" />
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="2YIFZM" id="8y" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                  <node concept="1adDum" id="8z" role="37wK5m">
                    <property role="1adDun" value="0x26d1395b1ee643adL" />
                    <uo k="s:originTrace" v="n:817930103570060498" />
                  </node>
                  <node concept="1adDum" id="8$" role="37wK5m">
                    <property role="1adDun" value="0xb522c0cdd699ded3L" />
                    <uo k="s:originTrace" v="n:817930103570060498" />
                  </node>
                  <node concept="1adDum" id="8_" role="37wK5m">
                    <property role="1adDun" value="0x619ceb902420e379L" />
                    <uo k="s:originTrace" v="n:817930103570060498" />
                  </node>
                  <node concept="1adDum" id="8A" role="37wK5m">
                    <property role="1adDun" value="0x7642dbf63a87dc6eL" />
                    <uo k="s:originTrace" v="n:817930103570060498" />
                  </node>
                  <node concept="Xl_RD" id="8B" role="37wK5m">
                    <property role="Xl_RC" value="viewName" />
                    <uo k="s:originTrace" v="n:817930103570060498" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="8x" role="37wK5m">
                <uo k="s:originTrace" v="n:817930103570060498" />
                <node concept="1pGfFk" id="8C" role="2ShVmc">
                  <ref role="37wK5l" node="4N" resolve="Select_Constraints.ViewName_Property" />
                  <uo k="s:originTrace" v="n:817930103570060498" />
                  <node concept="Xjq3P" id="8D" role="37wK5m">
                    <uo k="s:originTrace" v="n:817930103570060498" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8k" role="3cqZAp">
          <uo k="s:originTrace" v="n:817930103570060498" />
          <node concept="37vLTw" id="8E" role="3clFbG">
            <ref role="3cqZAo" node="8l" resolve="properties" />
            <uo k="s:originTrace" v="n:817930103570060498" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:817930103570060498" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8F">
    <property role="3GE5qa" value="where.condition" />
    <property role="TrG5h" value="SimpleCondition_Constraints" />
    <uo k="s:originTrace" v="n:7495241453935353792" />
    <node concept="3Tm1VV" id="8G" role="1B3o_S">
      <uo k="s:originTrace" v="n:7495241453935353792" />
    </node>
    <node concept="3uibUv" id="8H" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7495241453935353792" />
    </node>
    <node concept="3clFbW" id="8I" role="jymVt">
      <uo k="s:originTrace" v="n:7495241453935353792" />
      <node concept="3cqZAl" id="8K" role="3clF45">
        <uo k="s:originTrace" v="n:7495241453935353792" />
      </node>
      <node concept="3clFbS" id="8L" role="3clF47">
        <uo k="s:originTrace" v="n:7495241453935353792" />
        <node concept="XkiVB" id="8N" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7495241453935353792" />
          <node concept="1BaE9c" id="8O" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SimpleCondition$89" />
            <uo k="s:originTrace" v="n:7495241453935353792" />
            <node concept="2YIFZM" id="8P" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7495241453935353792" />
              <node concept="1adDum" id="8Q" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
              <node concept="1adDum" id="8R" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
              <node concept="1adDum" id="8S" role="37wK5m">
                <property role="1adDun" value="0x5eeb1b6c0699ea18L" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
              <node concept="Xl_RD" id="8T" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.SimpleCondition" />
                <uo k="s:originTrace" v="n:7495241453935353792" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8M" role="1B3o_S">
        <uo k="s:originTrace" v="n:7495241453935353792" />
      </node>
    </node>
    <node concept="2tJIrI" id="8J" role="jymVt">
      <uo k="s:originTrace" v="n:7495241453935353792" />
    </node>
  </node>
  <node concept="312cEu" id="8U">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="TableReference_Constraints" />
    <uo k="s:originTrace" v="n:4258597989027421027" />
    <node concept="3Tm1VV" id="8V" role="1B3o_S">
      <uo k="s:originTrace" v="n:4258597989027421027" />
    </node>
    <node concept="3uibUv" id="8W" role="1zkMxy">
      <ref role="3uigEE" to="79pl:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4258597989027421027" />
    </node>
    <node concept="3clFbW" id="8X" role="jymVt">
      <uo k="s:originTrace" v="n:4258597989027421027" />
      <node concept="3cqZAl" id="90" role="3clF45">
        <uo k="s:originTrace" v="n:4258597989027421027" />
      </node>
      <node concept="3clFbS" id="91" role="3clF47">
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="XkiVB" id="93" role="3cqZAp">
          <ref role="37wK5l" to="79pl:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="1BaE9c" id="94" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="TableReference$DN" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="2YIFZM" id="95" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="1adDum" id="96" role="37wK5m">
                <property role="1adDun" value="0x26d1395b1ee643adL" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="1adDum" id="97" role="37wK5m">
                <property role="1adDun" value="0xb522c0cdd699ded3L" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="1adDum" id="98" role="37wK5m">
                <property role="1adDun" value="0x207f13a8b545f6deL" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="Xl_RD" id="99" role="37wK5m">
                <property role="Xl_RC" value="QueryLanguage.structure.TableReference" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="92" role="1B3o_S">
        <uo k="s:originTrace" v="n:4258597989027421027" />
      </node>
    </node>
    <node concept="2tJIrI" id="8Y" role="jymVt">
      <uo k="s:originTrace" v="n:4258597989027421027" />
    </node>
    <node concept="3clFb_" id="8Z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedReferences" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:4258597989027421027" />
      <node concept="3Tmbuc" id="9a" role="1B3o_S">
        <uo k="s:originTrace" v="n:4258597989027421027" />
      </node>
      <node concept="3uibUv" id="9b" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="3uibUv" id="9e" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
        <node concept="3uibUv" id="9f" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4258597989027421027" />
        </node>
      </node>
      <node concept="3clFbS" id="9c" role="3clF47">
        <uo k="s:originTrace" v="n:4258597989027421027" />
        <node concept="3cpWs8" id="9g" role="3cqZAp">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="3cpWsn" id="9k" role="3cpWs9">
            <property role="TrG5h" value="d0" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="3uibUv" id="9l" role="1tU5fm">
              <ref role="3uigEE" to="79pl:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
            </node>
            <node concept="2ShNRf" id="9m" role="33vP2m">
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="YeOm9" id="9n" role="2ShVmc">
                <uo k="s:originTrace" v="n:4258597989027421027" />
                <node concept="1Y3b0j" id="9o" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pl:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pl:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                  <node concept="1BaE9c" id="9p" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="tableRef$boeY" />
                    <uo k="s:originTrace" v="n:4258597989027421027" />
                    <node concept="2YIFZM" id="9v" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:4258597989027421027" />
                      <node concept="1adDum" id="9w" role="37wK5m">
                        <property role="1adDun" value="0x26d1395b1ee643adL" />
                        <uo k="s:originTrace" v="n:4258597989027421027" />
                      </node>
                      <node concept="1adDum" id="9x" role="37wK5m">
                        <property role="1adDun" value="0xb522c0cdd699ded3L" />
                        <uo k="s:originTrace" v="n:4258597989027421027" />
                      </node>
                      <node concept="1adDum" id="9y" role="37wK5m">
                        <property role="1adDun" value="0x207f13a8b545f6deL" />
                        <uo k="s:originTrace" v="n:4258597989027421027" />
                      </node>
                      <node concept="1adDum" id="9z" role="37wK5m">
                        <property role="1adDun" value="0x207f13a8b545f6dfL" />
                        <uo k="s:originTrace" v="n:4258597989027421027" />
                      </node>
                      <node concept="Xl_RD" id="9$" role="37wK5m">
                        <property role="Xl_RC" value="tableRef" />
                        <uo k="s:originTrace" v="n:4258597989027421027" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="9q" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4258597989027421027" />
                  </node>
                  <node concept="Xjq3P" id="9r" role="37wK5m">
                    <uo k="s:originTrace" v="n:4258597989027421027" />
                  </node>
                  <node concept="3clFbT" id="9s" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:4258597989027421027" />
                  </node>
                  <node concept="3clFbT" id="9t" role="37wK5m">
                    <uo k="s:originTrace" v="n:4258597989027421027" />
                  </node>
                  <node concept="3clFb_" id="9u" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:4258597989027421027" />
                    <node concept="3Tm1VV" id="9_" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4258597989027421027" />
                    </node>
                    <node concept="3uibUv" id="9A" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:4258597989027421027" />
                    </node>
                    <node concept="2AHcQZ" id="9B" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:4258597989027421027" />
                    </node>
                    <node concept="3clFbS" id="9C" role="3clF47">
                      <uo k="s:originTrace" v="n:4258597989027421027" />
                      <node concept="3cpWs6" id="9E" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4258597989027421027" />
                        <node concept="2YIFZM" id="9F" role="3cqZAk">
                          <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
                          <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                          <uo k="s:originTrace" v="n:4258597989027530045" />
                          <node concept="35c_gC" id="9G" role="37wK5m">
                            <ref role="35c_gD" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                            <uo k="s:originTrace" v="n:4258597989027530045" />
                          </node>
                          <node concept="2ShNRf" id="9H" role="37wK5m">
                            <uo k="s:originTrace" v="n:4258597989027530045" />
                            <node concept="1pGfFk" id="9I" role="2ShVmc">
                              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                              <uo k="s:originTrace" v="n:4258597989027530045" />
                              <node concept="Xl_RD" id="9J" role="37wK5m">
                                <property role="Xl_RC" value="r:7edf4f40-f81a-49df-87e2-b00351b83558(QueryLanguage.constraints)" />
                                <uo k="s:originTrace" v="n:4258597989027530045" />
                              </node>
                              <node concept="Xl_RD" id="9K" role="37wK5m">
                                <property role="Xl_RC" value="4258597989027530045" />
                                <uo k="s:originTrace" v="n:4258597989027530045" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="9D" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:4258597989027421027" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9h" role="3cqZAp">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="3cpWsn" id="9L" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="3uibUv" id="9M" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="3uibUv" id="9O" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
              <node concept="3uibUv" id="9P" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
            </node>
            <node concept="2ShNRf" id="9N" role="33vP2m">
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="1pGfFk" id="9Q" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
                <node concept="3uibUv" id="9R" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
                <node concept="3uibUv" id="9S" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9i" role="3cqZAp">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="2OqwBi" id="9T" role="3clFbG">
            <uo k="s:originTrace" v="n:4258597989027421027" />
            <node concept="37vLTw" id="9U" role="2Oq$k0">
              <ref role="3cqZAo" node="9L" resolve="references" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
            </node>
            <node concept="liA8E" id="9V" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:4258597989027421027" />
              <node concept="2OqwBi" id="9W" role="37wK5m">
                <uo k="s:originTrace" v="n:4258597989027421027" />
                <node concept="37vLTw" id="9Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="9k" resolve="d0" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
                <node concept="liA8E" id="9Z" role="2OqNvi">
                  <ref role="37wK5l" to="79pl:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:4258597989027421027" />
                </node>
              </node>
              <node concept="37vLTw" id="9X" role="37wK5m">
                <ref role="3cqZAo" node="9k" resolve="d0" />
                <uo k="s:originTrace" v="n:4258597989027421027" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9j" role="3cqZAp">
          <uo k="s:originTrace" v="n:4258597989027421027" />
          <node concept="37vLTw" id="a0" role="3clFbG">
            <ref role="3cqZAo" node="9L" resolve="references" />
            <uo k="s:originTrace" v="n:4258597989027421027" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="9d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:4258597989027421027" />
      </node>
    </node>
  </node>
</model>

