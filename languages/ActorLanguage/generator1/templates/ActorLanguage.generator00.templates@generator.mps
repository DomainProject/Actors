<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4e435f76-ec1d-4334-ae6b-9740f1d47dd2(ActorLanguage.generator00.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
    <import index="fh8z" ref="r:ba8769f3-331d-4a7d-b538-0ce586b24578(ActorLanguage.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="6946180687074189095" name="ActorLanguage.structure.EmptyLine" flags="ng" index="IQpmJ" />
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="19880565244932829" name="ActorLanguage.structure.ActorScriptIntermediate" flags="ng" index="3d7hep">
        <child id="8954984291590478439" name="behaviors" index="3TcAiz" />
        <child id="8954984291590478445" name="externalFunctions" index="3TcAiD" />
        <child id="8954984291590478446" name="types" index="3TcAiE" />
        <child id="8954984291590478447" name="customEvents" index="3TcAiF" />
        <child id="8954984291590478440" name="configuration" index="3TcAiG" />
        <child id="8954984291590478441" name="receptionist" index="3TcAiH" />
        <child id="8954984291590478442" name="actorCreation" index="3TcAiI" />
        <child id="8954984291590478443" name="topology" index="3TcAiJ" />
        <child id="8954984291590478448" name="startupCode" index="3TcAiO" />
      </concept>
      <concept id="2257009365450236486" name="ActorLanguage.structure.CustomEvent" flags="ng" index="1ldE19" />
      <concept id="2750811047725463862" name="ActorLanguage.structure.ActorsGraph" flags="ng" index="3DMq4$" />
      <concept id="3660659876983922041" name="ActorLanguage.structure.StartupCode" flags="ng" index="1DUTIU">
        <child id="3660659876983922042" name="function" index="1DUTIT" />
      </concept>
    </language>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
    </language>
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" name="com.mbeddr.core.statements">
      <concept id="4185783222026475861" name="com.mbeddr.core.statements.structure.StatementList" flags="ng" index="3XIRFW">
        <child id="4185783222026475862" name="statements" index="3XIRFZ" />
      </concept>
      <concept id="4185783222026464515" name="com.mbeddr.core.statements.structure.Statement" flags="ng" index="3XISUE" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
        <child id="1195502100749" name="preMappingScript" index="1puA0r" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <property id="1177959072138" name="keepSourceRoot" index="13Pg2o" />
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1195499912406" name="jetbrains.mps.lang.generator.structure.MappingScript" flags="lg" index="1pmfR0">
        <property id="1195595592106" name="scriptKind" index="1v3f2W" />
        <property id="1195595611951" name="modifiesModel" index="1v3jST" />
        <child id="1195501105008" name="codeBlock" index="1pqMTA" />
      </concept>
      <concept id="1195500722856" name="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock" flags="in" index="1pplIY" />
      <concept id="1195502151594" name="jetbrains.mps.lang.generator.structure.MappingScriptReference" flags="lg" index="1puMqW">
        <reference id="1195502167610" name="mappingScript" index="1puQsG" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" name="com.mbeddr.core.modules">
      <concept id="6437088627575722813" name="com.mbeddr.core.modules.structure.Module" flags="ng" index="N3F4X">
        <child id="6437088627575722833" name="contents" index="N3F5h" />
      </concept>
      <concept id="6437088627575724001" name="com.mbeddr.core.modules.structure.Function" flags="ng" index="N3Fnx">
        <child id="4185783222026475860" name="body" index="3XIRFX" />
      </concept>
      <concept id="8934095934011938595" name="com.mbeddr.core.modules.structure.EmptyModuleContent" flags="ng" index="2NXPZ9" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ngI" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="7892328519581699353" name="com.mbeddr.core.expressions.structure.VoidType" flags="ng" index="19Rifw" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
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
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="bUwia" id="16CkjdmVbE">
    <property role="TrG5h" value="main" />
    <node concept="1puMqW" id="16CkjdnEpO" role="1puA0r">
      <ref role="1puQsG" node="16CkjdnEpP" resolve="script" />
    </node>
    <node concept="3lhOvk" id="7L6vGi5AMVu" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
      <ref role="3lhOvi" node="7L6vGi5AMVv" resolve="map_ActorScript" />
    </node>
  </node>
  <node concept="1pmfR0" id="16CkjdnEpP">
    <property role="TrG5h" value="preprocessing" />
    <property role="1v3f2W" value="hpv1Zf2/pre_processing" />
    <property role="1v3jST" value="true" />
    <node concept="1pplIY" id="16CkjdnEpQ" role="1pqMTA">
      <node concept="3clFbS" id="16CkjdnEpR" role="2VODD2">
        <node concept="2Gpval" id="16CkjdnEuO" role="3cqZAp">
          <node concept="2GrKxI" id="16CkjdnEuP" role="2Gsz3X">
            <property role="TrG5h" value="script" />
          </node>
          <node concept="2OqwBi" id="16CkjdnEDi" role="2GsD0m">
            <node concept="1Q6Npb" id="16CkjdnEvV" role="2Oq$k0" />
            <node concept="2SmgA7" id="16CkjdnELC" role="2OqNvi">
              <node concept="chp4Y" id="16CkjdnEN$" role="1dBWTz">
                <ref role="cht4Q" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="16CkjdnEuR" role="2LFqv$">
            <node concept="3cpWs8" id="16CkjdnEQY" role="3cqZAp">
              <node concept="3cpWsn" id="16CkjdnER1" role="3cpWs9">
                <property role="TrG5h" value="count" />
                <node concept="10Oyi0" id="16CkjdnEQX" role="1tU5fm" />
                <node concept="3cmrfG" id="16CkjdnES0" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="16CkjdnESF" role="3cqZAp">
              <node concept="2GrKxI" id="16CkjdnESH" role="2Gsz3X">
                <property role="TrG5h" value="actor" />
              </node>
              <node concept="2OqwBi" id="56h4rndXbGA" role="2GsD0m">
                <node concept="2OqwBi" id="16CkjdnFpu" role="2Oq$k0">
                  <node concept="2GrUjf" id="16CkjdnETL" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="16CkjdnEuP" resolve="script" />
                  </node>
                  <node concept="2Rf3mk" id="16CkjdnInq" role="2OqNvi">
                    <node concept="1xMEDy" id="16CkjdnIns" role="1xVPHs">
                      <node concept="chp4Y" id="16CkjdnIs3" role="ri$Ld">
                        <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="56h4rndXlEh" role="2OqNvi">
                  <node concept="1bVj0M" id="56h4rndXlEj" role="23t8la">
                    <node concept="3clFbS" id="56h4rndXlEk" role="1bW5cS">
                      <node concept="3clFbF" id="56h4rndXlN7" role="3cqZAp">
                        <node concept="3fqX7Q" id="56h4rndXlN5" role="3clFbG">
                          <node concept="2OqwBi" id="56h4rndXp2J" role="3fr31v">
                            <node concept="2OqwBi" id="56h4rndXms6" role="2Oq$k0">
                              <node concept="37vLTw" id="56h4rndXlQI" role="2Oq$k0">
                                <ref role="3cqZAo" node="56h4rndXlEl" resolve="it" />
                              </node>
                              <node concept="1mfA1w" id="56h4rndXoPV" role="2OqNvi" />
                            </node>
                            <node concept="1mIQ4w" id="56h4rndXpvq" role="2OqNvi">
                              <node concept="chp4Y" id="56h4rndXp_1" role="cj9EA">
                                <ref role="cht4Q" to="o1mc:5Q93FfG0Dg$" resolve="CreateActors" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="56h4rndXlEl" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="56h4rndXlEm" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="16CkjdnESL" role="2LFqv$">
                <node concept="3clFbF" id="16CkjdnIxv" role="3cqZAp">
                  <node concept="37vLTI" id="16CkjdnQiR" role="3clFbG">
                    <node concept="37vLTw" id="16CkjdnQLw" role="37vLTx">
                      <ref role="3cqZAo" node="16CkjdnER1" resolve="count" />
                    </node>
                    <node concept="2OqwBi" id="16CkjdnIRC" role="37vLTJ">
                      <node concept="2GrUjf" id="16CkjdnIxu" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="16CkjdnESH" resolve="actor" />
                      </node>
                      <node concept="3TrcHB" id="16CkjdnLrb" role="2OqNvi">
                        <ref role="3TsBF5" to="o1mc:1enjyq1kiKO" resolve="address" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5u5y32QUL1v" role="3cqZAp">
                  <node concept="3uNrnE" id="5u5y32QUO3x" role="3clFbG">
                    <node concept="37vLTw" id="5u5y32QUO3z" role="2$L3a6">
                      <ref role="3cqZAo" node="16CkjdnER1" resolve="count" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="7OUT8FEPAbt" role="3cqZAp">
              <node concept="2GrKxI" id="7OUT8FEPAbv" role="2Gsz3X">
                <property role="TrG5h" value="actorBatch" />
              </node>
              <node concept="2OqwBi" id="7OUT8FEPAGT" role="2GsD0m">
                <node concept="2GrUjf" id="7OUT8FEPAcW" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="16CkjdnEuP" resolve="script" />
                </node>
                <node concept="2Rf3mk" id="7OUT8FEPF8H" role="2OqNvi">
                  <node concept="1xMEDy" id="7OUT8FEPF8J" role="1xVPHs">
                    <node concept="chp4Y" id="7OUT8FEPFfd" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:5Q93FfG0Dg$" resolve="CreateActors" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7OUT8FEPAbz" role="2LFqv$">
                <node concept="1Dw8fO" id="I$NcBH84x" role="3cqZAp">
                  <node concept="3clFbS" id="I$NcBH84z" role="2LFqv$">
                    <node concept="3cpWs8" id="I$NcBHaYg" role="3cqZAp">
                      <node concept="3cpWsn" id="I$NcBHaYj" role="3cpWs9">
                        <property role="TrG5h" value="newActor" />
                        <node concept="3Tqbb2" id="I$NcBHaYe" role="1tU5fm">
                          <ref role="ehGHo" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                        </node>
                        <node concept="2ShNRf" id="I$NcBHbcf" role="33vP2m">
                          <node concept="3zrR0B" id="I$NcBHbcd" role="2ShVmc">
                            <node concept="3Tqbb2" id="I$NcBHbce" role="3zrR0E">
                              <ref role="ehGHo" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="I$NcBHblZ" role="3cqZAp">
                      <node concept="37vLTI" id="I$NcBHezP" role="3clFbG">
                        <node concept="3cpWs3" id="I$NcBHhBL" role="37vLTx">
                          <node concept="2YIFZM" id="I$NcBHiOr" role="3uHU7w">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="37vLTw" id="I$NcBHiRG" role="37wK5m">
                              <ref role="3cqZAo" node="I$NcBH84$" resolve="i" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="I$NcBUI1l" role="3uHU7B">
                            <node concept="2GrUjf" id="7OUT8FEPMur" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="7OUT8FEPAbv" resolve="actorBatch" />
                            </node>
                            <node concept="3TrcHB" id="I$NcBUIc1" role="2OqNvi">
                              <ref role="3TsBF5" to="o1mc:5Q93FfG0Dh5" resolve="baseName" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="I$NcBHbBD" role="37vLTJ">
                          <node concept="37vLTw" id="I$NcBHblX" role="2Oq$k0">
                            <ref role="3cqZAo" node="I$NcBHaYj" resolve="newActor" />
                          </node>
                          <node concept="3TrcHB" id="I$NcBHbZ2" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="I$NcBHmEQ" role="3cqZAp">
                      <node concept="37vLTI" id="I$NcBHo7J" role="3clFbG">
                        <node concept="2OqwBi" id="I$NcBUIJz" role="37vLTx">
                          <node concept="2GrUjf" id="7OUT8FEPMvZ" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7OUT8FEPAbv" resolve="actorBatch" />
                          </node>
                          <node concept="3TrEf2" id="I$NcBUIWq" role="2OqNvi">
                            <ref role="3Tt5mk" to="o1mc:3hefzVo8WA8" resolve="behavior" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="I$NcBHmXB" role="37vLTJ">
                          <node concept="37vLTw" id="I$NcBHmEO" role="2Oq$k0">
                            <ref role="3cqZAo" node="I$NcBHaYj" resolve="newActor" />
                          </node>
                          <node concept="3TrEf2" id="I$NcBHnHO" role="2OqNvi">
                            <ref role="3Tt5mk" to="o1mc:4uIaRgr9$HK" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="I$NcBND7p" role="3cqZAp">
                      <node concept="37vLTI" id="I$NcBNE6k" role="3clFbG">
                        <node concept="2ShNRf" id="I$NcBNE94" role="37vLTx">
                          <node concept="3zrR0B" id="I$NcBNE78" role="2ShVmc">
                            <node concept="3Tqbb2" id="I$NcBNE79" role="3zrR0E">
                              <ref role="ehGHo" to="o1mc:6F9Ho3O8bVn" resolve="MessageQueue" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="I$NcBNDsk" role="37vLTJ">
                          <node concept="37vLTw" id="I$NcBND7n" role="2Oq$k0">
                            <ref role="3cqZAo" node="I$NcBHaYj" resolve="newActor" />
                          </node>
                          <node concept="3TrEf2" id="I$NcBNDLi" role="2OqNvi">
                            <ref role="3Tt5mk" to="o1mc:5Q93FfG0WVT" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4be3MWTKvN4" role="3cqZAp">
                      <node concept="37vLTI" id="4be3MWTK$FS" role="3clFbG">
                        <node concept="2OqwBi" id="4be3MWTKA59" role="37vLTx">
                          <node concept="2GrUjf" id="7OUT8FEPMwK" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7OUT8FEPAbv" resolve="actorBatch" />
                          </node>
                          <node concept="3TrcHB" id="4be3MWTKBdn" role="2OqNvi">
                            <ref role="3TsBF5" to="o1mc:4uIaRgr9$HJ" resolve="fetchPolicy" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4be3MWTKwhr" role="37vLTJ">
                          <node concept="37vLTw" id="4be3MWTKvN2" role="2Oq$k0">
                            <ref role="3cqZAo" node="I$NcBHaYj" resolve="newActor" />
                          </node>
                          <node concept="3TrcHB" id="4be3MWTKwSC" role="2OqNvi">
                            <ref role="3TsBF5" to="o1mc:4uIaRgr9$HJ" resolve="fetchPolicy" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3JP6tISbF2d" role="3cqZAp">
                      <node concept="37vLTI" id="3JP6tISbP6W" role="3clFbG">
                        <node concept="2OqwBi" id="3JP6tISbF$b" role="37vLTJ">
                          <node concept="37vLTw" id="3JP6tISbF2b" role="2Oq$k0">
                            <ref role="3cqZAo" node="I$NcBHaYj" resolve="newActor" />
                          </node>
                          <node concept="3TrcHB" id="3JP6tISbJZY" role="2OqNvi">
                            <ref role="3TsBF5" to="o1mc:1enjyq1kiKO" resolve="address" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7OUT8FEPMFi" role="37vLTx">
                          <ref role="3cqZAo" node="16CkjdnER1" resolve="count" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="I$NcBMdv2" role="3cqZAp">
                      <node concept="2OqwBi" id="I$NcBMiv1" role="3clFbG">
                        <node concept="2OqwBi" id="I$NcBMdJb" role="2Oq$k0">
                          <node concept="2GrUjf" id="7OUT8FEPPkK" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7OUT8FEPAbv" resolve="actorBatch" />
                          </node>
                          <node concept="3Tsc0h" id="I$NcBMe2t" role="2OqNvi">
                            <ref role="3TtcxE" to="o1mc:I$NcBCQo8" resolve="actors" />
                          </node>
                        </node>
                        <node concept="TSZUe" id="I$NcBMteL" role="2OqNvi">
                          <node concept="37vLTw" id="I$NcBMtk_" role="25WWJ7">
                            <ref role="3cqZAo" node="I$NcBHaYj" resolve="newActor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7OUT8FEPMMh" role="3cqZAp">
                      <node concept="3uNrnE" id="7OUT8FEPP9O" role="3clFbG">
                        <node concept="37vLTw" id="7OUT8FEPP9Q" role="2$L3a6">
                          <ref role="3cqZAo" node="16CkjdnER1" resolve="count" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="I$NcBH84$" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="I$NcBH8aL" role="1tU5fm" />
                    <node concept="3cmrfG" id="I$NcBH8g$" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="I$NcBHaBk" role="1Dwp0S">
                    <node concept="37vLTw" id="I$NcBH8jq" role="3uHU7B">
                      <ref role="3cqZAo" node="I$NcBH84$" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="I$NcBUH0B" role="3uHU7w">
                      <node concept="2GrUjf" id="7OUT8FEPK9r" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7OUT8FEPAbv" resolve="actorBatch" />
                      </node>
                      <node concept="3TrcHB" id="I$NcBUHKg" role="2OqNvi">
                        <ref role="3TsBF5" to="o1mc:5Q93FfG0Dh3" resolve="number" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uNrnE" id="I$NcBHaU2" role="1Dwrff">
                    <node concept="37vLTw" id="I$NcBHaU4" role="2$L3a6">
                      <ref role="3cqZAo" node="I$NcBH84$" resolve="i" />
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
  <node concept="3d7hep" id="7L6vGi5AMVv">
    <property role="TrG5h" value="map_ActorScript" />
    <node concept="IQpmJ" id="7L6vGi5AW0e" role="3TcAiI">
      <node concept="2b32R4" id="7L6vGi5AWK0" role="lGtFl">
        <node concept="3JmXsc" id="7L6vGi5AWK3" role="2P8S$">
          <node concept="3clFbS" id="7L6vGi5AWK4" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5AWKa" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5AWK5" role="3clFbG">
                <node concept="3Tsc0h" id="7L6vGi5AWK8" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actorCreation" />
                </node>
                <node concept="30H73N" id="7L6vGi5AWK9" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="7L6vGi5AV3W" role="3TcAiz">
      <node concept="2b32R4" id="7L6vGi5AVJZ" role="lGtFl">
        <node concept="3JmXsc" id="7L6vGi5AVK2" role="2P8S$">
          <node concept="3clFbS" id="7L6vGi5AVK3" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5AVK9" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5AVK4" role="3clFbG">
                <node concept="3Tsc0h" id="7L6vGi5AVK7" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:5Q93FfFZEV2" resolve="behaviors" />
                </node>
                <node concept="30H73N" id="7L6vGi5AVK8" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="7L6vGi5AUbp" role="3TcAiG">
      <node concept="2b32R4" id="7L6vGi5AUNH" role="lGtFl">
        <node concept="3JmXsc" id="7L6vGi5AUNK" role="2P8S$">
          <node concept="3clFbS" id="7L6vGi5AUNL" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5AUNR" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5AUNM" role="3clFbG">
                <node concept="3Tsc0h" id="7L6vGi5AUNP" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:J4FZX0nRLh" resolve="configuration" />
                </node>
                <node concept="30H73N" id="7L6vGi5AUNQ" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="7L6vGi5ATm_" role="3TcAiD">
      <node concept="2b32R4" id="7L6vGi5ATVa" role="lGtFl">
        <node concept="3JmXsc" id="7L6vGi5ATVd" role="2P8S$">
          <node concept="3clFbS" id="7L6vGi5ATVe" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5ATVk" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5ATVf" role="3clFbG">
                <node concept="3Tsc0h" id="7L6vGi5ATVi" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:67qr5KKaF4Q" resolve="externalFunctions" />
                </node>
                <node concept="30H73N" id="7L6vGi5ATVj" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="7L6vGi5AS_w" role="3TcAiE">
      <node concept="2b32R4" id="7L6vGi5AT6m" role="lGtFl">
        <node concept="3JmXsc" id="7L6vGi5AT6p" role="2P8S$">
          <node concept="3clFbS" id="7L6vGi5AT6q" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5AT6w" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5AT6r" role="3clFbG">
                <node concept="3Tsc0h" id="7L6vGi5AT6u" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:7lfjb8Uc8Lz" resolve="types" />
                </node>
                <node concept="30H73N" id="7L6vGi5AT6v" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1ldE19" id="7L6vGi5ARZ5" role="3TcAiF">
      <node concept="2b32R4" id="7L6vGi5ASkN" role="lGtFl">
        <node concept="3JmXsc" id="7L6vGi5ASkQ" role="2P8S$">
          <node concept="3clFbS" id="7L6vGi5ASkR" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5ASkX" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5ASkS" role="3clFbG">
                <node concept="3Tsc0h" id="7L6vGi5ASkV" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:1XiwwXap298" resolve="customEvents" />
                </node>
                <node concept="30H73N" id="7L6vGi5ASkW" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="7L6vGi5AMVw" role="N3F5h">
      <property role="TrG5h" value="empty_1751103085092_1" />
    </node>
    <node concept="2QtU1Q" id="7L6vGi5AMVx" role="3TcAiH">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="7L6vGi5AMVy" role="2QtU1V" />
    </node>
    <node concept="n94m4" id="7L6vGi5AMVz" role="lGtFl">
      <ref role="n9lRv" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
    </node>
    <node concept="17Uvod" id="7L6vGi5AMVF" role="lGtFl">
      <property role="2qtEX9" value="randomStuff" />
      <property role="P4ACc" value="10eda999-5898-4cde-9416-196c5eca1268/19880565244932829/8954984291590478449" />
      <node concept="3zFVjK" id="7L6vGi5AMVG" role="3zH0cK">
        <node concept="3clFbS" id="7L6vGi5AMVH" role="2VODD2">
          <node concept="3clFbF" id="7L6vGi5ANbR" role="3cqZAp">
            <node concept="2OqwBi" id="7L6vGi5AO0_" role="3clFbG">
              <node concept="30H73N" id="7L6vGi5ANbQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="7L6vGi5AQru" role="2OqNvi">
                <ref role="3TsBF5" to="o1mc:BPgbAvvBxK" resolve="randomStuff" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3DMq4$" id="7L6vGi5AX0f" role="3TcAiJ">
      <node concept="29HgVG" id="7L6vGi5AXNK" role="lGtFl">
        <node concept="3NFfHV" id="7L6vGi5AXNL" role="3NFExx">
          <node concept="3clFbS" id="7L6vGi5AXNM" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5AXNS" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5AXNN" role="3clFbG">
                <node concept="3TrEf2" id="7L6vGi5AXNQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:2oGQ1bfTGMt" resolve="topology" />
                </node>
                <node concept="30H73N" id="7L6vGi5AXNR" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DUTIU" id="7L6vGi5AXVN" role="3TcAiO">
      <node concept="N3Fnx" id="7L6vGi5AXVO" role="1DUTIT">
        <node concept="19Rifw" id="7L6vGi5AXVP" role="2C2TGm" />
        <node concept="3XIRFW" id="7L6vGi5AXVQ" role="3XIRFX">
          <node concept="3XISUE" id="7L6vGi5AXVR" role="3XIRFZ" />
        </node>
      </node>
      <node concept="29HgVG" id="7L6vGi5AYM0" role="lGtFl">
        <node concept="3NFfHV" id="7L6vGi5AYM1" role="3NFExx">
          <node concept="3clFbS" id="7L6vGi5AYM2" role="2VODD2">
            <node concept="3clFbF" id="7L6vGi5AYM8" role="3cqZAp">
              <node concept="2OqwBi" id="7L6vGi5AYM3" role="3clFbG">
                <node concept="3TrEf2" id="7L6vGi5AYM6" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:3bdhGdqzYfV" resolve="startupCode" />
                </node>
                <node concept="30H73N" id="7L6vGi5AYM7" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17Uvod" id="7L6vGi5AYU3" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="7L6vGi5AYU4" role="3zH0cK">
        <node concept="3clFbS" id="7L6vGi5AYU5" role="2VODD2">
          <node concept="3clFbF" id="7L6vGi5AZLn" role="3cqZAp">
            <node concept="2OqwBi" id="7L6vGi5B0A5" role="3clFbG">
              <node concept="30H73N" id="7L6vGi5AZLm" role="2Oq$k0" />
              <node concept="3TrcHB" id="7L6vGi5B2ZK" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

