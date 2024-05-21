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
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
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
            <ref role="1rvKf6" node="2LRe1Vca2fm" resolve="init" />
          </node>
        </node>
        <node concept="3clFbH" id="518QUjC0Sh4" role="3cqZAp" />
        <node concept="lc7rE" id="2LRe1Vcc7Bx" role="3cqZAp">
          <node concept="l9S2W" id="2LRe1Vcc9el" role="lcghm">
            <node concept="2OqwBi" id="2LRe1Vcc9f1" role="lbANJ">
              <node concept="117lpO" id="2LRe1Vcc9eL" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2LRe1Vcc9gi" role="2OqNvi">
                <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1VciTDb" role="3cqZAp">
          <node concept="l8MVK" id="2LRe1VciTDT" role="lcghm" />
        </node>
        <node concept="3clFbH" id="2LRe1VciTEk" role="3cqZAp" />
        <node concept="lc7rE" id="2LRe1VcjBES" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcjBLZ" role="lcghm">
            <property role="lacIc" value="int main() {" />
          </node>
          <node concept="l8MVK" id="2LRe1VcjBUh" role="lcghm" />
        </node>
        <node concept="3izx1p" id="2LRe1VcjC57" role="3cqZAp">
          <node concept="3clFbS" id="2LRe1VcjC59" role="3izTki">
            <node concept="lc7rE" id="2LRe1Vcjtia" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjtrA" role="lcghm">
                <property role="lacIc" value="int num_threads = " />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l9hG8" id="2LRe1VciTKm" role="lcghm">
                <node concept="2YIFZM" id="2LRe1VciZBJ" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="2LRe1Vcj5Fl" role="37wK5m">
                    <node concept="2OqwBi" id="2LRe1Vcj2Db" role="2Oq$k0">
                      <node concept="117lpO" id="2LRe1Vcj1j$" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2LRe1Vcj2Ra" role="2OqNvi">
                        <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2LRe1VcjdQU" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="2LRe1Vcjx1O" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcjxep" role="lcghm" />
            </node>
            <node concept="lc7rE" id="2LRe1VciTFC" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VciTIn" role="lcghm">
                <property role="lacIc" value="pthread_t threads[num_threads];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcjxts" role="lcghm" />
            </node>
            <node concept="lc7rE" id="1g0n0JfjOr7" role="3cqZAp">
              <node concept="la8eA" id="1g0n0JfjOPK" role="lcghm">
                <property role="lacIc" value="int i;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="1g0n0JfjOR0" role="lcghm" />
            </node>
            <node concept="lc7rE" id="1g0n0Jfjf9$" role="3cqZAp">
              <node concept="la8eA" id="1g0n0Jfjfqd" role="lcghm">
                <property role="lacIc" value="int addresses[" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l9hG8" id="1g0n0Jfjkws" role="lcghm">
                <node concept="2YIFZM" id="1g0n0Jfjkwt" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="1g0n0Jfjkwu" role="37wK5m">
                    <node concept="2OqwBi" id="1g0n0Jfjkwv" role="2Oq$k0">
                      <node concept="117lpO" id="1g0n0Jfjkww" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1g0n0Jfjkwx" role="2OqNvi">
                        <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1g0n0Jfjkwy" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="1g0n0Jfjmvz" role="lcghm">
                <property role="lacIc" value="];" />
              </node>
              <node concept="l8MVK" id="1g0n0JfjKKa" role="lcghm" />
            </node>
            <node concept="2Gpval" id="1g0n0JfjAmJ" role="3cqZAp">
              <node concept="2GrKxI" id="1g0n0JfjAmL" role="2Gsz3X">
                <property role="TrG5h" value="actor" />
              </node>
              <node concept="2OqwBi" id="1g0n0JfjAQH" role="2GsD0m">
                <node concept="117lpO" id="1g0n0JfjAHV" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1g0n0JfjB2J" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                </node>
              </node>
              <node concept="3clFbS" id="1g0n0JfjAmP" role="2LFqv$">
                <node concept="lc7rE" id="1g0n0JfjB6v" role="3cqZAp">
                  <node concept="la8eA" id="1g0n0JfjB6V" role="lcghm">
                    <property role="lacIc" value="addresses[" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l9hG8" id="1g0n0JfjB9g" role="lcghm">
                    <node concept="2YIFZM" id="1g0n0JfjD7F" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="1g0n0JfjDwN" role="37wK5m">
                        <node concept="2GrUjf" id="1g0n0JfjDfd" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1g0n0JfjAmL" resolve="actor" />
                        </node>
                        <node concept="2bSWHS" id="1g0n0JfjElX" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="1g0n0JfjEI6" role="lcghm">
                    <property role="lacIc" value="] = " />
                  </node>
                  <node concept="l9hG8" id="1g0n0JfjEPG" role="lcghm">
                    <node concept="2YIFZM" id="1g0n0JfjGQf" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="1g0n0JfjHnp" role="37wK5m">
                        <node concept="2GrUjf" id="1g0n0JfjGYH" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1g0n0JfjAmL" resolve="actor" />
                        </node>
                        <node concept="3TrcHB" id="1g0n0JfjItZ" role="2OqNvi">
                          <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="1g0n0JfjKQi" role="lcghm">
                    <property role="lacIc" value=";" />
                  </node>
                  <node concept="l8MVK" id="1g0n0JfjKZr" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1g0n0JfkW3C" role="3cqZAp">
              <node concept="l8MVK" id="1g0n0JfkWq2" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC8ZeR" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC8ZAq" role="3cqZAp">
              <node concept="la8eA" id="518QUjC91L$" role="lcghm">
                <property role="lacIc" value="pthread_mutex_init(&amp;map_mutex, NULL);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC91ML" role="lcghm" />
              <node concept="l8MVK" id="518QUjC91ND" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC0YeP" role="3cqZAp" />
            <node concept="lc7rE" id="2LRe1VcjMr9" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjMxZ" role="lcghm">
                <property role="lacIc" value="map_item *map = malloc(sizeof(map_item)*SIZE);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcjMTD" role="lcghm" />
            </node>
            <node concept="lc7rE" id="2LRe1VcjOCl" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjQmk" role="lcghm">
                <property role="lacIc" value="if (!map) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcjQnd" role="lcghm" />
            </node>
            <node concept="3izx1p" id="2LRe1VcjS5$" role="3cqZAp">
              <node concept="3clFbS" id="2LRe1VcjS5A" role="3izTki">
                <node concept="lc7rE" id="2LRe1VcjScw" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1VcjScW" role="lcghm">
                    <property role="lacIc" value="perror(&quot;malloc&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1VcjSf_" role="lcghm" />
                </node>
                <node concept="lc7rE" id="2LRe1VcjSha" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1VcjShF" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1VcjSi$" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="2LRe1VcjU1q" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjU8x" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcjU9I" role="lcghm" />
              <node concept="l8MVK" id="2LRe1VcjUaA" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjCcaM6" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjCcb9N" role="3cqZAp">
              <node concept="la8eA" id="518QUjCcbvC" role="lcghm">
                <property role="lacIc" value="for (int i = 0; i &lt; SIZE; ++i) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjCcbwx" role="lcghm" />
            </node>
            <node concept="3izx1p" id="518QUjCcdG8" role="3cqZAp">
              <node concept="3clFbS" id="518QUjCcdGa" role="3izTki">
                <node concept="lc7rE" id="518QUjCce1W" role="3cqZAp">
                  <node concept="la8eA" id="518QUjCce2o" role="lcghm">
                    <property role="lacIc" value="pthread_mutex_init(&amp;map[i].mutex, NULL);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjCce3A" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="518QUjCcepR" role="3cqZAp">
              <node concept="la8eA" id="518QUjCceJN" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjCceLn" role="lcghm" />
            </node>
            <node concept="3clFbH" id="2LRe1VcjHKL" role="3cqZAp" />
            <node concept="2Gpval" id="518QUjC1bVc" role="3cqZAp">
              <node concept="2GrKxI" id="518QUjC1bVe" role="2Gsz3X">
                <property role="TrG5h" value="actor" />
              </node>
              <node concept="2OqwBi" id="518QUjC1clp" role="2GsD0m">
                <node concept="117lpO" id="518QUjC1ccW" role="2Oq$k0" />
                <node concept="3Tsc0h" id="518QUjC1cCn" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                </node>
              </node>
              <node concept="3clFbS" id="518QUjC1bVi" role="2LFqv$">
                <node concept="lc7rE" id="518QUjC1cG8" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC1cG$" role="lcghm">
                    <property role="lacIc" value="create_thread(addresses[" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l9hG8" id="518QUjC1cJg" role="lcghm">
                    <node concept="2YIFZM" id="518QUjC1h0t" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="518QUjC1hHy" role="37wK5m">
                        <node concept="2GrUjf" id="518QUjC1hhw" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="518QUjC1bVe" resolve="actor" />
                        </node>
                        <node concept="2bSWHS" id="518QUjC1k5V" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="518QUjC1kD7" role="lcghm">
                    <property role="lacIc" value="], map, " />
                  </node>
                  <node concept="l9hG8" id="518QUjC1kKM" role="lcghm">
                    <node concept="2OqwBi" id="518QUjC1kRI" role="lb14g">
                      <node concept="2GrUjf" id="518QUjC1kOo" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="518QUjC1bVe" resolve="actor" />
                      </node>
                      <node concept="3TrcHB" id="518QUjC1nxb" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="518QUjC1nEH" role="lcghm">
                    <property role="lacIc" value=", &amp;threads[" />
                  </node>
                  <node concept="l9hG8" id="518QUjC1pNW" role="lcghm">
                    <node concept="2YIFZM" id="518QUjC1pWi" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="518QUjC1qpU" role="37wK5m">
                        <node concept="2GrUjf" id="518QUjC1pZM" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="518QUjC1bVe" resolve="actor" />
                        </node>
                        <node concept="2bSWHS" id="518QUjC1rlY" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="518QUjC1rOA" role="lcghm">
                    <property role="lacIc" value="]);" />
                  </node>
                  <node concept="l8MVK" id="518QUjC6drB" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2LRe1VcjMyr" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC6e9j" role="3cqZAp">
              <node concept="l8MVK" id="518QUjC6euW" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC6dug" role="3cqZAp" />
            <node concept="lc7rE" id="2LRe1VckDQF" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VckEnu" role="lcghm">
                <property role="lacIc" value="for (int i = 0; i &lt; num_threads; i++) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VckEpK" role="lcghm" />
            </node>
            <node concept="3izx1p" id="2LRe1VckG$u" role="3cqZAp">
              <node concept="3clFbS" id="2LRe1VckG$w" role="3izTki">
                <node concept="lc7rE" id="2LRe1VckGOW" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1VckGPo" role="lcghm">
                    <property role="lacIc" value="pthread_join(threads[i], NULL);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1VckGQe" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="2LRe1VckJyL" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VckLsn" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VckLt$" role="lcghm" />
              <node concept="l8MVK" id="2LRe1VckLus" role="lcghm" />
            </node>
            <node concept="3clFbH" id="2LRe1VckLuT" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC8YQO" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8Zcv" role="lcghm">
                <property role="lacIc" value="free(map);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8Zeq" role="lcghm" />
            </node>
            <node concept="lc7rE" id="2LRe1VckLLS" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VckM2y" role="lcghm">
                <property role="lacIc" value="return 0;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VckMBX" role="lcghm" />
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
  <node concept="1bsvg0" id="2LRe1Vca2fl">
    <property role="TrG5h" value="Initialization" />
    <node concept="1bwezc" id="2LRe1Vca2fm" role="1bwxVq">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="2LRe1Vca2fn" role="3clF45" />
      <node concept="3clFbS" id="2LRe1Vca2fo" role="3clF47">
        <node concept="lc7rE" id="2LRe1Vca2fW" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2h1" role="lcghm">
            <property role="lacIc" value="#include &lt;stdio.h&gt;" />
          </node>
          <node concept="l8MVK" id="2LRe1VcaxzW" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2j9" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2ja" role="lcghm">
            <property role="lacIc" value="#include &lt;stdlib.h&gt;" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcax$D" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2jU" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2jV" role="lcghm">
            <property role="lacIc" value="#include &lt;pthread.h&gt;" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcax_l" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2kx" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2ky" role="lcghm">
            <property role="lacIc" value="#include &lt;unistd.h&gt;" />
          </node>
          <node concept="l8MVK" id="2LRe1VcaxA1" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2lu" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2lv" role="lcghm">
            <property role="lacIc" value="#include &lt;string.h&gt;" />
          </node>
          <node concept="l8MVK" id="2LRe1VcaxAq" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1VcaxBP" role="3cqZAp">
          <node concept="l8MVK" id="2LRe1VcaxCJ" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2o6" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2o7" role="lcghm">
            <property role="lacIc" value="#define SIZE 100" />
          </node>
          <node concept="l8MVK" id="2LRe1VcaxB6" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2p$" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2p_" role="lcghm">
            <property role="lacIc" value="#define BUFFER_SIZE 1024" />
          </node>
          <node concept="l8MVK" id="2LRe1VcaxBv" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1VcaxD4" role="3cqZAp">
          <node concept="l8MVK" id="2LRe1VcaxDZ" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1Vca2uO" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2vt" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="2LRe1VcaxEE" role="lcghm" />
        </node>
        <node concept="3izx1p" id="2LRe1Vca2Bg" role="3cqZAp">
          <node concept="3clFbS" id="2LRe1Vca2Bi" role="3izTki">
            <node concept="lc7rE" id="2LRe1Vca2xA" role="3cqZAp">
              <node concept="la8eA" id="2LRe1Vca2xB" role="lcghm">
                <property role="lacIc" value="int address;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcaxF3" role="lcghm" />
            </node>
            <node concept="lc7rE" id="2LRe1Vca2yR" role="3cqZAp">
              <node concept="la8eA" id="2LRe1Vca2yS" role="lcghm">
                <property role="lacIc" value="int write_fd;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcaxFs" role="lcghm" />
            </node>
            <node concept="lc7rE" id="4uPBxu3gUHM" role="3cqZAp">
              <node concept="la8eA" id="4uPBxu3gUJ5" role="lcghm">
                <property role="lacIc" value="pthread_mutex_t mutex;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="4uPBxu3gUJL" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1Vca2zF" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vca2zG" role="lcghm">
            <property role="lacIc" value="} map_item;" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcbsz1" role="lcghm" />
          <node concept="l8MVK" id="2LRe1Vcbsz9" role="lcghm" />
        </node>
        <node concept="3clFbH" id="2LRe1Vcb4xJ" role="3cqZAp" />
        <node concept="lc7rE" id="2LRe1Vcb4zy" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vcb4$z" role="lcghm">
            <property role="lacIc" value="typedef struct {" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcbsyk" role="lcghm" />
        </node>
        <node concept="3izx1p" id="2LRe1Vcb4NQ" role="3cqZAp">
          <node concept="3clFbS" id="2LRe1Vcb4NS" role="3izTki">
            <node concept="lc7rE" id="2LRe1Vcb4Ph" role="3cqZAp">
              <node concept="la8eA" id="2LRe1Vcb4AI" role="lcghm">
                <property role="lacIc" value="map_item *map;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcb4CV" role="lcghm" />
              <node concept="la8eA" id="2LRe1Vcb4DF" role="lcghm">
                <property role="lacIc" value="int read_fd;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcb4Fm" role="lcghm" />
              <node concept="la8eA" id="2LRe1Vcb4Ga" role="lcghm">
                <property role="lacIc" value="int write_fd;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcb4Iv" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1Vcb4Sx" role="3cqZAp">
          <node concept="la8eA" id="2LRe1Vcb4TH" role="lcghm">
            <property role="lacIc" value="} ThreadData;" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcb4Wb" role="lcghm" />
          <node concept="l8MVK" id="2LRe1VcbsAf" role="lcghm" />
        </node>
        <node concept="3clFbH" id="518QUjC05$3" role="3cqZAp" />
        <node concept="lc7rE" id="518QUjC8Vpm" role="3cqZAp">
          <node concept="la8eA" id="518QUjC8Vsx" role="lcghm">
            <property role="lacIc" value="pthread_mutex_t map_mutex;" />
          </node>
          <node concept="l8MVK" id="518QUjC8Vtg" role="lcghm" />
          <node concept="l8MVK" id="518QUjC8Vto" role="lcghm" />
        </node>
        <node concept="3clFbH" id="518QUjC8Vmi" role="3cqZAp" />
        <node concept="lc7rE" id="518QUjC05B4" role="3cqZAp">
          <node concept="la8eA" id="518QUjC05D$" role="lcghm">
            <property role="lacIc" value="void create_thread(int address, map_item *map, void *(*start_routine) (void *), pthread_t *thread) {" />
          </node>
          <node concept="l8MVK" id="518QUjC05Eg" role="lcghm" />
        </node>
        <node concept="3izx1p" id="518QUjC05Gk" role="3cqZAp">
          <node concept="3clFbS" id="518QUjC05Gm" role="3izTki">
            <node concept="lc7rE" id="518QUjC05JA" role="3cqZAp">
              <node concept="la8eA" id="518QUjC05K2" role="lcghm">
                <property role="lacIc" value="ThreadData *thread_data = malloc(sizeof(ThreadData));" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC05Kr" role="lcghm" />
            </node>
            <node concept="lc7rE" id="518QUjC8Uq3" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8Ur7" role="lcghm">
                <property role="lacIc" value="if (!thread_data) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8UsH" role="lcghm" />
            </node>
            <node concept="3izx1p" id="518QUjC8Uu4" role="3cqZAp">
              <node concept="3clFbS" id="518QUjC8Uu6" role="3izTki">
                <node concept="lc7rE" id="518QUjC8Uv9" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC8Uvw" role="lcghm">
                    <property role="lacIc" value="perror(&quot;malloc&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjC8Uwv" role="lcghm" />
                </node>
                <node concept="lc7rE" id="518QUjC8Uxc" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC8UxC" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjC8UyB" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="518QUjC8U$6" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8U_l" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8UA4" role="lcghm" />
              <node concept="l8MVK" id="518QUjC8UAM" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC8UBa" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC05Mw" role="3cqZAp">
              <node concept="la8eA" id="518QUjC05MZ" role="lcghm">
                <property role="lacIc" value="int pipe_fd[2];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC05NY" role="lcghm" />
              <node concept="l8MVK" id="518QUjC05OO" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC05Pc" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC05PS" role="3cqZAp">
              <node concept="la8eA" id="518QUjC05Qt" role="lcghm">
                <property role="lacIc" value="if (pipe(pipe_fd)) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC05R9" role="lcghm" />
            </node>
            <node concept="3izx1p" id="518QUjC05S1" role="3cqZAp">
              <node concept="3clFbS" id="518QUjC05S3" role="3izTki">
                <node concept="lc7rE" id="518QUjC05SB" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC05SY" role="lcghm">
                    <property role="lacIc" value="perror(&quot;pipe&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjC05TE" role="lcghm" />
                </node>
                <node concept="lc7rE" id="518QUjC05Un" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC05UN" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjC05Vy" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="518QUjC05Wy" role="3cqZAp">
              <node concept="la8eA" id="518QUjC05Xi" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC05Yh" role="lcghm" />
              <node concept="l8MVK" id="518QUjC05YZ" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC060f" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC061r" role="3cqZAp">
              <node concept="la8eA" id="518QUjC061X" role="lcghm">
                <property role="lacIc" value="thread_data-&gt;read_fd = pipe_fd[0];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC062W" role="lcghm" />
            </node>
            <node concept="lc7rE" id="518QUjC0645" role="3cqZAp">
              <node concept="la8eA" id="518QUjC064X" role="lcghm">
                <property role="lacIc" value="thread_data-&gt;write_fd = pipe_fd[1];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC065G" role="lcghm" />
              <node concept="l8MVK" id="518QUjC067e" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC067A" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC8UL0" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8UMi" role="lcghm">
                <property role="lacIc" value="pthread_mutex_lock(&amp;map_mutex);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8UN2" role="lcghm" />
            </node>
            <node concept="lc7rE" id="518QUjC8UOB" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8UPW" role="lcghm">
                <property role="lacIc" value="map[address].write_fd = pipe_fd[1];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8UQW" role="lcghm" />
            </node>
            <node concept="lc7rE" id="518QUjC8US$" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8UTX" role="lcghm">
                <property role="lacIc" value="if (pthread_mutex_init(&amp;map[address].mutex, NULL) != 0) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjCbaw5" role="lcghm" />
            </node>
            <node concept="3izx1p" id="518QUjC8UVT" role="3cqZAp">
              <node concept="3clFbS" id="518QUjC8UVV" role="3izTki">
                <node concept="lc7rE" id="518QUjC8UXh" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC8UXC" role="lcghm">
                    <property role="lacIc" value="perror(&quot;pthread_mutex_init&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjC8UYB" role="lcghm" />
                </node>
                <node concept="lc7rE" id="518QUjC8UZj" role="3cqZAp">
                  <node concept="la8eA" id="518QUjC8UZJ" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="518QUjC8V2w" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="518QUjC8V4i" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8V5O" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8V6z" role="lcghm" />
              <node concept="l8MVK" id="518QUjC8V7h" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC8UF$" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC06c3" role="3cqZAp">
              <node concept="la8eA" id="518QUjC06d4" role="lcghm">
                <property role="lacIc" value="thread_data-&gt;map = map;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC06dN" role="lcghm" />
            </node>
            <node concept="lc7rE" id="518QUjC8V98" role="3cqZAp">
              <node concept="la8eA" id="518QUjC8V99" role="lcghm">
                <property role="lacIc" value="pthread_mutex_unlock(&amp;map_mutex);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC8VhA" role="lcghm" />
              <node concept="l8MVK" id="518QUjC8V9a" role="lcghm" />
            </node>
            <node concept="3clFbH" id="518QUjC8V7D" role="3cqZAp" />
            <node concept="lc7rE" id="518QUjC06fR" role="3cqZAp">
              <node concept="la8eA" id="518QUjC06gW" role="lcghm">
                <property role="lacIc" value="pthread_create(thread, NULL, start_routine, (void *)thread_data);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="518QUjC06hF" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="518QUjC06r6" role="3cqZAp">
          <node concept="la8eA" id="518QUjC06tE" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="518QUjC1XpB" role="lcghm" />
          <node concept="l8MVK" id="518QUjC1Xql" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2LRe1VcbCy3">
    <property role="3GE5qa" value="actor" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
    <node concept="11bSqf" id="2LRe1VcbCy4" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VcbCy5" role="2VODD2">
        <node concept="lc7rE" id="Buyr4_F74Y" role="3cqZAp">
          <node concept="l9hG8" id="Buyr4_F79g" role="lcghm">
            <node concept="2OqwBi" id="Buyr4_F7jf" role="lb14g">
              <node concept="117lpO" id="Buyr4_F79N" role="2Oq$k0" />
              <node concept="3TrEf2" id="Buyr4_F7Bt" role="2OqNvi">
                <ref role="3Tt5mk" to="o1mc:25QEYlOeItB" resolve="behavior" />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="1X3_iC" id="25QEYlOKf0V" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="lc7rE" id="2LRe1VcfJnK" role="8Wnug">
            <node concept="la8eA" id="2LRe1VcfJpw" role="lcghm">
              <property role="lacIc" value="receiver_address = " />
              <property role="ldcpH" value="true" />
            </node>
            <node concept="l9hG8" id="2LRe1VcfOn7" role="lcghm">
              <node concept="2YIFZM" id="2LRe1VchDBt" role="lb14g">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="2LRe1VchEfl" role="37wK5m">
                  <node concept="2OqwBi" id="2LRe1VchDQZ" role="2Oq$k0">
                    <node concept="117lpO" id="2LRe1VchDDY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2LRe1VchE0Y" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:3m_VcJMWARR" resolve="receiver" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2LRe1VchEro" role="2OqNvi">
                    <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="la8eA" id="2LRe1VcfVpM" role="lcghm">
              <property role="lacIc" value=";" />
            </node>
            <node concept="l8MVK" id="2LRe1VcfVsf" role="lcghm" />
            <node concept="l8MVK" id="4uPBxu3gWMp" role="lcghm" />
          </node>
        </node>
        <node concept="3clFbH" id="Buyr4_EwPy" role="3cqZAp" />
        <node concept="lc7rE" id="Buyr4_EwUJ" role="3cqZAp">
          <node concept="la8eA" id="Buyr4_G56E" role="lcghm">
            <property role="lacIc" value="tag:" />
          </node>
          <node concept="l9hG8" id="Buyr4_EwX0" role="lcghm">
            <node concept="2OqwBi" id="Buyr4_ExDk" role="lb14g">
              <node concept="2OqwBi" id="Buyr4_Ex6k" role="2Oq$k0">
                <node concept="117lpO" id="Buyr4_EwXz" role="2Oq$k0" />
                <node concept="3TrEf2" id="Buyr4_ExtV" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                </node>
              </node>
              <node concept="3TrcHB" id="Buyr4_ExR1" role="2OqNvi">
                <ref role="3TsBF5" to="o1mc:25QEYlOFf2e" resolve="tag" />
              </node>
            </node>
          </node>
          <node concept="l8MVK" id="Buyr4_GyC1" role="lcghm" />
        </node>
        <node concept="1X3_iC" id="Buyr4_KryZ" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="lc7rE" id="Buyr4_HZzJ" role="8Wnug">
            <node concept="la8eA" id="Buyr4_HZAA" role="lcghm">
              <property role="lacIc" value="sender:" />
            </node>
            <node concept="l9hG8" id="Buyr4_HZCa" role="lcghm">
              <node concept="2OqwBi" id="Buyr4_I1ol" role="lb14g">
                <node concept="2OqwBi" id="Buyr4_I0KQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="Buyr4_I09x" role="2Oq$k0">
                    <node concept="2OqwBi" id="Buyr4_HZLv" role="2Oq$k0">
                      <node concept="117lpO" id="Buyr4_HZCI" role="2Oq$k0" />
                      <node concept="3TrEf2" id="Buyr4_HZY8" role="2OqNvi">
                        <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="Buyr4_I0$X" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:Buyr4_DLlN" resolve="envelope" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="Buyr4_I19n" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:25QEYlOdAq9" resolve="sender" />
                  </node>
                </node>
                <node concept="3TrcHB" id="Buyr4_I1Bb" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="l8MVK" id="Buyr4_Jqu2" role="lcghm" />
          </node>
        </node>
        <node concept="3clFbH" id="Buyr4_EwQs" role="3cqZAp" />
        <node concept="lc7rE" id="4uPBxu3gWCM" role="3cqZAp">
          <node concept="la8eA" id="4uPBxu3gWFW" role="lcghm">
            <property role="lacIc" value="pthread_mutex_lock(&amp;data-&gt;map[receiver_address].mutex);" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="4uPBxu3gWJf" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1VceMnq" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VceMnQ" role="lcghm">
            <property role="lacIc" value="bytes_written = write(data-&gt;map[receiver_address].write_fd, " />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="2LRe1VcmMN8" role="lcghm">
            <node concept="2OqwBi" id="2LRe1VcmNfg" role="lb14g">
              <node concept="2OqwBi" id="2LRe1VcmMVB" role="2Oq$k0">
                <node concept="117lpO" id="2LRe1VcmMOK" role="2Oq$k0" />
                <node concept="3TrEf2" id="2LRe1VcmN4M" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                </node>
              </node>
              <node concept="3TrcHB" id="2LRe1VcmNyl" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2LRe1VcmN_f" role="lcghm">
            <property role="lacIc" value=", strlen(" />
          </node>
          <node concept="l9hG8" id="2LRe1VcmNKv" role="lcghm">
            <node concept="2OqwBi" id="2LRe1VcmNTq" role="lb14g">
              <node concept="2OqwBi" id="2LRe1VcmNN8" role="2Oq$k0">
                <node concept="117lpO" id="2LRe1VcmNMF" role="2Oq$k0" />
                <node concept="3TrEf2" id="2LRe1VcmNRU" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                </node>
              </node>
              <node concept="3TrcHB" id="2LRe1VcmOdg" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2LRe1VcmPSp" role="lcghm">
            <property role="lacIc" value="));" />
          </node>
          <node concept="l8MVK" id="2LRe1VceNBW" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1VceNOv" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VceNWi" role="lcghm">
            <property role="lacIc" value="if (bytes_written == -1) {" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="2LRe1VceNXb" role="lcghm" />
        </node>
        <node concept="3izx1p" id="2LRe1VceOoH" role="3cqZAp">
          <node concept="3clFbS" id="2LRe1VceOoJ" role="3izTki">
            <node concept="lc7rE" id="2LRe1VceOdD" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VceOg8" role="lcghm">
                <property role="lacIc" value="perror(&quot;write&quot;);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vchj0m" role="lcghm" />
            </node>
            <node concept="lc7rE" id="4uPBxu3gWOT" role="3cqZAp">
              <node concept="la8eA" id="4uPBxu3gWPt" role="lcghm">
                <property role="lacIc" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="4uPBxu3gWR1" role="lcghm" />
            </node>
            <node concept="lc7rE" id="2LRe1VceOtp" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VceOtT" role="lcghm">
                <property role="lacIc" value="exit(EXIT_FAILURE);" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vchj1d" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2LRe1VceOwE" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VceOyp" role="lcghm">
            <property role="lacIc" value="}" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="2LRe1Vchj24" role="lcghm" />
        </node>
        <node concept="lc7rE" id="4uPBxu3gYGA" role="3cqZAp">
          <node concept="la8eA" id="4uPBxu3gYGB" role="lcghm">
            <property role="lacIc" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="4uPBxu3gYGC" role="lcghm" />
          <node concept="l8MVK" id="4uPBxu3gYLl" role="lcghm" />
        </node>
        <node concept="3clFbH" id="4uPBxu3gYBn" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2LRe1VcgoXq">
    <property role="3GE5qa" value="message" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
    <node concept="11bSqf" id="2LRe1VcgoXr" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VcgoXs" role="2VODD2">
        <node concept="lc7rE" id="2LRe1VcidfG" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcidgE" role="lcghm">
            <property role="lacIc" value="// message to send" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcidie" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Buyr4_F8_V">
    <property role="3GE5qa" value="behavior" />
    <ref role="WuzLi" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
    <node concept="11bSqf" id="Buyr4_F8_W" role="11c4hB">
      <node concept="3clFbS" id="Buyr4_F8_X" role="2VODD2">
        <node concept="2Gpval" id="Buyr4_F8Ao" role="3cqZAp">
          <node concept="2GrKxI" id="Buyr4_F8Ap" role="2Gsz3X">
            <property role="TrG5h" value="action" />
          </node>
          <node concept="2OqwBi" id="Buyr4_F8L_" role="2GsD0m">
            <node concept="117lpO" id="Buyr4_F8Cu" role="2Oq$k0" />
            <node concept="3Tsc0h" id="Buyr4_F97C" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
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
</model>

