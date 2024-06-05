<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  </imports>
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="1411682935494907365" name="ActorLanguage.structure.SwitchPolicy" flags="ng" index="2icdJ3" />
      <concept id="1411682935492097494" name="ActorLanguage.structure.ReceptionistPolicy" flags="ng" index="2iUZJK">
        <property id="1411682935492097495" name="policy" index="2iUZJL" />
      </concept>
      <concept id="1411682935490806610" name="ActorLanguage.structure.GetActorFromReceptionist" flags="ng" index="2iZ$PO">
        <child id="1411682935492097502" name="policy" index="2iUZJS" />
        <child id="13109696840883591" name="actorReference" index="BvGUO" />
      </concept>
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry" />
      <concept id="6739934483258184740" name="ActorLanguage.structure.CreateActors" flags="ng" index="2LyTEn">
        <property id="6739934483258184771" name="number" index="2LyTFK" />
        <property id="6739934483258184773" name="baseName" index="2LyTFQ" />
        <reference id="1411682935489267791" name="behavior" index="2iLGpD" />
        <child id="13109696846325256" name="actors" index="BzvkV" />
      </concept>
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929414" name="behavior" index="2QtU1P" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <reference id="1411682935489260658" name="behavior" index="2iLy9k" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actors" index="37lXYW" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
      <concept id="2750811047725463862" name="ActorLanguage.structure.ActorsGraph" flags="ng" index="3DMq4$">
        <child id="2750811047725463930" name="actors" index="3DMq5C" />
        <child id="2750811047725463932" name="links" index="3DMq5I" />
      </concept>
      <concept id="2750811047725463863" name="ActorLanguage.structure.ActorBox" flags="ng" index="3DMq4_">
        <reference id="2750811047725463865" name="actor" index="3DMq4F" />
      </concept>
      <concept id="2750811047725463864" name="ActorLanguage.structure.ActorLink" flags="ng" index="3DMq4E">
        <reference id="2750811047725463926" name="actorTo" index="3DMq5$" />
        <reference id="2750811047725463924" name="actorFrom" index="3DMq5A" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="transform" index="TgtnS" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="2319506556913311101" name="anchors" index="2Vcluh" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
    </language>
  </registry>
  <node concept="37lXYX" id="1enjyq1lUQ0">
    <property role="TrG5h" value="ActorScript" />
    <node concept="2QtU1Q" id="1enjyq1lUQ1" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="1enjyq1lUQ2" role="2QtU1V" />
      <node concept="2icdJ3" id="1enjyq1NGpj" role="2QtU1P">
        <node concept="1Xhbcc" id="1enjyq1NGpk" role="3KbGdf" />
        <node concept="3KbdKl" id="1enjyq1NGpq" role="3KbHQx">
          <node concept="2iUZJK" id="1enjyq1OKmY" role="3Kbmr1">
            <property role="2iUZJL" value="1enjyq1qgdk/RANDOM" />
          </node>
          <node concept="3clFbS" id="I$NcByL7N" role="3Kbo56">
            <node concept="3clFbH" id="2oGQ1bfZ9zY" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbS" id="1enjyq1PHO2" role="3Kb1Dw">
          <node concept="3cpWs6" id="1enjyq1PHOh" role="3cqZAp" />
        </node>
        <node concept="3KbdKl" id="2oGQ1bfZ9DQ" role="3KbHQx">
          <node concept="2iUZJK" id="2oGQ1bfZ9Ei" role="3Kbmr1">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="3clFbS" id="2oGQ1bfZ9ER" role="3Kbo56">
            <node concept="3clFbH" id="2oGQ1bfZ9ES" role="3cqZAp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="1enjyq1lUQ3" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <node concept="1Dw8fO" id="1enjyq1rx06" role="37ngyo">
        <node concept="3cpWsn" id="1enjyq1rx07" role="1Duv9x">
          <property role="TrG5h" value="i" />
          <node concept="10Oyi0" id="1enjyq1rx0f" role="1tU5fm" />
          <node concept="3cmrfG" id="1enjyq1rx0v" role="33vP2m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
        <node concept="3clFbS" id="1enjyq1rx08" role="2LFqv$">
          <node concept="2iZ$PO" id="I$NcBxILy" role="3cqZAp">
            <node concept="2iUZJK" id="I$NcBxILz" role="2iUZJS">
              <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
            </node>
            <node concept="Bk5ry" id="I$NcBxIL$" role="BvGUO">
              <property role="TrG5h" value="ref" />
            </node>
          </node>
        </node>
        <node concept="3eOVzh" id="1enjyq1ryxu" role="1Dwp0S">
          <node concept="3cmrfG" id="1enjyq1ryxJ" role="3uHU7w">
            <property role="3cmrfH" value="20" />
          </node>
          <node concept="37vLTw" id="1enjyq1rx0E" role="3uHU7B">
            <ref role="3cqZAo" node="1enjyq1rx07" resolve="i" />
          </node>
        </node>
        <node concept="3uNrnE" id="1enjyq1ryHw" role="1Dwrff">
          <node concept="37vLTw" id="1enjyq1ryHy" role="2$L3a6">
            <ref role="3cqZAo" node="1enjyq1rx07" resolve="i" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="I$NcBRdSu" role="2QtU1L">
      <property role="TrG5h" value="b2" />
    </node>
    <node concept="2LyTEn" id="49eohyN0F7f" role="37lXYW">
      <property role="2LyTFK" value="5" />
      <property role="2LyTFQ" value="a" />
      <ref role="2iLGpD" node="1enjyq1lUQ3" resolve="b1" />
      <node concept="37lXYJ" id="49eohyN0F7h" role="BzvkV">
        <property role="TrG5h" value="a0" />
        <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
        <node concept="2uUgHn" id="49eohyN0F7i" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="49eohyN0F7j" role="BzvkV">
        <property role="TrG5h" value="a1" />
        <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
        <node concept="2uUgHn" id="49eohyN0F7k" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="49eohyN0F7l" role="BzvkV">
        <property role="TrG5h" value="a2" />
        <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
        <node concept="2uUgHn" id="49eohyN0F7m" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="49eohyN0F7n" role="BzvkV">
        <property role="TrG5h" value="a3" />
        <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
        <node concept="2uUgHn" id="49eohyN0F7o" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="49eohyN0F7p" role="BzvkV">
        <property role="TrG5h" value="a4" />
        <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
        <node concept="2uUgHn" id="49eohyN0F7q" role="2LyG1a" />
      </node>
    </node>
    <node concept="3DMq4$" id="49eohyN0F7_" role="3DMxif">
      <node concept="3DMq4_" id="49eohyN0F7B" role="3DMq5C">
        <ref role="3DMq4F" node="49eohyN0F7h" resolve="a0" />
      </node>
      <node concept="3DMq4_" id="49eohyN0F7D" role="3DMq5C">
        <ref role="3DMq4F" node="49eohyN0F7j" resolve="a1" />
      </node>
      <node concept="3DMq4_" id="49eohyN0F7G" role="3DMq5C">
        <ref role="3DMq4F" node="49eohyN0F7l" resolve="a2" />
      </node>
      <node concept="3DMq4_" id="49eohyN0F7K" role="3DMq5C">
        <ref role="3DMq4F" node="49eohyN0F7n" resolve="a3" />
      </node>
      <node concept="3DMq4_" id="49eohyN0F7P" role="3DMq5C">
        <ref role="3DMq4F" node="49eohyN0F7p" resolve="a4" />
      </node>
      <node concept="3DMq4E" id="49eohyN0F7V" role="3DMq5I">
        <ref role="3DMq5A" node="49eohyN0F7B" />
        <ref role="3DMq5$" node="49eohyN0F7D" />
      </node>
      <node concept="3DMq4E" id="49eohyN0F7X" role="3DMq5I">
        <ref role="3DMq5A" node="49eohyN0F7B" />
        <ref role="3DMq5$" node="49eohyN0F7G" />
      </node>
      <node concept="3DMq4E" id="49eohyN0F80" role="3DMq5I">
        <ref role="3DMq5A" node="49eohyN0F7G" />
        <ref role="3DMq5$" node="49eohyN0F7K" />
      </node>
      <node concept="3DMq4E" id="49eohyN0F84" role="3DMq5I">
        <ref role="3DMq5A" node="49eohyN0F7D" />
        <ref role="3DMq5$" node="49eohyN0F7P" />
      </node>
      <node concept="37mRI7" id="49eohyN0F8a" role="lGtFl">
        <node concept="37mRIm" id="49eohyN0F8b" role="37mRID">
          <property role="37mO49" value="4777863013397082599" />
          <node concept="gqqVs" id="49eohyN0F89" role="37mO4d">
            <property role="gqqTZ" value="50.0001" />
            <property role="gqqTW" value="50.0" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="49eohyN0F8d" role="37mRID">
          <property role="37mO49" value="4777863013397082601" />
          <node concept="gqqVs" id="49eohyN0F8c" role="37mO4d">
            <property role="gqqTZ" value="116.00029836425782" />
            <property role="gqqTW" value="101.0" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="49eohyN0F8f" role="37mRID">
          <property role="37mO49" value="4777863013397082604" />
          <node concept="gqqVs" id="49eohyN0F8e" role="37mO4d">
            <property role="gqqTZ" value="116.00029836425782" />
            <property role="gqqTW" value="50.0" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="49eohyN0F8h" role="37mRID">
          <property role="37mO49" value="4777863013397082608" />
          <node concept="gqqVs" id="49eohyN0F8g" role="37mO4d">
            <property role="gqqTZ" value="162.00049672851563" />
            <property role="gqqTW" value="50.0" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="49eohyN0F8j" role="37mRID">
          <property role="37mO49" value="4777863013397082613" />
          <node concept="gqqVs" id="49eohyN0F8i" role="37mO4d">
            <property role="gqqTZ" value="162.00049672851563" />
            <property role="gqqTW" value="101.0" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="49eohyN0F8l" role="37mRID">
          <property role="37mO49" value="4777863013397082619" />
          <node concept="2VclpC" id="49eohyN0F8k" role="37mO4d">
            <node concept="2VclrF" id="49eohyN0F8m" role="2Vcluh">
              <property role="2Vclpx" value="96.00020027160645" />
              <property role="2Vclpz" value="66.50005" />
            </node>
            <node concept="2VclrF" id="49eohyN0F8n" role="2Vcluh">
              <property role="2Vclpx" value="96.00020027160645" />
              <property role="2Vclpz" value="117.50005" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

