<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fb4f137(checkpoints/ActorLanguage.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="be74" ref="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
    <import index="fh8z" ref="r:ba8769f3-331d-4a7d-b538-0ce586b24578(ActorLanguage.behavior)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ywuz" ref="r:c6ce92e7-5a98-4a6f-866a-ec8b9e945dd8(com.mbeddr.core.expressions.behavior)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="mj1l" ref="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="clbe" ref="r:61d840b4-12c1-49ea-b142-b2a1550a9b15(com.mbeddr.core.udt.structure)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="2990591960991114251" name="jetbrains.mps.lang.typesystem.structure.OriginalNodeId" flags="ng" index="6wLe0">
        <property id="2990591960991114264" name="nodeId" index="6wLej" />
        <property id="2990591960991114295" name="modelId" index="6wLeW" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1176743162354" name="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference" flags="nn" index="3VmV3z">
        <property id="1176743296073" name="name" index="3VnrPo" />
        <child id="1176743202636" name="type" index="3Vn4Tt" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="39dXUE" id="0">
    <node concept="39e2AJ" id="1" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="6" role="39e3Y0">
        <ref role="39e2AK" to="be74:1I8eAoczHdO" resolve="check_CreateMessage" />
        <node concept="385nmt" id="9" role="385vvn">
          <property role="385vuF" value="check_CreateMessage" />
          <node concept="3u3nmq" id="b" role="385v07">
            <property role="3u3nmv" value="1983899845828465524" />
          </node>
        </node>
        <node concept="39e2AT" id="a" role="39e2AY">
          <ref role="39e2AS" node="1x" resolve="check_CreateMessage_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="7" role="39e3Y0">
        <ref role="39e2AK" to="be74:7t$FNisEV3i" resolve="check_ExternalTypeDefinition" />
        <node concept="385nmt" id="c" role="385vvn">
          <property role="385vuF" value="check_ExternalTypeDefinition" />
          <node concept="3u3nmq" id="e" role="385v07">
            <property role="3u3nmv" value="8603193828686147794" />
          </node>
        </node>
        <node concept="39e2AT" id="d" role="39e2AY">
          <ref role="39e2AS" node="3Z" resolve="check_ExternalTypeDefinition_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="8" role="39e3Y0">
        <ref role="39e2AK" to="be74:5jEeCRIsWYD" resolve="check_MessageStruct" />
        <node concept="385nmt" id="f" role="385vvn">
          <property role="385vuF" value="check_MessageStruct" />
          <node concept="3u3nmq" id="h" role="385v07">
            <property role="3u3nmv" value="6118767425001607081" />
          </node>
        </node>
        <node concept="39e2AT" id="g" role="39e2AY">
          <ref role="39e2AS" node="6j" resolve="check_MessageStruct_NonTypesystemRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="2" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="i" role="39e3Y0">
        <ref role="39e2AK" to="be74:1I8eAoczHdO" resolve="check_CreateMessage" />
        <node concept="385nmt" id="l" role="385vvn">
          <property role="385vuF" value="check_CreateMessage" />
          <node concept="3u3nmq" id="n" role="385v07">
            <property role="3u3nmv" value="1983899845828465524" />
          </node>
        </node>
        <node concept="39e2AT" id="m" role="39e2AY">
          <ref role="39e2AS" node="1_" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="j" role="39e3Y0">
        <ref role="39e2AK" to="be74:7t$FNisEV3i" resolve="check_ExternalTypeDefinition" />
        <node concept="385nmt" id="o" role="385vvn">
          <property role="385vuF" value="check_ExternalTypeDefinition" />
          <node concept="3u3nmq" id="q" role="385v07">
            <property role="3u3nmv" value="8603193828686147794" />
          </node>
        </node>
        <node concept="39e2AT" id="p" role="39e2AY">
          <ref role="39e2AS" node="43" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="k" role="39e3Y0">
        <ref role="39e2AK" to="be74:5jEeCRIsWYD" resolve="check_MessageStruct" />
        <node concept="385nmt" id="r" role="385vvn">
          <property role="385vuF" value="check_MessageStruct" />
          <node concept="3u3nmq" id="t" role="385v07">
            <property role="3u3nmv" value="6118767425001607081" />
          </node>
        </node>
        <node concept="39e2AT" id="s" role="39e2AY">
          <ref role="39e2AS" node="6n" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="3" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="u" role="39e3Y0">
        <ref role="39e2AK" to="be74:1I8eAoczHdO" resolve="check_CreateMessage" />
        <node concept="385nmt" id="x" role="385vvn">
          <property role="385vuF" value="check_CreateMessage" />
          <node concept="3u3nmq" id="z" role="385v07">
            <property role="3u3nmv" value="1983899845828465524" />
          </node>
        </node>
        <node concept="39e2AT" id="y" role="39e2AY">
          <ref role="39e2AS" node="1z" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="v" role="39e3Y0">
        <ref role="39e2AK" to="be74:7t$FNisEV3i" resolve="check_ExternalTypeDefinition" />
        <node concept="385nmt" id="$" role="385vvn">
          <property role="385vuF" value="check_ExternalTypeDefinition" />
          <node concept="3u3nmq" id="A" role="385v07">
            <property role="3u3nmv" value="8603193828686147794" />
          </node>
        </node>
        <node concept="39e2AT" id="_" role="39e2AY">
          <ref role="39e2AS" node="41" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="w" role="39e3Y0">
        <ref role="39e2AK" to="be74:5jEeCRIsWYD" resolve="check_MessageStruct" />
        <node concept="385nmt" id="B" role="385vvn">
          <property role="385vuF" value="check_MessageStruct" />
          <node concept="3u3nmq" id="D" role="385v07">
            <property role="3u3nmv" value="6118767425001607081" />
          </node>
        </node>
        <node concept="39e2AT" id="C" role="39e2AY">
          <ref role="39e2AS" node="6l" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4" role="39e2AI">
      <property role="39e3Y2" value="map_RuleClassifierMethod" />
      <node concept="39e2AG" id="E" role="39e3Y0">
        <ref role="39e2AK" to="be74:5jEeCRItbLw" resolve="checkIfMemberExists" />
        <node concept="385nmt" id="F" role="385vvn">
          <property role="385vuF" value="_additional_checkIfMemberExists(node&lt;MessageStruct&gt;,string):boolean" />
          <node concept="3u3nmq" id="H" role="385v07">
            <property role="3u3nmv" value="6118767425001667680" />
          </node>
        </node>
        <node concept="39e2AT" id="G" role="39e2AY">
          <ref role="39e2AS" node="6o" resolve="_additional_checkIfMemberExists" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="5" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="I" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="J" role="39e2AY">
          <ref role="39e2AS" node="K" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="K">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="L" role="jymVt">
      <node concept="3clFbS" id="O" role="3clF47">
        <node concept="9aQIb" id="R" role="3cqZAp">
          <node concept="3clFbS" id="U" role="9aQI4">
            <node concept="3cpWs8" id="V" role="3cqZAp">
              <node concept="3cpWsn" id="X" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="Y" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="Z" role="33vP2m">
                  <node concept="1pGfFk" id="10" role="2ShVmc">
                    <ref role="37wK5l" node="1y" resolve="check_CreateMessage_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="W" role="3cqZAp">
              <node concept="2OqwBi" id="11" role="3clFbG">
                <node concept="2OqwBi" id="12" role="2Oq$k0">
                  <node concept="Xjq3P" id="14" role="2Oq$k0" />
                  <node concept="2OwXpG" id="15" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="13" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="16" role="37wK5m">
                    <ref role="3cqZAo" node="X" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="S" role="3cqZAp">
          <node concept="3clFbS" id="17" role="9aQI4">
            <node concept="3cpWs8" id="18" role="3cqZAp">
              <node concept="3cpWsn" id="1a" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="1b" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="1c" role="33vP2m">
                  <node concept="1pGfFk" id="1d" role="2ShVmc">
                    <ref role="37wK5l" node="40" resolve="check_ExternalTypeDefinition_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="19" role="3cqZAp">
              <node concept="2OqwBi" id="1e" role="3clFbG">
                <node concept="2OqwBi" id="1f" role="2Oq$k0">
                  <node concept="Xjq3P" id="1h" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1i" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="1g" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1j" role="37wK5m">
                    <ref role="3cqZAo" node="1a" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="T" role="3cqZAp">
          <node concept="3clFbS" id="1k" role="9aQI4">
            <node concept="3cpWs8" id="1l" role="3cqZAp">
              <node concept="3cpWsn" id="1n" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="1o" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="1p" role="33vP2m">
                  <node concept="1pGfFk" id="1q" role="2ShVmc">
                    <ref role="37wK5l" node="6k" resolve="check_MessageStruct_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1m" role="3cqZAp">
              <node concept="2OqwBi" id="1r" role="3clFbG">
                <node concept="2OqwBi" id="1s" role="2Oq$k0">
                  <node concept="Xjq3P" id="1u" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1v" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="1t" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1w" role="37wK5m">
                    <ref role="3cqZAo" node="1n" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="P" role="1B3o_S" />
      <node concept="3cqZAl" id="Q" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="M" role="1B3o_S" />
    <node concept="3uibUv" id="N" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="1x">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="check_CreateMessage_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1983899845828465524" />
    <node concept="3clFbW" id="1y" role="jymVt">
      <uo k="s:originTrace" v="n:1983899845828465524" />
      <node concept="3clFbS" id="1E" role="3clF47">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
      <node concept="3Tm1VV" id="1F" role="1B3o_S">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
      <node concept="3cqZAl" id="1G" role="3clF45">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
    </node>
    <node concept="3clFb_" id="1z" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1983899845828465524" />
      <node concept="3cqZAl" id="1H" role="3clF45">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
      <node concept="37vLTG" id="1I" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="createMessage" />
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="3Tqbb2" id="1N" role="1tU5fm">
          <uo k="s:originTrace" v="n:1983899845828465524" />
        </node>
      </node>
      <node concept="37vLTG" id="1J" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="3uibUv" id="1O" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1983899845828465524" />
        </node>
      </node>
      <node concept="37vLTG" id="1K" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="3uibUv" id="1P" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1983899845828465524" />
        </node>
      </node>
      <node concept="3clFbS" id="1L" role="3clF47">
        <uo k="s:originTrace" v="n:1983899845828465525" />
        <node concept="3clFbH" id="1Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828478218" />
        </node>
        <node concept="3clFbJ" id="1R" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845832741414" />
          <node concept="3clFbS" id="20" role="3clFbx">
            <uo k="s:originTrace" v="n:1983899845832741416" />
            <node concept="3cpWs6" id="22" role="3cqZAp">
              <uo k="s:originTrace" v="n:1983899845832756475" />
            </node>
          </node>
          <node concept="22lmx$" id="21" role="3clFbw">
            <uo k="s:originTrace" v="n:8603193828692510820" />
            <node concept="2OqwBi" id="23" role="3uHU7B">
              <uo k="s:originTrace" v="n:1983899845832743174" />
              <node concept="37vLTw" id="25" role="2Oq$k0">
                <ref role="3cqZAo" node="1I" resolve="createMessage" />
                <uo k="s:originTrace" v="n:1983899845832741829" />
              </node>
              <node concept="1BlSNk" id="26" role="2OqNvi">
                <ref role="1BmUXE" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
                <ref role="1Bn3mz" to="o1mc:5VO4ZzPZMLk" resolve="receivedMessage" />
                <uo k="s:originTrace" v="n:1983899845832749622" />
              </node>
            </node>
            <node concept="2OqwBi" id="24" role="3uHU7w">
              <uo k="s:originTrace" v="n:8603193828692502851" />
              <node concept="2OqwBi" id="27" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8603193828692494875" />
                <node concept="37vLTw" id="29" role="2Oq$k0">
                  <ref role="3cqZAo" node="1I" resolve="createMessage" />
                  <uo k="s:originTrace" v="n:8603193828692493530" />
                </node>
                <node concept="3TrEf2" id="2a" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
                  <uo k="s:originTrace" v="n:8603193828692500702" />
                </node>
              </node>
              <node concept="1mIQ4w" id="28" role="2OqNvi">
                <uo k="s:originTrace" v="n:8603193828692507872" />
                <node concept="chp4Y" id="2b" role="cj9EA">
                  <ref role="cht4Q" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                  <uo k="s:originTrace" v="n:8603193828692508308" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1S" role="3cqZAp">
          <uo k="s:originTrace" v="n:8603193828692492684" />
        </node>
        <node concept="3cpWs8" id="1T" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828478264" />
          <node concept="3cpWsn" id="2c" role="3cpWs9">
            <property role="TrG5h" value="payloadType" />
            <uo k="s:originTrace" v="n:1983899845828478267" />
            <node concept="3Tqbb2" id="2d" role="1tU5fm">
              <ref role="ehGHo" to="tpck:hYa1RjM" resolve="IType" />
              <uo k="s:originTrace" v="n:1983899845828478262" />
            </node>
            <node concept="2OqwBi" id="2e" role="33vP2m">
              <uo k="s:originTrace" v="n:1983899845828476131" />
              <node concept="2OqwBi" id="2f" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1983899845828473284" />
                <node concept="2OqwBi" id="2h" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1983899845828466887" />
                  <node concept="37vLTw" id="2j" role="2Oq$k0">
                    <ref role="3cqZAo" node="1I" resolve="createMessage" />
                    <uo k="s:originTrace" v="n:1983899845828465543" />
                  </node>
                  <node concept="3TrEf2" id="2k" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
                    <uo k="s:originTrace" v="n:1983899845828471748" />
                  </node>
                </node>
                <node concept="2qgKlT" id="2i" role="2OqNvi">
                  <ref role="37wK5l" to="fh8z:1I8eAobiPlC" resolve="getPayload" />
                  <uo k="s:originTrace" v="n:1983899845828475419" />
                </node>
              </node>
              <node concept="2qgKlT" id="2g" role="2OqNvi">
                <ref role="37wK5l" to="ywuz:1LDGRqyYkTX" resolve="getDeclaredType" />
                <uo k="s:originTrace" v="n:1983899845828477721" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1U" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828481098" />
          <node concept="3cpWsn" id="2l" role="3cpWs9">
            <property role="TrG5h" value="messageStruct" />
            <uo k="s:originTrace" v="n:1983899845828481101" />
            <node concept="3Tqbb2" id="2m" role="1tU5fm">
              <ref role="ehGHo" to="o1mc:1I8eAob$7vQ" resolve="MessageStruct" />
              <uo k="s:originTrace" v="n:1983899845828481096" />
            </node>
            <node concept="2OqwBi" id="2n" role="33vP2m">
              <uo k="s:originTrace" v="n:1983899845828488077" />
              <node concept="2OqwBi" id="2o" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1983899845828482533" />
                <node concept="37vLTw" id="2q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1I" resolve="createMessage" />
                  <uo k="s:originTrace" v="n:1983899845828481183" />
                </node>
                <node concept="2Xjw5R" id="2r" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1983899845828485828" />
                  <node concept="1xMEDy" id="2s" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1983899845828485830" />
                    <node concept="chp4Y" id="2t" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                      <uo k="s:originTrace" v="n:1983899845828486002" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="2p" role="2OqNvi">
                <ref role="3Tt5mk" to="o1mc:1I8eAob$7vP" resolve="messageDefinition" />
                <uo k="s:originTrace" v="n:1983899845828496342" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1V" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828480068" />
        </node>
        <node concept="3cpWs8" id="1W" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828497255" />
          <node concept="3cpWsn" id="2u" role="3cpWs9">
            <property role="TrG5h" value="messageTypes" />
            <uo k="s:originTrace" v="n:1983899845828497258" />
            <node concept="2I9FWS" id="2v" role="1tU5fm">
              <ref role="2I9WkF" to="tpck:hYa1RjM" resolve="IType" />
              <uo k="s:originTrace" v="n:1983899845828497253" />
            </node>
            <node concept="2ShNRf" id="2w" role="33vP2m">
              <uo k="s:originTrace" v="n:1983899845828497356" />
              <node concept="2T8Vx0" id="2x" role="2ShVmc">
                <uo k="s:originTrace" v="n:1983899845828497354" />
                <node concept="2I9FWS" id="2y" role="2T96Bj">
                  <ref role="2I9WkF" to="tpck:hYa1RjM" resolve="IType" />
                  <uo k="s:originTrace" v="n:1983899845828497355" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1X" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828499090" />
          <node concept="2GrKxI" id="2z" role="2Gsz3X">
            <property role="TrG5h" value="m" />
            <uo k="s:originTrace" v="n:1983899845828499092" />
          </node>
          <node concept="2OqwBi" id="2$" role="2GsD0m">
            <uo k="s:originTrace" v="n:1983899845828544552" />
            <node concept="2OqwBi" id="2A" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1983899845828501002" />
              <node concept="37vLTw" id="2C" role="2Oq$k0">
                <ref role="3cqZAo" node="2l" resolve="messageStruct" />
                <uo k="s:originTrace" v="n:1983899845828499178" />
              </node>
              <node concept="3Tsc0h" id="2D" role="2OqNvi">
                <ref role="3TtcxE" to="clbe:6a5SBPfXXIi" resolve="members" />
                <uo k="s:originTrace" v="n:1983899845828504324" />
              </node>
            </node>
            <node concept="v3k3i" id="2B" role="2OqNvi">
              <uo k="s:originTrace" v="n:1983899845828572917" />
              <node concept="chp4Y" id="2E" role="v3oSu">
                <ref role="cht4Q" to="clbe:56ytRgsLg$o" resolve="Member" />
                <uo k="s:originTrace" v="n:1983899845828573668" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2_" role="2LFqv$">
            <uo k="s:originTrace" v="n:1983899845828499096" />
            <node concept="3clFbF" id="2F" role="3cqZAp">
              <uo k="s:originTrace" v="n:1983899845828504888" />
              <node concept="2OqwBi" id="2G" role="3clFbG">
                <uo k="s:originTrace" v="n:1983899845828512754" />
                <node concept="37vLTw" id="2H" role="2Oq$k0">
                  <ref role="3cqZAo" node="2u" resolve="messageTypes" />
                  <uo k="s:originTrace" v="n:1983899845828504887" />
                </node>
                <node concept="TSZUe" id="2I" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1983899845828529459" />
                  <node concept="2OqwBi" id="2J" role="25WWJ7">
                    <uo k="s:originTrace" v="n:1983899845828530529" />
                    <node concept="2GrUjf" id="2K" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2z" resolve="m" />
                      <uo k="s:originTrace" v="n:1983899845828529742" />
                    </node>
                    <node concept="3TrEf2" id="2L" role="2OqNvi">
                      <ref role="3Tt5mk" to="mj1l:hEaDaGor64" resolve="type" />
                      <uo k="s:originTrace" v="n:1983899845828579131" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828580476" />
        </node>
        <node concept="3clFbJ" id="1Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828580829" />
          <node concept="3clFbS" id="2M" role="3clFbx">
            <uo k="s:originTrace" v="n:1983899845828580831" />
            <node concept="3cpWs8" id="2O" role="3cqZAp">
              <uo k="s:originTrace" v="n:1983899845828605255" />
              <node concept="3cpWsn" id="2Q" role="3cpWs9">
                <property role="TrG5h" value="errorString" />
                <uo k="s:originTrace" v="n:1983899845828605258" />
                <node concept="17QB3L" id="2R" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1983899845828605253" />
                </node>
                <node concept="3cpWs3" id="2S" role="33vP2m">
                  <uo k="s:originTrace" v="n:1983899845828618223" />
                  <node concept="Xl_RD" id="2T" role="3uHU7w">
                    <property role="Xl_RC" value="not found in struct message definition" />
                    <uo k="s:originTrace" v="n:1983899845828618255" />
                  </node>
                  <node concept="3cpWs3" id="2U" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1983899845828612823" />
                    <node concept="Xl_RD" id="2V" role="3uHU7B">
                      <property role="Xl_RC" value="Element of type " />
                      <uo k="s:originTrace" v="n:1983899845828608146" />
                    </node>
                    <node concept="2OqwBi" id="2W" role="3uHU7w">
                      <uo k="s:originTrace" v="n:1983899845828614108" />
                      <node concept="37vLTw" id="2X" role="2Oq$k0">
                        <ref role="3cqZAo" node="2c" resolve="payloadType" />
                        <uo k="s:originTrace" v="n:1983899845828613207" />
                      </node>
                      <node concept="2qgKlT" id="2Y" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
                        <uo k="s:originTrace" v="n:1983899845828614801" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="2P" role="3cqZAp">
              <uo k="s:originTrace" v="n:1983899845828605224" />
              <node concept="3clFbS" id="2Z" role="9aQI4">
                <node concept="3cpWs8" id="31" role="3cqZAp">
                  <node concept="3cpWsn" id="33" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="34" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="35" role="33vP2m">
                      <node concept="1pGfFk" id="36" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="32" role="3cqZAp">
                  <node concept="3cpWsn" id="37" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="38" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="39" role="33vP2m">
                      <node concept="3VmV3z" id="3a" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="3c" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3b" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="3d" role="37wK5m">
                          <ref role="3cqZAo" node="1I" resolve="createMessage" />
                          <uo k="s:originTrace" v="n:1983899845828618429" />
                        </node>
                        <node concept="37vLTw" id="3e" role="37wK5m">
                          <ref role="3cqZAo" node="2Q" resolve="errorString" />
                          <uo k="s:originTrace" v="n:1983899845828618419" />
                        </node>
                        <node concept="Xl_RD" id="3f" role="37wK5m">
                          <property role="Xl_RC" value="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="3g" role="37wK5m">
                          <property role="Xl_RC" value="1983899845828605224" />
                        </node>
                        <node concept="10Nm6u" id="3h" role="37wK5m" />
                        <node concept="37vLTw" id="3i" role="37wK5m">
                          <ref role="3cqZAo" node="33" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="30" role="lGtFl">
                <property role="6wLej" value="1983899845828605224" />
                <property role="6wLeW" value="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2N" role="3clFbw">
            <uo k="s:originTrace" v="n:1983899845830022169" />
            <node concept="2OqwBi" id="3j" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1983899845828604929" />
              <node concept="37vLTw" id="3l" role="2Oq$k0">
                <ref role="3cqZAo" node="2u" resolve="messageTypes" />
                <uo k="s:originTrace" v="n:1983899845828604930" />
              </node>
              <node concept="1z4cxt" id="3m" role="2OqNvi">
                <uo k="s:originTrace" v="n:1983899845829997805" />
                <node concept="1bVj0M" id="3n" role="23t8la">
                  <uo k="s:originTrace" v="n:1983899845829997807" />
                  <node concept="3clFbS" id="3o" role="1bW5cS">
                    <uo k="s:originTrace" v="n:1983899845829997808" />
                    <node concept="3clFbF" id="3q" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1983899845829998705" />
                      <node concept="17R0WA" id="3r" role="3clFbG">
                        <uo k="s:originTrace" v="n:1983899845830012795" />
                        <node concept="2OqwBi" id="3s" role="3uHU7w">
                          <uo k="s:originTrace" v="n:1983899845830018733" />
                          <node concept="37vLTw" id="3u" role="2Oq$k0">
                            <ref role="3cqZAo" node="2c" resolve="payloadType" />
                            <uo k="s:originTrace" v="n:1983899845830014037" />
                          </node>
                          <node concept="2yIwOk" id="3v" role="2OqNvi">
                            <uo k="s:originTrace" v="n:1983899845830021760" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3t" role="3uHU7B">
                          <uo k="s:originTrace" v="n:1983899845830000394" />
                          <node concept="37vLTw" id="3w" role="2Oq$k0">
                            <ref role="3cqZAo" node="3p" resolve="it" />
                            <uo k="s:originTrace" v="n:1983899845829998704" />
                          </node>
                          <node concept="2yIwOk" id="3x" role="2OqNvi">
                            <uo k="s:originTrace" v="n:1983899845830006630" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="3p" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:1983899845829997809" />
                    <node concept="2jxLKc" id="3y" role="1tU5fm">
                      <uo k="s:originTrace" v="n:1983899845829997810" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="3k" role="2OqNvi">
              <uo k="s:originTrace" v="n:1983899845830025134" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1M" role="1B3o_S">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
    </node>
    <node concept="3clFb_" id="1$" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1983899845828465524" />
      <node concept="3bZ5Sz" id="3z" role="3clF45">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
      <node concept="3clFbS" id="3$" role="3clF47">
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="3cpWs6" id="3A" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828465524" />
          <node concept="35c_gC" id="3B" role="3cqZAk">
            <ref role="35c_gD" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
            <uo k="s:originTrace" v="n:1983899845828465524" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
    </node>
    <node concept="3clFb_" id="1_" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1983899845828465524" />
      <node concept="37vLTG" id="3C" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="3Tqbb2" id="3G" role="1tU5fm">
          <uo k="s:originTrace" v="n:1983899845828465524" />
        </node>
      </node>
      <node concept="3clFbS" id="3D" role="3clF47">
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="9aQIb" id="3H" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828465524" />
          <node concept="3clFbS" id="3I" role="9aQI4">
            <uo k="s:originTrace" v="n:1983899845828465524" />
            <node concept="3cpWs6" id="3J" role="3cqZAp">
              <uo k="s:originTrace" v="n:1983899845828465524" />
              <node concept="2ShNRf" id="3K" role="3cqZAk">
                <uo k="s:originTrace" v="n:1983899845828465524" />
                <node concept="1pGfFk" id="3L" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1983899845828465524" />
                  <node concept="2OqwBi" id="3M" role="37wK5m">
                    <uo k="s:originTrace" v="n:1983899845828465524" />
                    <node concept="2OqwBi" id="3O" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1983899845828465524" />
                      <node concept="liA8E" id="3Q" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1983899845828465524" />
                      </node>
                      <node concept="2JrnkZ" id="3R" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1983899845828465524" />
                        <node concept="37vLTw" id="3S" role="2JrQYb">
                          <ref role="3cqZAo" node="3C" resolve="argument" />
                          <uo k="s:originTrace" v="n:1983899845828465524" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3P" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1983899845828465524" />
                      <node concept="1rXfSq" id="3T" role="37wK5m">
                        <ref role="37wK5l" node="1$" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1983899845828465524" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="3N" role="37wK5m">
                    <uo k="s:originTrace" v="n:1983899845828465524" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3E" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
      <node concept="3Tm1VV" id="3F" role="1B3o_S">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
    </node>
    <node concept="3clFb_" id="1A" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1983899845828465524" />
      <node concept="3clFbS" id="3U" role="3clF47">
        <uo k="s:originTrace" v="n:1983899845828465524" />
        <node concept="3cpWs6" id="3X" role="3cqZAp">
          <uo k="s:originTrace" v="n:1983899845828465524" />
          <node concept="3clFbT" id="3Y" role="3cqZAk">
            <uo k="s:originTrace" v="n:1983899845828465524" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3V" role="3clF45">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
      <node concept="3Tm1VV" id="3W" role="1B3o_S">
        <uo k="s:originTrace" v="n:1983899845828465524" />
      </node>
    </node>
    <node concept="3uibUv" id="1B" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1983899845828465524" />
    </node>
    <node concept="3uibUv" id="1C" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1983899845828465524" />
    </node>
    <node concept="3Tm1VV" id="1D" role="1B3o_S">
      <uo k="s:originTrace" v="n:1983899845828465524" />
    </node>
  </node>
  <node concept="312cEu" id="3Z">
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="check_ExternalTypeDefinition_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:8603193828686147794" />
    <node concept="3clFbW" id="40" role="jymVt">
      <uo k="s:originTrace" v="n:8603193828686147794" />
      <node concept="3clFbS" id="48" role="3clF47">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
      <node concept="3Tm1VV" id="49" role="1B3o_S">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
      <node concept="3cqZAl" id="4a" role="3clF45">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
    </node>
    <node concept="3clFb_" id="41" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:8603193828686147794" />
      <node concept="3cqZAl" id="4b" role="3clF45">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
      <node concept="37vLTG" id="4c" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="externalTypeDefinition" />
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="3Tqbb2" id="4h" role="1tU5fm">
          <uo k="s:originTrace" v="n:8603193828686147794" />
        </node>
      </node>
      <node concept="37vLTG" id="4d" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="3uibUv" id="4i" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:8603193828686147794" />
        </node>
      </node>
      <node concept="37vLTG" id="4e" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="3uibUv" id="4j" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:8603193828686147794" />
        </node>
      </node>
      <node concept="3clFbS" id="4f" role="3clF47">
        <uo k="s:originTrace" v="n:8603193828686147795" />
        <node concept="3clFbJ" id="4k" role="3cqZAp">
          <uo k="s:originTrace" v="n:8603193828686147805" />
          <node concept="2OqwBi" id="4l" role="3clFbw">
            <uo k="s:originTrace" v="n:8603193828686264025" />
            <node concept="2OqwBi" id="4n" role="2Oq$k0">
              <uo k="s:originTrace" v="n:8603193828686215270" />
              <node concept="2OqwBi" id="4p" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8603193828686198003" />
                <node concept="2OqwBi" id="4r" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8603193828686162037" />
                  <node concept="1PxgMI" id="4t" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:8603193828686159621" />
                    <node concept="chp4Y" id="4v" role="3oSUPX">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                      <uo k="s:originTrace" v="n:8603193828686159946" />
                    </node>
                    <node concept="2OqwBi" id="4w" role="1m5AlR">
                      <uo k="s:originTrace" v="n:8603193828686149762" />
                      <node concept="37vLTw" id="4x" role="2Oq$k0">
                        <ref role="3cqZAo" node="4c" resolve="externalTypeDefinition" />
                        <uo k="s:originTrace" v="n:8603193828686147814" />
                      </node>
                      <node concept="1mfA1w" id="4y" role="2OqNvi">
                        <uo k="s:originTrace" v="n:8603193828686157776" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="4u" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actorCreation" />
                    <uo k="s:originTrace" v="n:8603193828686165959" />
                  </node>
                </node>
                <node concept="v3k3i" id="4s" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8603193828686213702" />
                  <node concept="chp4Y" id="4z" role="v3oSu">
                    <ref role="cht4Q" to="o1mc:61_MCxeXpnd" resolve="ICreateActor" />
                    <uo k="s:originTrace" v="n:8603193828686214318" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="4q" role="2OqNvi">
                <uo k="s:originTrace" v="n:8603193828686217870" />
                <node concept="1bVj0M" id="4$" role="23t8la">
                  <uo k="s:originTrace" v="n:8603193828686217872" />
                  <node concept="3clFbS" id="4_" role="1bW5cS">
                    <uo k="s:originTrace" v="n:8603193828686217873" />
                    <node concept="3clFbF" id="4B" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8603193828686218305" />
                      <node concept="1Wc70l" id="4C" role="3clFbG">
                        <uo k="s:originTrace" v="n:8603193828686234717" />
                        <node concept="3clFbC" id="4D" role="3uHU7w">
                          <uo k="s:originTrace" v="n:8603193828686259198" />
                          <node concept="37vLTw" id="4F" role="3uHU7w">
                            <ref role="3cqZAo" node="4c" resolve="externalTypeDefinition" />
                            <uo k="s:originTrace" v="n:8603193828686268800" />
                          </node>
                          <node concept="1PxgMI" id="4G" role="3uHU7B">
                            <uo k="s:originTrace" v="n:8603193828686242788" />
                            <node concept="chp4Y" id="4H" role="3oSUPX">
                              <ref role="cht4Q" to="o1mc:J4FZX1oWBz" resolve="ExternalTypeDefinition" />
                              <uo k="s:originTrace" v="n:8603193828686243474" />
                            </node>
                            <node concept="2OqwBi" id="4I" role="1m5AlR">
                              <uo k="s:originTrace" v="n:8603193828686236178" />
                              <node concept="37vLTw" id="4J" role="2Oq$k0">
                                <ref role="3cqZAo" node="4A" resolve="it" />
                                <uo k="s:originTrace" v="n:8603193828686235101" />
                              </node>
                              <node concept="3TrEf2" id="4K" role="2OqNvi">
                                <ref role="3Tt5mk" to="o1mc:4uIaRgr9$HL" resolve="stateType" />
                                <uo k="s:originTrace" v="n:8603193828686240872" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4E" role="3uHU7B">
                          <uo k="s:originTrace" v="n:8603193828686227861" />
                          <node concept="2OqwBi" id="4L" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:8603193828686219569" />
                            <node concept="37vLTw" id="4N" role="2Oq$k0">
                              <ref role="3cqZAo" node="4A" resolve="it" />
                              <uo k="s:originTrace" v="n:8603193828686218304" />
                            </node>
                            <node concept="3TrEf2" id="4O" role="2OqNvi">
                              <ref role="3Tt5mk" to="o1mc:4uIaRgr9$HL" resolve="stateType" />
                              <uo k="s:originTrace" v="n:8603193828686221456" />
                            </node>
                          </node>
                          <node concept="1mIQ4w" id="4M" role="2OqNvi">
                            <uo k="s:originTrace" v="n:8603193828686231533" />
                            <node concept="chp4Y" id="4P" role="cj9EA">
                              <ref role="cht4Q" to="o1mc:J4FZX1oWBz" resolve="ExternalTypeDefinition" />
                              <uo k="s:originTrace" v="n:8603193828686232634" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="4A" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:8603193828686217874" />
                    <node concept="2jxLKc" id="4Q" role="1tU5fm">
                      <uo k="s:originTrace" v="n:8603193828686217875" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="4o" role="2OqNvi">
              <uo k="s:originTrace" v="n:8603193828686267653" />
            </node>
          </node>
          <node concept="3clFbS" id="4m" role="3clFbx">
            <uo k="s:originTrace" v="n:8603193828686147807" />
            <node concept="3clFbJ" id="4R" role="3cqZAp">
              <uo k="s:originTrace" v="n:8603193828686267939" />
              <node concept="2OqwBi" id="4S" role="3clFbw">
                <uo k="s:originTrace" v="n:8603193828686413989" />
                <node concept="2OqwBi" id="4U" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8603193828686289735" />
                  <node concept="2OqwBi" id="4W" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:8603193828686312611" />
                    <node concept="2OqwBi" id="4Y" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8603193828686270706" />
                      <node concept="37vLTw" id="50" role="2Oq$k0">
                        <ref role="3cqZAo" node="4c" resolve="externalTypeDefinition" />
                        <uo k="s:originTrace" v="n:8603193828686269079" />
                      </node>
                      <node concept="3Tsc0h" id="51" role="2OqNvi">
                        <ref role="3TtcxE" to="clbe:6a5SBPfXXIi" resolve="members" />
                        <uo k="s:originTrace" v="n:8603193828686274692" />
                      </node>
                    </node>
                    <node concept="v3k3i" id="4Z" role="2OqNvi">
                      <uo k="s:originTrace" v="n:8603193828686319835" />
                      <node concept="chp4Y" id="52" role="v3oSu">
                        <ref role="cht4Q" to="clbe:56ytRgsLg$o" resolve="Member" />
                        <uo k="s:originTrace" v="n:8603193828686320399" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="4X" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8603193828686304691" />
                    <node concept="1bVj0M" id="53" role="23t8la">
                      <uo k="s:originTrace" v="n:8603193828686304693" />
                      <node concept="3clFbS" id="54" role="1bW5cS">
                        <uo k="s:originTrace" v="n:8603193828686304694" />
                        <node concept="3clFbF" id="56" role="3cqZAp">
                          <uo k="s:originTrace" v="n:8603193828686305525" />
                          <node concept="1Wc70l" id="57" role="3clFbG">
                            <uo k="s:originTrace" v="n:8603193828686387031" />
                            <node concept="2OqwBi" id="58" role="3uHU7w">
                              <uo k="s:originTrace" v="n:8603193828686405662" />
                              <node concept="2OqwBi" id="5a" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:8603193828686394420" />
                                <node concept="37vLTw" id="5c" role="2Oq$k0">
                                  <ref role="3cqZAo" node="55" resolve="it" />
                                  <uo k="s:originTrace" v="n:8603193828686391473" />
                                </node>
                                <node concept="3TrcHB" id="5d" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  <uo k="s:originTrace" v="n:8603193828686402963" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5b" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <uo k="s:originTrace" v="n:8603193828686410225" />
                                <node concept="Xl_RD" id="5e" role="37wK5m">
                                  <property role="Xl_RC" value="ctx" />
                                  <uo k="s:originTrace" v="n:8603193828686410981" />
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="59" role="3uHU7B">
                              <uo k="s:originTrace" v="n:8603193828686342718" />
                              <node concept="2OqwBi" id="5f" role="3uHU7B">
                                <uo k="s:originTrace" v="n:8603193828686337101" />
                                <node concept="2OqwBi" id="5h" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:8603193828686322558" />
                                  <node concept="37vLTw" id="5j" role="2Oq$k0">
                                    <ref role="3cqZAo" node="55" resolve="it" />
                                    <uo k="s:originTrace" v="n:8603193828686305524" />
                                  </node>
                                  <node concept="3TrEf2" id="5k" role="2OqNvi">
                                    <ref role="3Tt5mk" to="mj1l:hEaDaGor64" resolve="type" />
                                    <uo k="s:originTrace" v="n:8603193828686326115" />
                                  </node>
                                </node>
                                <node concept="1mIQ4w" id="5i" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:8603193828686339257" />
                                  <node concept="chp4Y" id="5l" role="cj9EA">
                                    <ref role="cht4Q" to="clbe:5yYXyc4Z0CS" resolve="StructType" />
                                    <uo k="s:originTrace" v="n:8603193828686340061" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5g" role="3uHU7w">
                                <uo k="s:originTrace" v="n:8603193828686377776" />
                                <node concept="2OqwBi" id="5m" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:8603193828686366737" />
                                  <node concept="2OqwBi" id="5o" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:8603193828686361869" />
                                    <node concept="1PxgMI" id="5q" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:8603193828686351302" />
                                      <node concept="chp4Y" id="5s" role="3oSUPX">
                                        <ref role="cht4Q" to="clbe:5yYXyc4Z0CS" resolve="StructType" />
                                        <uo k="s:originTrace" v="n:8603193828686352249" />
                                      </node>
                                      <node concept="2OqwBi" id="5t" role="1m5AlR">
                                        <uo k="s:originTrace" v="n:8603193828686345277" />
                                        <node concept="37vLTw" id="5u" role="2Oq$k0">
                                          <ref role="3cqZAo" node="55" resolve="it" />
                                          <uo k="s:originTrace" v="n:8603193828686343363" />
                                        </node>
                                        <node concept="3TrEf2" id="5v" role="2OqNvi">
                                          <ref role="3Tt5mk" to="mj1l:hEaDaGor64" resolve="type" />
                                          <uo k="s:originTrace" v="n:8603193828686349839" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="5r" role="2OqNvi">
                                      <ref role="3Tt5mk" to="clbe:5yYXyc4Z0CT" resolve="struct" />
                                      <uo k="s:originTrace" v="n:8603193828686364028" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="5p" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    <uo k="s:originTrace" v="n:8603193828686374820" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5n" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <uo k="s:originTrace" v="n:8603193828686382457" />
                                  <node concept="Xl_RD" id="5w" role="37wK5m">
                                    <property role="Xl_RC" value="rng_t" />
                                    <uo k="s:originTrace" v="n:8603193828686383169" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="55" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:8603193828686304695" />
                        <node concept="2jxLKc" id="5x" role="1tU5fm">
                          <uo k="s:originTrace" v="n:8603193828686304696" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="4V" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8603193828686417467" />
                </node>
              </node>
              <node concept="3clFbS" id="4T" role="3clFbx">
                <uo k="s:originTrace" v="n:8603193828686267941" />
                <node concept="9aQIb" id="5y" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8603193828686418128" />
                  <node concept="3clFbS" id="5z" role="9aQI4">
                    <node concept="3cpWs8" id="5_" role="3cqZAp">
                      <node concept="3cpWsn" id="5B" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="5C" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="5D" role="33vP2m">
                          <node concept="1pGfFk" id="5E" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5A" role="3cqZAp">
                      <node concept="3cpWsn" id="5F" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="5G" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="5H" role="33vP2m">
                          <node concept="3VmV3z" id="5I" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="5K" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5J" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="5L" role="37wK5m">
                              <ref role="3cqZAo" node="4c" resolve="externalTypeDefinition" />
                              <uo k="s:originTrace" v="n:8603193828686418426" />
                            </node>
                            <node concept="Xl_RD" id="5M" role="37wK5m">
                              <property role="Xl_RC" value="An external struct that is used as state must have a member of type rng_t named ctx" />
                              <uo k="s:originTrace" v="n:8603193828686418137" />
                            </node>
                            <node concept="Xl_RD" id="5N" role="37wK5m">
                              <property role="Xl_RC" value="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="5O" role="37wK5m">
                              <property role="Xl_RC" value="8603193828686418128" />
                            </node>
                            <node concept="10Nm6u" id="5P" role="37wK5m" />
                            <node concept="37vLTw" id="5Q" role="37wK5m">
                              <ref role="3cqZAo" node="5B" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="5$" role="lGtFl">
                    <property role="6wLej" value="8603193828686418128" />
                    <property role="6wLeW" value="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4g" role="1B3o_S">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
    </node>
    <node concept="3clFb_" id="42" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:8603193828686147794" />
      <node concept="3bZ5Sz" id="5R" role="3clF45">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
      <node concept="3clFbS" id="5S" role="3clF47">
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="3cpWs6" id="5U" role="3cqZAp">
          <uo k="s:originTrace" v="n:8603193828686147794" />
          <node concept="35c_gC" id="5V" role="3cqZAk">
            <ref role="35c_gD" to="o1mc:J4FZX1oWBz" resolve="ExternalTypeDefinition" />
            <uo k="s:originTrace" v="n:8603193828686147794" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5T" role="1B3o_S">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
    </node>
    <node concept="3clFb_" id="43" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:8603193828686147794" />
      <node concept="37vLTG" id="5W" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="3Tqbb2" id="60" role="1tU5fm">
          <uo k="s:originTrace" v="n:8603193828686147794" />
        </node>
      </node>
      <node concept="3clFbS" id="5X" role="3clF47">
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="9aQIb" id="61" role="3cqZAp">
          <uo k="s:originTrace" v="n:8603193828686147794" />
          <node concept="3clFbS" id="62" role="9aQI4">
            <uo k="s:originTrace" v="n:8603193828686147794" />
            <node concept="3cpWs6" id="63" role="3cqZAp">
              <uo k="s:originTrace" v="n:8603193828686147794" />
              <node concept="2ShNRf" id="64" role="3cqZAk">
                <uo k="s:originTrace" v="n:8603193828686147794" />
                <node concept="1pGfFk" id="65" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:8603193828686147794" />
                  <node concept="2OqwBi" id="66" role="37wK5m">
                    <uo k="s:originTrace" v="n:8603193828686147794" />
                    <node concept="2OqwBi" id="68" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:8603193828686147794" />
                      <node concept="liA8E" id="6a" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:8603193828686147794" />
                      </node>
                      <node concept="2JrnkZ" id="6b" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8603193828686147794" />
                        <node concept="37vLTw" id="6c" role="2JrQYb">
                          <ref role="3cqZAo" node="5W" resolve="argument" />
                          <uo k="s:originTrace" v="n:8603193828686147794" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="69" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:8603193828686147794" />
                      <node concept="1rXfSq" id="6d" role="37wK5m">
                        <ref role="37wK5l" node="42" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:8603193828686147794" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="67" role="37wK5m">
                    <uo k="s:originTrace" v="n:8603193828686147794" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Y" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
      <node concept="3Tm1VV" id="5Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
    </node>
    <node concept="3clFb_" id="44" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:8603193828686147794" />
      <node concept="3clFbS" id="6e" role="3clF47">
        <uo k="s:originTrace" v="n:8603193828686147794" />
        <node concept="3cpWs6" id="6h" role="3cqZAp">
          <uo k="s:originTrace" v="n:8603193828686147794" />
          <node concept="3clFbT" id="6i" role="3cqZAk">
            <uo k="s:originTrace" v="n:8603193828686147794" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6f" role="3clF45">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
      <node concept="3Tm1VV" id="6g" role="1B3o_S">
        <uo k="s:originTrace" v="n:8603193828686147794" />
      </node>
    </node>
    <node concept="3uibUv" id="45" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8603193828686147794" />
    </node>
    <node concept="3uibUv" id="46" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:8603193828686147794" />
    </node>
    <node concept="3Tm1VV" id="47" role="1B3o_S">
      <uo k="s:originTrace" v="n:8603193828686147794" />
    </node>
  </node>
  <node concept="312cEu" id="6j">
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="check_MessageStruct_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:6118767425001607081" />
    <node concept="3clFbW" id="6k" role="jymVt">
      <uo k="s:originTrace" v="n:6118767425001607081" />
      <node concept="3clFbS" id="6t" role="3clF47">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
      <node concept="3Tm1VV" id="6u" role="1B3o_S">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
      <node concept="3cqZAl" id="6v" role="3clF45">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
    </node>
    <node concept="3clFb_" id="6l" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6118767425001607081" />
      <node concept="3cqZAl" id="6w" role="3clF45">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
      <node concept="37vLTG" id="6x" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="messageStruct" />
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="3Tqbb2" id="6A" role="1tU5fm">
          <uo k="s:originTrace" v="n:6118767425001607081" />
        </node>
      </node>
      <node concept="37vLTG" id="6y" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="3uibUv" id="6B" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6118767425001607081" />
        </node>
      </node>
      <node concept="37vLTG" id="6z" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="3uibUv" id="6C" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6118767425001607081" />
        </node>
      </node>
      <node concept="3clFbS" id="6$" role="3clF47">
        <uo k="s:originTrace" v="n:6118767425001607082" />
        <node concept="3clFbH" id="6D" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008413064" />
        </node>
        <node concept="3cpWs8" id="6E" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008418633" />
          <node concept="3cpWsn" id="6L" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <uo k="s:originTrace" v="n:6118767425008418636" />
            <node concept="_YKpA" id="6M" role="1tU5fm">
              <uo k="s:originTrace" v="n:6118767425008418629" />
              <node concept="17QB3L" id="6O" role="_ZDj9">
                <uo k="s:originTrace" v="n:6118767425008418688" />
              </node>
            </node>
            <node concept="2ShNRf" id="6N" role="33vP2m">
              <uo k="s:originTrace" v="n:6118767425008418733" />
              <node concept="Tc6Ow" id="6P" role="2ShVmc">
                <uo k="s:originTrace" v="n:6118767425008418729" />
                <node concept="17QB3L" id="6Q" role="HW$YZ">
                  <uo k="s:originTrace" v="n:6118767425008418730" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6F" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008422613" />
          <node concept="2OqwBi" id="6R" role="3clFbG">
            <uo k="s:originTrace" v="n:6118767425008426554" />
            <node concept="37vLTw" id="6S" role="2Oq$k0">
              <ref role="3cqZAo" node="6L" resolve="names" />
              <uo k="s:originTrace" v="n:6118767425008422611" />
            </node>
            <node concept="TSZUe" id="6T" role="2OqNvi">
              <uo k="s:originTrace" v="n:6118767425008435134" />
              <node concept="Xl_RD" id="6U" role="25WWJ7">
                <property role="Xl_RC" value="envelope" />
                <uo k="s:originTrace" v="n:6118767425008435217" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6G" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008435294" />
          <node concept="2OqwBi" id="6V" role="3clFbG">
            <uo k="s:originTrace" v="n:6118767425008435295" />
            <node concept="37vLTw" id="6W" role="2Oq$k0">
              <ref role="3cqZAo" node="6L" resolve="names" />
              <uo k="s:originTrace" v="n:6118767425008435296" />
            </node>
            <node concept="TSZUe" id="6X" role="2OqNvi">
              <uo k="s:originTrace" v="n:6118767425008435297" />
              <node concept="Xl_RD" id="6Y" role="25WWJ7">
                <property role="Xl_RC" value="receiver" />
                <uo k="s:originTrace" v="n:6118767425008435298" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6H" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008435406" />
          <node concept="2OqwBi" id="6Z" role="3clFbG">
            <uo k="s:originTrace" v="n:6118767425008435407" />
            <node concept="37vLTw" id="70" role="2Oq$k0">
              <ref role="3cqZAo" node="6L" resolve="names" />
              <uo k="s:originTrace" v="n:6118767425008435408" />
            </node>
            <node concept="TSZUe" id="71" role="2OqNvi">
              <uo k="s:originTrace" v="n:6118767425008435409" />
              <node concept="Xl_RD" id="72" role="25WWJ7">
                <property role="Xl_RC" value="type" />
                <uo k="s:originTrace" v="n:6118767425008435410" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6I" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008435411" />
          <node concept="2OqwBi" id="73" role="3clFbG">
            <uo k="s:originTrace" v="n:6118767425008435412" />
            <node concept="37vLTw" id="74" role="2Oq$k0">
              <ref role="3cqZAo" node="6L" resolve="names" />
              <uo k="s:originTrace" v="n:6118767425008435413" />
            </node>
            <node concept="TSZUe" id="75" role="2OqNvi">
              <uo k="s:originTrace" v="n:6118767425008435414" />
              <node concept="Xl_RD" id="76" role="25WWJ7">
                <property role="Xl_RC" value="timestamp" />
                <uo k="s:originTrace" v="n:6118767425008435415" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6J" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008435819" />
        </node>
        <node concept="2Gpval" id="6K" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008413117" />
          <node concept="2GrKxI" id="77" role="2Gsz3X">
            <property role="TrG5h" value="name" />
            <uo k="s:originTrace" v="n:6118767425008413119" />
          </node>
          <node concept="3clFbS" id="78" role="2LFqv$">
            <uo k="s:originTrace" v="n:6118767425008413123" />
            <node concept="3clFbJ" id="7a" role="3cqZAp">
              <uo k="s:originTrace" v="n:6118767425008435928" />
              <node concept="3clFbS" id="7b" role="3clFbx">
                <uo k="s:originTrace" v="n:6118767425008435930" />
                <node concept="9aQIb" id="7d" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6118767425008436397" />
                  <node concept="3clFbS" id="7e" role="9aQI4">
                    <node concept="3cpWs8" id="7g" role="3cqZAp">
                      <node concept="3cpWsn" id="7i" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="7j" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="7k" role="33vP2m">
                          <node concept="1pGfFk" id="7l" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7h" role="3cqZAp">
                      <node concept="3cpWsn" id="7m" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="7n" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="7o" role="33vP2m">
                          <node concept="3VmV3z" id="7p" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="7r" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7q" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="7s" role="37wK5m">
                              <ref role="3cqZAo" node="6x" resolve="messageStruct" />
                              <uo k="s:originTrace" v="n:6118767425008438409" />
                            </node>
                            <node concept="3cpWs3" id="7t" role="37wK5m">
                              <uo k="s:originTrace" v="n:6118767425008438003" />
                              <node concept="2GrUjf" id="7y" role="3uHU7w">
                                <ref role="2Gs0qQ" node="77" resolve="name" />
                                <uo k="s:originTrace" v="n:6118767425008438017" />
                              </node>
                              <node concept="Xl_RD" id="7z" role="3uHU7B">
                                <property role="Xl_RC" value="Message struct cannot have a member named " />
                                <uo k="s:originTrace" v="n:6118767425008436406" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7u" role="37wK5m">
                              <property role="Xl_RC" value="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="7v" role="37wK5m">
                              <property role="Xl_RC" value="6118767425008436397" />
                            </node>
                            <node concept="10Nm6u" id="7w" role="37wK5m" />
                            <node concept="37vLTw" id="7x" role="37wK5m">
                              <ref role="3cqZAo" node="7i" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="7f" role="lGtFl">
                    <property role="6wLej" value="6118767425008436397" />
                    <property role="6wLeW" value="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7c" role="3clFbw">
                <uo k="s:originTrace" v="n:6118767425008435937" />
                <node concept="Xjq3P" id="7$" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6118767425008435938" />
                </node>
                <node concept="liA8E" id="7_" role="2OqNvi">
                  <ref role="37wK5l" node="6o" resolve="_additional_checkIfMemberExists" />
                  <uo k="s:originTrace" v="n:6118767425008435939" />
                  <node concept="37vLTw" id="7A" role="37wK5m">
                    <ref role="3cqZAo" node="6x" resolve="messageStruct" />
                    <uo k="s:originTrace" v="n:6118767425008435940" />
                  </node>
                  <node concept="2GrUjf" id="7B" role="37wK5m">
                    <ref role="2Gs0qQ" node="77" resolve="name" />
                    <uo k="s:originTrace" v="n:6118767425008436275" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="79" role="2GsD0m">
            <ref role="3cqZAo" node="6L" resolve="names" />
            <uo k="s:originTrace" v="n:6118767425008435871" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6_" role="1B3o_S">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
    </node>
    <node concept="3clFb_" id="6m" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6118767425001607081" />
      <node concept="3bZ5Sz" id="7C" role="3clF45">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
      <node concept="3clFbS" id="7D" role="3clF47">
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="3cpWs6" id="7F" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425001607081" />
          <node concept="35c_gC" id="7G" role="3cqZAk">
            <ref role="35c_gD" to="o1mc:1I8eAob$7vQ" resolve="MessageStruct" />
            <uo k="s:originTrace" v="n:6118767425001607081" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7E" role="1B3o_S">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
    </node>
    <node concept="3clFb_" id="6n" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6118767425001607081" />
      <node concept="37vLTG" id="7H" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="3Tqbb2" id="7L" role="1tU5fm">
          <uo k="s:originTrace" v="n:6118767425001607081" />
        </node>
      </node>
      <node concept="3clFbS" id="7I" role="3clF47">
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="9aQIb" id="7M" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425001607081" />
          <node concept="3clFbS" id="7N" role="9aQI4">
            <uo k="s:originTrace" v="n:6118767425001607081" />
            <node concept="3cpWs6" id="7O" role="3cqZAp">
              <uo k="s:originTrace" v="n:6118767425001607081" />
              <node concept="2ShNRf" id="7P" role="3cqZAk">
                <uo k="s:originTrace" v="n:6118767425001607081" />
                <node concept="1pGfFk" id="7Q" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6118767425001607081" />
                  <node concept="2OqwBi" id="7R" role="37wK5m">
                    <uo k="s:originTrace" v="n:6118767425001607081" />
                    <node concept="2OqwBi" id="7T" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6118767425001607081" />
                      <node concept="liA8E" id="7V" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6118767425001607081" />
                      </node>
                      <node concept="2JrnkZ" id="7W" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6118767425001607081" />
                        <node concept="37vLTw" id="7X" role="2JrQYb">
                          <ref role="3cqZAo" node="7H" resolve="argument" />
                          <uo k="s:originTrace" v="n:6118767425001607081" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7U" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6118767425001607081" />
                      <node concept="1rXfSq" id="7Y" role="37wK5m">
                        <ref role="37wK5l" node="6m" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6118767425001607081" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="7S" role="37wK5m">
                    <uo k="s:originTrace" v="n:6118767425001607081" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7J" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
      <node concept="3Tm1VV" id="7K" role="1B3o_S">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
    </node>
    <node concept="3clFb_" id="6o" role="jymVt">
      <property role="TrG5h" value="_additional_checkIfMemberExists" />
      <uo k="s:originTrace" v="n:6118767425001667680" />
      <node concept="10P_77" id="7Z" role="3clF45">
        <uo k="s:originTrace" v="n:6118767425008411197" />
      </node>
      <node concept="3Tm6S6" id="80" role="1B3o_S">
        <uo k="s:originTrace" v="n:6118767425001669290" />
      </node>
      <node concept="3clFbS" id="81" role="3clF47">
        <uo k="s:originTrace" v="n:6118767425001667682" />
        <node concept="3cpWs6" id="84" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425008409437" />
          <node concept="2OqwBi" id="85" role="3cqZAk">
            <uo k="s:originTrace" v="n:6118767425001747561" />
            <node concept="2OqwBi" id="86" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6118767425001722835" />
              <node concept="2OqwBi" id="88" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6118767425001687383" />
                <node concept="2OqwBi" id="8a" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6118767425001671280" />
                  <node concept="37vLTw" id="8c" role="2Oq$k0">
                    <ref role="3cqZAo" node="82" resolve="ms" />
                    <uo k="s:originTrace" v="n:6118767425001669451" />
                  </node>
                  <node concept="3Tsc0h" id="8d" role="2OqNvi">
                    <ref role="3TtcxE" to="clbe:6a5SBPfXXIi" resolve="members" />
                    <uo k="s:originTrace" v="n:6118767425001678431" />
                  </node>
                </node>
                <node concept="v3k3i" id="8b" role="2OqNvi">
                  <uo k="s:originTrace" v="n:6118767425001721730" />
                  <node concept="chp4Y" id="8e" role="v3oSu">
                    <ref role="cht4Q" to="clbe:56ytRgsLg$o" resolve="Member" />
                    <uo k="s:originTrace" v="n:6118767425001721812" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="89" role="2OqNvi">
                <uo k="s:originTrace" v="n:6118767425001724985" />
                <node concept="1bVj0M" id="8f" role="23t8la">
                  <uo k="s:originTrace" v="n:6118767425001724987" />
                  <node concept="3clFbS" id="8g" role="1bW5cS">
                    <uo k="s:originTrace" v="n:6118767425001724988" />
                    <node concept="3clFbF" id="8i" role="3cqZAp">
                      <uo k="s:originTrace" v="n:6118767425001725425" />
                      <node concept="2OqwBi" id="8j" role="3clFbG">
                        <uo k="s:originTrace" v="n:6118767425001740916" />
                        <node concept="2OqwBi" id="8k" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:6118767425001728383" />
                          <node concept="37vLTw" id="8m" role="2Oq$k0">
                            <ref role="3cqZAo" node="8h" resolve="it" />
                            <uo k="s:originTrace" v="n:6118767425001725424" />
                          </node>
                          <node concept="3TrcHB" id="8n" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:6118767425001738239" />
                          </node>
                        </node>
                        <node concept="liA8E" id="8l" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <uo k="s:originTrace" v="n:6118767425001745410" />
                          <node concept="37vLTw" id="8o" role="37wK5m">
                            <ref role="3cqZAo" node="83" resolve="name" />
                            <uo k="s:originTrace" v="n:6118767425007082262" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="8h" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6118767425001724989" />
                    <node concept="2jxLKc" id="8p" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6118767425001724990" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="87" role="2OqNvi">
              <uo k="s:originTrace" v="n:6118767425001752037" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="82" role="3clF46">
        <property role="TrG5h" value="ms" />
        <uo k="s:originTrace" v="n:6118767425001669360" />
        <node concept="3Tqbb2" id="8q" role="1tU5fm">
          <ref role="ehGHo" to="o1mc:1I8eAob$7vQ" resolve="MessageStruct" />
          <uo k="s:originTrace" v="n:6118767425001669395" />
        </node>
      </node>
      <node concept="37vLTG" id="83" role="3clF46">
        <property role="TrG5h" value="name" />
        <uo k="s:originTrace" v="n:6118767425001668174" />
        <node concept="17QB3L" id="8r" role="1tU5fm">
          <uo k="s:originTrace" v="n:6118767425001668173" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6p" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6118767425001607081" />
      <node concept="3clFbS" id="8s" role="3clF47">
        <uo k="s:originTrace" v="n:6118767425001607081" />
        <node concept="3cpWs6" id="8v" role="3cqZAp">
          <uo k="s:originTrace" v="n:6118767425001607081" />
          <node concept="3clFbT" id="8w" role="3cqZAk">
            <uo k="s:originTrace" v="n:6118767425001607081" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="8t" role="3clF45">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
      <node concept="3Tm1VV" id="8u" role="1B3o_S">
        <uo k="s:originTrace" v="n:6118767425001607081" />
      </node>
    </node>
    <node concept="3uibUv" id="6q" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6118767425001607081" />
    </node>
    <node concept="3uibUv" id="6r" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6118767425001607081" />
    </node>
    <node concept="3Tm1VV" id="6s" role="1B3o_S">
      <uo k="s:originTrace" v="n:6118767425001607081" />
    </node>
  </node>
</model>

