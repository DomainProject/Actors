<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="2LRe1VcfePN">
    <property role="3GE5qa" value="actor" />
    <ref role="1M2myG" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
    <node concept="EnEH3" id="2LRe1VcfePO" role="1MhHOB">
      <ref role="EomxK" to="o1mc:3m_VcJMWzdw" resolve="address" />
      <node concept="QB0g5" id="2LRe1VcfeQu" role="QCWH9">
        <node concept="3clFbS" id="2LRe1VcfeQv" role="2VODD2">
          <node concept="3cpWs6" id="2LRe1VcfmWb" role="3cqZAp">
            <node concept="1eOMI4" id="2LRe1Vcfnan" role="3cqZAk">
              <node concept="1Wc70l" id="2LRe1VcfpZa" role="1eOMHV">
                <node concept="3eOVzh" id="2LRe1Vcfq7P" role="3uHU7w">
                  <node concept="3cmrfG" id="2LRe1Vcfq7T" role="3uHU7w">
                    <property role="3cmrfH" value="100" />
                  </node>
                  <node concept="1Wqviy" id="2LRe1Vcfq6D" role="3uHU7B" />
                </node>
                <node concept="2d3UOw" id="2LRe1VcfpEv" role="3uHU7B">
                  <node concept="1Wqviy" id="2LRe1VcfnKO" role="3uHU7B" />
                  <node concept="3cmrfG" id="2LRe1VcfpFc" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4DsQTTkx6L6">
    <property role="3GE5qa" value="message" />
    <ref role="1M2myG" to="o1mc:3m_VcJMWARM" resolve="SendMessage" />
    <node concept="1N5Pfh" id="4DsQTTkzjhK" role="1Mr941">
      <ref role="1N5Vy1" to="o1mc:3m_VcJMWARP" resolve="message" />
      <node concept="3dgokm" id="4DsQTTk$w2Q" role="1N6uqs">
        <node concept="3clFbS" id="4DsQTTk$w2R" role="2VODD2">
          <node concept="3cpWs8" id="4DsQTTk$w6k" role="3cqZAp">
            <node concept="3cpWsn" id="4DsQTTk$w6i" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="messages" />
              <node concept="A3Dl8" id="4DsQTTk$w79" role="1tU5fm">
                <node concept="3Tqbb2" id="4DsQTTk$wa3" role="A3Ik2">
                  <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                </node>
              </node>
              <node concept="2OqwBi" id="4DsQTTk$x4C" role="33vP2m">
                <node concept="2OqwBi" id="4DsQTTk$wyL" role="2Oq$k0">
                  <node concept="3kakTB" id="4DsQTTk$wlM" role="2Oq$k0" />
                  <node concept="1mfA1w" id="4DsQTTk$wVh" role="2OqNvi" />
                </node>
                <node concept="2Rf3mk" id="4DsQTTk$xmg" role="2OqNvi">
                  <node concept="1xMEDy" id="4DsQTTk$xmi" role="1xVPHs">
                    <node concept="chp4Y" id="4DsQTTk$xqh" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4DsQTTk$xFI" role="3cqZAp">
            <node concept="2ShNRf" id="4DsQTTk$xFE" role="3clFbG">
              <node concept="YeOm9" id="4DsQTTk$zWp" role="2ShVmc">
                <node concept="1Y3b0j" id="4DsQTTk$zWs" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="3Tm1VV" id="4DsQTTk$zWt" role="1B3o_S" />
                  <node concept="37vLTw" id="4DsQTTk$ydd" role="37wK5m">
                    <ref role="3cqZAo" node="4DsQTTk$w6i" resolve="messages" />
                  </node>
                  <node concept="3clFb_" id="4DsQTTk$$6$" role="jymVt">
                    <property role="TrG5h" value="getName" />
                    <node concept="3clFbS" id="4DsQTTk$$6B" role="3clF47">
                      <node concept="3clFbF" id="4DsQTTk$Bi6" role="3cqZAp">
                        <node concept="2OqwBi" id="4DsQTTk$CD0" role="3clFbG">
                          <node concept="1PxgMI" id="4DsQTTk$BOw" role="2Oq$k0">
                            <node concept="chp4Y" id="4DsQTTk$BUu" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                            <node concept="37vLTw" id="4DsQTTk$Bi5" role="1m5AlR">
                              <ref role="3cqZAo" node="4DsQTTk$$b2" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="4DsQTTk$D2u" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="4DsQTTk$$1h" role="1B3o_S" />
                    <node concept="17QB3L" id="4DsQTTk$$5k" role="3clF45" />
                    <node concept="37vLTG" id="4DsQTTk$$b2" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="4DsQTTk$$b1" role="1tU5fm" />
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
  <node concept="1M2fIO" id="4DsQTTkAfsF">
    <property role="3GE5qa" value="actor" />
    <ref role="1M2myG" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
    <node concept="EnEH3" id="4DsQTTkAfsG" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="4DsQTTkF1Rh" role="QCWH9">
        <node concept="3clFbS" id="4DsQTTkF1Ri" role="2VODD2">
          <node concept="3clFbJ" id="4DsQTTkIPsQ" role="3cqZAp">
            <node concept="3clFbS" id="4DsQTTkIPsS" role="3clFbx">
              <node concept="3cpWs6" id="4DsQTTkISvY" role="3cqZAp">
                <node concept="3clFbT" id="4DsQTTkISVm" role="3cqZAk" />
              </node>
            </node>
            <node concept="2OqwBi" id="4DsQTTkKcVa" role="3clFbw">
              <node concept="1Wqviy" id="4DsQTTkIPy3" role="2Oq$k0" />
              <node concept="17RlXB" id="4DsQTTkKeLZ" role="2OqNvi" />
            </node>
          </node>
          <node concept="2Gpval" id="4DsQTTkHPiz" role="3cqZAp">
            <node concept="2GrKxI" id="4DsQTTkHPi_" role="2Gsz3X">
              <property role="TrG5h" value="actor" />
            </node>
            <node concept="2OqwBi" id="4DsQTTkHTxk" role="2GsD0m">
              <node concept="2OqwBi" id="4DsQTTkHQMP" role="2Oq$k0">
                <node concept="2OqwBi" id="4DsQTTkHQgB" role="2Oq$k0">
                  <node concept="EsrRn" id="4DsQTTkHQ0n" role="2Oq$k0" />
                  <node concept="1mfA1w" id="4DsQTTkHQ_0" role="2OqNvi" />
                </node>
                <node concept="2Rf3mk" id="4DsQTTkHRam" role="2OqNvi">
                  <node concept="1xMEDy" id="4DsQTTkHRao" role="1xVPHs">
                    <node concept="chp4Y" id="4DsQTTkHRhj" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="4DsQTTkHYB$" role="2OqNvi">
                <node concept="2ShNRf" id="4DsQTTkHYHv" role="576Qk">
                  <node concept="Tc6Ow" id="4DsQTTkHZ3x" role="2ShVmc">
                    <node concept="EsrRn" id="4DsQTTkI0oG" role="HW$Y0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4DsQTTkHPiD" role="2LFqv$">
              <node concept="3clFbJ" id="4DsQTTkJHvU" role="3cqZAp">
                <node concept="3clFbS" id="4DsQTTkJHvW" role="3clFbx">
                  <node concept="3N13vt" id="4DsQTTkJMCy" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="4DsQTTkJLf4" role="3clFbw">
                  <node concept="10Nm6u" id="4DsQTTkJMzh" role="3uHU7w" />
                  <node concept="2OqwBi" id="4DsQTTkJHON" role="3uHU7B">
                    <node concept="2GrUjf" id="4DsQTTkJH_e" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4DsQTTkHPi_" resolve="actor" />
                    </node>
                    <node concept="3TrcHB" id="4DsQTTkJIXe" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4DsQTTkI0Jp" role="3cqZAp">
                <node concept="2OqwBi" id="4DsQTTkI41x" role="3clFbw">
                  <node concept="2OqwBi" id="4DsQTTkI1in" role="2Oq$k0">
                    <node concept="2GrUjf" id="4DsQTTkI14P" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4DsQTTkHPi_" resolve="actor" />
                    </node>
                    <node concept="3TrcHB" id="4DsQTTkI2DU" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4DsQTTkI5T9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="1Wqviy" id="4DsQTTkI5Xl" role="37wK5m" />
                  </node>
                </node>
                <node concept="3clFbS" id="4DsQTTkI0Jr" role="3clFbx">
                  <node concept="3cpWs6" id="4DsQTTkI6mf" role="3cqZAp">
                    <node concept="3clFbT" id="4DsQTTkI6wj" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4DsQTTkI6Ej" role="3cqZAp">
            <node concept="3clFbT" id="4DsQTTkI6Nx" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4DsQTTkLdv4" role="1MhHOB">
      <ref role="EomxK" to="o1mc:3m_VcJMWzdw" resolve="address" />
      <node concept="QB0g5" id="4DsQTTkLe0D" role="QCWH9">
        <node concept="3clFbS" id="4DsQTTkLe0E" role="2VODD2">
          <node concept="2Gpval" id="4DsQTTkLe1T" role="3cqZAp">
            <node concept="2GrKxI" id="4DsQTTkLe1U" role="2Gsz3X">
              <property role="TrG5h" value="actor" />
            </node>
            <node concept="2OqwBi" id="4DsQTTkLe1V" role="2GsD0m">
              <node concept="2OqwBi" id="4DsQTTkLe1W" role="2Oq$k0">
                <node concept="2OqwBi" id="4DsQTTkLe1X" role="2Oq$k0">
                  <node concept="EsrRn" id="4DsQTTkLe1Y" role="2Oq$k0" />
                  <node concept="1mfA1w" id="4DsQTTkLe1Z" role="2OqNvi" />
                </node>
                <node concept="2Rf3mk" id="4DsQTTkLe20" role="2OqNvi">
                  <node concept="1xMEDy" id="4DsQTTkLe21" role="1xVPHs">
                    <node concept="chp4Y" id="4DsQTTkLe22" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="4DsQTTkLe23" role="2OqNvi">
                <node concept="2ShNRf" id="4DsQTTkLe24" role="576Qk">
                  <node concept="Tc6Ow" id="4DsQTTkLe25" role="2ShVmc">
                    <node concept="EsrRn" id="4DsQTTkLe26" role="HW$Y0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4DsQTTkLe27" role="2LFqv$">
              <node concept="3clFbJ" id="4DsQTTkLe2g" role="3cqZAp">
                <node concept="3clFbC" id="4DsQTTkLoMx" role="3clFbw">
                  <node concept="1Wqviy" id="4DsQTTkLqn$" role="3uHU7w" />
                  <node concept="2OqwBi" id="4DsQTTkLe2i" role="3uHU7B">
                    <node concept="2GrUjf" id="4DsQTTkLe2j" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4DsQTTkLe1U" resolve="actor" />
                    </node>
                    <node concept="3TrcHB" id="4DsQTTkLkms" role="2OqNvi">
                      <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4DsQTTkLe2n" role="3clFbx">
                  <node concept="3cpWs6" id="4DsQTTkLe2o" role="3cqZAp">
                    <node concept="3clFbT" id="4DsQTTkLe2p" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4DsQTTkLe2q" role="3cqZAp">
            <node concept="3clFbT" id="4DsQTTkLe2r" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4DsQTTkDym_">
    <ref role="1M2myG" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
  </node>
  <node concept="1M2fIO" id="25QEYlOh1wS">
    <property role="3GE5qa" value="message" />
    <ref role="1M2myG" to="o1mc:25QEYlOdAq7" resolve="Envelope" />
    <node concept="1N5Pfh" id="25QEYlOE$Bb" role="1Mr941">
      <ref role="1N5Vy1" to="o1mc:25QEYlOdAqb" resolve="receiver" />
      <node concept="3dgokm" id="25QEYlOE$BS" role="1N6uqs">
        <node concept="3clFbS" id="25QEYlOE$BT" role="2VODD2">
          <node concept="3cpWs8" id="25QEYlOE$Ey" role="3cqZAp">
            <node concept="3cpWsn" id="25QEYlOE$Ez" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="actors" />
              <node concept="A3Dl8" id="25QEYlOE$E$" role="1tU5fm">
                <node concept="3Tqbb2" id="25QEYlOE$E_" role="A3Ik2">
                  <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                </node>
              </node>
              <node concept="2OqwBi" id="25QEYlOE$EA" role="33vP2m">
                <node concept="2OqwBi" id="25QEYlOE$EB" role="2Oq$k0">
                  <node concept="2OqwBi" id="25QEYlOE$EC" role="2Oq$k0">
                    <node concept="3kakTB" id="25QEYlOE$ED" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="25QEYlOE$EE" role="2OqNvi">
                      <node concept="1xMEDy" id="25QEYlOE$EF" role="1xVPHs">
                        <node concept="chp4Y" id="25QEYlOE$EG" role="ri$Ld">
                          <ref role="cht4Q" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Rf3mk" id="25QEYlOE$EH" role="2OqNvi">
                    <node concept="1xMEDy" id="25QEYlOE$EI" role="1xVPHs">
                      <node concept="chp4Y" id="25QEYlOE$EJ" role="ri$Ld">
                        <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="25QEYlOE$EK" role="2OqNvi">
                  <node concept="1bVj0M" id="25QEYlOE$EL" role="23t8la">
                    <node concept="3clFbS" id="25QEYlOE$EM" role="1bW5cS">
                      <node concept="3clFbF" id="25QEYlOE$EN" role="3cqZAp">
                        <node concept="3y3z36" id="25QEYlOE$EO" role="3clFbG">
                          <node concept="37vLTw" id="25QEYlOE$EP" role="3uHU7B">
                            <ref role="3cqZAo" node="25QEYlOE$ET" resolve="it" />
                          </node>
                          <node concept="2OqwBi" id="25QEYlOLZ02" role="3uHU7w">
                            <node concept="2OqwBi" id="25QEYlOEAvq" role="2Oq$k0">
                              <node concept="2OqwBi" id="25QEYlOE$EQ" role="2Oq$k0">
                                <node concept="3kakTB" id="25QEYlOE$ER" role="2Oq$k0" />
                                <node concept="1mfA1w" id="25QEYlOE$ES" role="2OqNvi" />
                              </node>
                              <node concept="1mfA1w" id="25QEYlOEAXe" role="2OqNvi" />
                            </node>
                            <node concept="1mfA1w" id="25QEYlOLZlE" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="25QEYlOE$ET" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="25QEYlOE$EU" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="25QEYlOE_9v" role="3cqZAp">
            <node concept="2ShNRf" id="25QEYlOE_9w" role="3clFbG">
              <node concept="YeOm9" id="25QEYlOE_9x" role="2ShVmc">
                <node concept="1Y3b0j" id="25QEYlOE_9y" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="3Tm1VV" id="25QEYlOE_9z" role="1B3o_S" />
                  <node concept="37vLTw" id="25QEYlOE_9$" role="37wK5m">
                    <ref role="3cqZAo" node="25QEYlOE$Ez" resolve="actors" />
                  </node>
                  <node concept="3clFb_" id="25QEYlOE_9_" role="jymVt">
                    <property role="TrG5h" value="getName" />
                    <node concept="3clFbS" id="25QEYlOE_9A" role="3clF47">
                      <node concept="3clFbF" id="25QEYlOE_9B" role="3cqZAp">
                        <node concept="2OqwBi" id="25QEYlOE_9C" role="3clFbG">
                          <node concept="1PxgMI" id="25QEYlOE_9D" role="2Oq$k0">
                            <node concept="chp4Y" id="25QEYlOE_9E" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                            <node concept="37vLTw" id="25QEYlOE_9F" role="1m5AlR">
                              <ref role="3cqZAo" node="25QEYlOE_9J" resolve="childNode" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="25QEYlOE_9G" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="25QEYlOE_9H" role="1B3o_S" />
                    <node concept="17QB3L" id="25QEYlOE_9I" role="3clF45" />
                    <node concept="37vLTG" id="25QEYlOE_9J" role="3clF46">
                      <property role="TrG5h" value="childNode" />
                      <node concept="3Tqbb2" id="25QEYlOE_9K" role="1tU5fm" />
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
</model>

