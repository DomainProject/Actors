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
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="7724742800300712101" name="ActorLanguage.structure.ActorLinksList" flags="ng" index="E7uK3" />
      <concept id="7724742800286591751" name="ActorLanguage.structure.ActorBoxesList" flags="ng" index="Fpmux">
        <child id="7724742800286591752" name="actorBoxes" index="FpmuI" />
      </concept>
      <concept id="63639229097850239" name="ActorLanguage.structure.Initializer" flags="ng" index="2GMybP" />
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929414" name="behavior" index="2QtU1P" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="4813801747212515788" name="fetchPolicy" index="1V3Vrz" />
        <reference id="1411682935489260658" name="behavior" index="2iLy9k" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="63639229097885131" name="initializers" index="2GMED1" />
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actors" index="37lXYW" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="7051067309802826947" name="ActorLanguage.structure.ExternalFunction" flags="ng" index="1hWc2v" />
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH" />
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <property id="6842115693881541009" name="receivedMessageName" index="2F6P9D" />
        <child id="6842115693882584148" name="receivedMessage" index="2F2NYG" />
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
      <concept id="2750811047725463862" name="ActorLanguage.structure.ActorsGraph" flags="ng" index="3DMq4$">
        <child id="7724742800286591798" name="actors" index="Fpmug" />
        <child id="2750811047725463932" name="links" index="3DMq5I" />
      </concept>
      <concept id="2750811047725463863" name="ActorLanguage.structure.ActorBox" flags="ng" index="3DMq4_">
        <reference id="2750811047725463865" name="actor" index="3DMq4F" />
      </concept>
      <concept id="3602543757318970826" name="ActorLanguage.structure.ActorLanguageStatementList" flags="ng" index="3ZcDeZ">
        <child id="3602543757318970831" name="statements" index="3ZcDeU" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
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
    <node concept="1lj4MQ" id="37YNBnePADf" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <property role="2F6P9D" value="m" />
      <node concept="37lXYU" id="37YNBnePADu" role="2F2NYG">
        <property role="TrG5h" value="m" />
        <node concept="1lgcPH" id="37YNBnePADv" role="GupN0">
          <property role="TrG5h" value="m.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="37YNBnePADA" role="37ngyo">
        <node concept="37lXYJ" id="ft6S0x41tm" role="3ZcDeU">
          <property role="TrG5h" value="act" />
          <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
          <ref role="2iLy9k" node="37YNBnePADl" resolve="b2" />
          <node concept="2uUgHn" id="ft6S0x41tn" role="2LyG1a" />
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="37YNBnePADl" role="2QtU1L">
      <property role="TrG5h" value="b2" />
      <property role="2F6P9D" value="m" />
      <node concept="37lXYU" id="37YNBnePADy" role="2F2NYG">
        <property role="TrG5h" value="m" />
        <node concept="1lgcPH" id="37YNBnePADz" role="GupN0">
          <property role="TrG5h" value="m.payload" />
        </node>
      </node>
    </node>
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
    <node concept="1hWc2v" id="67qr5KKcstY" role="1hWdPE">
      <property role="TrG5h" value="min" />
    </node>
    <node concept="1hWc2v" id="67qr5KKcsu0" role="1hWdPE">
      <property role="TrG5h" value="max" />
    </node>
    <node concept="1hWc2v" id="52aDx$ufhME" role="1hWdPE">
      <property role="TrG5h" value="count" />
    </node>
    <node concept="1hWc2v" id="52aDx$ufhMI" role="1hWdPE">
      <property role="TrG5h" value="sum" />
    </node>
    <node concept="1hWc2v" id="52aDx$ufhMN" role="1hWdPE">
      <property role="TrG5h" value="avg" />
    </node>
    <node concept="1hWc2v" id="52aDx$ufl0k" role="1hWdPE">
      <property role="TrG5h" value="groupBy" />
    </node>
    <node concept="1hWc2v" id="52aDx$ufl0r" role="1hWdPE">
      <property role="TrG5h" value="orderBy" />
    </node>
    <node concept="2GMybP" id="5VO4ZzQh40J" role="2GMED1">
      <property role="TrG5h" value="i1" />
    </node>
    <node concept="37lXYJ" id="ft6S0x41tg" role="37lXYW">
      <property role="TrG5h" value="test" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="37YNBnePADf" resolve="b1" />
      <node concept="2uUgHn" id="ft6S0x41th" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="ft6S0x41tu" role="37lXYW">
      <property role="TrG5h" value="test1" />
      <property role="1V3Vrz" value="66sUT0$7o_S/HIGHEST_PRIORITY" />
      <ref role="2iLy9k" node="37YNBnePADl" resolve="b2" />
      <node concept="2uUgHn" id="ft6S0x41tw" role="2LyG1a" />
    </node>
    <node concept="3DMq4$" id="6GNNap0prR7" role="3DMxif">
      <node concept="E7uK3" id="4MKvPwHTpgF" role="3DMq5I" />
      <node concept="Fpmux" id="6GNNap1eHme" role="Fpmug">
        <node concept="3DMq4_" id="6GNNap1eHmg" role="FpmuI">
          <ref role="3DMq4F" node="ft6S0x41tm" resolve="act" />
        </node>
      </node>
      <node concept="Fpmux" id="6GNNap1eHmi" role="Fpmug">
        <node concept="3DMq4_" id="6GNNap1eHmm" role="FpmuI">
          <ref role="3DMq4F" node="ft6S0x41tg" resolve="test" />
        </node>
      </node>
      <node concept="37mRI7" id="6GNNap1eHmB" role="lGtFl">
        <node concept="37mRIm" id="6GNNap1eHmC" role="37mRID">
          <property role="37mO49" value="7724742800301544848" />
          <node concept="gqqVs" id="6GNNap1eHmA" role="37mO4d">
            <property role="gqqTZ" value="220.00029836425782" />
            <property role="gqqTW" value="61.0" />
            <property role="gqqTX" value="36.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="6GNNap1eHmE" role="37mRID">
          <property role="37mO49" value="7724742800301544854" />
          <node concept="gqqVs" id="6GNNap1eHmD" role="37mO4d">
            <property role="gqqTZ" value="86.00029836425782" />
            <property role="gqqTW" value="107.0" />
            <property role="gqqTX" value="44.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="6GNNap1eHmG" role="37mRID">
          <property role="37mO49" value="7724742800301544856" />
          <node concept="gqqVs" id="6GNNap1eHmF" role="37mO4d">
            <property role="gqqTZ" value="20.0" />
            <property role="gqqTW" value="16.5" />
            <property role="gqqTX" value="10.0" />
            <property role="gqqTy" value="10.0" />
          </node>
        </node>
        <node concept="37mRIm" id="6GNNap1eHmI" role="37mRID">
          <property role="37mO49" value="7724742800301544864" />
          <node concept="gqqVs" id="6GNNap1eHmH" role="37mO4d">
            <property role="gqqTZ" value="106.0" />
            <property role="gqqTW" value="32.5" />
            <property role="gqqTX" value="10.0" />
            <property role="gqqTy" value="10.0" />
          </node>
        </node>
        <node concept="37mRIm" id="6GNNap1eHn5" role="37mRID">
          <property role="37mO49" value="7724742800301544862" />
          <node concept="2VclpC" id="6GNNap1eHn4" role="37mO4d">
            <node concept="2VclrF" id="6GNNap1eHn6" role="2Vcluh">
              <property role="2Vclpx" value="148.00039672851562" />
              <property role="2Vclpz" value="28.50005" />
            </node>
            <node concept="2VclrF" id="6GNNap1eHn7" role="2Vcluh">
              <property role="2Vclpx" value="148.00039672851562" />
              <property role="2Vclpz" value="63.0" />
            </node>
            <node concept="2VclrF" id="6GNNap1eHn8" role="2Vcluh">
              <property role="2Vclpx" value="12.0" />
              <property role="2Vclpz" value="63.0" />
            </node>
            <node concept="2VclrF" id="6GNNap1eHn9" role="2Vcluh">
              <property role="2Vclpx" value="12.0" />
              <property role="2Vclpz" value="28.50005" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

