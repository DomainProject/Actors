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
    <import index="fh8z" ref="r:ba8769f3-331d-4a7d-b538-0ce586b24578(ActorLanguage.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
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
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
  <node concept="37WguZ" id="6F9Ho3O8KI8">
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="ActorFactory" />
    <node concept="37WvkG" id="6F9Ho3O8KI9" role="37WGs$">
      <ref role="37XkoT" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
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
                  <ref role="3Tt5mk" to="o1mc:5Q93FfG0WVT" resolve="messageQueue" />
                </node>
              </node>
              <node concept="2oxUTD" id="6F9Ho3OaSXV" role="2OqNvi">
                <node concept="37vLTw" id="6F9Ho3ObxxA" role="2oxUTC">
                  <ref role="3cqZAo" node="6F9Ho3Obuf$" resolve="mQueue" />
                </node>
              </node>
            </node>
          </node>
          <node concept="Jncv_" id="3JP6tISbXep" role="3cqZAp">
            <ref role="JncvD" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
            <node concept="1r4N1M" id="3JP6tISbXfP" role="JncvB" />
            <node concept="3clFbS" id="3JP6tISbXet" role="Jncv$">
              <node concept="3clFbF" id="3JP6tISbXhJ" role="3cqZAp">
                <node concept="37vLTI" id="3JP6tISc0d2" role="3clFbG">
                  <node concept="2OqwBi" id="3JP6tISc1cT" role="37vLTx">
                    <node concept="Jnkvi" id="3JP6tISc11A" role="2Oq$k0">
                      <ref role="1M0zk5" node="3JP6tISbXev" resolve="script" />
                    </node>
                    <node concept="2qgKlT" id="3JP6tISc1p1" role="2OqNvi">
                      <ref role="37wK5l" to="fh8z:3JP6tIS4aZI" resolve="getFreeAddress" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3JP6tISbXyP" role="37vLTJ">
                    <node concept="1r4Lsj" id="3JP6tISbXhI" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3JP6tISbXUL" role="2OqNvi">
                      <ref role="3TsBF5" to="o1mc:1enjyq1kiKO" resolve="address" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="3JP6tISbXev" role="JncvA">
              <property role="TrG5h" value="script" />
              <node concept="2jxLKc" id="3JP6tISbXew" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="5Q93FfG4gzQ">
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="ReceptionistFactory" />
    <node concept="37WvkG" id="5Q93FfG4gzR" role="37WGs$">
      <ref role="37XkoT" to="o1mc:5Q93FfFZEV5" resolve="Receptionist" />
      <node concept="37Y9Zx" id="5Q93FfG4gzS" role="37ZfLb">
        <node concept="3clFbS" id="5Q93FfG4gzT" role="2VODD2">
          <node concept="3clFbF" id="5Q93FfG4g$d" role="3cqZAp">
            <node concept="37vLTI" id="5Q93FfG4lJK" role="3clFbG">
              <node concept="3cmrfG" id="5Q93FfG4lK2" role="37vLTx">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="5Q93FfG4gJZ" role="37vLTJ">
                <node concept="1r4Lsj" id="5Q93FfG4g$c" role="2Oq$k0" />
                <node concept="3TrcHB" id="5Q93FfG4hao" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:1enjyq1kqlA" resolve="address" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Q93FfG4m9C" role="3cqZAp">
            <node concept="37vLTI" id="5Q93FfG4p3q" role="3clFbG">
              <node concept="Xl_RD" id="5Q93FfG4pjI" role="37vLTx">
                <property role="Xl_RC" value="receptionist" />
              </node>
              <node concept="2OqwBi" id="5Q93FfG4mm3" role="37vLTJ">
                <node concept="1r4Lsj" id="5Q93FfG4m9B" role="2Oq$k0" />
                <node concept="3TrcHB" id="5Q93FfG4m$3" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="1enjyq1KL2P">
    <property role="3GE5qa" value="receptionist" />
    <property role="TrG5h" value="SwitchPolicyFactory" />
    <node concept="37WvkG" id="1enjyq1KL2Q" role="37WGs$">
      <ref role="37XkoT" to="o1mc:1enjyq1DTn_" resolve="SwitchPolicy" />
      <node concept="37Y9Zx" id="1enjyq1KL2R" role="37ZfLb">
        <node concept="3clFbS" id="1enjyq1KL2S" role="2VODD2">
          <node concept="3SKdUt" id="1enjyq1NGuH" role="3cqZAp">
            <node concept="1PaTwC" id="1enjyq1NGuI" role="1aUNEU">
              <node concept="3oM_SD" id="1enjyq1NGvP" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGvR" role="1PaTwD">
                <property role="3oM_SC" value="allows" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGvV" role="1PaTwD">
                <property role="3oM_SC" value="us" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGvZ" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGw4" role="1PaTwD">
                <property role="3oM_SC" value="ignore" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGwp" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGww" role="1PaTwD">
                <property role="3oM_SC" value="child" />
              </node>
              <node concept="3oM_SD" id="1enjyq1NGwC" role="1PaTwD">
                <property role="3oM_SC" value="expression" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1enjyq1KL3c" role="3cqZAp">
            <node concept="37vLTI" id="1enjyq1KLS7" role="3clFbG">
              <node concept="2ShNRf" id="1enjyq1KLUK" role="37vLTx">
                <node concept="3zrR0B" id="1enjyq1KNhE" role="2ShVmc">
                  <node concept="3Tqbb2" id="1enjyq1KNhG" role="3zrR0E">
                    <ref role="ehGHo" to="tpee:htXhb8r" resolve="CharConstant" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1enjyq1KLhk" role="37vLTJ">
                <node concept="1r4Lsj" id="1enjyq1KL3b" role="2Oq$k0" />
                <node concept="3TrEf2" id="1enjyq1KLy5" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gVKbG91" resolve="expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

