<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f76a71f-8ff3-4fc1-ba13-01a6d60b4afe(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="1411682935492097494" name="ActorLanguage.structure.ReceptionistPolicy" flags="ng" index="2iUZJK">
        <property id="1411682935492097495" name="policy" index="2iUZJL" />
      </concept>
      <concept id="1411682935490806610" name="ActorLanguage.structure.GetActorsFromReceptionist" flags="ng" index="2iZ$PO">
        <child id="1411682935492097502" name="policy" index="2iUZJS" />
        <child id="13109696840883591" name="actorReferences" index="BvGUO" />
      </concept>
      <concept id="3715044905897659561" name="ActorLanguage.structure.SendMessageToActors" flags="ng" index="2nav41">
        <property id="3715044905898602550" name="priority" index="2neSQu" />
        <reference id="3715044905897659564" name="referenceList" index="2nav44" />
        <child id="3715044905900233180" name="payload" index="2ngaLO" />
      </concept>
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="4619656042768923827" name="ActorLanguage.structure.ActorReferenceList" flags="ng" index="2_DyK2" />
      <concept id="7724742800286591751" name="ActorLanguage.structure.ActorBoxesList" flags="ng" index="Fpmux">
        <child id="7724742800286591752" name="actorBoxes" index="FpmuI" />
      </concept>
      <concept id="4447085707124854353" name="ActorLanguage.structure.StringBody" flags="ng" index="2JkZqM">
        <property id="4447085707124854354" name="body" index="2JkZqL" />
      </concept>
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="1411682935489244212" name="address" index="2iLA8i" />
        <property id="4813801747212515788" name="fetchPolicy" index="1V3Vrz" />
        <reference id="1411682935489260658" name="behavior" index="2iLy9k" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actorCreation" index="37lXYW" />
        <child id="8453059353961860195" name="types" index="1fvW3h" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="8453059353960860303" name="ActorLanguage.structure.CustomType" flags="ng" index="1frwoX" />
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="7051067309802826947" name="ActorLanguage.structure.ExternalFunction" flags="ng" index="1hWc2v" />
      <concept id="7051067309802828018" name="ActorLanguage.structure.ExecuteExternalFunction" flags="ng" index="1hWdMI">
        <property id="3715044905902635815" name="resultName" index="2nvgqf" />
        <reference id="8453059353961861886" name="resultType" index="1fvXTc" />
        <reference id="7051067309803752890" name="message" index="1hSE7A" />
        <reference id="7051067309802828019" name="function" index="1hWdMJ" />
        <child id="3715044905902635819" name="result" index="2nvgq3" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH">
        <reference id="8453059353960891329" name="type" index="1frCXN" />
      </concept>
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
      <concept id="2750811047725463864" name="ActorLanguage.structure.ActorLink" flags="ng" index="3DMq4E">
        <reference id="2750811047725463926" name="actorTo" index="3DMq5$" />
        <reference id="2750811047725463924" name="actorFrom" index="3DMq5A" />
        <child id="8619478032122084377" name="data" index="1qtvm3" />
      </concept>
      <concept id="3602543757318970826" name="ActorLanguage.structure.ActorLanguageStatementList" flags="ng" index="3ZcDeZ">
        <child id="3602543757318970831" name="statements" index="3ZcDeU" />
      </concept>
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
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
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
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
      </concept>
    </language>
  </registry>
  <node concept="37lXYX" id="3SawQFrbiIT">
    <property role="TrG5h" value="TestScript" />
    <node concept="37lXYJ" id="3SawQFrbiHk" role="37lXYW">
      <property role="TrG5h" value="dataSource" />
      <property role="1V3Vrz" value="3aQNPNd64Wc/NOOP" />
      <property role="2iLA8i" value="0" />
      <ref role="2iLy9k" node="3SawQFrbiH2" resolve="DataSource" />
      <node concept="2uUgHn" id="3SawQFrbiHl" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0z" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_d" />
      <property role="2iLA8i" value="1" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0$" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0_" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_e" />
      <property role="2iLA8i" value="2" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0A" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0B" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_g" />
      <property role="2iLA8i" value="3" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0C" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0D" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_h" />
      <property role="2iLA8i" value="4" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0E" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0F" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_i" />
      <property role="2iLA8i" value="5" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0G" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0H" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_j" />
      <property role="2iLA8i" value="6" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0I" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0J" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_k" />
      <property role="2iLA8i" value="7" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0K" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0L" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_l" />
      <property role="2iLA8i" value="8" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="2JwraTRgn0M" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0N" role="37lXYW">
      <property role="2iLA8i" value="9" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="window_tp1ljn_b" />
      <ref role="2iLy9k" node="3SawQFrbiFr" resolve="window" />
      <node concept="2uUgHn" id="2JwraTRgn0O" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0P" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query1" />
      <property role="2iLA8i" value="10" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn0Q" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0R" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query1" />
      <property role="2iLA8i" value="11" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="2JwraTRgn0S" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0T" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Sum_query1" />
      <property role="2iLA8i" value="12" />
      <ref role="2iLy9k" node="2JwraTRgn3N" resolve="Sum" />
      <node concept="2uUgHn" id="2JwraTRgn0U" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0V" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query2" />
      <property role="2iLA8i" value="13" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn0W" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0X" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query2" />
      <property role="2iLA8i" value="14" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="2JwraTRgn0Y" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn0Z" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Count_query2" />
      <property role="2iLA8i" value="15" />
      <ref role="2iLy9k" node="2JwraTRgn6R" resolve="Count" />
      <node concept="2uUgHn" id="2JwraTRgn10" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn11" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query3" />
      <property role="2iLA8i" value="16" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn12" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn13" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query3" />
      <property role="2iLA8i" value="17" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="2JwraTRgn14" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn15" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Average_query3" />
      <property role="2iLA8i" value="18" />
      <ref role="2iLy9k" node="3SawQFrbiGl" resolve="Average" />
      <node concept="2uUgHn" id="2JwraTRgn16" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn17" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query4" />
      <property role="2iLA8i" value="19" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn18" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn19" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query5" />
      <property role="2iLA8i" value="20" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1a" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1b" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query5" />
      <property role="2iLA8i" value="21" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="2JwraTRgn1c" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1d" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="orderBy_query5" />
      <property role="2iLA8i" value="22" />
      <ref role="2iLy9k" node="3SawQFrbiGN" resolve="orderBy" />
      <node concept="2uUgHn" id="2JwraTRgn1e" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1f" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Sum_query5" />
      <property role="2iLA8i" value="23" />
      <ref role="2iLy9k" node="2JwraTRgn3N" resolve="Sum" />
      <node concept="2uUgHn" id="2JwraTRgn1g" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1h" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query6" />
      <property role="2iLA8i" value="24" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1i" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1j" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query7" />
      <property role="2iLA8i" value="25" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1k" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1l" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query8" />
      <property role="2iLA8i" value="26" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1m" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1n" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query9" />
      <property role="2iLA8i" value="27" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1o" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1p" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query10" />
      <property role="2iLA8i" value="28" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1q" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1r" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Average_query10" />
      <property role="2iLA8i" value="29" />
      <ref role="2iLy9k" node="3SawQFrbiGl" resolve="Average" />
      <node concept="2uUgHn" id="2JwraTRgn1s" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="2JwraTRgn1t" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query11" />
      <property role="2iLA8i" value="30" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="2JwraTRgn1u" role="2LyG1a" />
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiFr" role="2QtU1L">
      <property role="TrG5h" value="window" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3SawQFrbiFs" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiFt" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiFu" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqmp" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiK2" resolve="window" />
          <ref role="1hSE7A" node="3SawQFrbiFs" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="4hddlqRsqm_" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4hddlqRsqmF" role="3ZcDeU">
          <node concept="2iUZJK" id="4hddlqRsqmH" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4hddlqRsqmJ" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="4hddlqRsqmX" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4hddlqRsqmJ" resolve="refs" />
          <node concept="3g$k$6" id="4hddlqRsqmZ" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqm_" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiFC" role="2QtU1L">
      <property role="TrG5h" value="projection" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3SawQFrbiFD" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiFE" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiFF" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqnf" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJ3" resolve="projection" />
          <ref role="1hSE7A" node="3SawQFrbiFD" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="4hddlqRsqnr" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="2JwraTRgn3m" role="3ZcDeU">
          <node concept="2iUZJK" id="2JwraTRgn3o" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="2JwraTRgn3q" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="2JwraTRgn3C" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="2JwraTRgn3q" resolve="refs" />
          <node concept="3g$k$6" id="2JwraTRgn3E" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqnr" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiFR" role="2QtU1L">
      <property role="TrG5h" value="selection" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3SawQFrbiFS" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiFT" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiFU" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqop" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJ1" resolve="selection" />
          <ref role="1hSE7A" node="3SawQFrbiFS" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="4hddlqRsqo_" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4hddlqRsqoF" role="3ZcDeU">
          <node concept="2iUZJK" id="4hddlqRsqoH" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4hddlqRsqoJ" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="4hddlqRsqoX" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4hddlqRsqoJ" resolve="refs" />
          <node concept="3g$k$6" id="4hddlqRsqoZ" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqo_" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiG6" role="2QtU1L">
      <property role="TrG5h" value="joinColumns" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3SawQFrbiG7" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiG8" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiG9" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqpf" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJ$" resolve="join" />
          <ref role="1hSE7A" node="3SawQFrbiG7" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="4hddlqRsqpr" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4hddlqRsqpx" role="3ZcDeU">
          <node concept="2iUZJK" id="4hddlqRsqpz" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4hddlqRsqp_" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="4hddlqRsqpN" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4hddlqRsqp_" resolve="refs" />
          <node concept="3g$k$6" id="4hddlqRsqpP" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqpr" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="2JwraTRgn3N" role="2QtU1L">
      <property role="TrG5h" value="Sum" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="2JwraTRgn5Q" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="2JwraTRgn5R" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="2JwraTRgn5U" role="37ngyo">
        <node concept="1hWdMI" id="2JwraTRgn5W" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJs" resolve="sum" />
          <ref role="1hSE7A" node="2JwraTRgn5Q" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="2JwraTRgn6k" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="2JwraTRgn6q" role="3ZcDeU">
          <node concept="2iUZJK" id="2JwraTRgn6s" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="2JwraTRgn6u" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="2JwraTRgn6G" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="2JwraTRgn6u" resolve="refs" />
          <node concept="3g$k$6" id="2JwraTRgn6I" role="2ngaLO">
            <ref role="3g$k$l" node="2JwraTRgn6k" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="2JwraTRgn6R" role="2QtU1L">
      <property role="TrG5h" value="Count" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="2JwraTRgn8X" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="2JwraTRgn8Y" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="2JwraTRgn91" role="37ngyo">
        <node concept="1hWdMI" id="2JwraTRgn93" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJ6" resolve="count" />
          <ref role="1hSE7A" node="2JwraTRgn8X" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="2JwraTRgn9f" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="2JwraTRgn9l" role="3ZcDeU">
          <node concept="2iUZJK" id="2JwraTRgn9n" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="2JwraTRgn9p" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="2JwraTRgn9B" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="2JwraTRgn9p" resolve="refs" />
          <node concept="3g$k$6" id="2JwraTRgn9D" role="2ngaLO">
            <ref role="3g$k$l" node="2JwraTRgn9f" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiGl" role="2QtU1L">
      <property role="2F6P9D" value="rec_message" />
      <property role="TrG5h" value="Average" />
      <node concept="37lXYU" id="3SawQFrbiGm" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiGn" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiGo" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqq7" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJa" resolve="average" />
          <ref role="1hSE7A" node="3SawQFrbiGm" resolve="rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="4hddlqRsqqj" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4hddlqRsqqp" role="3ZcDeU">
          <node concept="2iUZJK" id="4hddlqRsqqr" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4hddlqRsqqt" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="4hddlqRsqqF" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4hddlqRsqqt" resolve="refs" />
          <node concept="3g$k$6" id="4hddlqRsqqH" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqqj" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiG$" role="2QtU1L">
      <property role="TrG5h" value="groupBy" />
      <property role="2F6P9D" value="groupBy_rec_message" />
      <node concept="37lXYU" id="3SawQFrbiG_" role="2F2NYG">
        <property role="TrG5h" value="groupBy_rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiGA" role="GupN0">
          <property role="TrG5h" value="groupBy_rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiGB" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqqX" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJH" resolve="groupBy" />
          <ref role="1hSE7A" node="3SawQFrbiG_" resolve="groupBy_rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIY" resolve="GROUPS" />
          <node concept="1lgcPH" id="4hddlqRsqr9" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIY" resolve="GROUPS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4hddlqRsqrf" role="3ZcDeU">
          <node concept="2iUZJK" id="4hddlqRsqrh" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4hddlqRsqrj" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="4hddlqRsqrx" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4hddlqRsqrj" resolve="refs" />
          <node concept="3g$k$6" id="4hddlqRsqrz" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqr9" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiGN" role="2QtU1L">
      <property role="TrG5h" value="orderBy" />
      <property role="2F6P9D" value="orderBy_rec_message" />
      <node concept="37lXYU" id="3SawQFrbiGO" role="2F2NYG">
        <property role="TrG5h" value="orderBy_rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiGP" role="GupN0">
          <property role="TrG5h" value="orderBy_rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiGQ" role="37ngyo">
        <node concept="1hWdMI" id="4hddlqRsqrN" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiJR" resolve="orderBy" />
          <ref role="1hSE7A" node="3SawQFrbiGO" resolve="orderBy_rec_message" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="ROWS" />
          <node concept="1lgcPH" id="4hddlqRsqrZ" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3SawQFrbiIW" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4hddlqRsqs5" role="3ZcDeU">
          <node concept="2iUZJK" id="4hddlqRsqs7" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4hddlqRsqs9" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="4hddlqRsqsn" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4hddlqRsqs9" resolve="refs" />
          <node concept="3g$k$6" id="4hddlqRsqsp" role="2ngaLO">
            <ref role="3g$k$l" node="4hddlqRsqrZ" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3SawQFrbiH2" role="2QtU1L">
      <property role="TrG5h" value="DataSource" />
      <property role="2F6P9D" value="ds_rec_message" />
      <node concept="37lXYU" id="3SawQFrbiH3" role="2F2NYG">
        <property role="TrG5h" value="ds_rec_message" />
        <node concept="1lgcPH" id="3SawQFrbiH4" role="GupN0">
          <property role="TrG5h" value="ds_rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3SawQFrbiH5" role="37ngyo" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJ1" role="1hWdPE">
      <property role="TrG5h" value="selection" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJ3" role="1hWdPE">
      <property role="TrG5h" value="projection" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJ6" role="1hWdPE">
      <property role="TrG5h" value="count" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJa" role="1hWdPE">
      <property role="TrG5h" value="average" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJf" role="1hWdPE">
      <property role="TrG5h" value="min" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJl" role="1hWdPE">
      <property role="TrG5h" value="max" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJs" role="1hWdPE">
      <property role="TrG5h" value="sum" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJ$" role="1hWdPE">
      <property role="TrG5h" value="join" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJH" role="1hWdPE">
      <property role="TrG5h" value="groupBy" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJR" role="1hWdPE">
      <property role="TrG5h" value="orderBy" />
    </node>
    <node concept="1hWc2v" id="3SawQFrbiK2" role="1hWdPE">
      <property role="TrG5h" value="window" />
    </node>
    <node concept="1frwoX" id="3SawQFrbiIW" role="1fvW3h">
      <property role="TrG5h" value="ROWS" />
    </node>
    <node concept="1frwoX" id="3SawQFrbiIY" role="1fvW3h">
      <property role="TrG5h" value="GROUPS" />
    </node>
    <node concept="2QtU1Q" id="3SawQFrbiIU" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="3SawQFrbiIV" role="2QtU1V" />
    </node>
    <node concept="3DMq4$" id="2JwraTRgn1v" role="3DMxif">
      <node concept="3DMq4E" id="2JwraTRgn1w" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2v" />
        <ref role="3DMq5A" node="2JwraTRgn2t" />
        <node concept="2JkZqM" id="2JwraTRgn1x" role="1qtvm3">
          <property role="2JkZqL" value="60" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1y" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2K" />
        <ref role="3DMq5A" node="2JwraTRgn2t" />
        <node concept="2JkZqM" id="2JwraTRgn1z" role="1qtvm3">
          <property role="2JkZqL" value="DOLocationID,total_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1$" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2Y" />
        <ref role="3DMq5A" node="2JwraTRgn2t" />
        <node concept="2JkZqM" id="2JwraTRgn1_" role="1qtvm3">
          <property role="2JkZqL" value="DOLocationID == 236 &amp;&amp; (tpep_pickup_datetime &gt;= 2023-12-32 15:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2024-01-01 04:00:00)" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1A" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn31" />
        <ref role="3DMq5A" node="2JwraTRgn2T" />
        <node concept="2JkZqM" id="2JwraTRgn1B" role="1qtvm3">
          <property role="2JkZqL" value="tpep_pickup_datetime &gt;= 2024-05-17 10:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2024-17-05 23:59:59" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1C" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2w" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1D" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID,passenger_count" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1E" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2$" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1F" role="1qtvm3">
          <property role="2JkZqL" value="RatecodeID,VendorID" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1G" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2C" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1H" role="1qtvm3">
          <property role="2JkZqL" value="Airport_fee != 0.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1I" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2H" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1J" role="1qtvm3">
          <property role="2JkZqL" value="total_amount &gt; 100.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1K" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2P" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1L" role="1qtvm3">
          <property role="2JkZqL" value="tpep_pickup_datetime &gt;= 2023-12-25 00:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2023-12-25 23:59:59" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1M" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2S" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1N" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID == 161 || DOLocationID == 161" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1O" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn2V" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1P" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID == 49 || DOLocationID == 49" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1Q" role="3DMq5I">
        <ref role="3DMq5$" node="2JwraTRgn35" />
        <ref role="3DMq5A" node="2JwraTRgn2v" />
        <node concept="2JkZqM" id="2JwraTRgn1R" role="1qtvm3">
          <property role="2JkZqL" value="(tpep_pickup_datetime &gt;= 2023-07-21 00:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2023-07-26 23:59:59) || ((tpep_pickup_datetime &gt;= 2023-03-31 00:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2023-04-01 23:59:59) || (tpep_pickup_datetime &gt;= 2024-05-18 00:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2024-05-22 23:59:59))" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1S" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2C" />
        <ref role="3DMq5$" node="2JwraTRgn2D" />
        <node concept="2JkZqM" id="2JwraTRgn1T" role="1qtvm3">
          <property role="2JkZqL" value="payment_type,total_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1U" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2H" />
        <ref role="3DMq5$" node="2JwraTRgn2I" />
        <node concept="2JkZqM" id="2JwraTRgn1V" role="1qtvm3">
          <property role="2JkZqL" value="total_amount,trip_distance" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1W" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2P" />
        <ref role="3DMq5$" node="2JwraTRgn2Q" />
        <node concept="2JkZqM" id="2JwraTRgn1X" role="1qtvm3">
          <property role="2JkZqL" value="total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,Airport_fee" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn1Y" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2S" />
        <ref role="3DMq5$" node="2JwraTRgn2T" />
        <node concept="2JkZqM" id="2JwraTRgn1Z" role="1qtvm3">
          <property role="2JkZqL" value="Airport_fee,tpep_pickup_datetime,tpep_dropoff_datetime,total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,tip_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn20" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2V" />
        <ref role="3DMq5$" node="2JwraTRgn2W" />
        <node concept="2JkZqM" id="2JwraTRgn21" role="1qtvm3">
          <property role="2JkZqL" value="total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,Airport_fee" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn22" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2Y" />
        <ref role="3DMq5$" node="2JwraTRgn2Z" />
        <node concept="2JkZqM" id="2JwraTRgn23" role="1qtvm3">
          <property role="2JkZqL" value="total_amount,passenger_count,trip_distance,PULocationID,DOLocationID,Airport_fee" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn24" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn31" />
        <ref role="3DMq5$" node="2JwraTRgn32" />
        <node concept="2JkZqM" id="2JwraTRgn25" role="1qtvm3">
          <property role="2JkZqL" value="tip_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn26" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn35" />
        <ref role="3DMq5$" node="2JwraTRgn36" />
        <node concept="2JkZqM" id="2JwraTRgn27" role="1qtvm3">
          <property role="2JkZqL" value="DOLocationID,PULocationID,passenger_count" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn28" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2w" />
        <ref role="3DMq5$" node="2JwraTRgn2x" />
        <node concept="2JkZqM" id="2JwraTRgn29" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2a" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2$" />
        <ref role="3DMq5$" node="2JwraTRgn2_" />
        <node concept="2JkZqM" id="2JwraTRgn2b" role="1qtvm3">
          <property role="2JkZqL" value="RatecodeID" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2c" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2D" />
        <ref role="3DMq5$" node="2JwraTRgn2E" />
        <node concept="2JkZqM" id="2JwraTRgn2d" role="1qtvm3">
          <property role="2JkZqL" value="payment_type" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2e" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2K" />
        <ref role="3DMq5$" node="2JwraTRgn2L" />
        <node concept="2JkZqM" id="2JwraTRgn2f" role="1qtvm3">
          <property role="2JkZqL" value="DOLocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2g" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn32" />
        <ref role="3DMq5$" node="2JwraTRgn33" />
        <node concept="2JkZqM" id="2JwraTRgn2h" role="1qtvm3">
          <property role="2JkZqL" value="tip_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2i" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2x" />
        <ref role="3DMq5$" node="2JwraTRgn2y" />
        <node concept="2JkZqM" id="2JwraTRgn2j" role="1qtvm3">
          <property role="2JkZqL" value="passenger_count" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2k" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2_" />
        <ref role="3DMq5$" node="2JwraTRgn2A" />
        <node concept="2JkZqM" id="2JwraTRgn2l" role="1qtvm3">
          <property role="2JkZqL" value="VendorID" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2m" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2E" />
        <ref role="3DMq5$" node="2JwraTRgn2F" />
        <node concept="2JkZqM" id="2JwraTRgn2n" role="1qtvm3">
          <property role="2JkZqL" value="total_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2o" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2L" />
        <ref role="3DMq5$" node="2JwraTRgn2N" />
        <node concept="2JkZqM" id="2JwraTRgn2p" role="1qtvm3">
          <property role="2JkZqL" value="total_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="2JwraTRgn2q" role="3DMq5I">
        <ref role="3DMq5A" node="2JwraTRgn2N" />
        <ref role="3DMq5$" node="2JwraTRgn2M" />
        <node concept="2JkZqM" id="2JwraTRgn2r" role="1qtvm3">
          <property role="2JkZqL" value="total_amount" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2s" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2t" role="FpmuI">
          <ref role="3DMq4F" node="3SawQFrbiHk" resolve="dataSource" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2u" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2v" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0N" resolve="window_tp1ljn_b" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2w" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0P" resolve="proj_query1" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2x" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0R" resolve="groupBy_query1" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2y" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0T" resolve="Sum_query1" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2z" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2$" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0V" resolve="proj_query2" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2_" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0X" resolve="groupBy_query2" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2A" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0Z" resolve="Count_query2" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2B" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2C" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0z" resolve="select_tp1ljn_d" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2D" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn11" resolve="proj_query3" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2E" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn13" resolve="groupBy_query3" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2F" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn15" resolve="Average_query3" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2G" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2H" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0_" resolve="select_tp1ljn_e" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2I" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn17" resolve="proj_query4" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2J" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2K" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn19" resolve="proj_query5" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2L" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1b" resolve="groupBy_query5" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2M" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1d" resolve="orderBy_query5" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2N" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1f" resolve="Sum_query5" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2O" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2P" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0B" resolve="select_tp1ljn_g" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2Q" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1h" resolve="proj_query6" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2R" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2S" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0D" resolve="select_tp1ljn_h" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2T" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1j" resolve="proj_query7" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2U" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2V" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0F" resolve="select_tp1ljn_i" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2W" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1l" resolve="proj_query8" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn2X" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn2Y" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0H" resolve="select_tp1ljn_j" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn2Z" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1n" resolve="proj_query9" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn30" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn31" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0J" resolve="select_tp1ljn_k" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn32" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1p" resolve="proj_query10" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn33" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1r" resolve="Average_query10" />
        </node>
      </node>
      <node concept="Fpmux" id="2JwraTRgn34" role="Fpmug">
        <node concept="3DMq4_" id="2JwraTRgn35" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn0L" resolve="select_tp1ljn_l" />
        </node>
        <node concept="3DMq4_" id="2JwraTRgn36" role="FpmuI">
          <ref role="3DMq4F" node="2JwraTRgn1t" resolve="proj_query11" />
        </node>
      </node>
      <node concept="37mRI7" id="2JwraTRgnv9" role="lGtFl">
        <node concept="37mRIm" id="2JwraTRgnva" role="37mRID">
          <property role="37mO49" value="3161646434994974877" />
          <node concept="gqqVs" id="2JwraTRgnv8" role="37mO4d">
            <property role="gqqTZ" value="12.000100000000003" />
            <property role="gqqTW" value="282.00044999999994" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvc" role="37mRID">
          <property role="37mO49" value="3161646434994974879" />
          <node concept="gqqVs" id="2JwraTRgnvb" role="37mO4d">
            <property role="gqqTZ" value="1082.000344140625" />
            <property role="gqqTW" value="282.00044999999994" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnve" role="37mRID">
          <property role="37mO49" value="3161646434994974880" />
          <node concept="gqqVs" id="2JwraTRgnvd" role="37mO4d">
            <property role="gqqTZ" value="3576.00058828125" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvg" role="37mRID">
          <property role="37mO49" value="3161646434994974881" />
          <node concept="gqqVs" id="2JwraTRgnvf" role="37mO4d">
            <property role="gqqTZ" value="4802.0010765625" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvi" role="37mRID">
          <property role="37mO49" value="3161646434994974882" />
          <node concept="gqqVs" id="2JwraTRgnvh" role="37mO4d">
            <property role="gqqTZ" value="5684.0010765625" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvk" role="37mRID">
          <property role="37mO49" value="3161646434994974884" />
          <node concept="gqqVs" id="2JwraTRgnvj" role="37mO4d">
            <property role="gqqTZ" value="3576.00058828125" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvm" role="37mRID">
          <property role="37mO49" value="3161646434994974885" />
          <node concept="gqqVs" id="2JwraTRgnvl" role="37mO4d">
            <property role="gqqTZ" value="4802.0010765625" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvo" role="37mRID">
          <property role="37mO49" value="3161646434994974886" />
          <node concept="gqqVs" id="2JwraTRgnvn" role="37mO4d">
            <property role="gqqTZ" value="5684.0010765625" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="106.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvq" role="37mRID">
          <property role="37mO49" value="3161646434994974888" />
          <node concept="gqqVs" id="2JwraTRgnvp" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="312.00049999999993" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvs" role="37mRID">
          <property role="37mO49" value="3161646434994974889" />
          <node concept="gqqVs" id="2JwraTRgnvr" role="37mO4d">
            <property role="gqqTZ" value="4814.0010765625" />
            <property role="gqqTW" value="312.00049999999993" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvu" role="37mRID">
          <property role="37mO49" value="3161646434994974890" />
          <node concept="gqqVs" id="2JwraTRgnvt" role="37mO4d">
            <property role="gqqTZ" value="5688.0010765625" />
            <property role="gqqTW" value="312.00049999999993" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvw" role="37mRID">
          <property role="37mO49" value="3161646434994974891" />
          <node concept="gqqVs" id="2JwraTRgnvv" role="37mO4d">
            <property role="gqqTZ" value="5950.0010765625" />
            <property role="gqqTW" value="312.00049999999993" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvy" role="37mRID">
          <property role="37mO49" value="3161646434994974893" />
          <node concept="gqqVs" id="2JwraTRgnvx" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="432.00069999999994" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnv$" role="37mRID">
          <property role="37mO49" value="3161646434994974894" />
          <node concept="gqqVs" id="2JwraTRgnvz" role="37mO4d">
            <property role="gqqTZ" value="4802.0010765625" />
            <property role="gqqTW" value="432.00069999999994" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvA" role="37mRID">
          <property role="37mO49" value="3161646434994974896" />
          <node concept="gqqVs" id="2JwraTRgnv_" role="37mO4d">
            <property role="gqqTZ" value="1098.000344140625" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvC" role="37mRID">
          <property role="37mO49" value="3161646434994974897" />
          <node concept="gqqVs" id="2JwraTRgnvB" role="37mO4d">
            <property role="gqqTZ" value="3564.00058828125" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvE" role="37mRID">
          <property role="37mO49" value="3161646434994974898" />
          <node concept="gqqVs" id="2JwraTRgnvD" role="37mO4d">
            <property role="gqqTZ" value="5684.0010765625" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvG" role="37mRID">
          <property role="37mO49" value="3161646434994974899" />
          <node concept="gqqVs" id="2JwraTRgnvF" role="37mO4d">
            <property role="gqqTZ" value="4818.0010765625" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvI" role="37mRID">
          <property role="37mO49" value="3161646434994974901" />
          <node concept="gqqVs" id="2JwraTRgnvH" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="192.00029999999998" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvK" role="37mRID">
          <property role="37mO49" value="3161646434994974902" />
          <node concept="gqqVs" id="2JwraTRgnvJ" role="37mO4d">
            <property role="gqqTZ" value="4802.0010765625" />
            <property role="gqqTW" value="192.00029999999998" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvM" role="37mRID">
          <property role="37mO49" value="3161646434994974904" />
          <node concept="gqqVs" id="2JwraTRgnvL" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="252.00039999999996" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvO" role="37mRID">
          <property role="37mO49" value="3161646434994974905" />
          <node concept="gqqVs" id="2JwraTRgnvN" role="37mO4d">
            <property role="gqqTZ" value="4814.0010765625" />
            <property role="gqqTW" value="252.00039999999996" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvQ" role="37mRID">
          <property role="37mO49" value="3161646434994974907" />
          <node concept="gqqVs" id="2JwraTRgnvP" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="492.0007999999999" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvS" role="37mRID">
          <property role="37mO49" value="3161646434994974908" />
          <node concept="gqqVs" id="2JwraTRgnvR" role="37mO4d">
            <property role="gqqTZ" value="4802.0010765625" />
            <property role="gqqTW" value="492.0007999999999" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvU" role="37mRID">
          <property role="37mO49" value="3161646434994974910" />
          <node concept="gqqVs" id="2JwraTRgnvT" role="37mO4d">
            <property role="gqqTZ" value="1082.000344140625" />
            <property role="gqqTW" value="552.0008999999999" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvW" role="37mRID">
          <property role="37mO49" value="3161646434994974911" />
          <node concept="gqqVs" id="2JwraTRgnvV" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="552.0008999999999" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnvY" role="37mRID">
          <property role="37mO49" value="3161646434994974913" />
          <node concept="gqqVs" id="2JwraTRgnvX" role="37mO4d">
            <property role="gqqTZ" value="5684.0010765625" />
            <property role="gqqTW" value="252.00039999999996" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnw0" role="37mRID">
          <property role="37mO49" value="3161646434994974914" />
          <node concept="gqqVs" id="2JwraTRgnvZ" role="37mO4d">
            <property role="gqqTZ" value="5958.0010765625" />
            <property role="gqqTW" value="252.00039999999996" />
            <property role="gqqTX" value="106.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnw2" role="37mRID">
          <property role="37mO49" value="3161646434994974915" />
          <node concept="gqqVs" id="2JwraTRgnw1" role="37mO4d">
            <property role="gqqTZ" value="6192.0010765625" />
            <property role="gqqTW" value="252.00039999999996" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnw4" role="37mRID">
          <property role="37mO49" value="3161646434994974917" />
          <node concept="gqqVs" id="2JwraTRgnw3" role="37mO4d">
            <property role="gqqTZ" value="3560.00058828125" />
            <property role="gqqTW" value="372.0005999999999" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnw6" role="37mRID">
          <property role="37mO49" value="3161646434994974918" />
          <node concept="gqqVs" id="2JwraTRgnw5" role="37mO4d">
            <property role="gqqTZ" value="4802.0010765625" />
            <property role="gqqTW" value="372.0005999999999" />
            <property role="gqqTX" value="106.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnw8" role="37mRID">
          <property role="37mO49" value="3161646434994974816" />
          <node concept="2VclpC" id="2JwraTRgnw7" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnw9" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwa" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwb" role="3wpmZR">
                  <property role="2Vclpx" value="594.0001983642578" />
                  <property role="2Vclpz" value="313.00049999999993" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwc" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwe" role="37mRID">
          <property role="37mO49" value="3161646434994974818" />
          <node concept="2VclpC" id="2JwraTRgnwd" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwf" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwg" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwh" role="3wpmZR">
                  <property role="2Vclpx" value="502.0001983642578" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwi" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLz" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnL$" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="32.000049999999995" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwk" role="37mRID">
          <property role="37mO49" value="3161646434994974820" />
          <node concept="2VclpC" id="2JwraTRgnwj" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwl" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwm" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwn" role="3wpmZR">
                  <property role="2Vclpx" value="142.0001983642578" />
                  <property role="2Vclpz" value="583.0009499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwo" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnL_" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLA" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="572.0009499999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwq" role="37mRID">
          <property role="37mO49" value="3161646434994974822" />
          <node concept="2VclpC" id="2JwraTRgnwp" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwr" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnws" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwt" role="3wpmZR">
                  <property role="2Vclpx" value="4944.0009765625" />
                  <property role="2Vclpz" value="283.00044999999994" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwu" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnww" role="37mRID">
          <property role="37mO49" value="3161646434994974824" />
          <node concept="2VclpC" id="2JwraTRgnwv" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwx" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwy" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwz" role="3wpmZR">
                  <property role="2Vclpx" value="2284.00048828125" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnw$" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLB" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLC" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="152.00024999999997" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwA" role="37mRID">
          <property role="37mO49" value="3161646434994974826" />
          <node concept="2VclpC" id="2JwraTRgnw_" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwB" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwC" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwD" role="3wpmZR">
                  <property role="2Vclpx" value="2320.00048828125" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwE" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLD" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLE" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="92.00014999999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwG" role="37mRID">
          <property role="37mO49" value="3161646434994974828" />
          <node concept="2VclpC" id="2JwraTRgnwF" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwH" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwI" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwJ" role="3wpmZR">
                  <property role="2Vclpx" value="2324.00048828125" />
                  <property role="2Vclpz" value="343.0005499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwK" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLF" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLG" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="332.0005499999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwM" role="37mRID">
          <property role="37mO49" value="3161646434994974830" />
          <node concept="2VclpC" id="2JwraTRgnwL" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwN" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwO" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwP" role="3wpmZR">
                  <property role="2Vclpx" value="2316.00048828125" />
                  <property role="2Vclpz" value="463.0007499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwQ" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLH" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLI" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="452.0007499999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwS" role="37mRID">
          <property role="37mO49" value="3161646434994974832" />
          <node concept="2VclpC" id="2JwraTRgnwR" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwT" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnwU" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnwV" role="3wpmZR">
                  <property role="2Vclpx" value="2036.00048828125" />
                  <property role="2Vclpz" value="223.00034999999997" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnwW" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLJ" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLK" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="212.00034999999997" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnwY" role="37mRID">
          <property role="37mO49" value="3161646434994974834" />
          <node concept="2VclpC" id="2JwraTRgnwX" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnwZ" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnx0" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnx1" role="3wpmZR">
                  <property role="2Vclpx" value="2228.00048828125" />
                  <property role="2Vclpz" value="283.00044999999994" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnx2" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLL" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLM" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="272.00044999999994" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnx4" role="37mRID">
          <property role="37mO49" value="3161646434994974836" />
          <node concept="2VclpC" id="2JwraTRgnx3" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnx5" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnx6" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnx7" role="3wpmZR">
                  <property role="2Vclpx" value="2236.00048828125" />
                  <property role="2Vclpz" value="523.0008499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnx8" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLN" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLO" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="512.0008499999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxa" role="37mRID">
          <property role="37mO49" value="3161646434994974838" />
          <node concept="2VclpC" id="2JwraTRgnx9" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxb" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxc" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxd" role="3wpmZR">
                  <property role="2Vclpx" value="1252.00048828125" />
                  <property role="2Vclpz" value="403.00064999999995" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxe" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="2JwraTRgnLP" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="302.00049999999993" />
            </node>
            <node concept="2VclrF" id="2JwraTRgnLQ" role="2Vcluh">
              <property role="2Vclpx" value="1232.00048828125" />
              <property role="2Vclpz" value="392.00064999999995" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxg" role="37mRID">
          <property role="37mO49" value="3161646434994974840" />
          <node concept="2VclpC" id="2JwraTRgnxf" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxh" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxi" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxj" role="3wpmZR">
                  <property role="2Vclpx" value="4146.000732421875" />
                  <property role="2Vclpz" value="343.0005499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxk" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxm" role="37mRID">
          <property role="37mO49" value="3161646434994974842" />
          <node concept="2VclpC" id="2JwraTRgnxl" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxn" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxo" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxp" role="3wpmZR">
                  <property role="2Vclpx" value="4142.000732421875" />
                  <property role="2Vclpz" value="463.0007499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxq" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxs" role="37mRID">
          <property role="37mO49" value="3161646434994974844" />
          <node concept="2VclpC" id="2JwraTRgnxr" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxt" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxu" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxv" role="3wpmZR">
                  <property role="2Vclpx" value="3926.000732421875" />
                  <property role="2Vclpz" value="223.00034999999997" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxw" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxy" role="37mRID">
          <property role="37mO49" value="3161646434994974846" />
          <node concept="2VclpC" id="2JwraTRgnxx" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxz" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnx$" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnx_" role="3wpmZR">
                  <property role="2Vclpx" value="3710.000732421875" />
                  <property role="2Vclpz" value="283.00044999999994" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxA" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxC" role="37mRID">
          <property role="37mO49" value="3161646434994974848" />
          <node concept="2VclpC" id="2JwraTRgnxB" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxD" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxE" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxF" role="3wpmZR">
                  <property role="2Vclpx" value="3926.000732421875" />
                  <property role="2Vclpz" value="523.0008499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxG" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxI" role="37mRID">
          <property role="37mO49" value="3161646434994974850" />
          <node concept="2VclpC" id="2JwraTRgnxH" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxJ" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxK" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxL" role="3wpmZR">
                  <property role="2Vclpx" value="2076.00048828125" />
                  <property role="2Vclpz" value="583.0009499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxM" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxO" role="37mRID">
          <property role="37mO49" value="3161646434994974852" />
          <node concept="2VclpC" id="2JwraTRgnxN" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxP" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxQ" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxR" role="3wpmZR">
                  <property role="2Vclpx" value="5842.0009765625" />
                  <property role="2Vclpz" value="240.00044999999994" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxS" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnxU" role="37mRID">
          <property role="37mO49" value="3161646434994974854" />
          <node concept="2VclpC" id="2JwraTRgnxT" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnxV" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnxW" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnxX" role="3wpmZR">
                  <property role="2Vclpx" value="4082.000732421875" />
                  <property role="2Vclpz" value="403.00064999999995" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnxY" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgny0" role="37mRID">
          <property role="37mO49" value="3161646434994974856" />
          <node concept="2VclpC" id="2JwraTRgnxZ" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgny1" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgny2" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgny3" role="3wpmZR">
                  <property role="2Vclpx" value="4198.000732421875" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="2JwraTRgny4" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgny6" role="37mRID">
          <property role="37mO49" value="3161646434994974858" />
          <node concept="2VclpC" id="2JwraTRgny5" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgny7" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgny8" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgny9" role="3wpmZR">
                  <property role="2Vclpx" value="4206.000732421875" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnya" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyc" role="37mRID">
          <property role="37mO49" value="3161646434994974860" />
          <node concept="2VclpC" id="2JwraTRgnyb" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyd" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnye" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyf" role="3wpmZR">
                  <property role="2Vclpx" value="5256.0009765625" />
                  <property role="2Vclpz" value="343.0005499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnyg" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyi" role="37mRID">
          <property role="37mO49" value="3161646434994974862" />
          <node concept="2VclpC" id="2JwraTRgnyh" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyj" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyk" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyl" role="3wpmZR">
                  <property role="2Vclpx" value="2348.00048828125" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnym" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyo" role="37mRID">
          <property role="37mO49" value="3161646434994974864" />
          <node concept="2VclpC" id="2JwraTRgnyn" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyp" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyq" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyr" role="3wpmZR">
                  <property role="2Vclpx" value="6092.0009765625" />
                  <property role="2Vclpz" value="283.00044999999994" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnys" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyu" role="37mRID">
          <property role="37mO49" value="3161646434994974866" />
          <node concept="2VclpC" id="2JwraTRgnyt" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyv" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyw" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyx" role="3wpmZR">
                  <property role="2Vclpx" value="5244.0009765625" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnyy" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgny$" role="37mRID">
          <property role="37mO49" value="3161646434994974868" />
          <node concept="2VclpC" id="2JwraTRgnyz" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgny_" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyA" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyB" role="3wpmZR">
                  <property role="2Vclpx" value="5272.0009765625" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnyC" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyE" role="37mRID">
          <property role="37mO49" value="3161646434994974870" />
          <node concept="2VclpC" id="2JwraTRgnyD" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyF" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyG" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyH" role="3wpmZR">
                  <property role="2Vclpx" value="5834.0009765625" />
                  <property role="2Vclpz" value="343.0005499999999" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnyI" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyK" role="37mRID">
          <property role="37mO49" value="3161646434994974872" />
          <node concept="2VclpC" id="2JwraTRgnyJ" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyL" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyM" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyN" role="3wpmZR">
                  <property role="2Vclpx" value="4198.000732421875" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnyO" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="2JwraTRgnyQ" role="37mRID">
          <property role="37mO49" value="3161646434994974874" />
          <node concept="2VclpC" id="2JwraTRgnyP" role="37mO4d">
            <node concept="3ul5H1" id="2JwraTRgnyR" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="2JwraTRgnyS" role="3ul5Gz">
                <node concept="2VclrF" id="2JwraTRgnyT" role="3wpmZR">
                  <property role="2Vclpx" value="5256.0009765625" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="2JwraTRgnyU" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

