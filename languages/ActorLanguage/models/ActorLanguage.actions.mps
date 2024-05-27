<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4117b66e-6773-4ea8-8d65-4682755ba8ec(ActorLanguage.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920670" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode" flags="nn" index="1r4N1M" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  </registry>
  <node concept="37WguZ" id="25QEYlOvTJE">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="EnvelopeFactory" />
    <node concept="37WvkG" id="25QEYlOvTJF" role="37WGs$">
      <ref role="37XkoT" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
      <node concept="37Y9Zx" id="25QEYlOvTJG" role="37ZfLb">
        <node concept="3clFbS" id="25QEYlOvTJH" role="2VODD2">
          <node concept="3clFbF" id="4posSimWU_D" role="3cqZAp">
            <node concept="37vLTI" id="4posSimWVpv" role="3clFbG">
              <node concept="2OqwBi" id="4posSimWV_P" role="37vLTx">
                <node concept="1r4N1M" id="4posSimWVsE" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4posSimWVLb" role="2OqNvi">
                  <node concept="1xMEDy" id="4posSimWVLd" role="1xVPHs">
                    <node concept="chp4Y" id="4posSimWVN_" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4posSimWUN9" role="37vLTJ">
                <node concept="1r4Lsj" id="4posSimWU_C" role="2Oq$k0" />
                <node concept="3TrEf2" id="4posSimWV2U" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:25QEYlOdAq9" resolve="sender" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="6F9Ho3O8KI8">
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="ActorFactory" />
    <node concept="37WvkG" id="6F9Ho3O8KI9" role="37WGs$">
      <ref role="37XkoT" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
      <node concept="37Y9Zx" id="6F9Ho3O8KIa" role="37ZfLb">
        <node concept="3clFbS" id="6F9Ho3O8KIb" role="2VODD2">
          <node concept="3cpWs8" id="6F9Ho3Obufx" role="3cqZAp">
            <node concept="3cpWsn" id="6F9Ho3Obuf$" role="3cpWs9">
              <property role="TrG5h" value="mQueue" />
              <node concept="3Tqbb2" id="6F9Ho3Obufv" role="1tU5fm">
                <ref role="ehGHo" to="o1mc:6F9Ho3O8bVn" resolve="MessageQueue" />
              </node>
              <node concept="2ShNRf" id="6F9Ho3Obui6" role="33vP2m">
                <node concept="3zrR0B" id="6F9Ho3Obui4" role="2ShVmc">
                  <node concept="3Tqbb2" id="6F9Ho3Obui5" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:6F9Ho3O8bVn" resolve="MessageQueue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6F9Ho3OaRDe" role="3cqZAp">
            <node concept="2OqwBi" id="6F9Ho3OaSA0" role="3clFbG">
              <node concept="2OqwBi" id="6F9Ho3OaRPg" role="2Oq$k0">
                <node concept="1r4Lsj" id="6F9Ho3OaRDd" role="2Oq$k0" />
                <node concept="3TrEf2" id="6F9Ho3OaS1x" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:6F9Ho3Oc6ML" resolve="messageQueue" />
                </node>
              </node>
              <node concept="2oxUTD" id="6F9Ho3OaSXV" role="2OqNvi">
                <node concept="37vLTw" id="6F9Ho3ObxxA" role="2oxUTC">
                  <ref role="3cqZAo" node="6F9Ho3Obuf$" resolve="mQueue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

