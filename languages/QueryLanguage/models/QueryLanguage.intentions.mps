<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:13f8d904-8637-4da1-85d7-c23d81f5a561(QueryLanguage.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryFunction" index="3dlsAV" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
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
    </language>
  </registry>
  <node concept="3dkpOd" id="5PYs8dV1Sfy">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="AddAggregationFunction" />
    <ref role="2ZfgGC" to="p6im:66sUT0$8edT" resolve="Select" />
    <node concept="38BcoT" id="5PYs8dV1Sfz" role="3dlsAV">
      <node concept="3clFbS" id="5PYs8dV1Sf_" role="2VODD2">
        <node concept="3cpWs8" id="7p2QZoUsnlk" role="3cqZAp">
          <node concept="3cpWsn" id="7p2QZoUsnln" role="3cpWs9">
            <property role="TrG5h" value="concepts" />
            <node concept="_YKpA" id="7p2QZoUsnli" role="1tU5fm">
              <node concept="3bZ5Sz" id="7p2QZoUsnmS" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="7p2QZoUsnsJ" role="33vP2m">
              <node concept="Tc6Ow" id="7p2QZoUsnsF" role="2ShVmc">
                <node concept="3bZ5Sz" id="7p2QZoUsnsG" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p2QZoUsnw7" role="3cqZAp">
          <node concept="2OqwBi" id="7p2QZoUsnDK" role="3clFbG">
            <node concept="37vLTw" id="7p2QZoUsnw5" role="2Oq$k0">
              <ref role="3cqZAo" node="7p2QZoUsnln" resolve="concepts" />
            </node>
            <node concept="TSZUe" id="7p2QZoUsqPu" role="2OqNvi">
              <node concept="35c_gC" id="7p2QZoUsr5$" role="25WWJ7">
                <ref role="35c_gD" to="p6im:5PYs8dV0Cek" resolve="Average" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p2QZoUsrgj" role="3cqZAp">
          <node concept="2OqwBi" id="7p2QZoUsrrd" role="3clFbG">
            <node concept="37vLTw" id="7p2QZoUsrgh" role="2Oq$k0">
              <ref role="3cqZAo" node="7p2QZoUsnln" resolve="concepts" />
            </node>
            <node concept="TSZUe" id="7p2QZoUsrQh" role="2OqNvi">
              <node concept="35c_gC" id="7p2QZoUssMh" role="25WWJ7">
                <ref role="35c_gD" to="p6im:5PYs8dV0Cei" resolve="Count" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p2QZoUstAs" role="3cqZAp">
          <node concept="2OqwBi" id="7p2QZoUstAt" role="3clFbG">
            <node concept="37vLTw" id="7p2QZoUstAu" role="2Oq$k0">
              <ref role="3cqZAo" node="7p2QZoUsnln" resolve="concepts" />
            </node>
            <node concept="TSZUe" id="7p2QZoUstAv" role="2OqNvi">
              <node concept="35c_gC" id="7p2QZoUstAw" role="25WWJ7">
                <ref role="35c_gD" to="p6im:5PYs8dV0Ced" resolve="Min" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p2QZoUstBl" role="3cqZAp">
          <node concept="2OqwBi" id="7p2QZoUstBm" role="3clFbG">
            <node concept="37vLTw" id="7p2QZoUstBn" role="2Oq$k0">
              <ref role="3cqZAo" node="7p2QZoUsnln" resolve="concepts" />
            </node>
            <node concept="TSZUe" id="7p2QZoUstBo" role="2OqNvi">
              <node concept="35c_gC" id="7p2QZoUstBp" role="25WWJ7">
                <ref role="35c_gD" to="p6im:5PYs8dV0Ceg" resolve="Max" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p2QZoUstIE" role="3cqZAp">
          <node concept="2OqwBi" id="7p2QZoUstIF" role="3clFbG">
            <node concept="37vLTw" id="7p2QZoUstIG" role="2Oq$k0">
              <ref role="3cqZAo" node="7p2QZoUsnln" resolve="concepts" />
            </node>
            <node concept="TSZUe" id="7p2QZoUstIH" role="2OqNvi">
              <node concept="35c_gC" id="7p2QZoUstII" role="25WWJ7">
                <ref role="35c_gD" to="p6im:5PYs8dV0Cej" resolve="Sum" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7p2QZoUstBT" role="3cqZAp" />
        <node concept="3clFbF" id="7p2QZoUsudA" role="3cqZAp">
          <node concept="37vLTw" id="7p2QZoUsud$" role="3clFbG">
            <ref role="3cqZAo" node="7p2QZoUsnln" resolve="concepts" />
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="7p2QZoUsgZA" role="3ddBve" />
    </node>
    <node concept="2S6ZIM" id="5PYs8dV1SfA" role="2ZfVej">
      <node concept="3clFbS" id="5PYs8dV1SfB" role="2VODD2">
        <node concept="3clFbF" id="7p2QZoUs7Rl" role="3cqZAp">
          <node concept="3cpWs3" id="7p2QZoUscPL" role="3clFbG">
            <node concept="2OqwBi" id="7p2QZoUsvnQ" role="3uHU7w">
              <node concept="38Zlrr" id="7p2QZoUsd6d" role="2Oq$k0" />
              <node concept="liA8E" id="7p2QZoUsvQy" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="7p2QZoUs8Mw" role="3uHU7B">
              <property role="Xl_RC" value="Add Aggregation Function " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5PYs8dV1SfC" role="2ZfgGD">
      <node concept="3clFbS" id="5PYs8dV1SfD" role="2VODD2">
        <node concept="1_3QMa" id="7p2QZoUuq5A" role="3cqZAp">
          <node concept="38Zlrr" id="7p2QZoUuq5Z" role="1_3QMn" />
          <node concept="1pnPoh" id="7p2QZoUuq6p" role="1_3QMm">
            <node concept="3gn64h" id="7p2QZoUuq6q" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5PYs8dV0Cek" resolve="Average" />
            </node>
            <node concept="3clFbS" id="7p2QZoUuq6r" role="1pnPq1">
              <node concept="3clFbF" id="7p2QZoUuq7h" role="3cqZAp">
                <node concept="37vLTI" id="7p2QZoUuqR9" role="3clFbG">
                  <node concept="2ShNRf" id="7p2QZoUuqRJ" role="37vLTx">
                    <node concept="3zrR0B" id="7p2QZoUur3n" role="2ShVmc">
                      <node concept="3Tqbb2" id="7p2QZoUur3p" role="3zrR0E">
                        <ref role="ehGHo" to="p6im:5PYs8dV0Cek" resolve="Average" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7p2QZoUuqj3" role="37vLTJ">
                    <node concept="2Sf5sV" id="7p2QZoUuq7g" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7p2QZoUuqxA" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="7p2QZoUur8o" role="1_3QMm">
            <node concept="3gn64h" id="7p2QZoUur8p" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5PYs8dV0Cei" resolve="Count" />
            </node>
            <node concept="3clFbS" id="7p2QZoUur8q" role="1pnPq1">
              <node concept="3clFbF" id="7p2QZoUur8r" role="3cqZAp">
                <node concept="37vLTI" id="7p2QZoUur8s" role="3clFbG">
                  <node concept="2ShNRf" id="7p2QZoUur8t" role="37vLTx">
                    <node concept="3zrR0B" id="7p2QZoUur8u" role="2ShVmc">
                      <node concept="3Tqbb2" id="7p2QZoUur8v" role="3zrR0E">
                        <ref role="ehGHo" to="p6im:5PYs8dV0Cei" resolve="Count" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7p2QZoUur8w" role="37vLTJ">
                    <node concept="2Sf5sV" id="7p2QZoUur8x" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7p2QZoUur8y" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="7p2QZoUurbH" role="1_3QMm">
            <node concept="3gn64h" id="7p2QZoUurbI" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5PYs8dV0Ced" resolve="Min" />
            </node>
            <node concept="3clFbS" id="7p2QZoUurbJ" role="1pnPq1">
              <node concept="3clFbF" id="7p2QZoUurbK" role="3cqZAp">
                <node concept="37vLTI" id="7p2QZoUurbL" role="3clFbG">
                  <node concept="2ShNRf" id="7p2QZoUurbM" role="37vLTx">
                    <node concept="3zrR0B" id="7p2QZoUurbN" role="2ShVmc">
                      <node concept="3Tqbb2" id="7p2QZoUurbO" role="3zrR0E">
                        <ref role="ehGHo" to="p6im:5PYs8dV0Ced" resolve="Min" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7p2QZoUurbP" role="37vLTJ">
                    <node concept="2Sf5sV" id="7p2QZoUurbQ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7p2QZoUurbR" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="7p2QZoUurdW" role="1_3QMm">
            <node concept="3gn64h" id="7p2QZoUurdX" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5PYs8dV0Ceg" resolve="Max" />
            </node>
            <node concept="3clFbS" id="7p2QZoUurdY" role="1pnPq1">
              <node concept="3clFbF" id="7p2QZoUurdZ" role="3cqZAp">
                <node concept="37vLTI" id="7p2QZoUure0" role="3clFbG">
                  <node concept="2ShNRf" id="7p2QZoUure1" role="37vLTx">
                    <node concept="3zrR0B" id="7p2QZoUure2" role="2ShVmc">
                      <node concept="3Tqbb2" id="7p2QZoUure3" role="3zrR0E">
                        <ref role="ehGHo" to="p6im:5PYs8dV0Ceg" resolve="Max" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7p2QZoUure4" role="37vLTJ">
                    <node concept="2Sf5sV" id="7p2QZoUure5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7p2QZoUure6" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="7p2QZoUuri_" role="1_3QMm">
            <node concept="3gn64h" id="7p2QZoUuriA" role="1pnPq6">
              <ref role="3gnhBz" to="p6im:5PYs8dV0Cej" resolve="Sum" />
            </node>
            <node concept="3clFbS" id="7p2QZoUuriB" role="1pnPq1">
              <node concept="3clFbF" id="7p2QZoUuriC" role="3cqZAp">
                <node concept="37vLTI" id="7p2QZoUuriD" role="3clFbG">
                  <node concept="2ShNRf" id="7p2QZoUuriE" role="37vLTx">
                    <node concept="3zrR0B" id="7p2QZoUuriF" role="2ShVmc">
                      <node concept="3Tqbb2" id="7p2QZoUuriG" role="3zrR0E">
                        <ref role="ehGHo" to="p6im:5PYs8dV0Cej" resolve="Sum" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7p2QZoUuriH" role="37vLTJ">
                    <node concept="2Sf5sV" id="7p2QZoUuriI" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7p2QZoUuriJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
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
  <node concept="2S6QgY" id="7p2QZoUy53d">
    <property role="3GE5qa" value="statements" />
    <property role="TrG5h" value="AddAlias" />
    <ref role="2ZfgGC" to="p6im:66sUT0$8edT" resolve="Select" />
    <node concept="2S6ZIM" id="7p2QZoUy53e" role="2ZfVej">
      <node concept="3clFbS" id="7p2QZoUy53f" role="2VODD2">
        <node concept="3clFbF" id="7p2QZoUy5jV" role="3cqZAp">
          <node concept="Xl_RD" id="7p2QZoUy5jU" role="3clFbG">
            <property role="Xl_RC" value="Add Alias" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7p2QZoUy53g" role="2ZfgGD">
      <node concept="3clFbS" id="7p2QZoUy53h" role="2VODD2">
        <node concept="3cpWs8" id="21Z4UyPhSkS" role="3cqZAp">
          <node concept="3cpWsn" id="21Z4UyPhSkV" role="3cpWs9">
            <property role="TrG5h" value="alias" />
            <node concept="17QB3L" id="21Z4UyPhSkQ" role="1tU5fm" />
            <node concept="Xl_RD" id="21Z4UyPhSI3" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="21Z4UyPhSMv" role="3cqZAp">
          <node concept="2GrKxI" id="21Z4UyPhSMx" role="2Gsz3X">
            <property role="TrG5h" value="table" />
          </node>
          <node concept="2OqwBi" id="21Z4UyPhTrL" role="2GsD0m">
            <node concept="2Sf5sV" id="21Z4UyPhTeT" role="2Oq$k0" />
            <node concept="3Tsc0h" id="21Z4UyPhTHR" role="2OqNvi">
              <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
            </node>
          </node>
          <node concept="3clFbS" id="21Z4UyPhSM_" role="2LFqv$">
            <node concept="3clFbF" id="21Z4UyPhTNq" role="3cqZAp">
              <node concept="d57v9" id="21Z4UyPi2K1" role="3clFbG">
                <node concept="3cpWs3" id="21Z4UyPv4EV" role="37vLTx">
                  <node concept="Xl_RD" id="21Z4UyPv548" role="3uHU7w">
                    <property role="Xl_RC" value="_" />
                  </node>
                  <node concept="2OqwBi" id="21Z4UyPi8Vn" role="3uHU7B">
                    <node concept="2OqwBi" id="21Z4UyPi8a7" role="2Oq$k0">
                      <node concept="2GrUjf" id="21Z4UyPi7LE" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="21Z4UyPhSMx" resolve="table" />
                      </node>
                      <node concept="3TrEf2" id="21Z4UyPi8$M" role="2OqNvi">
                        <ref role="3Tt5mk" to="p6im:21Z4UyPhvrv" resolve="tableRef" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="21Z4UyPi9vG" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="21Z4UyPhTNp" role="37vLTJ">
                  <ref role="3cqZAo" node="21Z4UyPhSkV" resolve="alias" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21Z4UyPv5DH" role="3cqZAp">
          <node concept="d57v9" id="21Z4UyPv9Es" role="3clFbG">
            <node concept="Xl_RD" id="21Z4UyPv9F1" role="37vLTx">
              <property role="Xl_RC" value="alias" />
            </node>
            <node concept="37vLTw" id="21Z4UyPv5DF" role="37vLTJ">
              <ref role="3cqZAo" node="21Z4UyPhSkV" resolve="alias" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p2QZoUy5Ak" role="3cqZAp">
          <node concept="37vLTI" id="7p2QZoUyGc5" role="3clFbG">
            <node concept="2OqwBi" id="7p2QZoUy5M6" role="37vLTJ">
              <node concept="2Sf5sV" id="7p2QZoUy5Aj" role="2Oq$k0" />
              <node concept="3TrcHB" id="7p2QZoUy6gn" role="2OqNvi">
                <ref role="3TsBF5" to="p6im:7p2QZoUxXLI" resolve="tableAlias" />
              </node>
            </node>
            <node concept="37vLTw" id="21Z4UyPiav9" role="37vLTx">
              <ref role="3cqZAo" node="21Z4UyPhSkV" resolve="alias" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2qoxdQ1CiW5">
    <property role="3GE5qa" value="where.oldCondition" />
    <property role="TrG5h" value="AddCondition" />
    <ref role="2ZfgGC" to="p6im:2fooeIVxG1G" resolve="ConditionSet" />
    <node concept="2S6ZIM" id="2qoxdQ1CiW6" role="2ZfVej">
      <node concept="3clFbS" id="2qoxdQ1CiW7" role="2VODD2">
        <node concept="3clFbF" id="2qoxdQ1CF0F" role="3cqZAp">
          <node concept="Xl_RD" id="2qoxdQ1CF0E" role="3clFbG">
            <property role="Xl_RC" value="Add New Condition" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2qoxdQ1CiW8" role="2ZfgGD">
      <node concept="3clFbS" id="2qoxdQ1CiW9" role="2VODD2">
        <node concept="3clFbF" id="2qoxdQ1CF2P" role="3cqZAp">
          <node concept="2OqwBi" id="2qoxdQ1CI2N" role="3clFbG">
            <node concept="2OqwBi" id="2qoxdQ1CFch" role="2Oq$k0">
              <node concept="2Sf5sV" id="2qoxdQ1CF2O" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2qoxdQ1CFzx" role="2OqNvi">
                <ref role="3TtcxE" to="p6im:2fooeIVxG1H" resolve="conditions" />
              </node>
            </node>
            <node concept="TSZUe" id="2qoxdQ1CMPO" role="2OqNvi">
              <node concept="2ShNRf" id="2qoxdQ1CMVD" role="25WWJ7">
                <node concept="3zrR0B" id="2qoxdQ1CNkf" role="2ShVmc">
                  <node concept="3Tqbb2" id="2qoxdQ1CNkh" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:2fooeIVv2ql" resolve="ConditionsSequence" />
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

