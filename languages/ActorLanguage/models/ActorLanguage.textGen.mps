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
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
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
        <node concept="3clFbH" id="2LRe1VciTCq" role="3cqZAp" />
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
            <node concept="lc7rE" id="2LRe1VcjxI5" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjxOC" role="lcghm">
                <property role="lacIc" value="ThreadData threads_data[num_threads];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcjxZ7" role="lcghm" />
            </node>
            <node concept="lc7rE" id="2LRe1Vcjy9p" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjyfZ" role="lcghm">
                <property role="lacIc" value="int pipes_fd[num_threads][2];" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcj$1C" role="lcghm" />
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
            <node concept="3clFbH" id="2LRe1VcjHKL" role="3cqZAp" />
            <node concept="lc7rE" id="2LRe1Vcj$Ke" role="3cqZAp">
              <node concept="la8eA" id="2LRe1Vcj$QT" role="lcghm">
                <property role="lacIc" value="for (i = 0; i &lt; num_threads; i++) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1Vcj$YP" role="lcghm" />
            </node>
            <node concept="3izx1p" id="2LRe1Vcj_9f" role="3cqZAp">
              <node concept="3clFbS" id="2LRe1Vcj_9h" role="3izTki">
                <node concept="lc7rE" id="2LRe1Vcj_fV" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1Vcj_gn" role="lcghm">
                    <property role="lacIc" value="if (pipe(pipes_fd[i])) {" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1Vcj_h$" role="lcghm" />
                </node>
                <node concept="3izx1p" id="2LRe1Vcj_iM" role="3cqZAp">
                  <node concept="3clFbS" id="2LRe1Vcj_iO" role="3izTki">
                    <node concept="lc7rE" id="2LRe1Vcj_jg" role="3cqZAp">
                      <node concept="la8eA" id="2LRe1Vcj_jG" role="lcghm">
                        <property role="lacIc" value="perror(&quot;pipe&quot;);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="2LRe1Vcj_ky" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="2LRe1Vcj_lK" role="3cqZAp">
                      <node concept="la8eA" id="2LRe1Vcj_mh" role="lcghm">
                        <property role="lacIc" value="exit(EXIT_FAILURE);" />
                        <property role="ldcpH" value="true" />
                      </node>
                      <node concept="l8MVK" id="2LRe1Vcj_nu" role="lcghm" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="2LRe1Vcj_oN" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1Vcj_qc" role="lcghm">
                    <property role="lacIc" value="}" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1Vcj_ro" role="lcghm" />
                </node>
                <node concept="lc7rE" id="2LRe1Vcj_sK" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1Vcj_tt" role="lcghm">
                    <property role="lacIc" value="threads_data[i].read_fd = pipes_fd[i][0];" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1Vcj_um" role="lcghm" />
                </node>
                <node concept="lc7rE" id="2LRe1Vcj_vr" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1Vcj_wa" role="lcghm">
                    <property role="lacIc" value="threads_data[i].write_fd = pipes_fd[i][1];" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="2LRe1Vcj_x3" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="2LRe1VcjBgd" role="3cqZAp">
              <node concept="la8eA" id="2LRe1VcjBnh" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="2LRe1VcjMRa" role="lcghm" />
              <node concept="l8MVK" id="2LRe1VcjMS2" role="lcghm" />
            </node>
            <node concept="3clFbH" id="2LRe1VcjK9z" role="3cqZAp" />
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
            <node concept="3clFbH" id="2LRe1VcjMyr" role="3cqZAp" />
            <node concept="lc7rE" id="1g0n0JfjRu0" role="3cqZAp">
              <node concept="la8eA" id="1g0n0JfjTwl" role="lcghm">
                <property role="lacIc" value="for (i = 0; i &lt; num_threads; i++) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="1g0n0JfjTxz" role="lcghm" />
            </node>
            <node concept="3izx1p" id="1g0n0JfjTS7" role="3cqZAp">
              <node concept="3clFbS" id="1g0n0JfjTS9" role="3izTki">
                <node concept="lc7rE" id="1g0n0JfjUek" role="3cqZAp">
                  <node concept="la8eA" id="1g0n0JfjUeK" role="lcghm">
                    <property role="lacIc" value="init_map_entry(map, addresses[i], pipes_fd[i][1]);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="1g0n0JfjUfD" role="lcghm" />
                </node>
                <node concept="lc7rE" id="1g0n0JfjUgw" role="3cqZAp">
                  <node concept="la8eA" id="1g0n0JfjUh1" role="lcghm">
                    <property role="lacIc" value="threads_data[i].map = map;" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="1g0n0JfjUhU" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1g0n0JfjWkJ" role="3cqZAp">
              <node concept="la8eA" id="1g0n0JfjWF6" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="1g0n0JfjWGj" role="lcghm" />
              <node concept="l8MVK" id="1g0n0JfjWHb" role="lcghm" />
            </node>
            <node concept="3clFbH" id="2LRe1VckpiD" role="3cqZAp" />
            <node concept="2Gpval" id="2LRe1VckpvY" role="3cqZAp">
              <node concept="2GrKxI" id="2LRe1VckpvZ" role="2Gsz3X">
                <property role="TrG5h" value="actor" />
              </node>
              <node concept="2OqwBi" id="2LRe1Vckpw0" role="2GsD0m">
                <node concept="117lpO" id="2LRe1Vckpw1" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2LRe1Vckpw2" role="2OqNvi">
                  <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" />
                </node>
              </node>
              <node concept="3clFbS" id="2LRe1Vckpw3" role="2LFqv$">
                <node concept="lc7rE" id="2LRe1Vckt1J" role="3cqZAp">
                  <node concept="la8eA" id="2LRe1Vckt2b" role="lcghm">
                    <property role="lacIc" value="pthread_create(&amp;threads[" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l9hG8" id="2LRe1Vckt9s" role="lcghm">
                    <node concept="2YIFZM" id="2LRe1VckuJ7" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="2LRe1Vckv22" role="37wK5m">
                        <node concept="2GrUjf" id="2LRe1VckuNb" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2LRe1VckpvZ" resolve="actor" />
                        </node>
                        <node concept="2bSWHS" id="2LRe1VckvMS" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="2LRe1VckwcI" role="lcghm">
                    <property role="lacIc" value="], NULL, " />
                  </node>
                  <node concept="l9hG8" id="2LRe1Vckwl5" role="lcghm">
                    <node concept="2OqwBi" id="2LRe1Vcky7H" role="lb14g">
                      <node concept="2GrUjf" id="2LRe1VckxYl" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2LRe1VckpvZ" resolve="actor" />
                      </node>
                      <node concept="3TrcHB" id="2LRe1VckyMu" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="2LRe1Vckzfx" role="lcghm">
                    <property role="lacIc" value=", (void *)&amp;threads_data[" />
                  </node>
                  <node concept="l9hG8" id="2LRe1Vck_1l" role="lcghm">
                    <node concept="2YIFZM" id="2LRe1Vck_1m" role="lb14g">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="2LRe1Vck_1n" role="37wK5m">
                        <node concept="2GrUjf" id="2LRe1Vck_1o" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2LRe1VckpvZ" resolve="actor" />
                        </node>
                        <node concept="2bSWHS" id="2LRe1Vck_1p" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="2LRe1VckAJ8" role="lcghm">
                    <property role="lacIc" value="]);" />
                  </node>
                  <node concept="l8MVK" id="2LRe1VckB6S" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="2LRe1VckBsa" role="3cqZAp">
              <node concept="l8MVK" id="2LRe1VckBG$" role="lcghm" />
            </node>
            <node concept="3clFbH" id="2LRe1VckBGZ" role="3cqZAp" />
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
        <node concept="3clFbH" id="4uPBxu3gUKR" role="3cqZAp" />
        <node concept="lc7rE" id="1g0n0Jfj3Hp" role="3cqZAp">
          <node concept="la8eA" id="1g0n0Jfj3IL" role="lcghm">
            <property role="lacIc" value="void init_map_entry(map_item *map, int index, int fd) {" />
          </node>
          <node concept="l8MVK" id="1g0n0Jfj3JL" role="lcghm" />
        </node>
        <node concept="3izx1p" id="1g0n0Jfj3Ls" role="3cqZAp">
          <node concept="3clFbS" id="1g0n0Jfj3Lu" role="3izTki">
            <node concept="lc7rE" id="1g0n0Jfj3Nr" role="3cqZAp">
              <node concept="la8eA" id="1g0n0Jfj3NM" role="lcghm">
                <property role="lacIc" value="map[index].write_fd = fd;" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="1g0n0Jfj3Ou" role="lcghm" />
            </node>
            <node concept="lc7rE" id="1g0n0Jfj3Pb" role="3cqZAp">
              <node concept="la8eA" id="1g0n0Jfj3PB" role="lcghm">
                <property role="lacIc" value="if (pthread_mutex_init(&amp;map[index].mutex, NULL) != 0) {" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="1g0n0Jfj3QA" role="lcghm" />
            </node>
            <node concept="3izx1p" id="1g0n0Jfj3Rl" role="3cqZAp">
              <node concept="3clFbS" id="1g0n0Jfj3Rn" role="3izTki">
                <node concept="lc7rE" id="1g0n0Jfj3RL" role="3cqZAp">
                  <node concept="la8eA" id="1g0n0Jfj3S8" role="lcghm">
                    <property role="lacIc" value="perror(&quot;pthread_mutex_init&quot;);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="1g0n0Jfj3Ts" role="lcghm" />
                </node>
                <node concept="lc7rE" id="1g0n0Jfj3TN" role="3cqZAp">
                  <node concept="la8eA" id="1g0n0Jfj3Uf" role="lcghm">
                    <property role="lacIc" value="exit(EXIT_FAILURE);" />
                    <property role="ldcpH" value="true" />
                  </node>
                  <node concept="l8MVK" id="1g0n0Jfj3UZ" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1g0n0Jfj3WP" role="3cqZAp">
              <node concept="la8eA" id="1g0n0Jfj3Xs" role="lcghm">
                <property role="lacIc" value="}" />
                <property role="ldcpH" value="true" />
              </node>
              <node concept="l8MVK" id="1g0n0Jfj3Yr" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1g0n0Jfj40q" role="3cqZAp">
          <node concept="la8eA" id="1g0n0Jfj428" role="lcghm">
            <property role="lacIc" value="}" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="1g0n0Jfj42R" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2LRe1VcbCy3">
    <property role="3GE5qa" value="actor" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
    <node concept="11bSqf" id="2LRe1VcbCy4" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VcbCy5" role="2VODD2">
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
        <node concept="3izx1p" id="2LRe1VcbEHT" role="3cqZAp">
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
            <node concept="lc7rE" id="2LRe1Vcf191" role="3cqZAp">
              <node concept="l9S2W" id="2LRe1Vcf19v" role="lcghm">
                <node concept="2OqwBi" id="2LRe1Vcf1gT" role="lbANJ">
                  <node concept="117lpO" id="2LRe1Vcf19X" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2LRe1Vcf1AU" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2LRe1VceUrt" role="3cqZAp" />
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
    <property role="3GE5qa" value="actions" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWARM" resolve="SendMessage" />
    <node concept="11bSqf" id="2LRe1VceMmX" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VceMmY" role="2VODD2">
        <node concept="lc7rE" id="2LRe1VcfJnK" role="3cqZAp">
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
    <property role="3GE5qa" value="actions" />
    <ref role="WuzLi" to="o1mc:3m_VcJMWzdL" resolve="Message" />
    <node concept="11bSqf" id="2LRe1VcgoXr" role="11c4hB">
      <node concept="3clFbS" id="2LRe1VcgoXs" role="2VODD2">
        <node concept="lc7rE" id="2LRe1VcidfG" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcidgE" role="lcghm">
            <property role="lacIc" value="// message to send" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcidie" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2LRe1VcgoXR" role="3cqZAp">
          <node concept="la8eA" id="2LRe1VcgoYj" role="lcghm">
            <property role="lacIc" value="char *" />
            <property role="ldcpH" value="true" />
          </node>
          <node concept="l9hG8" id="2LRe1VclxVG" role="lcghm">
            <node concept="2OqwBi" id="2LRe1Vcly4a" role="lb14g">
              <node concept="117lpO" id="2LRe1VclxWJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="2LRe1VclyeL" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2LRe1VclygU" role="lcghm">
            <property role="lacIc" value="= &quot;" />
          </node>
          <node concept="l9hG8" id="2LRe1Vcgp0e" role="lcghm">
            <node concept="2OqwBi" id="2LRe1Vcgp8d" role="lb14g">
              <node concept="117lpO" id="2LRe1Vcgp0M" role="2Oq$k0" />
              <node concept="3TrcHB" id="2LRe1Vcgpuj" role="2OqNvi">
                <ref role="3TsBF5" to="o1mc:3m_VcJMWzdM" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2LRe1Vcgpy3" role="lcghm">
            <property role="lacIc" value="&quot;;" />
          </node>
          <node concept="l8MVK" id="2LRe1Vcgp$a" role="lcghm" />
          <node concept="l8MVK" id="2LRe1VcidlD" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

