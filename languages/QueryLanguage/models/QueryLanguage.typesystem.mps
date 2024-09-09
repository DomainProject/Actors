<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c16b6385-a54f-425c-958c-759f07935c87(QueryLanguage.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="18kY7G" id="2fooeIVpBVN">
    <property role="TrG5h" value="check_InsertInto" />
    <property role="3GE5qa" value="statements" />
    <node concept="3clFbS" id="2fooeIVpBVO" role="18ibNy">
      <node concept="3clFbJ" id="2fooeIVpBW0" role="3cqZAp">
        <node concept="3y3z36" id="2fooeIVpMO0" role="3clFbw">
          <node concept="2OqwBi" id="2fooeIVpUhi" role="3uHU7w">
            <node concept="2OqwBi" id="2fooeIVpQdn" role="2Oq$k0">
              <node concept="1YBJjd" id="2fooeIVpOm1" role="2Oq$k0">
                <ref role="1YBMHb" node="2fooeIVpBVQ" resolve="insertInto" />
              </node>
              <node concept="3Tsc0h" id="2fooeIVpQu3" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:69qeU0f7cyz" resolve="values" />
              </node>
            </node>
            <node concept="34oBXx" id="2fooeIVpXQG" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="2fooeIVpEF2" role="3uHU7B">
            <node concept="2OqwBi" id="2fooeIVpC7T" role="2Oq$k0">
              <node concept="1YBJjd" id="2fooeIVpBWc" role="2Oq$k0">
                <ref role="1YBMHb" node="2fooeIVpBVQ" resolve="insertInto" />
              </node>
              <node concept="3Tsc0h" id="2fooeIVpCmd" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:7mg1zkgy_WV" resolve="columns" />
              </node>
            </node>
            <node concept="34oBXx" id="2fooeIVpIe4" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="2fooeIVpBW2" role="3clFbx">
          <node concept="2MkqsV" id="2fooeIVqmOu" role="3cqZAp">
            <node concept="Xl_RD" id="2fooeIVqmOE" role="2MkJ7o">
              <property role="Xl_RC" value="Exactly one value per selected column must be specified" />
            </node>
            <node concept="1YBJjd" id="2fooeIVqmRn" role="1urrMF">
              <ref role="1YBMHb" node="2fooeIVpBVQ" resolve="insertInto" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2fooeIVpBVQ" role="1YuTPh">
      <property role="TrG5h" value="insertInto" />
      <ref role="1YaFvo" to="p6im:69qeU0f77b8" resolve="InsertInto" />
    </node>
  </node>
  <node concept="18kY7G" id="2fooeIVr7gZ">
    <property role="TrG5h" value="check_Update" />
    <property role="3GE5qa" value="statements" />
    <node concept="3clFbS" id="2fooeIVr7h0" role="18ibNy">
      <node concept="3clFbJ" id="2fooeIVr8xe" role="3cqZAp">
        <node concept="3y3z36" id="2fooeIVr8xf" role="3clFbw">
          <node concept="2OqwBi" id="2fooeIVr8xg" role="3uHU7w">
            <node concept="2OqwBi" id="2fooeIVr8xh" role="2Oq$k0">
              <node concept="1YBJjd" id="2fooeIVr8xi" role="2Oq$k0">
                <ref role="1YBMHb" node="2fooeIVr7h2" resolve="update" />
              </node>
              <node concept="3Tsc0h" id="2fooeIVr8xj" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:69qeU0f8Slb" resolve="values" />
              </node>
            </node>
            <node concept="34oBXx" id="2fooeIVr8xk" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="2fooeIVr8xl" role="3uHU7B">
            <node concept="2OqwBi" id="2fooeIVr8xm" role="2Oq$k0">
              <node concept="3Tsc0h" id="2fooeIVr8xo" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:7mg1zkgy_WV" resolve="columns" />
              </node>
              <node concept="1YBJjd" id="2fooeIVr9V1" role="2Oq$k0">
                <ref role="1YBMHb" node="2fooeIVr7h2" resolve="update" />
              </node>
            </node>
            <node concept="34oBXx" id="2fooeIVr8xp" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="2fooeIVr8xq" role="3clFbx">
          <node concept="2MkqsV" id="2fooeIVr8xr" role="3cqZAp">
            <node concept="Xl_RD" id="2fooeIVr8xs" role="2MkJ7o">
              <property role="Xl_RC" value="Exactly one value per selected column must be specified" />
            </node>
            <node concept="1YBJjd" id="2fooeIVr8xt" role="1urrMF">
              <ref role="1YBMHb" node="2fooeIVr7h2" resolve="update" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2fooeIVr7h2" role="1YuTPh">
      <property role="TrG5h" value="update" />
      <ref role="1YaFvo" to="p6im:69qeU0f8SkZ" resolve="Update" />
    </node>
  </node>
  <node concept="18kY7G" id="6MkW5HYCIQ2">
    <property role="TrG5h" value="check_Select" />
    <property role="3GE5qa" value="statements" />
    <node concept="3clFbS" id="6MkW5HYCIQ3" role="18ibNy">
      <node concept="3clFbJ" id="6MkW5HYCIQi" role="3cqZAp">
        <node concept="1Wc70l" id="6MkW5HYCPxI" role="3clFbw">
          <node concept="3eOSWO" id="6MkW5HYD1RB" role="3uHU7w">
            <node concept="3cmrfG" id="6MkW5HYD1RE" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="6MkW5HYCSsg" role="3uHU7B">
              <node concept="2OqwBi" id="6MkW5HYCPMx" role="2Oq$k0">
                <node concept="1YBJjd" id="6MkW5HYCP$Z" role="2Oq$k0">
                  <ref role="1YBMHb" node="6MkW5HYCIQ5" resolve="select" />
                </node>
                <node concept="3Tsc0h" id="6MkW5HYCQ8k" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                </node>
              </node>
              <node concept="34oBXx" id="6MkW5HYCZ8c" role="2OqNvi" />
            </node>
          </node>
          <node concept="2OqwBi" id="5gn1UuTmhDG" role="3uHU7B">
            <node concept="2OqwBi" id="6MkW5HYCJfj" role="2Oq$k0">
              <node concept="1YBJjd" id="6MkW5HYCJ2b" role="2Oq$k0">
                <ref role="1YBMHb" node="6MkW5HYCIQ5" resolve="select" />
              </node>
              <node concept="3TrEf2" id="5gn1UuTmhrK" role="2OqNvi">
                <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
              </node>
            </node>
            <node concept="3x8VRR" id="5gn1UuTmisC" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="6MkW5HYCIQk" role="3clFbx">
          <node concept="2MkqsV" id="6MkW5HYD1ZX" role="3cqZAp">
            <node concept="Xl_RD" id="6MkW5HYD209" role="2MkJ7o">
              <property role="Xl_RC" value="View is not supported for joined tables" />
            </node>
            <node concept="1YBJjd" id="6MkW5HYD21s" role="1urrMF">
              <ref role="1YBMHb" node="6MkW5HYCIQ5" resolve="select" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="27m1IF2Qv84" role="3cqZAp">
        <node concept="3clFbS" id="27m1IF2Qv86" role="3clFbx">
          <node concept="2MkqsV" id="27m1IF2QNDU" role="3cqZAp">
            <node concept="Xl_RD" id="27m1IF2QNE9" role="2MkJ7o">
              <property role="Xl_RC" value="Windows in queries on alias tables are not supported" />
            </node>
            <node concept="1YBJjd" id="27m1IF2QNG0" role="1urrMF">
              <ref role="1YBMHb" node="6MkW5HYCIQ5" resolve="select" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="27m1IF2QLPV" role="3clFbw">
          <node concept="2OqwBi" id="27m1IF2QMY_" role="3uHU7w">
            <node concept="2OqwBi" id="27m1IF2QMcE" role="2Oq$k0">
              <node concept="1YBJjd" id="27m1IF2QLVn" role="2Oq$k0">
                <ref role="1YBMHb" node="6MkW5HYCIQ5" resolve="select" />
              </node>
              <node concept="3TrEf2" id="27m1IF2QMAc" role="2OqNvi">
                <ref role="3Tt5mk" to="p6im:32lqJACCeyQ" resolve="window" />
              </node>
            </node>
            <node concept="3x8VRR" id="27m1IF2QNxj" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="27m1IF2QIX3" role="3uHU7B">
            <node concept="2OqwBi" id="27m1IF2QyHT" role="2Oq$k0">
              <node concept="2OqwBi" id="27m1IF2QvlH" role="2Oq$k0">
                <node concept="1YBJjd" id="27m1IF2Qv8_" role="2Oq$k0">
                  <ref role="1YBMHb" node="6MkW5HYCIQ5" resolve="select" />
                </node>
                <node concept="3Tsc0h" id="27m1IF2QwhU" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                </node>
              </node>
              <node concept="1z4cxt" id="27m1IF2QIQC" role="2OqNvi">
                <node concept="1bVj0M" id="27m1IF2QIQE" role="23t8la">
                  <node concept="3clFbS" id="27m1IF2QIQF" role="1bW5cS">
                    <node concept="3clFbF" id="27m1IF2QIQG" role="3cqZAp">
                      <node concept="2OqwBi" id="27m1IF2QIQH" role="3clFbG">
                        <node concept="2OqwBi" id="27m1IF2QIQI" role="2Oq$k0">
                          <node concept="2OqwBi" id="27m1IF2WYhO" role="2Oq$k0">
                            <node concept="37vLTw" id="27m1IF2QIQJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="27m1IF2QIQO" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="27m1IF2WYCE" role="2OqNvi">
                              <ref role="3Tt5mk" to="p6im:21Z4UyPhvrv" resolve="tableRef" />
                            </node>
                          </node>
                          <node concept="2Xjw5R" id="27m1IF2QIQK" role="2OqNvi">
                            <node concept="1xMEDy" id="27m1IF2QIQL" role="1xVPHs">
                              <node concept="chp4Y" id="27m1IF2QIQM" role="ri$Ld">
                                <ref role="cht4Q" to="p6im:66sUT0$8edT" resolve="Select" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3x8VRR" id="27m1IF2QIQN" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="27m1IF2QIQO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="27m1IF2QIQP" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="27m1IF2QKse" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6MkW5HYCIQ5" role="1YuTPh">
      <property role="TrG5h" value="select" />
      <ref role="1YaFvo" to="p6im:66sUT0$8edT" resolve="Select" />
    </node>
  </node>
</model>

