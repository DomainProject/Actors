<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:de42e374-0e47-4eb6-bd19-9c47ed9cd488(QueryLanguage.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5">
        <reference id="5299096511375896640" name="superConcept" index="3eA5LN" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
    </language>
  </registry>
  <node concept="13h7C7" id="7mg1zkgy_X0">
    <property role="3GE5qa" value="statements" />
    <ref role="13h7C2" to="p6im:14g3IsRh3GK" resolve="Statement" />
    <node concept="13hLZK" id="7mg1zkgy_X1" role="13h7CW">
      <node concept="3clFbS" id="7mg1zkgy_X2" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7mg1zkgyMUY" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="7mg1zkgyMUZ" role="1B3o_S" />
      <node concept="3clFbS" id="7mg1zkgyMV8" role="3clF47">
        <node concept="3clFbJ" id="7mg1zkgyABw" role="3cqZAp">
          <node concept="3clFbS" id="7mg1zkgyABy" role="3clFbx">
            <node concept="3cpWs6" id="7mg1zkgzkUd" role="3cqZAp">
              <node concept="2YIFZM" id="7mg1zkgzlc2" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="6cx3kQ$9Kxw" role="37wK5m">
                  <node concept="2OqwBi" id="6cx3kQ$9I4I" role="2Oq$k0">
                    <node concept="13iPFW" id="6cx3kQ$9HSZ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6cx3kQ$9KhF" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:21Z4UyPhwT6" resolve="table" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="6cx3kQ$9KUZ" role="2OqNvi">
                    <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7mg1zkgyB9J" role="3clFbw">
            <node concept="37vLTw" id="7mg1zkgyABZ" role="2Oq$k0">
              <ref role="3cqZAo" node="7mg1zkgyMV9" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="7mg1zkgyBXt" role="2OqNvi">
              <node concept="chp4Y" id="7mg1zkgyC4E" role="2Zo12j">
                <ref role="cht4Q" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7mg1zkgyN4l" role="3cqZAp">
          <node concept="2OqwBi" id="7mg1zkgyMVg" role="3cqZAk">
            <node concept="13iAh5" id="7mg1zkgyMVh" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="2qgKlT" id="7mg1zkgyMVi" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="7mg1zkgyMVe" role="37wK5m">
                <ref role="3cqZAo" node="7mg1zkgyMV9" resolve="kind" />
              </node>
              <node concept="37vLTw" id="7mg1zkgyMVf" role="37wK5m">
                <ref role="3cqZAo" node="7mg1zkgyMVb" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7mg1zkgyMV9" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="7mg1zkgyMVa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7mg1zkgyMVb" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="7mg1zkgyMVc" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7mg1zkgyMVd" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="21Z4UyPl_$J">
    <property role="3GE5qa" value="statements" />
    <ref role="13h7C2" to="p6im:66sUT0$8edT" resolve="Select" />
    <node concept="13hLZK" id="21Z4UyPl_$K" role="13h7CW">
      <node concept="3clFbS" id="21Z4UyPl_$L" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="21Z4UyPl_Yo" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="21Z4UyPl_Yp" role="1B3o_S" />
      <node concept="3clFbS" id="21Z4UyPl_YN" role="3clF47">
        <node concept="3clFbJ" id="21Z4UyPlAzh" role="3cqZAp">
          <node concept="3clFbS" id="21Z4UyPlAzj" role="3clFbx">
            <node concept="3cpWs8" id="21Z4UyPlCCn" role="3cqZAp">
              <node concept="3cpWsn" id="21Z4UyPlCCl" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="columns" />
                <node concept="_YKpA" id="21Z4UyPlE6r" role="1tU5fm">
                  <node concept="3Tqbb2" id="21Z4UyPlEeo" role="_ZDj9">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
                <node concept="2ShNRf" id="21Z4UyPlEiS" role="33vP2m">
                  <node concept="Tc6Ow" id="21Z4UyPlEiO" role="2ShVmc">
                    <node concept="3Tqbb2" id="21Z4UyPlEiP" role="HW$YZ">
                      <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="21Z4UyPlEkY" role="3cqZAp">
              <node concept="2GrKxI" id="21Z4UyPlEl0" role="2Gsz3X">
                <property role="TrG5h" value="table" />
              </node>
              <node concept="2OqwBi" id="21Z4UyPlEDe" role="2GsD0m">
                <node concept="13iPFW" id="21Z4UyPlEsz" role="2Oq$k0" />
                <node concept="3Tsc0h" id="21Z4UyPlF4K" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                </node>
              </node>
              <node concept="3clFbS" id="21Z4UyPlEl4" role="2LFqv$">
                <node concept="3clFbF" id="21Z4UyPlF9t" role="3cqZAp">
                  <node concept="2OqwBi" id="21Z4UyPlHwp" role="3clFbG">
                    <node concept="37vLTw" id="21Z4UyPlF9s" role="2Oq$k0">
                      <ref role="3cqZAo" node="21Z4UyPlCCl" resolve="columns" />
                    </node>
                    <node concept="X8dFx" id="21Z4UyPlMpq" role="2OqNvi">
                      <node concept="2OqwBi" id="21Z4UyPlNJD" role="25WWJ7">
                        <node concept="2OqwBi" id="21Z4UyPlMRi" role="2Oq$k0">
                          <node concept="2GrUjf" id="21Z4UyPlMwc" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="21Z4UyPlEl0" resolve="table" />
                          </node>
                          <node concept="3TrEf2" id="21Z4UyPlNc4" role="2OqNvi">
                            <ref role="3Tt5mk" to="p6im:21Z4UyPhvrv" resolve="tableRef" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="21Z4UyPlOfP" role="2OqNvi">
                          <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="21Z4UyPlOSL" role="3cqZAp">
              <node concept="2YIFZM" id="21Z4UyPlPAs" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="21Z4UyPlPJ0" role="37wK5m">
                  <ref role="3cqZAo" node="21Z4UyPlCCl" resolve="columns" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="21Z4UyPlB6s" role="3clFbw">
            <node concept="37vLTw" id="21Z4UyPlA$h" role="2Oq$k0">
              <ref role="3cqZAo" node="21Z4UyPl_YO" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="21Z4UyPlBWp" role="2OqNvi">
              <node concept="chp4Y" id="21Z4UyPlC7Z" role="2Zo12j">
                <ref role="cht4Q" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21Z4UyPl_YY" role="3cqZAp">
          <node concept="2OqwBi" id="21Z4UyPl_YV" role="3clFbG">
            <node concept="13iAh5" id="21Z4UyPl_YW" role="2Oq$k0" />
            <node concept="2qgKlT" id="21Z4UyPl_YX" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="21Z4UyPl_YT" role="37wK5m">
                <ref role="3cqZAo" node="21Z4UyPl_YO" resolve="kind" />
              </node>
              <node concept="37vLTw" id="21Z4UyPl_YU" role="37wK5m">
                <ref role="3cqZAo" node="21Z4UyPl_YQ" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="21Z4UyPl_YO" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="21Z4UyPl_YP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="21Z4UyPl_YQ" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="21Z4UyPl_YR" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="21Z4UyPl_YS" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4BxYaol$2q8">
    <ref role="13h7C2" to="p6im:14g3IsRh3Jd" resolve="Script" />
    <node concept="13i0hz" id="4BxYaol$2qr" role="13h7CS">
      <property role="TrG5h" value="findAllSingleTableConditions" />
      <node concept="3Tm1VV" id="4BxYaol$2qs" role="1B3o_S" />
      <node concept="_YKpA" id="4BxYaol$2qN" role="3clF45">
        <node concept="3Tqbb2" id="4BxYaol$2r7" role="_ZDj9">
          <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
        </node>
      </node>
      <node concept="3clFbS" id="4BxYaol$2qu" role="3clF47">
        <node concept="3cpWs8" id="4BxYaol$7TB" role="3cqZAp">
          <node concept="3cpWsn" id="4BxYaol$7TE" role="3cpWs9">
            <property role="TrG5h" value="conditions" />
            <node concept="_YKpA" id="4BxYaol$7T_" role="1tU5fm">
              <node concept="3Tqbb2" id="4BxYaol$7UO" role="_ZDj9">
                <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
              </node>
            </node>
            <node concept="2ShNRf" id="4BxYaol$7Wk" role="33vP2m">
              <node concept="Tc6Ow" id="4BxYaol$7Wg" role="2ShVmc">
                <node concept="3Tqbb2" id="4BxYaol$7Wh" role="HW$YZ">
                  <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4BxYaol$7XR" role="3cqZAp">
          <node concept="BsUDl" id="4BxYaol$7XP" role="3clFbG">
            <ref role="37wK5l" node="4BxYaol$2vv" resolve="findAllSimpleConditionsRecursive" />
            <node concept="37vLTw" id="4BxYaol$823" role="37wK5m">
              <ref role="3cqZAo" node="4BxYaol$2t2" resolve="condition" />
            </node>
            <node concept="37vLTw" id="4BxYaol$8ho" role="37wK5m">
              <ref role="3cqZAo" node="4BxYaol$7TE" resolve="conditions" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4BxYaol$8kd" role="3cqZAp">
          <node concept="37vLTw" id="4BxYaol$8sn" role="3cqZAk">
            <ref role="3cqZAo" node="4BxYaol$7TE" resolve="conditions" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4BxYaol$2t2" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3Tqbb2" id="4BxYaol$2t1" role="1tU5fm">
          <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4BxYaol$2vv" role="13h7CS">
      <property role="TrG5h" value="findAllSingleTableConditionsRecursive" />
      <node concept="3Tm6S6" id="4BxYaol$8pA" role="1B3o_S" />
      <node concept="3clFbS" id="4BxYaol$2vy" role="3clF47">
        <node concept="Jncv_" id="4BxYaol$8FX" role="3cqZAp">
          <ref role="JncvD" to="p6im:5VF6QK6AuCo" resolve="SimpleCondition" />
          <node concept="37vLTw" id="4BxYaol$8Ic" role="JncvB">
            <ref role="3cqZAo" node="4BxYaol$2yp" resolve="condition" />
          </node>
          <node concept="3clFbS" id="4BxYaol$8FZ" role="Jncv$">
            <node concept="3clFbF" id="4BxYaol$8Pj" role="3cqZAp">
              <node concept="2OqwBi" id="4BxYaol$bcz" role="3clFbG">
                <node concept="37vLTw" id="4BxYaol$8Pi" role="2Oq$k0">
                  <ref role="3cqZAo" node="4BxYaol$2zR" resolve="conditions" />
                </node>
                <node concept="TSZUe" id="4BxYaol$fcV" role="2OqNvi">
                  <node concept="Jnkvi" id="4BxYaol$fgY" role="25WWJ7">
                    <ref role="1M0zk5" node="4BxYaol$8G0" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4BxYaol$fmM" role="3cqZAp" />
          </node>
          <node concept="JncvC" id="4BxYaol$8G0" role="JncvA">
            <property role="TrG5h" value="c" />
            <node concept="2jxLKc" id="4BxYaol$8G1" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="3lH3Hb9hoMr" role="3cqZAp">
          <ref role="JncvD" to="p6im:5VF6QK6AuCr" resolve="MultipleCondition" />
          <node concept="37vLTw" id="3lH3Hb9hoOZ" role="JncvB">
            <ref role="3cqZAo" node="4BxYaol$2yp" resolve="condition" />
          </node>
          <node concept="3clFbS" id="3lH3Hb9hoMv" role="Jncv$">
            <node concept="3clFbJ" id="3lH3Hb9hsIQ" role="3cqZAp">
              <node concept="BsUDl" id="3lH3Hb9hsKY" role="3clFbw">
                <ref role="37wK5l" node="3lH3Hb9hoXq" resolve="isConditionOnSingleTable" />
                <node concept="Jnkvi" id="3lH3Hb9ht7D" role="37wK5m">
                  <ref role="1M0zk5" node="3lH3Hb9hoMx" resolve="multipleCondition" />
                </node>
                <node concept="BsUDl" id="3lH3Hb9ht4Q" role="37wK5m">
                  <ref role="37wK5l" node="3lH3Hb9hrb6" resolve="getTableFromCondition" />
                  <node concept="Jnkvi" id="3lH3Hb9htdt" role="37wK5m">
                    <ref role="1M0zk5" node="3lH3Hb9hoMx" resolve="multipleCondition" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3lH3Hb9hsIS" role="3clFbx">
                <node concept="3clFbF" id="3lH3Hb9hymd" role="3cqZAp">
                  <node concept="2OqwBi" id="3lH3Hb9h$c4" role="3clFbG">
                    <node concept="37vLTw" id="3lH3Hb9hymc" role="2Oq$k0">
                      <ref role="3cqZAo" node="4BxYaol$2zR" resolve="conditions" />
                    </node>
                    <node concept="TSZUe" id="3lH3Hb9hBtl" role="2OqNvi">
                      <node concept="Jnkvi" id="3lH3Hb9hByn" role="25WWJ7">
                        <ref role="1M0zk5" node="3lH3Hb9hoMx" resolve="multipleCondition" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3lH3Hb9hBAE" role="9aQIa">
                <node concept="3clFbS" id="3lH3Hb9hBAF" role="9aQI4">
                  <node concept="3clFbF" id="3lH3Hb9hBF2" role="3cqZAp">
                    <node concept="BsUDl" id="3lH3Hb9hBF1" role="3clFbG">
                      <ref role="37wK5l" node="4BxYaol$2vv" resolve="findAllSingleTableConditionsRecursive" />
                      <node concept="2OqwBi" id="3lH3Hb9hBWu" role="37wK5m">
                        <node concept="Jnkvi" id="3lH3Hb9hBJh" role="2Oq$k0">
                          <ref role="1M0zk5" node="3lH3Hb9hoMx" resolve="multipleCondition" />
                        </node>
                        <node concept="3TrEf2" id="3lH3Hb9hCb7" role="2OqNvi">
                          <ref role="3Tt5mk" to="p6im:5VF6QK6AuDd" resolve="conditionDx" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3lH3Hb9hCoV" role="37wK5m">
                        <ref role="3cqZAo" node="4BxYaol$2zR" resolve="conditions" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3lH3Hb9hCAv" role="3cqZAp">
                    <node concept="BsUDl" id="3lH3Hb9hCAw" role="3clFbG">
                      <ref role="37wK5l" node="4BxYaol$2vv" resolve="findAllSingleTableConditionsRecursive" />
                      <node concept="2OqwBi" id="3lH3Hb9hCAx" role="37wK5m">
                        <node concept="Jnkvi" id="3lH3Hb9hCAy" role="2Oq$k0">
                          <ref role="1M0zk5" node="3lH3Hb9hoMx" resolve="multipleCondition" />
                        </node>
                        <node concept="3TrEf2" id="3lH3Hb9hCAz" role="2OqNvi">
                          <ref role="3Tt5mk" to="p6im:5VF6QK6AuDp" resolve="conditionSx" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3lH3Hb9hCA$" role="37wK5m">
                        <ref role="3cqZAo" node="4BxYaol$2zR" resolve="conditions" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3lH3Hb9hoMx" role="JncvA">
            <property role="TrG5h" value="multipleCondition" />
            <node concept="2jxLKc" id="3lH3Hb9hoMy" role="1tU5fm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4BxYaol$2yp" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3Tqbb2" id="4BxYaol$2yo" role="1tU5fm">
          <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
        </node>
      </node>
      <node concept="37vLTG" id="4BxYaol$2zR" role="3clF46">
        <property role="TrG5h" value="conditions" />
        <node concept="_YKpA" id="4BxYaol$2$h" role="1tU5fm">
          <node concept="3Tqbb2" id="4BxYaol$2$E" role="_ZDj9">
            <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4BxYaol$8o_" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3lH3Hb9hoXq" role="13h7CS">
      <property role="TrG5h" value="isConditionOnSingleTable" />
      <node concept="3Tm6S6" id="3lH3Hb9hoYQ" role="1B3o_S" />
      <node concept="10P_77" id="3lH3Hb9hoZ9" role="3clF45" />
      <node concept="3clFbS" id="3lH3Hb9hoXt" role="3clF47">
        <node concept="Jncv_" id="3lH3Hb9htlw" role="3cqZAp">
          <ref role="JncvD" to="p6im:5VF6QK6AuCo" resolve="SimpleCondition" />
          <node concept="37vLTw" id="3lH3Hb9htoz" role="JncvB">
            <ref role="3cqZAo" node="3lH3Hb9hp2H" resolve="condition" />
          </node>
          <node concept="3clFbS" id="3lH3Hb9htly" role="Jncv$">
            <node concept="3cpWs6" id="3lH3Hb9ht$6" role="3cqZAp">
              <node concept="2YFouu" id="yznZkheDsY" role="3cqZAk">
                <node concept="2OqwBi" id="3lH3Hb9htRm" role="3uHU7B">
                  <node concept="2OqwBi" id="3lH3Hb9npex" role="2Oq$k0">
                    <node concept="2OqwBi" id="3lH3Hb9lt1f" role="2Oq$k0">
                      <node concept="Jnkvi" id="3lH3Hb9htDK" role="2Oq$k0">
                        <ref role="1M0zk5" node="3lH3Hb9htlz" resolve="c" />
                      </node>
                      <node concept="3TrEf2" id="3lH3Hb9ltk8" role="2OqNvi">
                        <ref role="3Tt5mk" to="p6im:5VF6QK6AuCF" resolve="column" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3lH3Hb9npMs" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                    </node>
                  </node>
                  <node concept="2Xjw5R" id="3lH3Hb9hucs" role="2OqNvi">
                    <node concept="1xMEDy" id="3lH3Hb9hucu" role="1xVPHs">
                      <node concept="chp4Y" id="3lH3Hb9huhB" role="ri$Ld">
                        <ref role="cht4Q" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3lH3Hb9huEZ" role="3uHU7w">
                  <ref role="3cqZAo" node="3lH3Hb9hr76" resolve="table" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3lH3Hb9htlz" role="JncvA">
            <property role="TrG5h" value="c" />
            <node concept="2jxLKc" id="3lH3Hb9htl$" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="3lH3Hb9huTb" role="3cqZAp">
          <ref role="JncvD" to="p6im:5VF6QK6AuCr" resolve="MultipleCondition" />
          <node concept="37vLTw" id="3lH3Hb9huX8" role="JncvB">
            <ref role="3cqZAo" node="3lH3Hb9hp2H" resolve="condition" />
          </node>
          <node concept="3clFbS" id="3lH3Hb9huTf" role="Jncv$">
            <node concept="3cpWs6" id="3lH3Hb9hvoY" role="3cqZAp">
              <node concept="1Wc70l" id="3lH3Hb9hxi4" role="3cqZAk">
                <node concept="BsUDl" id="3lH3Hb9hxms" role="3uHU7w">
                  <ref role="37wK5l" node="3lH3Hb9hoXq" resolve="isConditionOnSingleTable" />
                  <node concept="2OqwBi" id="3lH3Hb9hxBp" role="37wK5m">
                    <node concept="Jnkvi" id="3lH3Hb9hxqC" role="2Oq$k0">
                      <ref role="1M0zk5" node="3lH3Hb9huTh" resolve="c" />
                    </node>
                    <node concept="3TrEf2" id="3lH3Hb9hxR4" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5VF6QK6AuDp" resolve="conditionSx" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3lH3Hb9hxVK" role="37wK5m">
                    <ref role="3cqZAo" node="3lH3Hb9hr76" resolve="table" />
                  </node>
                </node>
                <node concept="BsUDl" id="3lH3Hb9hvsw" role="3uHU7B">
                  <ref role="37wK5l" node="3lH3Hb9hoXq" resolve="isConditionOnSingleTable" />
                  <node concept="2OqwBi" id="3lH3Hb9hvOn" role="37wK5m">
                    <node concept="Jnkvi" id="3lH3Hb9hvw5" role="2Oq$k0">
                      <ref role="1M0zk5" node="3lH3Hb9huTh" resolve="c" />
                    </node>
                    <node concept="3TrEf2" id="3lH3Hb9hwag" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5VF6QK6AuDd" resolve="conditionDx" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3lH3Hb9hvKl" role="37wK5m">
                    <ref role="3cqZAo" node="3lH3Hb9hr76" resolve="table" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3lH3Hb9huTh" role="JncvA">
            <property role="TrG5h" value="c" />
            <node concept="2jxLKc" id="3lH3Hb9huTi" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3lH3Hb9hy0c" role="3cqZAp" />
        <node concept="3cpWs6" id="3lH3Hb9hy5z" role="3cqZAp">
          <node concept="3clFbT" id="3lH3Hb9hyaA" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="3lH3Hb9hp2H" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3Tqbb2" id="3lH3Hb9hp2G" role="1tU5fm">
          <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
        </node>
      </node>
      <node concept="37vLTG" id="3lH3Hb9hr76" role="3clF46">
        <property role="TrG5h" value="table" />
        <node concept="3Tqbb2" id="3lH3Hb9hr7u" role="1tU5fm">
          <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3lH3Hb9hrb6" role="13h7CS">
      <property role="TrG5h" value="getTableFromCondition" />
      <node concept="3Tm1VV" id="yznZkiKkpZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lH3Hb9hrcE" role="3clF45">
        <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
      </node>
      <node concept="3clFbS" id="3lH3Hb9hrb9" role="3clF47">
        <node concept="Jncv_" id="3lH3Hb9hrjO" role="3cqZAp">
          <ref role="JncvD" to="p6im:5VF6QK6AuCo" resolve="SimpleCondition" />
          <node concept="37vLTw" id="3lH3Hb9hrkp" role="JncvB">
            <ref role="3cqZAo" node="3lH3Hb9hree" resolve="condition" />
          </node>
          <node concept="3clFbS" id="3lH3Hb9hrjQ" role="Jncv$">
            <node concept="3cpWs6" id="3lH3Hb9hrlN" role="3cqZAp">
              <node concept="2OqwBi" id="3lH3Hb9hrxo" role="3cqZAk">
                <node concept="2OqwBi" id="3lH3Hb9npWm" role="2Oq$k0">
                  <node concept="2OqwBi" id="3lH3Hb9lttd" role="2Oq$k0">
                    <node concept="Jnkvi" id="3lH3Hb9hrmj" role="2Oq$k0">
                      <ref role="1M0zk5" node="3lH3Hb9hrjR" resolve="c" />
                    </node>
                    <node concept="3TrEf2" id="3lH3Hb9ltCE" role="2OqNvi">
                      <ref role="3Tt5mk" to="p6im:5VF6QK6AuCF" resolve="column" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3lH3Hb9nq80" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:14g3IsRklvP" resolve="column" />
                  </node>
                </node>
                <node concept="2Xjw5R" id="3lH3Hb9hrZI" role="2OqNvi">
                  <node concept="1xMEDy" id="3lH3Hb9hrZK" role="1xVPHs">
                    <node concept="chp4Y" id="3lH3Hb9hs2r" role="ri$Ld">
                      <ref role="cht4Q" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3lH3Hb9hrjR" role="JncvA">
            <property role="TrG5h" value="c" />
            <node concept="2jxLKc" id="3lH3Hb9hrjS" role="1tU5fm" />
          </node>
        </node>
        <node concept="Jncv_" id="3lH3Hb9hs4k" role="3cqZAp">
          <ref role="JncvD" to="p6im:5VF6QK6AuCr" resolve="MultipleCondition" />
          <node concept="37vLTw" id="3lH3Hb9hs5$" role="JncvB">
            <ref role="3cqZAo" node="3lH3Hb9hree" resolve="condition" />
          </node>
          <node concept="3clFbS" id="3lH3Hb9hs4o" role="Jncv$">
            <node concept="3cpWs6" id="3lH3Hb9hs89" role="3cqZAp">
              <node concept="BsUDl" id="3lH3Hb9hs9M" role="3cqZAk">
                <ref role="37wK5l" node="3lH3Hb9hrb6" resolve="getTableFromCondition" />
                <node concept="2OqwBi" id="3lH3Hb9hslp" role="37wK5m">
                  <node concept="Jnkvi" id="3lH3Hb9hsaG" role="2Oq$k0">
                    <ref role="1M0zk5" node="3lH3Hb9hs4q" resolve="c" />
                  </node>
                  <node concept="3TrEf2" id="3lH3Hb9hsxW" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:5VF6QK6AuDd" resolve="conditionDx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3lH3Hb9hs4q" role="JncvA">
            <property role="TrG5h" value="c" />
            <node concept="2jxLKc" id="3lH3Hb9hs4r" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3lH3Hb9hsCB" role="3cqZAp" />
        <node concept="3cpWs6" id="3lH3Hb9hsEw" role="3cqZAp">
          <node concept="10Nm6u" id="3lH3Hb9hsF7" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="3lH3Hb9hree" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3Tqbb2" id="3lH3Hb9hred" role="1tU5fm">
          <ref role="ehGHo" to="p6im:5VF6QK6AuCn" resolve="Condition" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4BxYaol$2q9" role="13h7CW">
      <node concept="3clFbS" id="4BxYaol$2qa" role="2VODD2" />
    </node>
  </node>
</model>

