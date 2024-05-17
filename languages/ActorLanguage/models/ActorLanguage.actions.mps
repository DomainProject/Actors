<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4117b66e-6773-4ea8-8d65-4682755ba8ec(ActorLanguage.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
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
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
  </registry>
  <node concept="37WguZ" id="25QEYlOvTJE">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="EnvelopeFactory" />
    <node concept="37WvkG" id="25QEYlOvTJF" role="37WGs$">
      <ref role="37XkoT" to="o1mc:25QEYlOdAq7" resolve="Envelope" />
      <node concept="37Y9Zx" id="25QEYlOvTJG" role="37ZfLb">
        <node concept="3clFbS" id="25QEYlOvTJH" role="2VODD2">
          <node concept="Jncv_" id="25QEYlOBsx9" role="3cqZAp">
            <ref role="JncvD" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
            <node concept="2OqwBi" id="25QEYlODi3Z" role="JncvB">
              <node concept="1r4N1M" id="25QEYlOBsxI" role="2Oq$k0" />
              <node concept="1mfA1w" id="25QEYlODidA" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="25QEYlOBsxb" role="Jncv$">
              <node concept="3clFbF" id="25QEYlODWCq" role="3cqZAp">
                <node concept="37vLTI" id="25QEYlODXnE" role="3clFbG">
                  <node concept="2OqwBi" id="25QEYlODWNq" role="37vLTJ">
                    <node concept="1r4Lsj" id="25QEYlODWCp" role="2Oq$k0" />
                    <node concept="3TrEf2" id="25QEYlODX15" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:25QEYlOdAq9" resolve="sender" />
                    </node>
                  </node>
                  <node concept="Jnkvi" id="25QEYlODXUo" role="37vLTx">
                    <ref role="1M0zk5" node="25QEYlOBsxc" resolve="actor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="JncvC" id="25QEYlOBsxc" role="JncvA">
              <property role="TrG5h" value="actor" />
              <node concept="2jxLKc" id="25QEYlOBsxd" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="25QEYlOFf2h">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="MessageFactory" />
    <node concept="37WvkG" id="25QEYlOFf2i" role="37WGs$">
      <ref role="37XkoT" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
      <node concept="37Y9Zx" id="25QEYlOFf2j" role="37ZfLb">
        <node concept="3clFbS" id="25QEYlOFf2k" role="2VODD2">
          <node concept="3clFbF" id="25QEYlOFf2C" role="3cqZAp">
            <node concept="37vLTI" id="25QEYlOFjan" role="3clFbG">
              <node concept="2YIFZM" id="25QEYlOFk9M" role="37vLTx">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="25QEYlOFktn" role="37wK5m">
                  <node concept="liA8E" id="25QEYlOFkD6" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                  </node>
                  <node concept="2JrnkZ" id="25QEYlOFkts" role="2Oq$k0">
                    <node concept="1r4Lsj" id="25QEYlOFkaQ" role="2JrQYb" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="25QEYlOFfdS" role="37vLTJ">
                <node concept="1r4Lsj" id="25QEYlOFf2B" role="2Oq$k0" />
                <node concept="3TrcHB" id="25QEYlOFfpO" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:25QEYlOFf2e" resolve="tag" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

