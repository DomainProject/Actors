<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5c12de31-eabc-4138-b711-95b52bc1fc4c(ActorLanguage.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1732176556423009631" name="jetbrains.mps.baseLanguage.structure.MultiLineComment" flags="ng" index="2lOVwT">
        <child id="1732176556423038857" name="lines" index="2lOMFJ" />
      </concept>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
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
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <property id="1237306318654" name="withIndent" index="ld1Su" />
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
        <property id="1237306361677" name="withIndent" index="ldcpH" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <child id="1233922432965" name="operation" index="1bwxVq" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc" />
      <concept id="1233924848298" name="jetbrains.mps.lang.textGen.structure.OperationCall" flags="ng" index="1bDJIP">
        <reference id="1234190664409" name="function" index="1rvKf6" />
      </concept>
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
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
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="3133179214568824809" name="jetbrains.mps.lang.text.structure.NodeWrapperElement" flags="nn" index="tu5oc">
        <child id="3133179214568824810" name="node" index="tu5of" />
      </concept>
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="3m_VcJMXf7T">
    <ref role="WuzLi" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
    <node concept="9MYSb" id="3m_VcJMXf7U" role="33IsuW">
      <node concept="3clFbS" id="3m_VcJMXf7V" role="2VODD2">
        <node concept="3clFbF" id="3m_VcJMXfoa" role="3cqZAp">
          <node concept="Xl_RD" id="3m_VcJMXfo9" role="3clFbG">
            <property role="Xl_RC" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3m_VcJMXfpt" role="11c4hB">
      <node concept="3clFbS" id="3m_VcJMXfpu" role="2VODD2">
        <node concept="lc7rE" id="2LRe1Vcab5M" role="3cqZAp">
          <node concept="1bDJIP" id="2LRe1Vcab6n" role="lcghm">
            <ref role="1rvKf6" node="49eohyMD0yi" resolve="header" />
          </node>
          <node concept="l8MVK" id="49eohyMDeJf" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMDeFs" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMDeGl" role="3cqZAp">
          <node concept="1bDJIP" id="49eohyMDeH3" role="lcghm">
            <ref role="1rvKf6" node="49eohyMD38O" resolve="functions" />
          </node>
          <node concept="l8MVK" id="49eohyMDeK6" role="lcghm" />
        </node>
        <node concept="3clFbH" id="518QUjC0Sh4" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMHob$" role="3cqZAp">
          <node concept="l9hG8" id="49eohyMHoci" role="lcghm">
            <node concept="2OqwBi" id="49eohyMHoka" role="lb14g">
              <node concept="117lpO" id="49eohyMHocP" role="2Oq$k0" />
              <node concept="3TrEf2" id="49eohyMHotm" role="2OqNvi">
                <ref role="3Tt5mk" to="o1mc:5Q93FfFZMil" resolve="receptionist" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="49eohyMR9xu" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMRbIo" role="3cqZAp">
          <node concept="l9S2W" id="49eohyMRbJ$" role="lcghm">
            <node concept="2OqwBi" id="49eohyMRbKi" role="lbANJ">
              <node concept="117lpO" id="49eohyMRbK2" role="2Oq$k0" />
              <node concept="3Tsc0h" id="49eohyMRbMH" role="2OqNvi">
                <ref role="3TtcxE" to="o1mc:5Q93FfFZEV2" resolve="behaviors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="49eohyMHoan" role="3cqZAp" />
        <node concept="lc7rE" id="2LRe1VcjBES" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcjBLZ" role="lcghm">
            <property role="lacIc" value="int main() {" />
          </node>
          <node concept="l8MVK" id="2LRe1VcjBUh" role="lcghm" />
        </node>
        <node concept="3izx1p" id="2LRe1VcjC57" role="3cqZAp">
          <node concept="3clFbS" id="2LRe1VcjC59" role="3izTki">
            <node concept="lc7rE" id="49eohyMYFf0" role="3cqZAp">
              <node concept="la8eA" id="49eohyMYFfs" role="lcghm">
                <property role="lacIc" value="int num_threads = " />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l9hG8" id="49eohyMYFh3" role="lcghm">
                <node concept="2YIFZM" id="49eohyMYWX$" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="49eohyMYMb_" role="37wK5m">
                    <node concept="2OqwBi" id="49eohyMYFoW" role="2Oq$k0">
                      <node concept="117lpO" id="49eohyMYFhB" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="49eohyMYG4y" role="2OqNvi">
                        <node concept="1xMEDy" id="49eohyMYG4$" role="1xVPHs">
                          <node concept="chp4Y" id="49eohyMYH3c" role="ri$Ld">
                            <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="49eohyMYWO1" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="49eohyMZ0jF" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
              <node concept="l8MVK" id="49eohyMZ0w8" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMZ0Gy" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ0MP" role="lcghm">
                <property role="lacIc" value="pthread_t threads[num_threads];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ0Qf" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMZ0WU" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ13g" role="lcghm">
                <property role="lacIc" value="pthread_t rec;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ14t" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMZ2Fz" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ2LW" role="lcghm">
                <property role="lacIc" value="int i;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ2MP" role="lcghm" />
              <node concept="l8MVK" id="49eohyMZ2NH" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMZ2Oa" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMZ30R" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ37l" role="lcghm">
                <property role="lacIc" value="/* TOPOLOGY INITIALIZATION */" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ3aJ" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMZ3h_" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ3o6" role="lcghm">
                <property role="lacIc" value="topology map;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ3pE" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMZ3wz" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ3B7" role="lcghm">
                <property role="lacIc" value="init_topology(&amp;map);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ3EC" role="lcghm" />
              <node concept="l8MVK" id="49eohyMZ3BX" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMZ3F5" role="3cqZAp" />
            <node concept="2Gpval" id="49eohyMZ3Or" role="3cqZAp">
              <node concept="2GrKxI" id="49eohyMZ3Ot" role="2Gsz3X">
                <property role="TrG5h" value="link" />
              </node>
              <node concept="2OqwBi" id="49eohyMZ4pS" role="2GsD0m">
                <node concept="2OqwBi" id="49eohyMZ44h" role="2Oq$k0">
                  <node concept="117lpO" id="49eohyMZ3VO" role="2Oq$k0" />
                  <node concept="3TrEf2" id="49eohyMZ4dq" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:2oGQ1bfTGMt" resolve="topology" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="49eohyMZ4_B" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:2oGQ1bfTn_W" resolve="links" />
                </node>
              </node>
              <node concept="3clFbS" id="49eohyMZ3Ox" role="2LFqv$">
                <node concept="lc7rE" id="49eohyMZ4DO" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMZ4DP" role="lcghm">
                    <property role="lacIc" value="add_to_topology(&amp;map, &quot;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l9hG8" id="49eohyMZ4KP" role="lcghm">
                    <node concept="2OqwBi" id="49eohyMZ5Vw" role="lb14g">
                      <node concept="2OqwBi" id="49eohyMZ5tw" role="2Oq$k0">
                        <node concept="2OqwBi" id="49eohyMZ4SD" role="2Oq$k0">
                          <node concept="2GrUjf" id="49eohyMZ4M6" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="49eohyMZ3Ot" resolve="link" />
                          </node>
                          <node concept="3TrEf2" id="49eohyMZ59l" role="2OqNvi">
                            <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn_O" resolve="actorFrom" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="49eohyMZ5D4" role="2OqNvi">
                          <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn$T" resolve="actor" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="49eohyMZ6hC" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="49eohyMZ4Hr" role="lcghm">
                    <property role="lacIc" value="&quot;, &quot;" />
                  </node>
                  <node concept="l9hG8" id="49eohyMZ4Lt" role="lcghm">
                    <node concept="2OqwBi" id="49eohyMZ6PJ" role="lb14g">
                      <node concept="2OqwBi" id="49eohyMZ6H$" role="2Oq$k0">
                        <node concept="2OqwBi" id="49eohyMZ6nQ" role="2Oq$k0">
                          <node concept="2GrUjf" id="49eohyMZ6np" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="49eohyMZ3Ot" resolve="link" />
                          </node>
                          <node concept="3TrEf2" id="49eohyMZ6yB" role="2OqNvi">
                            <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn_Q" resolve="actorTo" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="49eohyMZ6LD" role="2OqNvi">
                          <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn$T" resolve="actor" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="49eohyMZ6Wb" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="49eohyMZ4JB" role="lcghm">
                    <property role="lacIc" value="&quot;);" />
                  </node>
                  <node concept="l8MVK" id="49eohyMZ4DQ" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMZ8EA" role="3cqZAp">
              <node concept="l8MVK" id="49eohyMZ8OC" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMZ8P3" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMZ907" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZ908" role="lcghm">
                <property role="lacIc" value="pthread_create(&amp;rec, NULL, receptionist, (void *)&amp;map);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZ909" role="lcghm" />
              <node concept="l8MVK" id="49eohyMZ9fn" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMZ9gS" role="3cqZAp" />
            <node concept="3cpWs8" id="4PfcJeiRBVU" role="3cqZAp">
              <node concept="3cpWsn" id="4PfcJeiRBVX" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="4PfcJeiRBVS" role="1tU5fm" />
                <node concept="3cmrfG" id="4PfcJeiRCbe" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4PfcJeiR_B0" role="3cqZAp" />
            <node concept="2Gpval" id="49eohyMZb6W" role="3cqZAp">
              <node concept="2GrKxI" id="49eohyMZb6Y" role="2Gsz3X">
                <property role="TrG5h" value="actor" />
              </node>
              <node concept="2OqwBi" id="49eohyMZbqp" role="2GsD0m">
                <node concept="117lpO" id="49eohyMZbhW" role="2Oq$k0" />
                <node concept="2Rf3mk" id="49eohyMZbHn" role="2OqNvi">
                  <node concept="1xMEDy" id="49eohyMZbHp" role="1xVPHs">
                    <node concept="chp4Y" id="49eohyMZbJD" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="49eohyMZb72" role="2LFqv$">
                <node concept="lc7rE" id="49eohyMZbNP" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMZbNQ" role="lcghm">
                    <property role="lacIc" value="create_actor(&quot;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l9hG8" id="49eohyMZbQ_" role="lcghm">
                    <node concept="2OqwBi" id="49eohyMZc4q" role="lb14g">
                      <node concept="2GrUjf" id="49eohyMZbRa" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="49eohyMZb6Y" resolve="actor" />
                      </node>
                      <node concept="3TrcHB" id="49eohyMZcSO" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="49eohyMZcW8" role="lcghm">
                    <property role="lacIc" value="&quot;, threads[" />
                  </node>
                  <node concept="l9hG8" id="49eohyMZcYX" role="lcghm">
                    <node concept="2YIFZM" id="49eohyMZd2v" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="37vLTw" id="4PfcJeiRCvy" role="37wK5m">
                        <ref role="3cqZAo" node="4PfcJeiRBVX" resolve="i" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="49eohyMZfZn" role="lcghm">
                    <property role="lacIc" value="], " />
                  </node>
                  <node concept="l9hG8" id="49eohyMZg85" role="lcghm">
                    <node concept="2OqwBi" id="49eohyMZiOy" role="lb14g">
                      <node concept="2OqwBi" id="49eohyMZgvu" role="2Oq$k0">
                        <node concept="2GrUjf" id="49eohyMZgkE" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="49eohyMZb6Y" resolve="actor" />
                        </node>
                        <node concept="3TrEf2" id="49eohyMZitJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="o1mc:1enjyq1kmLM" resolve="behavior" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="49eohyMZj5e" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="49eohyMZggg" role="lcghm">
                    <property role="lacIc" value=");" />
                  </node>
                  <node concept="l8MVK" id="49eohyMZbNR" role="lcghm" />
                </node>
                <node concept="3clFbF" id="4PfcJeiRE5G" role="3cqZAp">
                  <node concept="3uNrnE" id="4PfcJeiRGep" role="3clFbG">
                    <node concept="37vLTw" id="4PfcJeiRGer" role="2$L3a6">
                      <ref role="3cqZAo" node="4PfcJeiRBVX" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMZj_4" role="3cqZAp">
              <node concept="l8MVK" id="49eohyMZjNy" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMZjNX" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMZkk7" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZkyA" role="lcghm">
                <property role="lacIc" value="for (i = 0; i &lt; num_threads; i++) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZk$f" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMZkN6" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMZkN8" role="3izTki">
                <node concept="lc7rE" id="49eohyMZl1_" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMZl21" role="lcghm">
                    <property role="lacIc" value="pthread_join(threads[i], NULL);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMZl3f" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMZlib" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZlwM" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZlxZ" role="lcghm" />
              <node concept="l8MVK" id="49eohyMZlyw" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyN0Fbr" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyN0Hlt" role="3cqZAp">
              <node concept="la8eA" id="49eohyN0H$c" role="lcghm">
                <property role="lacIc" value="pthread_join(rec, NULL);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="4PfcJeizuqE" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMZlyX" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMZnwt" role="3cqZAp">
              <node concept="la8eA" id="49eohyMZnJ9" role="lcghm">
                <property role="lacIc" value="exit(EXIT_SUCCESS);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMZnLM" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1VckONz" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VckP4_" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2LRe1VcbCy3">
    <property role="3GE5qa" value="actor" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
    <node concept="11bSqf" id="2LRe1VcbCy4" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VcbCy5" role="2VODD2">
        <node concept="3clFbH" id="Buyr4_F7FU" role="3cqZAp" />
        <node concept="lc7rE" id="2LRe1VcbCyw" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcbCyW" role="lcghm">
            <property role="lacIc" value="void *" />
          </node>
          <node concept="l9hG8" id="2LRe1VcbC__" role="lcghm">
            <node concept="2OqwBi" id="2LRe1VcbCHy" role="lb14g">
              <node concept="117lpO" id="2LRe1VcbCA9" role="2Oq$k0" />
              <node concept="3TrcHB" id="2LRe1VcbExt" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2LRe1VcbE_c" role="lcghm">
            <property role="lacIc" value="(void *arg) {" />
          </node>
          <node concept="l8MVK" id="2LRe1VcbECJ" role="lcghm" />
        </node>
        <node concept="1X3_iC" id="25QEYlOK3Oh" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3izx1p" id="2LRe1VcbEHT" role="8Wnug">
            <node concept="3clFbS" id="2LRe1VcbEHV" role="3izTki">
              <node concept="lc7rE" id="2LRe1VcbEKT" role="3cqZAp">
                <node concept="la8eA" id="2LRe1VcbELl" role="lcghm">
                  <property role="lacIc" value="ThreadData *data = (ThreadData *)arg;" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l8MVK" id="2LRe1VcbEPO" role="lcghm" />
              </node>
              <node concept="lc7rE" id="2LRe1Vclymp" role="3cqZAp">
                <node concept="la8eA" id="2LRe1Vclyoc" role="lcghm">
                  <property role="lacIc" value="int receiver_address;" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l8MVK" id="2LRe1Vclyqu" role="lcghm" />
              </node>
              <node concept="lc7rE" id="2LRe1Vcnu1G" role="3cqZAp">
                <node concept="la8eA" id="2LRe1Vcnu3v" role="lcghm">
                  <property role="lacIc" value="ssize_t bytes_read, bytes_written;" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l8MVK" id="2LRe1Vcnu7$" role="lcghm" />
              </node>
              <node concept="lc7rE" id="2LRe1VccxKQ" role="3cqZAp">
                <node concept="la8eA" id="2LRe1VccxN4" role="lcghm">
                  <property role="lacIc" value="char *actor_name = &quot;" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l9hG8" id="2LRe1VccxQ4" role="lcghm">
                  <node concept="2OqwBi" id="2LRe1VccxY1" role="lb14g">
                    <node concept="117lpO" id="2LRe1VccxQC" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2LRe1Vccyam" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="2LRe1Vccyc0" role="lcghm">
                  <property role="lacIc" value="&quot;;" />
                </node>
                <node concept="l8MVK" id="2LRe1VccICV" role="lcghm" />
                <node concept="l8MVK" id="2LRe1VccIGM" role="lcghm" />
              </node>
              <node concept="3clFbH" id="2LRe1VcgRyt" role="3cqZAp" />
              <node concept="3cpWs8" id="518QUjC4iX3" role="3cqZAp">
                <node concept="3cpWsn" id="518QUjC4iX6" role="3cpWs9">
                  <property role="TrG5h" value="count" />
                  <node concept="10Oyi0" id="518QUjC4iX1" role="1tU5fm" />
                  <node concept="2OqwBi" id="518QUjChXwt" role="33vP2m">
                    <node concept="2OqwBi" id="518QUjChOCa" role="2Oq$k0">
                      <node concept="2OqwBi" id="518QUjChJgW" role="2Oq$k0">
                        <node concept="117lpO" id="518QUjChIMh" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="518QUjChMCw" role="2OqNvi">
                          <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="518QUjChV9z" role="2OqNvi">
                        <node concept="1bVj0M" id="518QUjChV9_" role="23t8la">
                          <node concept="3clFbS" id="518QUjChV9A" role="1bW5cS">
                            <node concept="3clFbF" id="518QUjChVpi" role="3cqZAp">
                              <node concept="2OqwBi" id="518QUjChW0b" role="3clFbG">
                                <node concept="37vLTw" id="518QUjChVph" role="2Oq$k0">
                                  <ref role="3cqZAo" node="518QUjChV9B" resolve="it" />
                                </node>
                                <node concept="1mIQ4w" id="518QUjChWLf" role="2OqNvi">
                                  <node concept="chp4Y" id="518QUjChWUD" role="cj9EA">
                                    <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="518QUjChV9B" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="518QUjChV9C" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="34oBXx" id="518QUjChZe3" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="518QUjC4iGM" role="3cqZAp" />
              <node concept="2Gpval" id="518QUjBZpeT" role="3cqZAp">
                <node concept="2GrKxI" id="518QUjBZpeV" role="2Gsz3X">
                  <property role="TrG5h" value="action" />
                </node>
                <node concept="2OqwBi" id="518QUjBZpsa" role="2GsD0m">
                  <node concept="117lpO" id="518QUjBZpip" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="518QUjBZpPg" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
                  </node>
                </node>
                <node concept="3clFbS" id="518QUjBZpeZ" role="2LFqv$">
                  <node concept="3clFbJ" id="518QUjBZpTG" role="3cqZAp">
                    <node concept="3clFbS" id="518QUjBZpTI" role="3clFbx">
                      <node concept="lc7rE" id="518QUjBZD7R" role="3cqZAp">
                        <node concept="l9hG8" id="518QUjBZD8j" role="lcghm">
                          <node concept="2GrUjf" id="518QUjBZD8Q" role="lb14g">
                            <ref role="2Gs0qQ" node="518QUjBZpeV" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="518QUjBZqrP" role="3clFbw">
                      <node concept="2GrUjf" id="518QUjBZqjS" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="518QUjBZpeV" resolve="action" />
                      </node>
                      <node concept="1mIQ4w" id="518QUjBZ$Nh" role="2OqNvi">
                        <node concept="chp4Y" id="518QUjChZpc" role="cj9EA">
                          <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="518QUjC2yU3" role="3cqZAp" />
              <node concept="3clFbJ" id="518QUjC4ZQL" role="3cqZAp">
                <node concept="3clFbS" id="518QUjC4ZQN" role="3clFbx">
                  <node concept="lc7rE" id="518QUjC2z4h" role="3cqZAp">
                    <node concept="la8eA" id="518QUjC2zrY" role="lcghm">
                      <property role="lacIc" value="pthread_t threads[" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l9hG8" id="518QUjC2zw3" role="lcghm">
                      <node concept="2YIFZM" id="518QUjC4q7K" role="lb14g">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="37vLTw" id="518QUjC4qlt" role="37wK5m">
                          <ref role="3cqZAo" node="518QUjC4iX6" resolve="count" />
                        </node>
                      </node>
                    </node>
                    <node concept="la8eA" id="518QUjC2LNg" role="lcghm">
                      <property role="lacIc" value="];" />
                    </node>
                    <node concept="l8MVK" id="518QUjC2MWs" role="lcghm" />
                    <node concept="l8MVK" id="518QUjC2Og$" role="lcghm" />
                  </node>
                </node>
                <node concept="3eOSWO" id="518QUjC5k5R" role="3clFbw">
                  <node concept="3cmrfG" id="518QUjC5k5V" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="518QUjC51Og" role="3uHU7B">
                    <ref role="3cqZAo" node="518QUjC4iX6" resolve="count" />
                  </node>
                </node>
                <node concept="3eNFk2" id="518QUjC5o0m" role="3eNLev">
                  <node concept="3clFbC" id="518QUjC5rIS" role="3eO9$A">
                    <node concept="3cmrfG" id="518QUjC5tgz" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="518QUjC5okk" role="3uHU7B">
                      <ref role="3cqZAo" node="518QUjC4iX6" resolve="count" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="518QUjC5o0o" role="3eOfB_">
                    <node concept="lc7rE" id="518QUjC5thd" role="3cqZAp">
                      <node concept="la8eA" id="518QUjC5the" role="lcghm">
                        <property role="lacIc" value="pthread_t thread;" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="518QUjC5thj" role="lcghm" />
                      <node concept="l8MVK" id="518QUjC5thk" role="lcghm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="518QUjC2Q9G" role="3cqZAp" />
              <node concept="2Gpval" id="518QUjC2QDl" role="3cqZAp">
                <node concept="2GrKxI" id="518QUjC2QDn" role="2Gsz3X">
                  <property role="TrG5h" value="action" />
                </node>
                <node concept="2OqwBi" id="518QUjC2R2z" role="2GsD0m">
                  <node concept="117lpO" id="518QUjC2QSM" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="518QUjC2RhF" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
                  </node>
                </node>
                <node concept="3clFbS" id="518QUjC2QDr" role="2LFqv$">
                  <node concept="3clFbJ" id="518QUjC3H9O" role="3cqZAp">
                    <node concept="3clFbS" id="518QUjC3H9Q" role="3clFbx">
                      <node concept="3clFbJ" id="518QUjC5v1i" role="3cqZAp">
                        <node concept="3clFbS" id="518QUjC5v1k" role="3clFbx">
                          <node concept="lc7rE" id="518QUjC2RkA" role="3cqZAp">
                            <node concept="la8eA" id="518QUjC2Rl2" role="lcghm">
                              <property role="lacIc" value="create_thread(" />
                              <property role="ldcpH" value="true" />
                            </node>
                            <node concept="l9hG8" id="518QUjC2RnF" role="lcghm">
                              <node concept="2YIFZM" id="518QUjC2VWc" role="lb14g">
                                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                <node concept="2OqwBi" id="518QUjC2XsY" role="37wK5m">
                                  <node concept="1PxgMI" id="518QUjC2X8N" role="2Oq$k0">
                                    <node concept="chp4Y" id="518QUjC2Xeg" role="3oSUPX">
                                      <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                    </node>
                                    <node concept="2GrUjf" id="518QUjC2WBn" role="1m5AlR">
                                      <ref role="2Gs0qQ" node="518QUjC2QDn" resolve="action" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="518QUjC2Yyt" role="2OqNvi">
                                    <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="518QUjC30xj" role="lcghm">
                              <property role="lacIc" value=", data-&gt;map, " />
                            </node>
                            <node concept="l9hG8" id="518QUjC30Dc" role="lcghm">
                              <node concept="2OqwBi" id="518QUjC30S8" role="lb14g">
                                <node concept="1PxgMI" id="518QUjC30Ir" role="2Oq$k0">
                                  <node concept="chp4Y" id="518QUjC30M4" role="3oSUPX">
                                    <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                  </node>
                                  <node concept="2GrUjf" id="518QUjC30GT" role="1m5AlR">
                                    <ref role="2Gs0qQ" node="518QUjC2QDn" resolve="action" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="518QUjC31GH" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="518QUjC31OP" role="lcghm">
                              <property role="lacIc" value=", &amp;threads[" />
                            </node>
                            <node concept="l9hG8" id="518QUjC31Y2" role="lcghm">
                              <node concept="2YIFZM" id="518QUjC33UL" role="lb14g">
                                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                <node concept="2OqwBi" id="518QUjC34kT" role="37wK5m">
                                  <node concept="2GrUjf" id="518QUjC33WH" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="518QUjC2QDn" resolve="action" />
                                  </node>
                                  <node concept="2bSWHS" id="518QUjC35e3" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="518QUjC37oM" role="lcghm">
                              <property role="lacIc" value="]);" />
                            </node>
                            <node concept="l8MVK" id="518QUjC37zO" role="lcghm" />
                          </node>
                        </node>
                        <node concept="3eOSWO" id="518QUjC5$4t" role="3clFbw">
                          <node concept="3cmrfG" id="518QUjC5$4x" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="518QUjC5wDT" role="3uHU7B">
                            <ref role="3cqZAo" node="518QUjC4iX6" resolve="count" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="518QUjC5AVT" role="9aQIa">
                          <node concept="3clFbS" id="518QUjC5AVU" role="9aQI4">
                            <node concept="lc7rE" id="518QUjC5AYW" role="3cqZAp">
                              <node concept="la8eA" id="518QUjC5AYX" role="lcghm">
                                <property role="lacIc" value="create_thread(" />
                                <property role="ldcpH" value="true" />
                              </node>
                              <node concept="l9hG8" id="518QUjC5AYY" role="lcghm">
                                <node concept="2YIFZM" id="518QUjC5AYZ" role="lb14g">
                                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                  <node concept="2OqwBi" id="518QUjC5AZ0" role="37wK5m">
                                    <node concept="1PxgMI" id="518QUjC5AZ1" role="2Oq$k0">
                                      <node concept="chp4Y" id="518QUjC5AZ2" role="3oSUPX">
                                        <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                      </node>
                                      <node concept="2GrUjf" id="518QUjC5AZ3" role="1m5AlR">
                                        <ref role="2Gs0qQ" node="518QUjC2QDn" resolve="action" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="518QUjC5AZ4" role="2OqNvi">
                                      <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="la8eA" id="518QUjC5AZ5" role="lcghm">
                                <property role="lacIc" value=", data-&gt;map, " />
                              </node>
                              <node concept="l9hG8" id="518QUjC5AZ6" role="lcghm">
                                <node concept="2OqwBi" id="518QUjC5AZ7" role="lb14g">
                                  <node concept="1PxgMI" id="518QUjC5AZ8" role="2Oq$k0">
                                    <node concept="chp4Y" id="518QUjC5AZ9" role="3oSUPX">
                                      <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                    </node>
                                    <node concept="2GrUjf" id="518QUjC5AZa" role="1m5AlR">
                                      <ref role="2Gs0qQ" node="518QUjC2QDn" resolve="action" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="518QUjC5AZb" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                              <node concept="la8eA" id="518QUjC5AZc" role="lcghm">
                                <property role="lacIc" value=", &amp;thread);" />
                              </node>
                              <node concept="l8MVK" id="518QUjC5AZj" role="lcghm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="518QUjC3HkE" role="3clFbw">
                      <node concept="2GrUjf" id="518QUjC3HcH" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="518QUjC2QDn" resolve="action" />
                      </node>
                      <node concept="1mIQ4w" id="518QUjC3IkC" role="2OqNvi">
                        <node concept="chp4Y" id="518QUjC3IpL" role="cj9EA">
                          <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="lc7rE" id="518QUjC38vb" role="3cqZAp">
                <node concept="l8MVK" id="518QUjC3aOb" role="lcghm" />
              </node>
              <node concept="3clFbH" id="518QUjChZvE" role="3cqZAp" />
              <node concept="2Gpval" id="518QUjChZLo" role="3cqZAp">
                <node concept="2GrKxI" id="518QUjChZLp" role="2Gsz3X">
                  <property role="TrG5h" value="action" />
                </node>
                <node concept="2OqwBi" id="518QUjChZLq" role="2GsD0m">
                  <node concept="117lpO" id="518QUjChZLr" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="518QUjChZLs" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
                  </node>
                </node>
                <node concept="3clFbS" id="518QUjChZLt" role="2LFqv$">
                  <node concept="3clFbJ" id="518QUjChZLu" role="3cqZAp">
                    <node concept="3clFbS" id="518QUjChZLv" role="3clFbx">
                      <node concept="lc7rE" id="518QUjChZLw" role="3cqZAp">
                        <node concept="l9hG8" id="518QUjChZLx" role="lcghm">
                          <node concept="2GrUjf" id="518QUjChZLy" role="lb14g">
                            <ref role="2Gs0qQ" node="518QUjChZLp" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="518QUjChZLz" role="3clFbw">
                      <node concept="2GrUjf" id="518QUjChZL$" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="518QUjChZLp" resolve="action" />
                      </node>
                      <node concept="1mIQ4w" id="518QUjChZL_" role="2OqNvi">
                        <node concept="chp4Y" id="518QUjCi0wr" role="cj9EA">
                          <ref role="cht4Q" to="o1mc:3m_VcJMWARM" resolve="SendMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="518QUjCi4sO" role="3cqZAp" />
              <node concept="lc7rE" id="518QUjBZacX" role="3cqZAp">
                <node concept="la8eA" id="518QUjBZaf0" role="lcghm">
                  <property role="lacIc" value="// wait for messages" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l8MVK" id="518QUjBZag$" role="lcghm" />
              </node>
              <node concept="lc7rE" id="2LRe1VcnMGX" role="3cqZAp">
                <node concept="la8eA" id="2LRe1VcnMIN" role="lcghm">
                  <property role="lacIc" value="while(1) {" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l8MVK" id="2LRe1VcnMLN" role="lcghm" />
              </node>
              <node concept="3izx1p" id="2LRe1VcnMO1" role="3cqZAp">
                <node concept="3clFbS" id="2LRe1VcnMO3" role="3izTki">
                  <node concept="lc7rE" id="2LRe1VcbF1L" role="3cqZAp">
                    <node concept="la8eA" id="2LRe1VcbF2K" role="lcghm">
                      <property role="lacIc" value="char buffer[BUFFER_SIZE];" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l8MVK" id="2LRe1VcbF3X" role="lcghm" />
                  </node>
                  <node concept="lc7rE" id="2LRe1VcbEX4" role="3cqZAp">
                    <node concept="la8eA" id="2LRe1VcbEY1" role="lcghm">
                      <property role="lacIc" value="bytes_read = read(data-&gt;read_fd, buffer, BUFFER_SIZE);" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l8MVK" id="2LRe1VcbF6s" role="lcghm" />
                  </node>
                  <node concept="lc7rE" id="4uPBxu3gYTm" role="3cqZAp">
                    <node concept="la8eA" id="4uPBxu3gYUg" role="lcghm">
                      <property role="lacIc" value="buffer[bytes_read] = 0x00;" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l8MVK" id="4uPBxu3gYVt" role="lcghm" />
                  </node>
                  <node concept="lc7rE" id="2LRe1VcbF9s" role="3cqZAp">
                    <node concept="la8eA" id="2LRe1VcbFc_" role="lcghm">
                      <property role="lacIc" value="if (bytes_read &gt; 0) {" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l8MVK" id="2LRe1VcbFdM" role="lcghm" />
                  </node>
                  <node concept="3izx1p" id="2LRe1VcbFhj" role="3cqZAp">
                    <node concept="3clFbS" id="2LRe1VcbFhl" role="3izTki">
                      <node concept="lc7rE" id="2LRe1VcbFk0" role="3cqZAp">
                        <node concept="la8eA" id="2LRe1Vccyf7" role="lcghm">
                          <property role="lacIc" value="printf(&quot;%s received message: %s&quot;, actor_name, buffer);" />
                          <property role="ldcpH" value="true" />
                        </node>
                        <node concept="l8MVK" id="2LRe1VcbFRp" role="lcghm" />
                      </node>
                      <node concept="lc7rE" id="2LRe1VcfVv$" role="3cqZAp">
                        <node concept="la8eA" id="2LRe1VcfVw8" role="lcghm">
                          <property role="lacIc" value="puts(&quot;&quot;);" />
                          <property role="ldcpH" value="true" />
                        </node>
                        <node concept="l8MVK" id="2LRe1VcfVyi" role="lcghm" />
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="2LRe1VcbFVB" role="3cqZAp">
                    <node concept="la8eA" id="2LRe1VcbFZn" role="lcghm">
                      <property role="lacIc" value="} else {" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l8MVK" id="2LRe1VcdjKP" role="lcghm" />
                  </node>
                  <node concept="3izx1p" id="2LRe1VcbGLN" role="3cqZAp">
                    <node concept="3clFbS" id="2LRe1VcbGLP" role="3izTki">
                      <node concept="lc7rE" id="2LRe1VcbG5h" role="3cqZAp">
                        <node concept="la8eA" id="2LRe1VcbGwY" role="lcghm">
                          <property role="lacIc" value="printf(&quot;%s: Error reading from pipe&quot;, actor_name);" />
                          <property role="ldcpH" value="true" />
                        </node>
                        <node concept="l8MVK" id="2LRe1VcbG$x" role="lcghm" />
                      </node>
                      <node concept="lc7rE" id="2LRe1VcfVxn" role="3cqZAp">
                        <node concept="la8eA" id="2LRe1VcfVxo" role="lcghm">
                          <property role="lacIc" value="puts(&quot;&quot;);" />
                          <property role="ldcpH" value="true" />
                        </node>
                        <node concept="l8MVK" id="2LRe1VcfVz9" role="lcghm" />
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="2LRe1VcbGFp" role="3cqZAp">
                    <node concept="la8eA" id="2LRe1VcbGRm" role="lcghm">
                      <property role="lacIc" value="}" />
                      <property role="ldcpH" value="true" />
                    </node>
                    <node concept="l8MVK" id="2LRe1VcdjLG" role="lcghm" />
                  </node>
                </node>
              </node>
              <node concept="lc7rE" id="2LRe1VcnNfu" role="3cqZAp">
                <node concept="la8eA" id="2LRe1VcnNhp" role="lcghm">
                  <property role="lacIc" value="}" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l8MVK" id="2LRe1VcnNii" role="lcghm" />
                <node concept="l8MVK" id="2LRe1VcnNl1" role="lcghm" />
              </node>
              <node concept="3clFbH" id="2LRe1VcnNiI" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1VcbGUN" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcbGUO" role="lcghm">
            <property role="lacIc" value="}" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="2LRe1VcdjMz" role="lcghm" />
          <node concept="l8MVK" id="2LRe1VcdjNr" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2LRe1VceMmW">
    <property role="3GE5qa" value="message" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWARM" resolve="SendMessage" />
    <node concept="11bSqf" id="2LRe1VceMmX" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VceMmY" role="2VODD2">
        <node concept="lc7rE" id="3QReeej868T" role="3cqZAp">
          <node concept="la8eA" id="3QReeej869C" role="lcghm">
            <property role="lacIc" value="/* SENDING MESSAGE */" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeej86cH" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3QReeeiYndh" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiYndJ" role="lcghm">
            <property role="lacIc" value="ret = msgsnd(get_mqid(send_buf.msg-&gt;envelope-&gt;receiver), (void *)&amp;send_buf, sizeof(send_buf.msg), 0);" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeeiYnSV" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3QReeeiYnTL" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiYnUi" role="lcghm">
            <property role="lacIc" value="if (ret == -1) {" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeeiYnW$" role="lcghm" />
        </node>
        <node concept="3izx1p" id="3QReeeiYnXt" role="3cqZAp">
          <node concept="3clFbS" id="3QReeeiYnXv" role="3izTki">
            <node concept="lc7rE" id="3QReeeiYnXY" role="3cqZAp">
              <node concept="la8eA" id="3QReeeiYnYq" role="lcghm">
                <property role="lacIc" value="perror(&quot;msgsnd&quot;);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="3QReeeiYo13" role="lcghm" />
            </node>
            <node concept="lc7rE" id="3QReeeiYo1T" role="3cqZAp">
              <node concept="la8eA" id="3QReeeiYo2q" role="lcghm">
                <property role="lacIc" value="exit(EXIT_FAILURE);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="3QReeeiYo5t" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3QReeeiYo6u" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiYo7a" role="lcghm">
            <property role="lacIc" value="}" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeeiYo8n" role="lcghm" />
          <node concept="l8MVK" id="4PfcJeiAmuN" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2LRe1VcgoXq">
    <property role="3GE5qa" value="message" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
    <node concept="11bSqf" id="2LRe1VcgoXr" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VcgoXs" role="2VODD2">
        <node concept="3clFbH" id="3QReeeiY24u" role="3cqZAp" />
        <node concept="3cpWs8" id="3QReeeiY4yx" role="3cqZAp">
          <node concept="3cpWsn" id="3QReeeiY4y$" role="3cpWs9">
            <property role="TrG5h" value="envelope_name" />
            <node concept="17QB3L" id="3QReeeiY4yv" role="1tU5fm" />
            <node concept="Xl_RD" id="3QReeeiYmru" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3QReeeiY5ny" role="3cqZAp">
          <node concept="3cpWsn" id="3QReeeiY5n_" role="3cpWs9">
            <property role="TrG5h" value="payload_name" />
            <node concept="17QB3L" id="3QReeeiY5nw" role="1tU5fm" />
            <node concept="Xl_RD" id="3QReeeiYmvN" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3QReeeiY4$X" role="3cqZAp" />
        <node concept="Jncv_" id="3QReeeiY4MC" role="3cqZAp">
          <ref role="JncvD" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
          <node concept="2OqwBi" id="3QReeeiY4Yu" role="JncvB">
            <node concept="117lpO" id="3QReeeiY4OX" role="2Oq$k0" />
            <node concept="3TrEf2" id="3QReeeiY5iR" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
            </node>
          </node>
          <node concept="3clFbS" id="3QReeeiY4MG" role="Jncv$">
            <node concept="lc7rE" id="3QReeeiY5sv" role="3cqZAp">
              <node concept="l9hG8" id="3QReeeiY5sV" role="lcghm">
                <node concept="Jnkvi" id="3QReeeiY5tu" role="lb14g">
                  <ref role="1M0zk5" node="3QReeeiY4MI" resolve="envelope" />
                </node>
              </node>
              <node concept="l8MVK" id="3QReeejdyzt" role="lcghm" />
            </node>
            <node concept="3clFbF" id="3QReeeiY5w_" role="3cqZAp">
              <node concept="37vLTI" id="3QReeeiY7w9" role="3clFbG">
                <node concept="2OqwBi" id="3QReeeiY7X_" role="37vLTx">
                  <node concept="Jnkvi" id="3QReeeiY7Ky" role="2Oq$k0">
                    <ref role="1M0zk5" node="3QReeeiY4MI" resolve="envelope" />
                  </node>
                  <node concept="3TrcHB" id="3QReeeiY8_9" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="3QReeeiY5wz" role="37vLTJ">
                  <ref role="3cqZAo" node="3QReeeiY4y$" resolve="envelope_name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3QReeeiY4MI" role="JncvA">
            <property role="TrG5h" value="envelope" />
            <node concept="2jxLKc" id="3QReeeiY4MJ" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3QReeeiY8Q7" role="3cqZAp" />
        <node concept="Jncv_" id="3QReeeiY8Wm" role="3cqZAp">
          <ref role="JncvD" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
          <node concept="2OqwBi" id="3QReeeiY98Y" role="JncvB">
            <node concept="117lpO" id="3QReeeiY8ZP" role="2Oq$k0" />
            <node concept="3TrEf2" id="3QReeeiY9su" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
            </node>
          </node>
          <node concept="3clFbS" id="3QReeeiY8Wq" role="Jncv$">
            <node concept="lc7rE" id="3QReeeiY9ws" role="3cqZAp">
              <node concept="l9hG8" id="3QReeeiY9wS" role="lcghm">
                <node concept="Jnkvi" id="3QReeeiY9xr" role="lb14g">
                  <ref role="1M0zk5" node="3QReeeiY8Ws" resolve="payload" />
                </node>
              </node>
              <node concept="l8MVK" id="3QReeejdyy$" role="lcghm" />
            </node>
            <node concept="3clFbF" id="3QReeeiY9_T" role="3cqZAp">
              <node concept="37vLTI" id="3QReeeiYbVh" role="3clFbG">
                <node concept="2OqwBi" id="3QReeeiYcow" role="37vLTx">
                  <node concept="Jnkvi" id="3QReeeiYcbD" role="2Oq$k0">
                    <ref role="1M0zk5" node="3QReeeiY8Ws" resolve="payload" />
                  </node>
                  <node concept="3TrcHB" id="3QReeeiYd26" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="3QReeeiY9P7" role="37vLTJ">
                  <ref role="3cqZAo" node="3QReeeiY5n_" resolve="payload_name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3QReeeiY8Ws" role="JncvA">
            <property role="TrG5h" value="payload" />
            <node concept="2jxLKc" id="3QReeeiY8Wt" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3QReeeiYd6r" role="3cqZAp" />
        <node concept="Jncv_" id="3QReeeiYdpr" role="3cqZAp">
          <ref role="JncvD" to="o1mc:Buyr4_JQa3" resolve="SelectEnvelope" />
          <node concept="2OqwBi" id="3QReeeiYdBy" role="JncvB">
            <node concept="117lpO" id="3QReeeiYdu1" role="2Oq$k0" />
            <node concept="3TrEf2" id="3QReeeiYdVB" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
            </node>
          </node>
          <node concept="3clFbS" id="3QReeeiYdpv" role="Jncv$">
            <node concept="3clFbF" id="3QReeeiYe1k" role="3cqZAp">
              <node concept="37vLTI" id="3QReeeiYg0P" role="3clFbG">
                <node concept="2OqwBi" id="3QReeeiYgGg" role="37vLTx">
                  <node concept="2OqwBi" id="3QReeeiYgdz" role="2Oq$k0">
                    <node concept="Jnkvi" id="3QReeeiYg1s" role="2Oq$k0">
                      <ref role="1M0zk5" node="3QReeeiYdpx" resolve="envRef" />
                    </node>
                    <node concept="3TrEf2" id="3QReeeiYguj" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:Buyr4_JQa4" resolve="envelope" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3QReeeiYh2$" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="3QReeeiYe1j" role="37vLTJ">
                  <ref role="3cqZAo" node="3QReeeiY4y$" resolve="envelope_name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3QReeeiYdpx" role="JncvA">
            <property role="TrG5h" value="envRef" />
            <node concept="2jxLKc" id="3QReeeiYdpy" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3QReeeiYh3C" role="3cqZAp" />
        <node concept="Jncv_" id="3QReeeiYhdX" role="3cqZAp">
          <ref role="JncvD" to="o1mc:4posSimMjE2" resolve="SelectPayload" />
          <node concept="2OqwBi" id="3QReeeiYhsC" role="JncvB">
            <node concept="117lpO" id="3QReeeiYhjv" role="2Oq$k0" />
            <node concept="3TrEf2" id="3QReeeiYi1Y" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
            </node>
          </node>
          <node concept="3clFbS" id="3QReeeiYhe1" role="Jncv$">
            <node concept="3clFbF" id="3QReeeiYi8n" role="3cqZAp">
              <node concept="37vLTI" id="3QReeeiYk7S" role="3clFbG">
                <node concept="2OqwBi" id="3QReeeiYloq" role="37vLTx">
                  <node concept="2OqwBi" id="3QReeeiYkO4" role="2Oq$k0">
                    <node concept="Jnkvi" id="3QReeeiYkog" role="2Oq$k0">
                      <ref role="1M0zk5" node="3QReeeiYhe3" resolve="payloadRef" />
                    </node>
                    <node concept="3TrEf2" id="3QReeeiYl7N" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:4posSimMjEh" resolve="payload" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3QReeeiYlGR" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="3QReeeiYi8m" role="37vLTJ">
                  <ref role="3cqZAo" node="3QReeeiY5n_" resolve="payload_name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="3QReeeiYhe3" role="JncvA">
            <property role="TrG5h" value="payloadRef" />
            <node concept="2jxLKc" id="3QReeeiYhe4" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3QReeeiY24D" role="3cqZAp" />
        <node concept="lc7rE" id="3QReeej85ZQ" role="3cqZAp">
          <node concept="la8eA" id="3QReeej864J" role="lcghm">
            <property role="lacIc" value="/* MESSAGE CREATION */" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeej867P" role="lcghm" />
        </node>
        <node concept="3clFbH" id="3QReeej85V4" role="3cqZAp" />
        <node concept="3SKdUt" id="3QReeeiYmLv" role="3cqZAp">
          <node concept="1PaTwC" id="3QReeeiYmLw" role="1aUNEU">
            <node concept="3oM_SD" id="3QReeeiYmQ_" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="3QReeeiYmQI" role="1PaTwD">
              <property role="3oM_SC" value="message" />
            </node>
            <node concept="3oM_SD" id="3QReeeiYmQU" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="3QReeeiYmR3" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3QReeeiYmRb" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1VcidfG" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcidgE" role="lcghm">
            <property role="lacIc" value="send_buf = create_message(" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="3QReeeiY0Ln" role="lcghm">
            <node concept="37vLTw" id="3QReeeiYmox" role="lb14g">
              <ref role="3cqZAo" node="3QReeeiY4y$" resolve="envelope_name" />
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiYmyA" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="3QReeeiYm$x" role="lcghm">
            <node concept="37vLTw" id="3QReeeiYm_s" role="lb14g">
              <ref role="3cqZAo" node="3QReeeiY5n_" resolve="payload_name" />
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiYmAU" role="lcghm">
            <property role="lacIc" value=", 1);" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcidie" role="lcghm" />
          <node concept="l8MVK" id="4PfcJeiAmsS" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Buyr4_F8_V">
    <property role="3GE5qa" value="behavior" />
    <ref role="WuzLi" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
    <node concept="11bSqf" id="Buyr4_F8_W" role="11c4hB">
      <node concept="3clFbS" id="Buyr4_F8_X" role="2VODD2">
        <node concept="lc7rE" id="49eohyMMgdb" role="3cqZAp">
          <node concept="la8eA" id="49eohyMMggd" role="lcghm">
            <property role="lacIc" value="void *" />
          </node>
          <node concept="l9hG8" id="49eohyMMght" role="lcghm">
            <node concept="2OqwBi" id="49eohyMMgpU" role="lb14g">
              <node concept="117lpO" id="49eohyMMgi1" role="2Oq$k0" />
              <node concept="3TrcHB" id="49eohyMMgK0" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49eohyMMgLE" role="lcghm">
            <property role="lacIc" value="(void *arg) {" />
          </node>
          <node concept="l8MVK" id="49eohyMSpCW" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMMgUs" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMMgUu" role="3izTki">
            <node concept="lc7rE" id="49eohyMNvet" role="3cqZAp">
              <node concept="la8eA" id="49eohyMNvhv" role="lcghm">
                <property role="lacIc" value="char *name = (char *)arg;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMNvkQ" role="lcghm" />
            </node>
            <node concept="lc7rE" id="3QReeeiYn_L" role="3cqZAp">
              <node concept="la8eA" id="3QReeeiYnE0" role="lcghm">
                <property role="lacIc" value="int ret;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="3QReeeiZIyV" role="lcghm" />
            </node>
            <node concept="3clFbH" id="3QReeeiY0Bs" role="3cqZAp" />
            <node concept="3clFbJ" id="3QReeeiXQlp" role="3cqZAp">
              <node concept="3clFbS" id="3QReeeiXQlr" role="3clFbx">
                <node concept="lc7rE" id="3QReeeiXZXV" role="3cqZAp">
                  <node concept="la8eA" id="3QReeeiXZYp" role="lcghm">
                    <property role="lacIc" value="msgbuf send_buf;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="3QReeeiY0c2" role="lcghm" />
                </node>
              </node>
              <node concept="2OqwBi" id="3QReeeiXUrQ" role="3clFbw">
                <node concept="2OqwBi" id="3QReeeiXQx$" role="2Oq$k0">
                  <node concept="117lpO" id="3QReeeiXQoC" role="2Oq$k0" />
                  <node concept="2Rf3mk" id="3QReeeiXQSM" role="2OqNvi">
                    <node concept="1xMEDy" id="3QReeeiXQSO" role="1xVPHs">
                      <node concept="chp4Y" id="3QReeeiXRed" role="ri$Ld">
                        <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3QReeeiXZVn" role="2OqNvi" />
              </node>
            </node>
            <node concept="lc7rE" id="3QReeeiY0gx" role="3cqZAp">
              <node concept="l8MVK" id="3QReeeiY0qg" role="lcghm" />
            </node>
            <node concept="3clFbH" id="3QReeeiY0qF" role="3cqZAp" />
            <node concept="2Gpval" id="Buyr4_F8Ao" role="3cqZAp">
              <node concept="2GrKxI" id="Buyr4_F8Ap" role="2Gsz3X">
                <property role="TrG5h" value="action" />
              </node>
              <node concept="2OqwBi" id="Buyr4_F8L_" role="2GsD0m">
                <node concept="117lpO" id="Buyr4_F8Cu" role="2Oq$k0" />
                <node concept="3Tsc0h" id="Buyr4_F97C" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" />
                </node>
              </node>
              <node concept="3clFbS" id="Buyr4_F8Ar" role="2LFqv$">
                <node concept="lc7rE" id="Buyr4_F9ca" role="3cqZAp">
                  <node concept="l9hG8" id="Buyr4_F9cA" role="lcghm">
                    <node concept="2GrUjf" id="Buyr4_F9d9" role="lb14g">
                      <ref role="2Gs0qQ" node="Buyr4_F8Ap" resolve="action" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3QReeeiY0zm" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMOGYm" role="3cqZAp">
              <node concept="la8eA" id="49eohyMOH1r" role="lcghm">
                <property role="lacIc" value="return 0;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMOH2Z" role="lcghm" />
              <node concept="l8MVK" id="7fAv2aKDz$h" role="lcghm" />
            </node>
            <node concept="3clFbH" id="7fAv2aKAhB5" role="3cqZAp" />
            <node concept="2lOVwT" id="7fAv2aKEZw7" role="3cqZAp">
              <node concept="1PaTwC" id="7fAv2aKEZw8" role="2lOMFJ">
                <node concept="tu5oc" id="7fAv2aKEZID" role="1PaTwD">
                  <node concept="3clFbJ" id="7fAv2aKAhFR" role="tu5of">
                    <node concept="3clFbS" id="7fAv2aKAhFT" role="3clFbx">
                      <node concept="3cpWs8" id="7fAv2aKAt0M" role="3cqZAp">
                        <node concept="3cpWsn" id="7fAv2aKAt0P" role="3cpWs9">
                          <property role="TrG5h" value="listName" />
                          <node concept="17QB3L" id="7fAv2aKAt0H" role="1tU5fm" />
                          <node concept="2OqwBi" id="7fAv2aKAAgf" role="33vP2m">
                            <node concept="2OqwBi" id="7fAv2aKAvZE" role="2Oq$k0">
                              <node concept="2OqwBi" id="7fAv2aKAtb9" role="2Oq$k0">
                                <node concept="117lpO" id="7fAv2aKAt2a" role="2Oq$k0" />
                                <node concept="2Rf3mk" id="7fAv2aKAty7" role="2OqNvi">
                                  <node concept="1xMEDy" id="7fAv2aKAty9" role="1xVPHs">
                                    <node concept="chp4Y" id="7fAv2aKAtR_" role="ri$Ld">
                                      <ref role="cht4Q" to="o1mc:40skb7_IBMN" resolve="ActorReferenceList" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="34jXtK" id="7fAv2aKA_ZT" role="2OqNvi">
                                <node concept="3cmrfG" id="7fAv2aKAA5Y" role="25WWJ7">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrcHB" id="7fAv2aKAATM" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="lc7rE" id="7fAv2aKAB4h" role="3cqZAp">
                        <node concept="l9hG8" id="7fAv2aKABX6" role="lcghm">
                          <node concept="2OqwBi" id="7fAv2aKAC5z" role="lb14g">
                            <node concept="117lpO" id="7fAv2aKABXE" role="2Oq$k0" />
                            <node concept="3TrcHB" id="7fAv2aKAChT" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="7fAv2aKAB8D" role="lcghm">
                          <property role="lacIc" value="_fail:" />
                        </node>
                        <node concept="l8MVK" id="7fAv2aKDzyL" role="lcghm" />
                      </node>
                      <node concept="3izx1p" id="7fAv2aKABdI" role="3cqZAp">
                        <node concept="3clFbS" id="7fAv2aKABdK" role="3izTki">
                          <node concept="lc7rE" id="7fAv2aKABwa" role="3cqZAp">
                            <node concept="la8eA" id="7fAv2aKABwb" role="lcghm">
                              <property role="lacIc" value="free(" />
                              <property role="ldcpH" value="true" />
                            </node>
                            <node concept="l9hG8" id="7fAv2aKABwc" role="lcghm">
                              <node concept="37vLTw" id="7fAv2aKABGP" role="lb14g">
                                <ref role="3cqZAo" node="7fAv2aKAt0P" resolve="listName" />
                              </node>
                            </node>
                            <node concept="la8eA" id="7fAv2aKABwi" role="lcghm">
                              <property role="lacIc" value="-&gt;strings);" />
                            </node>
                            <node concept="l8MVK" id="7fAv2aKABwj" role="lcghm" />
                          </node>
                          <node concept="lc7rE" id="7fAv2aKABHO" role="3cqZAp">
                            <node concept="la8eA" id="7fAv2aKABHP" role="lcghm">
                              <property role="lacIc" value="free(" />
                              <property role="ldcpH" value="true" />
                            </node>
                            <node concept="l9hG8" id="7fAv2aKABHQ" role="lcghm">
                              <node concept="37vLTw" id="7fAv2aKABOm" role="lb14g">
                                <ref role="3cqZAo" node="7fAv2aKAt0P" resolve="listName" />
                              </node>
                            </node>
                            <node concept="la8eA" id="7fAv2aKABHW" role="lcghm">
                              <property role="lacIc" value=");" />
                            </node>
                            <node concept="l8MVK" id="7fAv2aKABHX" role="lcghm" />
                          </node>
                          <node concept="lc7rE" id="7fAv2aKABRY" role="3cqZAp">
                            <node concept="la8eA" id="7fAv2aKABTc" role="lcghm">
                              <property role="lacIc" value="exit(EXIT_FAILURE);" />
                              <property role="ldcpH" value="true" />
                            </node>
                            <node concept="l8MVK" id="7fAv2aKABVS" role="lcghm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7fAv2aKAlNt" role="3clFbw">
                      <node concept="2OqwBi" id="7fAv2aKAhTb" role="2Oq$k0">
                        <node concept="117lpO" id="7fAv2aKAhKf" role="2Oq$k0" />
                        <node concept="2Rf3mk" id="7fAv2aKAigp" role="2OqNvi">
                          <node concept="1xMEDy" id="7fAv2aKAigr" role="1xVPHs">
                            <node concept="chp4Y" id="7fAv2aKAi_O" role="ri$Ld">
                              <ref role="cht4Q" to="o1mc:1enjyq1qgdi" resolve="GetActorsFromReceptionist" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="7fAv2aKAsXy" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMMh7w" role="3cqZAp">
          <node concept="la8eA" id="49eohyMMhb3" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMRbNF" role="lcghm" />
          <node concept="l8MVK" id="49eohyMRbOc" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Buyr4_FAxG">
    <property role="3GE5qa" value="behavior" />
    <ref role="WuzLi" to="o1mc:66sUT0$5L0$" resolve="SelectBehavior" />
    <node concept="11bSqf" id="Buyr4_FAxH" role="11c4hB">
      <node concept="3clFbS" id="Buyr4_FAxI" role="2VODD2">
        <node concept="lc7rE" id="Buyr4_FAy9" role="3cqZAp">
          <node concept="l9hG8" id="Buyr4_FAy_" role="lcghm">
            <node concept="2OqwBi" id="Buyr4_FAFT" role="lb14g">
              <node concept="117lpO" id="Buyr4_FAz8" role="2Oq$k0" />
              <node concept="3TrEf2" id="Buyr4_FB1c" role="2OqNvi">
                <ref role="3Tt5mk" to="o1mc:66sUT0$5L0_" resolve="behavior" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="49eohyMD0yh">
    <property role="TrG5h" value="Header" />
    <node concept="1bwezc" id="49eohyMD0yi" role="1bwxVq">
      <property role="TrG5h" value="header" />
      <node concept="3cqZAl" id="49eohyMD0yj" role="3clF45" />
      <node concept="3clFbS" id="49eohyMD0yk" role="3clF47">
        <node concept="lc7rE" id="49eohyMD0zC" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD0zZ" role="lcghm">
            <property role="lacIc" value="#include &lt;stdio.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0AM" role="lcghm" />
          <node concept="la8eA" id="49eohyMD0Bw" role="lcghm">
            <property role="lacIc" value="#include &lt;sys/ipc.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0Ck" role="lcghm" />
          <node concept="la8eA" id="49eohyMD0CQ" role="lcghm">
            <property role="lacIc" value="#include &lt;sys/msg.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0DI" role="lcghm" />
          <node concept="la8eA" id="49eohyMD0Ek" role="lcghm">
            <property role="lacIc" value="#include &lt;pthread.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0Fw" role="lcghm" />
          <node concept="la8eA" id="49eohyMD0Gr" role="lcghm">
            <property role="lacIc" value="#include &lt;string.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0Hq" role="lcghm" />
          <node concept="la8eA" id="49eohyMD0Ip" role="lcghm">
            <property role="lacIc" value="#include &lt;stdlib.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0Js" role="lcghm" />
          <node concept="la8eA" id="49eohyMD0Kf" role="lcghm">
            <property role="lacIc" value="#include &lt;unistd.h&gt;" />
          </node>
          <node concept="l8MVK" id="49eohyMD0M6" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD0MA" role="lcghm" />
        </node>
        <node concept="3clFbH" id="4PfcJeiDkdX" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD10B" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD11n" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1_s" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD14t" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD14v" role="3izTki">
            <node concept="lc7rE" id="49eohyMD18y" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD18T" role="lcghm">
                <property role="lacIc" value="char *sender;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1ae" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1aG" role="lcghm">
                <property role="lacIc" value="char *receiver;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1c2" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1c$" role="lcghm">
                <property role="lacIc" value="float priority;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1e1" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD15T" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD16H" role="lcghm">
            <property role="lacIc" value="} envelope;" />
          </node>
          <node concept="l8MVK" id="49eohyMD1ge" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD1gD" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD0R8" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD1h1" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD1h2" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1A9" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD1EJ" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD1EK" role="3izTki">
            <node concept="lc7rE" id="49eohyMD1EL" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD1EM" role="lcghm">
                <property role="lacIc" value="size_t size;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1EN" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1EO" role="lcghm">
                <property role="lacIc" value="char **strings;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1ER" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD2a$" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD2a_" role="lcghm">
            <property role="lacIc" value="} payload;" />
          </node>
          <node concept="l8MVK" id="49eohyMD2aA" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD2aB" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD28H" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD1jA" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD1jB" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1AQ" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD1HI" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD1HJ" role="3izTki">
            <node concept="lc7rE" id="49eohyMD1HK" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD1HL" role="lcghm">
                <property role="lacIc" value="envelope *envelope;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1HM" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1HN" role="lcghm">
                <property role="lacIc" value="payload *payload;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1HQ" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD2f7" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD2f8" role="lcghm">
            <property role="lacIc" value="} message;" />
          </node>
          <node concept="l8MVK" id="49eohyMD2f9" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD2fa" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD2cV" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD1m7" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD1m8" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1Bz" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD1Lh" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD1Li" role="3izTki">
            <node concept="lc7rE" id="49eohyMD1Lj" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD1Lk" role="lcghm">
                <property role="lacIc" value="long mtype;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Ll" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1Lm" role="lcghm">
                <property role="lacIc" value="message *msg;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Lp" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD2j$" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD2j_" role="lcghm">
            <property role="lacIc" value="} msgbuf;" />
          </node>
          <node concept="l8MVK" id="49eohyMD2jA" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD2jB" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD2hz" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD1oO" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD1oP" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1BX" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD1P8" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD1P9" role="3izTki">
            <node concept="lc7rE" id="49eohyMD1Pa" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD1Pb" role="lcghm">
                <property role="lacIc" value="char **strings;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Pc" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1Pd" role="lcghm">
                <property role="lacIc" value="size_t size;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Pe" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1Pf" role="lcghm">
                <property role="lacIc" value="size_t capacity;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Pg" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD2ob" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD2oc" role="lcghm">
            <property role="lacIc" value="} linked_actors;" />
          </node>
          <node concept="l8MVK" id="49eohyMD2od" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD2oe" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD2m5" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD1rH" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD1rI" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1CE" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD1Tj" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD1Tk" role="3izTki">
            <node concept="lc7rE" id="49eohyMD1Tl" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD1Tm" role="lcghm">
                <property role="lacIc" value="char *key;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Tn" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1To" role="lcghm">
                <property role="lacIc" value="linked_actors values;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1Tr" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD2sW" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD2sX" role="lcghm">
            <property role="lacIc" value="} map_entry;" />
          </node>
          <node concept="l8MVK" id="49eohyMD2sY" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD2sZ" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD2qL" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD1uM" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD1uN" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="49eohyMD1Dn" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD1XJ" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD1XK" role="3izTki">
            <node concept="lc7rE" id="49eohyMD1XL" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD1XM" role="lcghm">
                <property role="lacIc" value="map_entry *entries;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1XN" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1XO" role="lcghm">
                <property role="lacIc" value="size_t size;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1XP" role="lcghm" />
              <node concept="la8eA" id="49eohyMD1XQ" role="lcghm">
                <property role="lacIc" value="size_t capacity;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD1XR" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD2y7" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD2y8" role="lcghm">
            <property role="lacIc" value="} topology;" />
          </node>
          <node concept="l8MVK" id="49eohyMD2y9" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD2ya" role="lcghm" />
        </node>
        <node concept="3clFbH" id="7fAv2aKozdC" role="3cqZAp" />
        <node concept="lc7rE" id="7fAv2aKozih" role="3cqZAp">
          <node concept="la8eA" id="7fAv2aKozii" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="7fAv2aKozij" role="lcghm" />
        </node>
        <node concept="3izx1p" id="7fAv2aKozkT" role="3cqZAp">
          <node concept="3clFbS" id="7fAv2aKozkU" role="3izTki">
            <node concept="lc7rE" id="7fAv2aKozkV" role="3cqZAp">
              <node concept="la8eA" id="7fAv2aKozkW" role="lcghm">
                <property role="lacIc" value="char **strings;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="7fAv2aKozkX" role="lcghm" />
              <node concept="la8eA" id="7fAv2aKozkY" role="lcghm">
                <property role="lacIc" value="size_t size;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="7fAv2aKozkZ" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="7fAv2aKoznW" role="3cqZAp">
          <node concept="la8eA" id="7fAv2aKoznX" role="lcghm">
            <property role="lacIc" value="} strings_array;" />
          </node>
          <node concept="l8MVK" id="7fAv2aKoznY" role="lcghm" />
          <node concept="l8MVK" id="7fAv2aKoznZ" role="lcghm" />
        </node>
        <node concept="3clFbH" id="7fAv2aKozfO" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD2vB" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="49eohyMD38N">
    <property role="TrG5h" value="UtilityFunctions" />
    <node concept="1bwezc" id="49eohyMD38O" role="1bwxVq">
      <property role="TrG5h" value="functions" />
      <node concept="3cqZAl" id="49eohyMD38P" role="3clF45" />
      <node concept="3clFbS" id="49eohyMD38Q" role="3clF47">
        <node concept="3clFbH" id="49eohyMD5gt" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD39E" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3a1" role="lcghm">
            <property role="lacIc" value="void init_linked_actors(linked_actors *array) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD5jo" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3aF" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3aH" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3b3" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3bq" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="array-&gt;strings = NULL;" />
              </node>
              <node concept="l8MVK" id="49eohyMD5l3" role="lcghm" />
              <node concept="la8eA" id="49eohyMD5lM" role="lcghm">
                <property role="lacIc" value="array-&gt;size = 0;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5m_" role="lcghm" />
              <node concept="la8eA" id="49eohyMD5nn" role="lcghm">
                <property role="lacIc" value="array-&gt;capacity = 0;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5ov" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD3c8" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3cB" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD3dA" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD3e4" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD3g2" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD5dX" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3gF" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3gG" role="lcghm">
            <property role="lacIc" value="void add_to_linked_actors(linked_actors *array, const char *str) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD5pk" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3KB" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3KC" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3KD" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3KE" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="if (array-&gt;size == array-&gt;capacity) {" />
              </node>
              <node concept="l8MVK" id="49eohyMD5q5" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD5ra" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD5rc" role="3izTki">
                <node concept="lc7rE" id="49eohyMD5r$" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD5rV" role="lcghm">
                    <property role="lacIc" value="array-&gt;capacity = (array-&gt;capacity == 0) ? 2 : array-&gt;capacity * 2;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD5sE" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMD5tn" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD5tN" role="lcghm">
                    <property role="lacIc" value="array-&gt;strings = realloc(array-&gt;strings, array-&gt;capacity * sizeof(char *));" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD5uy" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD5vm" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD5vU" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5xM" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD5yw" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD5yS" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD5zF" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD5$l" role="lcghm">
                <property role="lacIc" value="array-&gt;strings[array-&gt;size] = strdup(str);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5_4" role="lcghm" />
              <node concept="la8eA" id="49eohyMD5_M" role="lcghm">
                <property role="lacIc" value="array-&gt;size++;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5AA" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4yq" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4yr" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4ys" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4yt" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4x1" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3JE" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3hZ" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3i0" role="lcghm">
            <property role="lacIc" value="void init_topology(topology *map) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD5BG" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3MK" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3ML" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3MM" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3MN" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="map-&gt;entries = NULL;" />
              </node>
              <node concept="l8MVK" id="49eohyMD5Ct" role="lcghm" />
              <node concept="la8eA" id="49eohyMD5Dc" role="lcghm">
                <property role="lacIc" value="map-&gt;size = 0;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5DD" role="lcghm" />
              <node concept="la8eA" id="49eohyMD5Fi" role="lcghm">
                <property role="lacIc" value="map-&gt;capacity = 0;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5Eu" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4_L" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4_M" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4_N" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4_O" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4$j" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3LI" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3jv" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3jw" role="lcghm">
            <property role="lacIc" value="void add_to_topology(topology *map, const char *key, const char *value) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD5Gr" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3P3" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3P4" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3P5" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3P6" role="lcghm">
                <property role="lacIc" value="for (size_t i = 0; i &lt; map-&gt;size; i++) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5J9" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD5Hq" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD5Hs" role="3izTki">
                <node concept="lc7rE" id="49eohyMD5HM" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD5I9" role="lcghm">
                    <property role="lacIc" value="if (strcmp(map-&gt;entries[i].key, key) == 0) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD5JQ" role="lcghm" />
                </node>
                <node concept="3izx1p" id="49eohyMD5Ky" role="3cqZAp">
                  <node concept="3clFbS" id="49eohyMD5K$" role="3izTki">
                    <node concept="lc7rE" id="49eohyMD5KV" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMD5Li" role="lcghm">
                        <property role="lacIc" value="add_to_linked_actors(&amp;map-&gt;entries[i].values, value);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMD5Mi" role="lcghm" />
                      <node concept="la8eA" id="49eohyMD5N0" role="lcghm">
                        <property role="lacIc" value="return;" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMD5Om" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="49eohyMD5Pb" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD5PI" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD5Sw" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD5UP" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD5UQ" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5UR" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD5VV" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD5Wj" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD5Xn" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD5Y8" role="lcghm">
                <property role="lacIc" value="if (map-&gt;size == map-&gt;capacity) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD5YR" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD5ZV" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD5ZX" role="3izTki">
                <node concept="lc7rE" id="49eohyMD60H" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD614" role="lcghm">
                    <property role="lacIc" value="map-&gt;capacity = (map-&gt;capacity == 0) ? 2 : map-&gt;capacity * 2;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD61N" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMD62v" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD62V" role="lcghm">
                    <property role="lacIc" value="map-&gt;entries = realloc(map-&gt;entries, map-&gt;capacity * sizeof(map_entry));" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD63V" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD657" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD663" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD672" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD6b9" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD6bx" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD69t" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6as" role="lcghm">
                <property role="lacIc" value="map-&gt;entries[map-&gt;size].key = strdup(key);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6cQ" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD6ea" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6fe" role="lcghm">
                <property role="lacIc" value="init_linked_actors(&amp;map-&gt;entries[map-&gt;size].values);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6ge" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD6hA" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6iH" role="lcghm">
                <property role="lacIc" value="add_to_linked_actors(&amp;map-&gt;entries[map-&gt;size].values, value);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6js" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD6kQ" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6m0" role="lcghm">
                <property role="lacIc" value="map-&gt;size++;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6n0" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4Dy" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4Dz" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4D$" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4D_" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4BJ" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3jR" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3kV" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3kW" role="lcghm">
            <property role="lacIc" value="void create_actor(char *name, pthread_t thread, void *(behavior)(void *)) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD6q0" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3Rw" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3Rx" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3Ry" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3Rz" role="lcghm">
                <property role="lacIc" value="pthread_create(&amp;thread, NULL, behavior, (void *)name);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6qL" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4Hd" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4He" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4Hf" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4Hg" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4F_" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3lE" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3mN" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3mO" role="lcghm">
            <property role="lacIc" value="int get_mqid(const char* str) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD6s5" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3U7" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3U8" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3U9" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3Ua" role="lcghm">
                <property role="lacIc" value="unsigned long hash = 5381;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6sQ" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD6ty" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6tY" role="lcghm">
                <property role="lacIc" value="int c;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6vg" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD6xz" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD6xV" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD6yu" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6yZ" role="lcghm">
                <property role="lacIc" value="while ((c = *str++)) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6zY" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD6_Q" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD6_S" role="3izTki">
                <node concept="lc7rE" id="49eohyMD6An" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD6AI" role="lcghm">
                    <property role="lacIc" value="hash = ((hash &lt;&lt; 5) + hash) + c;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD6Bu" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD6Cn" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6D0" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6DJ" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD6Ea" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD6Ey" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD6Fw" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6Ge" role="lcghm">
                <property role="lacIc" value="return msgget(hash, 0666 | IPC_CREAT);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6Hd" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4KD" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4KE" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4KF" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4KG" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4IW" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3nA" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3oR" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3oS" role="lcghm">
            <property role="lacIc" value="envelope *create_envelope(char *sender, char *receiver, float priority) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD6J7" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3WS" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3WT" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3WU" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3WV" role="lcghm">
                <property role="lacIc" value="envelope *env;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6N6" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD6OV" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD6Pj" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD6NM" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6Oe" role="lcghm">
                <property role="lacIc" value="env = (envelope *)calloc(1, sizeof(envelope));" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6Q5" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD6Rv" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6S0" role="lcghm">
                <property role="lacIc" value="if (!env) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6SK" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD6Ue" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD6Ug" role="3izTki">
                <node concept="lc7rE" id="49eohyMD6UJ" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD6V6" role="lcghm">
                    <property role="lacIc" value="perror(&quot;calloc&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD6VQ" role="lcghm" />
                  <node concept="la8eA" id="49eohyMD6W_" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD6Xo" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD6Yl" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD6Z0" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD6ZJ" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD70t" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD70P" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD71Q" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD72A" role="lcghm">
                <property role="lacIc" value="env-&gt;priority = priority;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD73m" role="lcghm" />
              <node concept="la8eA" id="49eohyMD73O" role="lcghm">
                <property role="lacIc" value="env-&gt;sender = strdup(sender);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD74C" role="lcghm" />
              <node concept="la8eA" id="49eohyMD75q" role="lcghm">
                <property role="lacIc" value="env-&gt;receiver = strdup(receiver);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD76i" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD78D" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD77u" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7cH" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7dA" role="lcghm">
                <property role="lacIc" value="return env;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7fb" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4OL" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4OM" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4ON" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4OO" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4MZ" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3pr" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3qR" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3qS" role="lcghm">
            <property role="lacIc" value="payload *create_payload(char **strings, size_t size) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD6JO" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD3ZN" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD3ZO" role="3izTki">
            <node concept="lc7rE" id="49eohyMD3ZP" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD3ZQ" role="lcghm">
                <property role="lacIc" value="payload *p;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7iI" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7j9" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7jx" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7ke" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7kG" role="lcghm">
                <property role="lacIc" value="p = calloc(1, sizeof(payload));" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7ls" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD7lX" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7lY" role="lcghm">
                <property role="lacIc" value="if (!p) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7lZ" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD7nm" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD7nn" role="3izTki">
                <node concept="lc7rE" id="49eohyMD7no" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD7np" role="lcghm">
                    <property role="lacIc" value="perror(&quot;calloc&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD7nq" role="lcghm" />
                  <node concept="la8eA" id="49eohyMD7nr" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD7ns" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD7oz" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7o$" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7o_" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7oA" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7od" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7qF" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7rs" role="lcghm">
                <property role="lacIc" value="p-&gt;size = size;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7sc" role="lcghm" />
              <node concept="la8eA" id="49eohyMD7sE" role="lcghm">
                <property role="lacIc" value="p-&gt;strings = strings;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7tu" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7tX" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7un" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7vS" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7wK" role="lcghm">
                <property role="lacIc" value="return p;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7xJ" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7lN" role="3cqZAp" />
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4SU" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4SV" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4SW" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4SX" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4QE" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3rv" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3t3" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3t4" role="lcghm">
            <property role="lacIc" value="msgbuf create_message(envelope *env, payload *p, int mtype) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD6Kx" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD42S" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD42T" role="3izTki">
            <node concept="lc7rE" id="49eohyMD42U" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD42V" role="lcghm">
                <property role="lacIc" value="message *m;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7$0" role="lcghm" />
              <node concept="la8eA" id="49eohyMD7$I" role="lcghm">
                <property role="lacIc" value="msgbuf buf;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7A4" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7AQ" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7Bg" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7BL" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7Ch" role="lcghm">
                <property role="lacIc" value="m = calloc(1, sizeof(message));" />
                <property role="ldcpH" value="true" />
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD7DG" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7DH" role="lcghm">
                <property role="lacIc" value="if (!m) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7DI" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD7Ei" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD7Ej" role="3izTki">
                <node concept="lc7rE" id="49eohyMD7Ek" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD7El" role="lcghm">
                    <property role="lacIc" value="perror(&quot;calloc&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD7Em" role="lcghm" />
                  <node concept="la8eA" id="49eohyMD7En" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD7Eo" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD7Fv" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7Fw" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7Fx" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7Fy" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7F9" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7GC" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7Hp" role="lcghm">
                <property role="lacIc" value="m-&gt;envelope = env;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7IZ" role="lcghm" />
              <node concept="la8eA" id="49eohyMD7JH" role="lcghm">
                <property role="lacIc" value="m-&gt;payload = p;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7Kw" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7Li" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7LG" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7MX" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7NP" role="lcghm">
                <property role="lacIc" value="buf.msg = m;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7O_" role="lcghm" />
              <node concept="la8eA" id="49eohyMD7Pj" role="lcghm">
                <property role="lacIc" value="buf.mtype = mtype;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7Q7" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD7QT" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD7Rj" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD7SM" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD7TL" role="lcghm">
                <property role="lacIc" value="return buf;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7VW" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD4Xt" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD4Xu" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD4Xv" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD4Xw" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49eohyMD4Vh" role="3cqZAp" />
        <node concept="3clFbH" id="49eohyMD3u2" role="3cqZAp" />
        <node concept="lc7rE" id="49eohyMD3vF" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD3vG" role="lcghm">
            <property role="lacIc" value="strings_array *get_actors(char *actor_name) {" />
          </node>
          <node concept="l8MVK" id="49eohyMD6KV" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMD467" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMD468" role="3izTki">
            <node concept="lc7rE" id="49eohyMD469" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD46a" role="lcghm">
                <property role="lacIc" value="int mqid, ret;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD7Yw" role="lcghm" />
              <node concept="la8eA" id="49eohyMD7Ze" role="lcghm">
                <property role="lacIc" value="msgbuf rec_buf;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD80i" role="lcghm" />
              <node concept="la8eA" id="4PfcJeiDlla" role="lcghm">
                <property role="lacIc" value="strings_array *list;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="4PfcJeiDlAm" role="lcghm" />
              <node concept="l8MVK" id="4PfcJeiDlAX" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD81b" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD81W" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD82s" role="lcghm">
                <property role="lacIc" value="char *text = &quot;topology&quot;;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD83J" role="lcghm" />
              <node concept="la8eA" id="49eohyMD84t" role="lcghm">
                <property role="lacIc" value="payload *p = create_payload(&amp;text, 1);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD85g" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD862" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD86s" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD87b" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD87M" role="lcghm">
                <property role="lacIc" value="/* ENVELOPE CREATION */" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD895" role="lcghm" />
              <node concept="la8eA" id="49eohyMD89N" role="lcghm">
                <property role="lacIc" value="envelope *env = create_envelope(actor_name, &quot;receptionist&quot;, 5.0);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8aA" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD8b5" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD8dh" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD8eu" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8fc" role="lcghm">
                <property role="lacIc" value="/* MESSAGE CREATION */" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8gy" role="lcghm" />
              <node concept="la8eA" id="49eohyMD8h0" role="lcghm">
                <property role="lacIc" value="msgbuf buf = create_message(env, p, 1);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8hN" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD8hZ" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD8is" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD8jB" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8kt" role="lcghm">
                <property role="lacIc" value="/* SEND MESSAGE */" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8lv" role="lcghm" />
              <node concept="la8eA" id="49eohyMD8md" role="lcghm">
                <property role="lacIc" value="mqid = get_mqid(&quot;receptionist&quot;);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8n0" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD8od" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8p7" role="lcghm">
                <property role="lacIc" value="ret = msgsnd(mqid, (void *)&amp;buf, sizeof(buf.msg), 0);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8pQ" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49eohyMD8r3" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8r4" role="lcghm">
                <property role="lacIc" value="if (ret == -1) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8r5" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD8s4" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD8s5" role="3izTki">
                <node concept="lc7rE" id="49eohyMD8s6" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD8s7" role="lcghm">
                    <property role="lacIc" value="perror(&quot;msgsnd&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD8s8" role="lcghm" />
                  <node concept="la8eA" id="49eohyMD8s9" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD8sa" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD8tm" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8tn" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8to" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD8tp" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD8wo" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD8yk" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8zx" role="lcghm">
                <property role="lacIc" value="/* GET RESPONSE */" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8$z" role="lcghm" />
              <node concept="la8eA" id="49eohyMD8_h" role="lcghm">
                <property role="lacIc" value="ret = msgrcv(get_mqid(actor_name), (void *)&amp;rec_buf, sizeof(rec_buf.msg), 2, 0);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8A4" role="lcghm" />
              <node concept="l8MVK" id="49eohyMD8AQ" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMD8Bg" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMD8DE" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8EY" role="lcghm">
                <property role="lacIc" value="if (rec_buf.msg-&gt;payload-&gt;size == -1) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8FH" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMD8Hk" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMD8Hm" role="3izTki">
                <node concept="lc7rE" id="49eohyMD8ID" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD8J0" role="lcghm">
                    <property role="lacIc" value="printf(&quot;[%s] This actor has not outcoming links in topology&quot;, actor_name);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD8JZ" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMG7NN" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMG7Of" role="lcghm">
                    <property role="lacIc" value="puts(&quot;&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMG7Qq" role="lcghm" />
                  <node concept="l8MVK" id="4PfcJeiKmbT" role="lcghm" />
                </node>
                <node concept="3clFbH" id="4PfcJeiDloc" role="3cqZAp" />
                <node concept="lc7rE" id="4PfcJeiDlp7" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDlp8" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;payload);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlp9" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDlpa" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope-&gt;sender);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlpb" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDlpc" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope-&gt;receiver);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlpd" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDlpe" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlpf" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDlpg" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlph" role="lcghm" />
                  <node concept="l8MVK" id="4PfcJeiDlsS" role="lcghm" />
                </node>
                <node concept="lc7rE" id="4PfcJeiDlqk" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDlr0" role="lcghm">
                    <property role="lacIc" value="return NULL;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlsi" role="lcghm" />
                  <node concept="l8MVK" id="4PfcJeiKmcC" role="lcghm" />
                </node>
                <node concept="3clFbH" id="4PfcJeiDlok" role="3cqZAp" />
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD8LF" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD8N7" role="lcghm">
                <property role="lacIc" value="} else {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD8NQ" role="lcghm" />
              <node concept="l8MVK" id="4PfcJeiKmdn" role="lcghm" />
            </node>
            <node concept="3clFbH" id="4PfcJeiDlII" role="3cqZAp" />
            <node concept="3izx1p" id="7fAv2aKtrBJ" role="3cqZAp">
              <node concept="3clFbS" id="7fAv2aKtrBL" role="3izTki">
                <node concept="lc7rE" id="7fAv2aKozQs" role="3cqZAp">
                  <node concept="la8eA" id="7fAv2aKozTt" role="lcghm">
                    <property role="lacIc" value="list = malloc(sizeof(strings_array));" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="7fAv2aKozX7" role="lcghm" />
                </node>
                <node concept="lc7rE" id="7fAv2aKo$9e" role="3cqZAp">
                  <node concept="la8eA" id="7fAv2aKo$ci" role="lcghm">
                    <property role="lacIc" value="if (!list) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="7fAv2aKo$ea" role="lcghm" />
                </node>
                <node concept="3izx1p" id="7fAv2aKo$hx" role="3cqZAp">
                  <node concept="3clFbS" id="7fAv2aKo$hz" role="3izTki">
                    <node concept="lc7rE" id="7fAv2aKo$k_" role="3cqZAp">
                      <node concept="la8eA" id="7fAv2aKo$kW" role="lcghm">
                        <property role="lacIc" value="perror(&quot;malloc&quot;);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="7fAv2aKo$mR" role="lcghm" />
                      <node concept="la8eA" id="7fAv2aKo$n_" role="lcghm">
                        <property role="lacIc" value="exit(EXIT_FAILURE);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="7fAv2aKo$pe" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="7fAv2aKo$sI" role="3cqZAp">
                  <node concept="la8eA" id="7fAv2aKo$vD" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="7fAv2aKo$wo" role="lcghm" />
                  <node concept="l8MVK" id="7fAv2aKo$wN" role="lcghm" />
                </node>
                <node concept="3clFbH" id="7fAv2aKtrQl" role="3cqZAp" />
                <node concept="lc7rE" id="7fAv2aKo$Cu" role="3cqZAp">
                  <node concept="la8eA" id="7fAv2aKo$FL" role="lcghm">
                    <property role="lacIc" value="list-&gt;size = rec_buf.msg-&gt;payload-&gt;size;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="7fAv2aKo$Kk" role="lcghm" />
                </node>
                <node concept="lc7rE" id="4PfcJeiDlOq" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDlQA" role="lcghm">
                    <property role="lacIc" value="list-&gt;strings = malloc(list-&gt;size * sizeof(char *));" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlRA" role="lcghm" />
                </node>
                <node concept="lc7rE" id="4PfcJeiDlUo" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDlWB" role="lcghm">
                    <property role="lacIc" value="if (!list-&gt;strings) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDlZ5" role="lcghm" />
                </node>
                <node concept="3izx1p" id="4PfcJeiDm1B" role="3cqZAp">
                  <node concept="3clFbS" id="4PfcJeiDm1D" role="3izTki">
                    <node concept="lc7rE" id="4PfcJeiDm3Q" role="3cqZAp">
                      <node concept="la8eA" id="4PfcJeiDm4d" role="lcghm">
                        <property role="lacIc" value="perror(&quot;malloc&quot;);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="4PfcJeiDm6F" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="4PfcJeiDm7n" role="3cqZAp">
                      <node concept="la8eA" id="4PfcJeiDm7N" role="lcghm">
                        <property role="lacIc" value="exit(EXIT_FAILURE);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="4PfcJeiDmak" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4PfcJeiDmcY" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDmfo" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmpv" role="lcghm" />
                  <node concept="l8MVK" id="4PfcJeiDmgn" role="lcghm" />
                </node>
                <node concept="3clFbH" id="7fAv2aKtrI_" role="3cqZAp" />
                <node concept="lc7rE" id="4PfcJeiDmmE" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDmpR" role="lcghm">
                    <property role="lacIc" value="for (int i = 0; i &lt; list-&gt;size; i++) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmqR" role="lcghm" />
                </node>
                <node concept="3izx1p" id="4PfcJeiDmtD" role="3cqZAp">
                  <node concept="3clFbS" id="4PfcJeiDmtF" role="3izTki">
                    <node concept="lc7rE" id="4PfcJeiDmw8" role="3cqZAp">
                      <node concept="la8eA" id="4PfcJeiDmwv" role="lcghm">
                        <property role="lacIc" value="list-&gt;strings[i] = strdup(rec_buf.msg-&gt;payload-&gt;strings[i]);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="4PfcJeiDmxc" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="4PfcJeiDmxS" role="3cqZAp">
                      <node concept="la8eA" id="4PfcJeiDmyU" role="lcghm">
                        <property role="lacIc" value="if (!list-&gt;strings[i]) {" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="4PfcJeiDmzD" role="lcghm" />
                    </node>
                    <node concept="3izx1p" id="4PfcJeiDm$o" role="3cqZAp">
                      <node concept="3clFbS" id="4PfcJeiDm$q" role="3izTki">
                        <node concept="lc7rE" id="4PfcJeiDm$O" role="3cqZAp">
                          <node concept="la8eA" id="4PfcJeiDm$S" role="lcghm">
                            <property role="lacIc" value="perror(&quot;strdup&quot;);" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="4PfcJeiDmAa" role="lcghm" />
                        </node>
                        <node concept="lc7rE" id="4PfcJeiDmAQ" role="3cqZAp">
                          <node concept="la8eA" id="4PfcJeiDmBi" role="lcghm">
                            <property role="lacIc" value="exit(EXIT_FAILURE);" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="4PfcJeiDmCR" role="lcghm" />
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="4PfcJeiDmDI" role="3cqZAp">
                      <node concept="la8eA" id="4PfcJeiDmEl" role="lcghm">
                        <property role="lacIc" value="}" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="4PfcJeiDmFk" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4PfcJeiRHnB" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiRHq_" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiRHr$" role="lcghm" />
                  <node concept="l8MVK" id="4PfcJeiRHrZ" role="lcghm" />
                </node>
                <node concept="3clFbH" id="7fAv2aKtsoe" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMD92E" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMD94k" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;payload-&gt;strings);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMD953" role="lcghm" />
                </node>
                <node concept="lc7rE" id="4PfcJeiDmJV" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDmJW" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;payload);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmJX" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDmJY" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope-&gt;sender);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmJZ" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDmK0" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope-&gt;receiver);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmK1" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDmK2" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmK3" role="lcghm" />
                  <node concept="la8eA" id="4PfcJeiDmK4" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDmK5" role="lcghm" />
                  <node concept="l8MVK" id="4PfcJeiDn4m" role="lcghm" />
                </node>
                <node concept="lc7rE" id="4PfcJeiDmYc" role="3cqZAp">
                  <node concept="la8eA" id="4PfcJeiDn12" role="lcghm">
                    <property role="lacIc" value="return list;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="4PfcJeiDn3w" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMD970" role="3cqZAp">
              <node concept="la8eA" id="49eohyMD98H" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMD99s" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMD51U" role="3cqZAp">
          <node concept="la8eA" id="49eohyMD51V" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMD51W" role="lcghm" />
          <node concept="l8MVK" id="49eohyMD51X" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49eohyMHl7v">
    <property role="3GE5qa" value="receptionist" />
    <ref role="WuzLi" to="o1mc:5Q93FfFZEV5" resolve="Receptionist" />
    <node concept="11bSqf" id="49eohyMHl7w" role="11c4hB">
      <node concept="3clFbS" id="49eohyMHl7x" role="2VODD2">
        <node concept="lc7rE" id="49eohyMHl7X" role="3cqZAp">
          <node concept="la8eA" id="49eohyMHl8p" role="lcghm">
            <property role="lacIc" value="void *receptionist(void *arg) {" />
          </node>
          <node concept="l8MVK" id="49eohyMHl9A" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49eohyMHlaW" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMHlaY" role="3izTki">
            <node concept="lc7rE" id="49eohyMHlf0" role="3cqZAp">
              <node concept="la8eA" id="49eohyMHlfs" role="lcghm">
                <property role="lacIc" value="int ret, has_links;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHlgl" role="lcghm" />
              <node concept="la8eA" id="49eohyMHliW" role="lcghm">
                <property role="lacIc" value="msgbuf rec_buf;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHljU" role="lcghm" />
              <node concept="la8eA" id="49eohyMHlkQ" role="lcghm">
                <property role="lacIc" value="payload *p;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHllS" role="lcghm" />
              <node concept="la8eA" id="49eohyMHlmS" role="lcghm">
                <property role="lacIc" value="envelope *env;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHloi" role="lcghm" />
              <node concept="la8eA" id="49eohyMHlpm" role="lcghm">
                <property role="lacIc" value="msgbuf send_buf;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHlqO" role="lcghm" />
              <node concept="l8MVK" id="49eohyMHlr_" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMHlsa" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMHlsX" role="3cqZAp">
              <node concept="la8eA" id="49eohyMHltC" role="lcghm">
                <property role="lacIc" value="topology *map = (topology *)arg;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHluQ" role="lcghm" />
              <node concept="l8MVK" id="49eohyMHlvn" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49eohyMHlvO" role="3cqZAp" />
            <node concept="lc7rE" id="49eohyMHlwL" role="3cqZAp">
              <node concept="la8eA" id="49eohyMHlxx" role="lcghm">
                <property role="lacIc" value="while(1) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHl_D" role="lcghm" />
            </node>
            <node concept="3izx1p" id="49eohyMHlAL" role="3cqZAp">
              <node concept="3clFbS" id="49eohyMHlAN" role="3izTki">
                <node concept="lc7rE" id="49eohyMHlBx" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHlBX" role="lcghm">
                    <property role="lacIc" value="has_links = 0;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHlFN" role="lcghm" />
                  <node concept="l8MVK" id="49eohyMHlIO" role="lcghm" />
                </node>
                <node concept="3clFbH" id="49eohyMHlNv" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMHlHs" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHlHX" role="lcghm">
                    <property role="lacIc" value="ret = msgrcv(get_mqid(&quot;receptionist&quot;), (void *)&amp;rec_buf, sizeof(rec_buf.msg), 1, 0);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHlJK" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMHlM7" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHlM8" role="lcghm">
                    <property role="lacIc" value="if (ret == -1) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHlM9" role="lcghm" />
                </node>
                <node concept="3izx1p" id="49eohyMHlKE" role="3cqZAp">
                  <node concept="3clFbS" id="49eohyMHlKF" role="3izTki">
                    <node concept="lc7rE" id="49eohyMHlKG" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMHlKH" role="lcghm">
                        <property role="lacIc" value="perror(&quot;msgrcv&quot;);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHlKI" role="lcghm" />
                      <node concept="la8eA" id="49eohyMHlKJ" role="lcghm">
                        <property role="lacIc" value="exit(EXIT_FAILURE);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHlKK" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="49eohyMHlWG" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHlWH" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHlWI" role="lcghm" />
                  <node concept="l8MVK" id="49eohyMHlWJ" role="lcghm" />
                </node>
                <node concept="3clFbH" id="49eohyMHlYF" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMHlZO" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHm0E" role="lcghm">
                    <property role="lacIc" value="env = create_envelope(&quot;receptionist&quot;, rec_buf.msg-&gt;envelope-&gt;sender, 0.0);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHm1$" role="lcghm" />
                  <node concept="l8MVK" id="49eohyMHm3e" role="lcghm" />
                </node>
                <node concept="3clFbH" id="49eohyMHm20" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMHm3F" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHm4_" role="lcghm">
                    <property role="lacIc" value="for (size_t i = 0; i &lt; map-&gt;size; i++) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHm5v" role="lcghm" />
                </node>
                <node concept="3izx1p" id="49eohyMHm6L" role="3cqZAp">
                  <node concept="3clFbS" id="49eohyMHm6N" role="3izTki">
                    <node concept="lc7rE" id="49eohyMHm7G" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMHm88" role="lcghm">
                        <property role="lacIc" value="if (!strcmp(rec_buf.msg-&gt;envelope-&gt;sender, map-&gt;entries[i].key)) {" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHm9l" role="lcghm" />
                    </node>
                    <node concept="3izx1p" id="49eohyMHmab" role="3cqZAp">
                      <node concept="3clFbS" id="49eohyMHmad" role="3izTki">
                        <node concept="lc7rE" id="49eohyMHmg9" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmg_" role="lcghm">
                            <property role="lacIc" value="has_links = 1;" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmiR" role="lcghm" />
                          <node concept="l8MVK" id="49eohyMHmjM" role="lcghm" />
                        </node>
                        <node concept="3clFbH" id="49eohyMHmkf" role="3cqZAp" />
                        <node concept="lc7rE" id="49eohyMHmkM" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmll" role="lcghm">
                            <property role="lacIc" value="char **strings = malloc(map-&gt;entries[i].values.size * sizeof(char *));" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmmz" role="lcghm" />
                        </node>
                        <node concept="lc7rE" id="49eohyMHmnu" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmnv" role="lcghm">
                            <property role="lacIc" value="if (!strings) {" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmnw" role="lcghm" />
                        </node>
                        <node concept="3izx1p" id="49eohyMHmo8" role="3cqZAp">
                          <node concept="3clFbS" id="49eohyMHmo9" role="3izTki">
                            <node concept="lc7rE" id="49eohyMHmoa" role="3cqZAp">
                              <node concept="la8eA" id="49eohyMHmob" role="lcghm">
                                <property role="lacIc" value="perror(&quot;malloc&quot;);" />
                                <property role="ldcpH" value="true" />
                              </node>
                              <node concept="l8MVK" id="49eohyMHmoc" role="lcghm" />
                              <node concept="la8eA" id="49eohyMHmod" role="lcghm">
                                <property role="lacIc" value="exit(EXIT_FAILURE);" />
                                <property role="ldcpH" value="true" />
                              </node>
                              <node concept="l8MVK" id="49eohyMHmoe" role="lcghm" />
                            </node>
                          </node>
                        </node>
                        <node concept="lc7rE" id="49eohyMHmp3" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmp4" role="lcghm">
                            <property role="lacIc" value="}" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmp5" role="lcghm" />
                          <node concept="l8MVK" id="49eohyMHmp6" role="lcghm" />
                        </node>
                        <node concept="3clFbH" id="49eohyMHmst" role="3cqZAp" />
                        <node concept="lc7rE" id="49eohyMHmtA" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmus" role="lcghm">
                            <property role="lacIc" value="for (size_t j = 0; j &lt; map-&gt;entries[i].values.size; j++) {" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmvE" role="lcghm" />
                        </node>
                        <node concept="3izx1p" id="49eohyMHmwS" role="3cqZAp">
                          <node concept="3clFbS" id="49eohyMHmwU" role="3izTki">
                            <node concept="lc7rE" id="49eohyMHmzy" role="3cqZAp">
                              <node concept="la8eA" id="49eohyMHmzY" role="lcghm">
                                <property role="lacIc" value="strings[j] = map-&gt;entries[i].values.strings[j];" />
                                <property role="ldcpH" value="true" />
                              </node>
                              <node concept="l8MVK" id="49eohyMHm$R" role="lcghm" />
                            </node>
                          </node>
                        </node>
                        <node concept="lc7rE" id="49eohyMHmyy" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmyz" role="lcghm">
                            <property role="lacIc" value="}" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmy$" role="lcghm" />
                          <node concept="l8MVK" id="49eohyMHm_p" role="lcghm" />
                        </node>
                        <node concept="3clFbH" id="49eohyMHmxI" role="3cqZAp" />
                        <node concept="lc7rE" id="49eohyMHmAM" role="3cqZAp">
                          <node concept="la8eA" id="49eohyMHmBP" role="lcghm">
                            <property role="lacIc" value="p = create_payload(strings, map-&gt;entries[i].values.size);" />
                            <property role="ldcpH" value="true" />
                          </node>
                          <node concept="l8MVK" id="49eohyMHmCI" role="lcghm" />
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="49eohyMHmb5" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMHmbC" role="lcghm">
                        <property role="lacIc" value="}" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHmcx" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="49eohyMHmdX" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHmdY" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHmdZ" role="lcghm" />
                  <node concept="l8MVK" id="49eohyMHmHz" role="lcghm" />
                </node>
                <node concept="3clFbH" id="49eohyMHmE6" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMHmI0" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHmJN" role="lcghm">
                    <property role="lacIc" value="if (!has_links) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHmKH" role="lcghm" />
                </node>
                <node concept="3izx1p" id="49eohyMHmMS" role="3cqZAp">
                  <node concept="3clFbS" id="49eohyMHmMU" role="3izTki">
                    <node concept="lc7rE" id="49eohyMHmUc" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMHmUC" role="lcghm">
                        <property role="lacIc" value="printf(&quot;[RECEPTIONIST] the requesting actor %s does not have outcoming links&quot;, rec_buf.msg-&gt;envelope-&gt;sender);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHmVx" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="49eohyMJOqo" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMJOqZ" role="lcghm">
                        <property role="lacIc" value="puts(&quot;&quot;);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyML2f8" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="49eohyMHmWn" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMHmWS" role="lcghm">
                        <property role="lacIc" value="char *text = &quot;No linked actors&quot;;" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHmY6" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="49eohyMHmYZ" role="3cqZAp">
                      <node concept="la8eA" id="49eohyMHmZz" role="lcghm">
                        <property role="lacIc" value="p = create_payload(&amp;text, -1);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="49eohyMHn0q" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="49eohyMHmQs" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHmSk" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHmTd" role="lcghm" />
                  <node concept="l8MVK" id="49eohyMHmTI" role="lcghm" />
                </node>
                <node concept="3clFbH" id="49eohyMHn0Q" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMHn4N" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHn6T" role="lcghm">
                    <property role="lacIc" value="send_buf = create_message(env, p, 2);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHn7N" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMHnah" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHncq" role="lcghm">
                    <property role="lacIc" value="msgsnd(get_mqid(env-&gt;receiver), (void *)&amp;send_buf, sizeof(send_buf.msg), 0);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHndk" role="lcghm" />
                  <node concept="l8MVK" id="49eohyMHnec" role="lcghm" />
                </node>
                <node concept="3clFbH" id="49eohyMHneD" role="3cqZAp" />
                <node concept="lc7rE" id="49eohyMHniy" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHnkK" role="lcghm">
                    <property role="lacIc" value="free(rec_buf.msg-&gt;payload);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="49eohyMHnlY" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMHno$" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHnqP" role="lcghm">
                    <property role="ldcpH" value="true" />
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope-&gt;sender);" />
                  </node>
                  <node concept="l8MVK" id="49eohyML2fC" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMHnua" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHnub" role="lcghm">
                    <property role="ldcpH" value="true" />
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope-&gt;receiver);" />
                  </node>
                  <node concept="l8MVK" id="49eohyML2g8" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMHnyn" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHnyo" role="lcghm">
                    <property role="ldcpH" value="true" />
                    <property role="lacIc" value="free(rec_buf.msg-&gt;envelope);" />
                  </node>
                  <node concept="l8MVK" id="49eohyML2gZ" role="lcghm" />
                </node>
                <node concept="lc7rE" id="49eohyMHnAj" role="3cqZAp">
                  <node concept="la8eA" id="49eohyMHnAk" role="lcghm">
                    <property role="ldcpH" value="true" />
                    <property role="lacIc" value="free(rec_buf.msg);" />
                  </node>
                  <node concept="l8MVK" id="49eohyML2hQ" role="lcghm" />
                  <node concept="l8MVK" id="7fAv2aKC4_w" role="lcghm" />
                </node>
                <node concept="3clFbH" id="7fAv2aKC4_X" role="3cqZAp" />
              </node>
            </node>
            <node concept="lc7rE" id="49eohyMHlD8" role="3cqZAp">
              <node concept="la8eA" id="49eohyMHlDZ" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="49eohyMHlES" role="lcghm" />
              <node concept="l8MVK" id="7fAv2aKC4Iy" role="lcghm" />
            </node>
            <node concept="3clFbH" id="7fAv2aKACQj" role="3cqZAp" />
            <node concept="3clFbH" id="7fAv2aKACyj" role="3cqZAp" />
          </node>
        </node>
        <node concept="lc7rE" id="49eohyMHlbQ" role="3cqZAp">
          <node concept="la8eA" id="49eohyMHlcp" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49eohyMHldi" role="lcghm" />
          <node concept="l8MVK" id="49eohyMHlea" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49eohyMPVmy">
    <property role="3GE5qa" value="actions" />
    <ref role="WuzLi" to="o1mc:1enjyq1qgdi" resolve="GetActorsFromReceptionist" />
    <node concept="11bSqf" id="49eohyMPVmz" role="11c4hB">
      <node concept="3clFbS" id="49eohyMPVm$" role="2VODD2">
        <node concept="3clFbJ" id="49eohyMUTEf" role="3cqZAp">
          <node concept="3clFbS" id="49eohyMUTEh" role="3clFbx">
            <node concept="lc7rE" id="49eohyMSpEB" role="3cqZAp">
              <node concept="l8MVK" id="49eohyMUUNE" role="lcghm" />
              <node concept="la8eA" id="4PfcJeiBQhc" role="lcghm">
                <property role="lacIc" value="strings_array *" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l9hG8" id="4PfcJeiBQiO" role="lcghm">
                <node concept="2OqwBi" id="4PfcJeiBTvy" role="lb14g">
                  <node concept="2OqwBi" id="4PfcJeiBQsR" role="2Oq$k0">
                    <node concept="117lpO" id="4PfcJeiBQjq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4PfcJeiBSPe" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:I$NcBk5Q7" resolve="actorReferences" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="4PfcJeiBTGu" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="49eohyMSpF3" role="lcghm">
                <property role="lacIc" value=" = get_actors(name);" />
              </node>
              <node concept="l8MVK" id="7fAv2aKxPwe" role="lcghm" />
              <node concept="l8MVK" id="7fAv2aKxPxs" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="49eohyMXrqg" role="3clFbw">
            <node concept="2OqwBi" id="49eohyMUTQn" role="2Oq$k0">
              <node concept="117lpO" id="49eohyMUTFt" role="2Oq$k0" />
              <node concept="2Xjw5R" id="49eohyMXr7W" role="2OqNvi">
                <node concept="1xMEDy" id="49eohyMXr7Y" role="1xVPHs">
                  <node concept="chp4Y" id="49eohyMXrae" role="ri$Ld">
                    <ref role="cht4Q" to="tpee:gDDw8bY" resolve="ForStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="49eohyMXsd5" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="49eohyMUUO_" role="9aQIa">
            <node concept="3clFbS" id="49eohyMUUOA" role="9aQI4">
              <node concept="lc7rE" id="49eohyMUUPw" role="3cqZAp">
                <node concept="la8eA" id="4PfcJeiBTOk" role="lcghm">
                  <property role="lacIc" value="strings_array *" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l9hG8" id="4PfcJeiBTOK" role="lcghm">
                  <node concept="2OqwBi" id="4PfcJeiBTOL" role="lb14g">
                    <node concept="2OqwBi" id="4PfcJeiBTOM" role="2Oq$k0">
                      <node concept="117lpO" id="4PfcJeiBTON" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4PfcJeiBTOO" role="2OqNvi">
                        <ref role="3Tt5mk" to="o1mc:I$NcBk5Q7" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4PfcJeiBTOP" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="49eohyMUUPx" role="lcghm">
                  <property role="lacIc" value=" = get_actors(name);" />
                </node>
                <node concept="l8MVK" id="3QReeejaNEb" role="lcghm" />
                <node concept="l8MVK" id="7fAv2aKxPtZ" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3QReeeiRcti">
    <property role="3GE5qa" value="envelope" />
    <ref role="WuzLi" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
    <node concept="11bSqf" id="3QReeeiRctj" role="11c4hB">
      <node concept="3clFbS" id="3QReeeiRctk" role="2VODD2">
        <node concept="lc7rE" id="3QReeej82Us" role="3cqZAp">
          <node concept="la8eA" id="3QReeej82X0" role="lcghm">
            <property role="lacIc" value="/* ENVELOPE CREATION */" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeej85vL" role="lcghm" />
        </node>
        <node concept="3clFbH" id="4PfcJeiNagC" role="3cqZAp" />
        <node concept="3clFbJ" id="4PfcJeiNbfC" role="3cqZAp">
          <node concept="3clFbS" id="4PfcJeiNbfE" role="3clFbx">
            <node concept="lc7rE" id="4PfcJeiNcd8" role="3cqZAp">
              <node concept="la8eA" id="4PfcJeiNcd9" role="lcghm">
                <property role="lacIc" value="envelope *" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l9hG8" id="4PfcJeiNcda" role="lcghm">
                <node concept="2OqwBi" id="4PfcJeiNcdb" role="lb14g">
                  <node concept="117lpO" id="4PfcJeiNcdc" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4PfcJeiNcdd" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="4PfcJeiNcde" role="lcghm">
                <property role="lacIc" value=" = create_envelope(name, " />
              </node>
              <node concept="l9hG8" id="4PfcJeiNcdf" role="lcghm">
                <node concept="2OqwBi" id="7fAv2aKznhD" role="lb14g">
                  <node concept="2OqwBi" id="7fAv2aKzmKX" role="2Oq$k0">
                    <node concept="2OqwBi" id="7fAv2aKzlTn" role="2Oq$k0">
                      <node concept="117lpO" id="7fAv2aKzlIO" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="7fAv2aKzmw0" role="2OqNvi">
                        <node concept="1xMEDy" id="7fAv2aKzmw2" role="1xVPHs">
                          <node concept="chp4Y" id="7fAv2aKzmz2" role="ri$Ld">
                            <ref role="cht4Q" to="o1mc:40skb7_QZlB" resolve="ForEachActorReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="7fAv2aKzn4J" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:40skb7_QZlC" resolve="actorReferenceList" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7fAv2aKznvb" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="4PfcJeiNcdl" role="lcghm">
                <property role="lacIc" value="-&gt;strings[i], " />
              </node>
              <node concept="l9hG8" id="4PfcJeiNcdm" role="lcghm">
                <node concept="2OqwBi" id="4PfcJeiNcdn" role="lb14g">
                  <node concept="117lpO" id="4PfcJeiNcdo" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4PfcJeiNcdp" role="2OqNvi">
                    <ref role="3TsBF5" to="o1mc:6F9Ho3OqddR" resolve="priority" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="4PfcJeiNcdq" role="lcghm">
                <property role="lacIc" value=");" />
              </node>
              <node concept="l8MVK" id="4PfcJeiNcdr" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="4PfcJeiOBmz" role="3clFbw">
            <node concept="2OqwBi" id="4PfcJeiNbu1" role="2Oq$k0">
              <node concept="117lpO" id="4PfcJeiNbhN" role="2Oq$k0" />
              <node concept="2Xjw5R" id="4PfcJeiOB1o" role="2OqNvi">
                <node concept="1xMEDy" id="4PfcJeiOB1q" role="1xVPHs">
                  <node concept="chp4Y" id="4PfcJeiOB64" role="ri$Ld">
                    <ref role="cht4Q" to="o1mc:40skb7_QZlB" resolve="ForEachActorReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="4PfcJeiOC46" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="4PfcJeiNcod" role="9aQIa">
            <node concept="3clFbS" id="4PfcJeiNcoe" role="9aQI4">
              <node concept="lc7rE" id="3QReeeiRctJ" role="3cqZAp">
                <node concept="la8eA" id="3QReeeiRcub" role="lcghm">
                  <property role="lacIc" value="envelope *" />
                  <property role="ldcpH" value="true" />
                </node>
                <node concept="l9hG8" id="3QReeeiRcwt" role="lcghm">
                  <node concept="2OqwBi" id="3QReeeiRcF$" role="lb14g">
                    <node concept="117lpO" id="3QReeeiRcx1" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3QReeeiReIl" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="3QReeeiReMQ" role="lcghm">
                  <property role="lacIc" value=" = create_envelope(name, " />
                </node>
                <node concept="l9hG8" id="3QReeeiRfzO" role="lcghm">
                  <node concept="2OqwBi" id="3QReeeiRh3Z" role="lb14g">
                    <node concept="2OqwBi" id="3QReeeiRg$E" role="2Oq$k0">
                      <node concept="117lpO" id="3QReeeiRgq7" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3QReeeiRgQo" role="2OqNvi">
                        <ref role="3Tt5mk" to="o1mc:25QEYlOdAqb" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3QReeeiRhgV" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="3QReeeiRhlT" role="lcghm">
                  <property role="lacIc" value=", " />
                </node>
                <node concept="l9hG8" id="3QReeeiRhpY" role="lcghm">
                  <node concept="2OqwBi" id="3QReeeiRhs_" role="lb14g">
                    <node concept="117lpO" id="3QReeeiRhs8" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3QReeeiRhOz" role="2OqNvi">
                      <ref role="3TsBF5" to="o1mc:6F9Ho3OqddR" resolve="priority" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="3QReeeiRhRN" role="lcghm">
                  <property role="lacIc" value=");" />
                </node>
                <node concept="l8MVK" id="3QReeeiRhX6" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4PfcJeiAlZK" role="3cqZAp">
          <node concept="l8MVK" id="4PfcJeiAm1M" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3QReeeiRi4$">
    <property role="3GE5qa" value="payload" />
    <ref role="WuzLi" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
    <node concept="11bSqf" id="3QReeeiRi4_" role="11c4hB">
      <node concept="3clFbS" id="3QReeeiRi4A" role="2VODD2">
        <node concept="3clFbH" id="4PfcJeiRu34" role="3cqZAp" />
        <node concept="3cpWs8" id="4PfcJeiRuln" role="3cqZAp">
          <node concept="3cpWsn" id="4PfcJeiRulq" role="3cpWs9">
            <property role="TrG5h" value="payload_name" />
            <node concept="17QB3L" id="4PfcJeiRull" role="1tU5fm" />
            <node concept="3cpWs3" id="4PfcJeiRw$9" role="33vP2m">
              <node concept="Xl_RD" id="4PfcJeiRwOB" role="3uHU7w">
                <property role="Xl_RC" value="_strings" />
              </node>
              <node concept="2OqwBi" id="4PfcJeiRuGQ" role="3uHU7B">
                <node concept="117lpO" id="4PfcJeiRuw_" role="2Oq$k0" />
                <node concept="3TrcHB" id="4PfcJeiRv0f" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4PfcJeiRu4o" role="3cqZAp" />
        <node concept="lc7rE" id="3QReeej856D" role="3cqZAp">
          <node concept="la8eA" id="3QReeej85f9" role="lcghm">
            <property role="lacIc" value="/* PAYLOAD CREATION */" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeej85qy" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3QReeeiRi51" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiRi5t" role="lcghm">
            <property role="lacIc" value="char **" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="3QReeeiX8e_" role="lcghm">
            <node concept="37vLTw" id="4PfcJeiRxbd" role="lb14g">
              <ref role="3cqZAo" node="4PfcJeiRulq" resolve="payload_name" />
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiX8OB" role="lcghm">
            <property role="lacIc" value=" = malloc(sizeof(char *) * " />
          </node>
          <node concept="l9hG8" id="3QReeeiX8WK" role="lcghm">
            <node concept="2YIFZM" id="3QReeeiXgQk" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="3QReeeiXlgJ" role="37wK5m">
                <node concept="2OqwBi" id="3QReeeiXj9N" role="2Oq$k0">
                  <node concept="117lpO" id="3QReeeiXiI0" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3QReeeiXjuH" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3QReeeiRi5S" resolve="strings" />
                  </node>
                </node>
                <node concept="34oBXx" id="3QReeeiXowV" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiXqnS" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="3QReeeiXqHP" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3QReeeiXqug" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiXqxb" role="lcghm">
            <property role="lacIc" value="if (!" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="4PfcJeiRyWL" role="lcghm">
            <node concept="37vLTw" id="4PfcJeiRz1I" role="lb14g">
              <ref role="3cqZAo" node="4PfcJeiRulq" resolve="payload_name" />
            </node>
          </node>
          <node concept="la8eA" id="4PfcJeiRz7e" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
          <node concept="l8MVK" id="3QReeeiXqFm" role="lcghm" />
        </node>
        <node concept="3izx1p" id="3QReeeiXqN$" role="3cqZAp">
          <node concept="3clFbS" id="3QReeeiXqNA" role="3izTki">
            <node concept="lc7rE" id="3QReeeiXqQw" role="3cqZAp">
              <node concept="la8eA" id="3QReeeiXqRn" role="lcghm">
                <property role="lacIc" value="perror(&quot;malloc&quot;);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="3QReeeiXqWx" role="lcghm" />
              <node concept="la8eA" id="3QReeeiXqX5" role="lcghm">
                <property role="lacIc" value="exit(EXIT_FAILURE);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="3QReeeiXr0R" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3QReeeiXsU7" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiXsUC" role="lcghm">
            <property role="lacIc" value="}" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="3QReeeiXsZP" role="lcghm" />
          <node concept="l8MVK" id="3QReeeiXt7j" role="lcghm" />
        </node>
        <node concept="3clFbH" id="3QReeeiXt9y" role="3cqZAp" />
        <node concept="2Gpval" id="3QReeeiXtd9" role="3cqZAp">
          <node concept="2GrKxI" id="3QReeeiXtdb" role="2Gsz3X">
            <property role="TrG5h" value="string" />
          </node>
          <node concept="2OqwBi" id="3QReeeiXtS$" role="2GsD0m">
            <node concept="117lpO" id="3QReeeiXtDZ" role="2Oq$k0" />
            <node concept="3Tsc0h" id="3QReeeiXuy6" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3QReeeiRi5S" resolve="strings" />
            </node>
          </node>
          <node concept="3clFbS" id="3QReeeiXtdf" role="2LFqv$">
            <node concept="lc7rE" id="3QReeeiXu$K" role="3cqZAp">
              <node concept="l9hG8" id="3QReeeiXuAj" role="lcghm">
                <property role="ld1Su" value="true" />
                <node concept="37vLTw" id="4PfcJeiRzew" role="lb14g">
                  <ref role="3cqZAo" node="4PfcJeiRulq" resolve="payload_name" />
                </node>
              </node>
              <node concept="la8eA" id="3QReeeiXuCq" role="lcghm">
                <property role="lacIc" value="[" />
              </node>
              <node concept="l9hG8" id="3QReeeiXuEQ" role="lcghm">
                <node concept="2YIFZM" id="3QReeeiXx1E" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="3QReeeiXxfW" role="37wK5m">
                    <node concept="2GrUjf" id="3QReeeiXx56" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3QReeeiXtdb" resolve="string" />
                    </node>
                    <node concept="2bSWHS" id="3QReeeiXxTD" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="3QReeeiXA02" role="lcghm">
                <property role="lacIc" value="] = &quot;" />
              </node>
              <node concept="l9hG8" id="3QReeeiXBRI" role="lcghm">
                <node concept="2GrUjf" id="3QReeeiXBW3" role="lb14g">
                  <ref role="2Gs0qQ" node="3QReeeiXtdb" resolve="string" />
                </node>
              </node>
              <node concept="la8eA" id="3QReeeiXC3c" role="lcghm">
                <property role="lacIc" value="&quot;;" />
              </node>
              <node concept="l8MVK" id="3QReeeiXCbS" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3QReeeiXClW" role="3cqZAp">
          <node concept="l8MVK" id="3QReeeiXCr_" role="lcghm" />
        </node>
        <node concept="lc7rE" id="3QReeeiXC_p" role="3cqZAp">
          <node concept="la8eA" id="3QReeeiXCF4" role="lcghm">
            <property role="lacIc" value="payload *" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="3QReeeiXCOD" role="lcghm">
            <node concept="2OqwBi" id="3QReeeiXD3_" role="lb14g">
              <node concept="117lpO" id="3QReeeiXCT2" role="2Oq$k0" />
              <node concept="3TrcHB" id="3QReeeiXDn2" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiXDsx" role="lcghm">
            <property role="lacIc" value=" = create_payload(" />
          </node>
          <node concept="l9hG8" id="3QReeeiXDLa" role="lcghm">
            <node concept="37vLTw" id="4PfcJeiRzgG" role="lb14g">
              <ref role="3cqZAo" node="4PfcJeiRulq" resolve="payload_name" />
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiXDZa" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="3QReeeiXEah" role="lcghm">
            <node concept="2YIFZM" id="3QReeeiXH3m" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="3QReeeiXLXh" role="37wK5m">
                <node concept="2OqwBi" id="3QReeeiXHnw" role="2Oq$k0">
                  <node concept="117lpO" id="3QReeeiXH53" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3QReeeiXHIB" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3QReeeiRi5S" resolve="strings" />
                  </node>
                </node>
                <node concept="34oBXx" id="3QReeeiXPb3" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3QReeeiXDBn" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="3QReeeiXPNy" role="lcghm" />
          <node concept="l8MVK" id="4PfcJeiAoKE" role="lcghm" />
        </node>
        <node concept="3clFbH" id="3QReeeiXt23" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3QReeej17S6">
    <property role="3GE5qa" value="payload" />
    <ref role="WuzLi" to="o1mc:3QReeeiTcTh" resolve="StringBody" />
    <node concept="11bSqf" id="3QReeej17S7" role="11c4hB">
      <node concept="3clFbS" id="3QReeej17S8" role="2VODD2">
        <node concept="lc7rE" id="3QReeej17Sz" role="3cqZAp">
          <node concept="l9hG8" id="3QReeej17SZ" role="lcghm">
            <node concept="2OqwBi" id="3QReeej1805" role="lb14g">
              <node concept="117lpO" id="3QReeej17Ty" role="2Oq$k0" />
              <node concept="3TrcHB" id="3QReeej187P" role="2OqNvi">
                <ref role="3TsBF5" to="o1mc:3QReeeiTcTi" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="40skb7A9VgN">
    <property role="3GE5qa" value="actor.actorReference" />
    <ref role="WuzLi" to="o1mc:40skb7_QZlB" resolve="ForEachActorReference" />
    <node concept="11bSqf" id="40skb7A9VgO" role="11c4hB">
      <node concept="3clFbS" id="40skb7A9VgP" role="2VODD2">
        <node concept="3clFbH" id="7fAv2aKwkYI" role="3cqZAp" />
        <node concept="lc7rE" id="7fAv2aKwl3n" role="3cqZAp">
          <node concept="la8eA" id="7fAv2aKwlhm" role="lcghm">
            <property role="lacIc" value="for (int i = 0; i &lt; " />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="7fAv2aKwll7" role="lcghm">
            <node concept="2OqwBi" id="7fAv2aKwnZE" role="lb14g">
              <node concept="2OqwBi" id="7fAv2aKwlwA" role="2Oq$k0">
                <node concept="117lpO" id="7fAv2aKwllF" role="2Oq$k0" />
                <node concept="3TrEf2" id="7fAv2aKwnMt" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:40skb7_QZlC" resolve="actorReferenceList" />
                </node>
              </node>
              <node concept="3TrcHB" id="7fAv2aKwocW" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7fAv2aKwogS" role="lcghm">
            <property role="lacIc" value="-&gt;size; i++) {" />
          </node>
          <node concept="l8MVK" id="7fAv2aKwooE" role="lcghm" />
        </node>
        <node concept="3izx1p" id="40skb7A9Zvg" role="3cqZAp">
          <node concept="3clFbS" id="40skb7A9Zvi" role="3izTki">
            <node concept="lc7rE" id="40skb7A9ZwQ" role="3cqZAp">
              <node concept="l9hG8" id="40skb7Aa00F" role="lcghm">
                <node concept="2OqwBi" id="40skb7Aa0c7" role="lb14g">
                  <node concept="117lpO" id="40skb7Aa01c" role="2Oq$k0" />
                  <node concept="3TrEf2" id="40skb7Aa0Qo" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMLFqrC" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="40skb7Aa14Y" role="3cqZAp">
          <node concept="la8eA" id="40skb7Aa176" role="lcghm">
            <property role="lacIc" value="}" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="40skb7Aa18j" role="lcghm" />
        </node>
        <node concept="3clFbH" id="7fAv2aKAeJB" role="3cqZAp" />
        <node concept="lc7rE" id="7fAv2aKAeZz" role="3cqZAp">
          <node concept="la8eA" id="7fAv2aKAf1g" role="lcghm">
            <property role="lacIc" value="free(" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="7fAv2aKAf2O" role="lcghm">
            <node concept="2OqwBi" id="7fAv2aKAg2t" role="lb14g">
              <node concept="2OqwBi" id="7fAv2aKAfej" role="2Oq$k0">
                <node concept="117lpO" id="7fAv2aKAf3o" role="2Oq$k0" />
                <node concept="3TrEf2" id="7fAv2aKAfS$" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:40skb7_QZlC" resolve="actorReferenceList" />
                </node>
              </node>
              <node concept="3TrcHB" id="7fAv2aKAgfJ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7fAv2aKAgh_" role="lcghm">
            <property role="lacIc" value="-&gt;strings);" />
          </node>
          <node concept="l8MVK" id="7fAv2aKAgkC" role="lcghm" />
        </node>
        <node concept="lc7rE" id="7fAv2aKAgnP" role="3cqZAp">
          <node concept="la8eA" id="7fAv2aKAgq9" role="lcghm">
            <property role="lacIc" value="free(" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="7fAv2aKAgs4" role="lcghm">
            <node concept="2OqwBi" id="7fAv2aKAh7S" role="lb14g">
              <node concept="2OqwBi" id="7fAv2aKAgBz" role="2Oq$k0">
                <node concept="117lpO" id="7fAv2aKAgsC" role="2Oq$k0" />
                <node concept="3TrEf2" id="7fAv2aKAgUF" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:40skb7_QZlC" resolve="actorReferenceList" />
                </node>
              </node>
              <node concept="3TrcHB" id="7fAv2aKAhla" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7fAv2aKAhp6" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="7fAv2aKAhrr" role="lcghm" />
          <node concept="l8MVK" id="7fAv2aKDzaM" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

