<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:258f263b-4e20-423c-a240-35e904c3f14e(ActorLanguage.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="5dAUsbq99dN">
    <property role="TrG5h" value="check_CreateBehavior" />
    <property role="3GE5qa" value="behavior" />
    <node concept="3clFbS" id="5dAUsbq99dO" role="18ibNy">
      <node concept="3clFbJ" id="5dAUsbq99dY" role="3cqZAp">
        <node concept="1Wc70l" id="5dAUsbq9brH" role="3clFbw">
          <node concept="17QLQc" id="5dAUsbq9ftv" role="3uHU7w">
            <node concept="35c_gC" id="5dAUsbq9ggB" role="3uHU7w">
              <ref role="35c_gD" to="o1mc:66sUT0$7o_P" resolve="Fetch" />
            </node>
            <node concept="2OqwBi" id="5dAUsbq9fvo" role="3uHU7B">
              <node concept="1y4W85" id="5dAUsbq9f34" role="2Oq$k0">
                <node concept="3cmrfG" id="5dAUsbq9f72" role="1y58nS">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="5dAUsbq9btt" role="1y566C">
                  <node concept="1YBJjd" id="5dAUsbq9bsH" role="2Oq$k0">
                    <ref role="1YBMHb" node="5dAUsbq99dQ" resolve="createBehavior" />
                  </node>
                  <node concept="3Tsc0h" id="5dAUsbq9bKo" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
                  </node>
                </node>
              </node>
              <node concept="2yIwOk" id="5dAUsbq9gex" role="2OqNvi" />
            </node>
          </node>
          <node concept="17R0WA" id="5dAUsbq9a6b" role="3uHU7B">
            <node concept="2OqwBi" id="5dAUsbq99yz" role="3uHU7B">
              <node concept="1YBJjd" id="5dAUsbq99my" role="2Oq$k0">
                <ref role="1YBMHb" node="5dAUsbq99dQ" resolve="createBehavior" />
              </node>
              <node concept="3TrcHB" id="5dAUsbq99Me" role="2OqNvi">
                <ref role="3TsBF5" to="o1mc:5dAUsbpDFwo" resolve="type" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dAUsbq9aTA" role="3uHU7w">
              <node concept="1XH99k" id="5dAUsbq9a6F" role="2Oq$k0">
                <ref role="1XH99l" to="o1mc:5dAUsbpDFwj" resolve="BehaviorType" />
              </node>
              <node concept="2ViDtV" id="5dAUsbq9bq$" role="2OqNvi">
                <ref role="2ViDtZ" to="o1mc:5dAUsbpDFwl" resolve="RESPONSIVE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5dAUsbq99e0" role="3clFbx">
          <node concept="2MkqsV" id="5dAUsbq9gGx" role="3cqZAp">
            <node concept="Xl_RD" id="5dAUsbq9gGH" role="2MkJ7o">
              <property role="Xl_RC" value="The first statement of a responsive behavior must be a fetch statement" />
            </node>
            <node concept="1YBJjd" id="5dAUsbq9gJ8" role="1urrMF">
              <ref role="1YBMHb" node="5dAUsbq99dQ" resolve="createBehavior" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5dAUsbq99dQ" role="1YuTPh">
      <property role="TrG5h" value="createBehavior" />
      <ref role="1YaFvo" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
    </node>
  </node>
  <node concept="18kY7G" id="5dAUsbqaSnX">
    <property role="TrG5h" value="check_Fetch" />
    <property role="3GE5qa" value="fetch" />
    <node concept="3clFbS" id="5dAUsbqaSnY" role="18ibNy">
      <node concept="3clFbJ" id="5dAUsbqaSoa" role="3cqZAp">
        <node concept="2OqwBi" id="5dAUsbqaTzw" role="3clFbw">
          <node concept="2OqwBi" id="5dAUsbqaSBn" role="2Oq$k0">
            <node concept="1YBJjd" id="5dAUsbqaSom" role="2Oq$k0">
              <ref role="1YBMHb" node="5dAUsbqaSo0" resolve="fetch" />
            </node>
            <node concept="3TrcHB" id="5dAUsbqaTmH" role="2OqNvi">
              <ref role="3TsBF5" to="o1mc:66sUT0$7o_V" resolve="policy" />
            </node>
          </node>
          <node concept="3w_OXm" id="5dAUsbqaTRE" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="5dAUsbqaSoc" role="3clFbx">
          <node concept="2MkqsV" id="5dAUsbqaTTL" role="3cqZAp">
            <node concept="Xl_RD" id="5dAUsbqaTTX" role="2MkJ7o">
              <property role="Xl_RC" value="The fetching policy is not set" />
            </node>
            <node concept="1YBJjd" id="5dAUsbqaTUP" role="1urrMF">
              <ref role="1YBMHb" node="5dAUsbqaSo0" resolve="fetch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5dAUsbqaSo0" role="1YuTPh">
      <property role="TrG5h" value="fetch" />
      <ref role="1YaFvo" to="o1mc:66sUT0$7o_P" resolve="Fetch" />
    </node>
  </node>
</model>

