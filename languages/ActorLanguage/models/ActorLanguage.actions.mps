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
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
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
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
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
  <node concept="37WguZ" id="4be3MWTHyjt">
    <property role="3GE5qa" value="behavior" />
    <property role="TrG5h" value="BehaviorFactory" />
    <node concept="37WvkG" id="4be3MWTHyjv" role="37WGs$">
      <ref role="37XkoT" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
      <node concept="37Y9Zx" id="4be3MWTHyjw" role="37ZfLb">
        <node concept="3clFbS" id="4be3MWTHyjx" role="2VODD2">
          <node concept="3clFbF" id="4be3MWTSAgf" role="3cqZAp">
            <node concept="2OqwBi" id="4be3MWTSE91" role="3clFbG">
              <node concept="2OqwBi" id="4be3MWTSAsF" role="2Oq$k0">
                <node concept="1r4Lsj" id="4be3MWTSAge" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4be3MWTSAHw" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
                </node>
              </node>
              <node concept="TSZUe" id="4be3MWTSKP7" role="2OqNvi">
                <node concept="2ShNRf" id="4be3MWTUp$J" role="25WWJ7">
                  <node concept="2fJWfE" id="4be3MWTUqsw" role="2ShVmc">
                    <node concept="3Tqbb2" id="4be3MWTUqsy" role="3zrR0E">
                      <ref role="ehGHo" to="o1mc:66sUT0$7o_P" resolve="Fetch" />
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
  <node concept="37WguZ" id="4be3MWTMTYy">
    <property role="3GE5qa" value="fetch" />
    <property role="TrG5h" value="FetchFactory" />
    <node concept="37WvkG" id="4be3MWTMTYz" role="37WGs$">
      <ref role="37XkoT" to="o1mc:66sUT0$7o_P" resolve="Fetch" />
      <node concept="37Y9Zx" id="4be3MWTMTY$" role="37ZfLb">
        <node concept="3clFbS" id="4be3MWTMTY_" role="2VODD2">
          <node concept="3clFbF" id="6CMnlJwS9Qw" role="3cqZAp">
            <node concept="37vLTI" id="6CMnlJwScvL" role="3clFbG">
              <node concept="2ShNRf" id="6CMnlJwScyM" role="37vLTx">
                <node concept="3zrR0B" id="6CMnlJwScyK" role="2ShVmc">
                  <node concept="3Tqbb2" id="6CMnlJwScyL" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6CMnlJwSa12" role="37vLTJ">
                <node concept="3TrEf2" id="6CMnlJwSc94" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                </node>
                <node concept="1r4Lsj" id="4be3MWTMUFo" role="2Oq$k0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4be3MWTMWt6" role="3cqZAp" />
          <node concept="3cpWs8" id="6CMnlJwUmB_" role="3cqZAp">
            <node concept="3cpWsn" id="6CMnlJwUmBC" role="3cpWs9">
              <property role="TrG5h" value="receivedMessages" />
              <node concept="10Oyi0" id="6CMnlJwUmBz" role="1tU5fm" />
              <node concept="3cmrfG" id="6CMnlJwUmSd" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4be3MWTMWv0" role="3cqZAp" />
          <node concept="3cpWs8" id="6CMnlJwWB5i" role="3cqZAp">
            <node concept="3cpWsn" id="6CMnlJwWB5l" role="3cpWs9">
              <property role="TrG5h" value="existingMessages" />
              <node concept="A3Dl8" id="6CMnlJwWB5f" role="1tU5fm">
                <node concept="3Tqbb2" id="6CMnlJwWBGb" role="A3Ik2">
                  <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                </node>
              </node>
              <node concept="2OqwBi" id="6CMnlJwWk0n" role="33vP2m">
                <node concept="2OqwBi" id="6CMnlJwVj16" role="2Oq$k0">
                  <node concept="2OqwBi" id="6CMnlJwVilW" role="2Oq$k0">
                    <node concept="2Xjw5R" id="6CMnlJwViLh" role="2OqNvi">
                      <node concept="1xMEDy" id="6CMnlJwViLj" role="1xVPHs">
                        <node concept="chp4Y" id="6CMnlJwViOg" role="ri$Ld">
                          <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                        </node>
                      </node>
                    </node>
                    <node concept="1r4Lsj" id="4be3MWTMYkP" role="2Oq$k0" />
                  </node>
                  <node concept="2Rf3mk" id="6CMnlJwVjwD" role="2OqNvi">
                    <node concept="1xMEDy" id="6CMnlJwVjwF" role="1xVPHs">
                      <node concept="chp4Y" id="6CMnlJwVjQJ" role="ri$Ld">
                        <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="6CMnlJwWujG" role="2OqNvi">
                  <node concept="1bVj0M" id="6CMnlJwWujI" role="23t8la">
                    <node concept="3clFbS" id="6CMnlJwWujJ" role="1bW5cS">
                      <node concept="3clFbF" id="6CMnlJwWuAV" role="3cqZAp">
                        <node concept="3y3z36" id="6CMnlJwWuS1" role="3clFbG">
                          <node concept="2OqwBi" id="6CMnlJwWvID" role="3uHU7w">
                            <node concept="3TrEf2" id="6CMnlJwWw9y" role="2OqNvi">
                              <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                            </node>
                            <node concept="1r4Lsj" id="4be3MWTMYCT" role="2Oq$k0" />
                          </node>
                          <node concept="37vLTw" id="6CMnlJwWuAU" role="3uHU7B">
                            <ref role="3cqZAo" node="6CMnlJwWujK" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="6CMnlJwWujK" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6CMnlJwWujL" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4be3MWTMWvg" role="3cqZAp" />
          <node concept="3clFbJ" id="6CMnlJwVhqj" role="3cqZAp">
            <node concept="3clFbS" id="6CMnlJwVhql" role="3clFbx">
              <node concept="2Gpval" id="6CMnlJwUgAP" role="3cqZAp">
                <node concept="2GrKxI" id="6CMnlJwUgAR" role="2Gsz3X">
                  <property role="TrG5h" value="message" />
                </node>
                <node concept="37vLTw" id="6CMnlJwWCt2" role="2GsD0m">
                  <ref role="3cqZAo" node="6CMnlJwWB5l" resolve="existingMessages" />
                </node>
                <node concept="3clFbS" id="6CMnlJwUgAV" role="2LFqv$">
                  <node concept="3clFbJ" id="6CMnlJwUilZ" role="3cqZAp">
                    <node concept="2OqwBi" id="6CMnlJwUkIf" role="3clFbw">
                      <node concept="2OqwBi" id="6CMnlJwUixP" role="2Oq$k0">
                        <node concept="2GrUjf" id="6CMnlJwUimy" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6CMnlJwUgAR" resolve="message" />
                        </node>
                        <node concept="3TrcHB" id="6CMnlJwUjhJ" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6CMnlJwUlC1" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="6CMnlJwUlFc" role="37wK5m">
                          <property role="Xl_RC" value="rec_message" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6CMnlJwUim1" role="3clFbx">
                      <node concept="3clFbF" id="6CMnlJwUmUl" role="3cqZAp">
                        <node concept="3uNrnE" id="6CMnlJwUpc3" role="3clFbG">
                          <node concept="37vLTw" id="6CMnlJwUpc5" role="2$L3a6">
                            <ref role="3cqZAo" node="6CMnlJwUmBC" resolve="receivedMessages" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6CMnlJwVmK8" role="3clFbw">
              <node concept="3GX2aA" id="6CMnlJwVstl" role="2OqNvi" />
              <node concept="37vLTw" id="6CMnlJwWC0h" role="2Oq$k0">
                <ref role="3cqZAo" node="6CMnlJwWB5l" resolve="existingMessages" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4be3MWTN2Dj" role="3cqZAp" />
          <node concept="3clFbF" id="4be3MWTN2KA" role="3cqZAp">
            <node concept="37vLTI" id="6CMnlJwUuM_" role="3clFbG">
              <node concept="3cpWs3" id="6CMnlJwUyYp" role="37vLTx">
                <node concept="37vLTw" id="6CMnlJwUzyW" role="3uHU7w">
                  <ref role="3cqZAo" node="6CMnlJwUmBC" resolve="receivedMessages" />
                </node>
                <node concept="Xl_RD" id="6CMnlJwUv8U" role="3uHU7B">
                  <property role="Xl_RC" value="rec_message" />
                </node>
              </node>
              <node concept="2OqwBi" id="6CMnlJwUrLG" role="37vLTJ">
                <node concept="2OqwBi" id="6CMnlJwUren" role="2Oq$k0">
                  <node concept="3TrEf2" id="6CMnlJwUr_l" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                  </node>
                  <node concept="1r4Lsj" id="4be3MWTN3sN" role="2Oq$k0" />
                </node>
                <node concept="3TrcHB" id="6CMnlJwUsiT" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4be3MWTN2Ej" role="3cqZAp" />
          <node concept="3clFbF" id="6CMnlJwSihF" role="3cqZAp">
            <node concept="37vLTI" id="6CMnlJwSjlw" role="3clFbG">
              <node concept="2ShNRf" id="6CMnlJwSjop" role="37vLTx">
                <node concept="3zrR0B" id="6CMnlJwSjm_" role="2ShVmc">
                  <node concept="3Tqbb2" id="6CMnlJwSjmA" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6CMnlJwSiVW" role="37vLTJ">
                <node concept="2OqwBi" id="6CMnlJwSitx" role="2Oq$k0">
                  <node concept="1r4Lsj" id="4be3MWTN54e" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6CMnlJwSiKg" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6CMnlJwSjaR" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4be3MWTN7gd" role="3cqZAp">
            <node concept="37vLTI" id="6CMnlJwT8mH" role="3clFbG">
              <node concept="3cpWs3" id="6CMnlJwTcgx" role="37vLTx">
                <node concept="2OqwBi" id="6CMnlJwT9uz" role="3uHU7B">
                  <node concept="2OqwBi" id="6CMnlJwT92$" role="2Oq$k0">
                    <node concept="1r4Lsj" id="4be3MWTN88S" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6CMnlJwT9hQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="6CMnlJwT9K9" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6CMnlJwTci2" role="3uHU7w">
                  <property role="Xl_RC" value=".payload" />
                </node>
              </node>
              <node concept="2OqwBi" id="6CMnlJwT5h9" role="37vLTJ">
                <node concept="1PxgMI" id="6CMnlJwT4Z0" role="2Oq$k0">
                  <node concept="chp4Y" id="6CMnlJwT54A" role="3oSUPX">
                    <ref role="cht4Q" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                  </node>
                  <node concept="2OqwBi" id="6CMnlJwT3VG" role="1m5AlR">
                    <node concept="2OqwBi" id="6CMnlJwT3_Y" role="2Oq$k0">
                      <node concept="1r4Lsj" id="4be3MWTN86Q" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6CMnlJwT3JC" role="2OqNvi">
                        <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6CMnlJwT4qm" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="6CMnlJwT5Ix" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4be3MWTN0Ja" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
</model>

