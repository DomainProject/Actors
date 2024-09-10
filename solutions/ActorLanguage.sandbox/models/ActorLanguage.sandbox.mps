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
      <concept id="4619656042771117415" name="ActorLanguage.structure.ForEachActorReferenceStatement" flags="ng" index="2_LUnm">
        <reference id="4619656042771117416" name="actorReferenceList" index="2_LUnp" />
        <child id="4619656042772348181" name="actorReference" index="2_WIQ$" />
      </concept>
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry" />
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
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="1411682935489244212" name="address" index="2iLA8i" />
        <property id="4813801747212515788" name="fetchPolicy" index="1V3Vrz" />
        <reference id="1411682935489260658" name="behavior" index="2iLy9k" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
        <child id="3269545992594456658" name="envelope" index="34eGaj" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actorCreation" index="37lXYW" />
        <child id="8453059353961860195" name="types" index="1fvW3h" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="7051067309796483633" name="ActorLanguage.structure.ActorLanguageStatement" flags="ngI" index="1e4STH">
        <child id="7051067309796483634" name="statements" index="1e4STI" />
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
      <concept id="2411303652489062023" name="ActorLanguage.structure.CreateEnvelope" flags="ng" index="1lgcPy">
        <property id="7694881003800154999" name="priority" index="2uCmrR" />
        <reference id="2411303652489062027" name="receiver" index="1lgcPI" />
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
    <node concept="37lXYJ" id="f73_nYZxvO" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_b" />
      <property role="2iLA8i" value="1" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="f73_nYZxvP" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxvQ" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_e" />
      <property role="2iLA8i" value="2" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="f73_nYZxvR" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxvS" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_g" />
      <property role="2iLA8i" value="3" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="f73_nYZxvT" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxvU" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_j" />
      <property role="2iLA8i" value="4" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="f73_nYZxvV" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxvW" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_l" />
      <property role="2iLA8i" value="5" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="f73_nYZxvX" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxvY" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_m" />
      <property role="2iLA8i" value="6" />
      <ref role="2iLy9k" node="3SawQFrbiFR" resolve="selection" />
      <node concept="2uUgHn" id="f73_nYZxvZ" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxw0" role="37lXYW">
      <property role="2iLA8i" value="7" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="window_tp1ljn_b" />
      <ref role="2iLy9k" node="3SawQFrbiFr" resolve="window" />
      <node concept="2uUgHn" id="f73_nYZxw1" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxw2" role="37lXYW">
      <property role="2iLA8i" value="8" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="window_tp1ljn_d" />
      <ref role="2iLy9k" node="3SawQFrbiFr" resolve="window" />
      <node concept="2uUgHn" id="f73_nYZxw3" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxw4" role="37lXYW">
      <property role="2iLA8i" value="9" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="window_tp1ljn_e" />
      <ref role="2iLy9k" node="3SawQFrbiFr" resolve="window" />
      <node concept="2uUgHn" id="f73_nYZxw5" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxw6" role="37lXYW">
      <property role="2iLA8i" value="10" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="window_tp1ljn_i" />
      <ref role="2iLy9k" node="3SawQFrbiFr" resolve="window" />
      <node concept="2uUgHn" id="f73_nYZxw7" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxw8" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query2" />
      <property role="2iLA8i" value="11" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="f73_nYZxw9" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwa" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query2" />
      <property role="2iLA8i" value="12" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="f73_nYZxwb" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwc" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Average_query2" />
      <property role="2iLA8i" value="13" />
      <ref role="2iLy9k" node="3SawQFrbiGl" resolve="Average" />
      <node concept="2uUgHn" id="f73_nYZxwd" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwe" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query3" />
      <property role="2iLA8i" value="14" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="f73_nYZxwf" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwg" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query3" />
      <property role="2iLA8i" value="15" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="f73_nYZxwh" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwi" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="orderBy_query3" />
      <property role="2iLA8i" value="16" />
      <ref role="2iLy9k" node="3SawQFrbiGN" resolve="orderBy" />
      <node concept="2uUgHn" id="f73_nYZxwj" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwk" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Sum_query3" />
      <property role="2iLA8i" value="17" />
      <ref role="2iLy9k" node="2JwraTRgn3N" resolve="Sum" />
      <node concept="2uUgHn" id="f73_nYZxwl" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwm" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Count_query5" />
      <property role="2iLA8i" value="18" />
      <ref role="2iLy9k" node="2JwraTRgn6R" resolve="Count" />
      <node concept="2uUgHn" id="f73_nYZxwn" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwo" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query7" />
      <property role="2iLA8i" value="19" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="f73_nYZxwp" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwq" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query7" />
      <property role="2iLA8i" value="20" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="f73_nYZxwr" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxws" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="orderBy_query7" />
      <property role="2iLA8i" value="21" />
      <ref role="2iLy9k" node="3SawQFrbiGN" resolve="orderBy" />
      <node concept="2uUgHn" id="f73_nYZxwt" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwu" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Average_query7" />
      <property role="2iLA8i" value="22" />
      <ref role="2iLy9k" node="3SawQFrbiGl" resolve="Average" />
      <node concept="2uUgHn" id="f73_nYZxwv" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxww" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query8" />
      <property role="2iLA8i" value="23" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="f73_nYZxwx" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxw$" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="orderBy_query8" />
      <property role="2iLA8i" value="25" />
      <ref role="2iLy9k" node="3SawQFrbiGN" resolve="orderBy" />
      <node concept="2uUgHn" id="f73_nYZxw_" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwy" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query8" />
      <property role="2iLA8i" value="24" />
      <ref role="2iLy9k" node="3SawQFrbiG$" resolve="groupBy" />
      <node concept="2uUgHn" id="f73_nYZxwz" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwA" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Sum_query8" />
      <property role="2iLA8i" value="26" />
      <ref role="2iLy9k" node="2JwraTRgn3N" resolve="Sum" />
      <node concept="2uUgHn" id="f73_nYZxwB" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="f73_nYZxwC" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query10" />
      <property role="2iLA8i" value="27" />
      <ref role="2iLy9k" node="3SawQFrbiFC" resolve="projection" />
      <node concept="2uUgHn" id="f73_nYZxwD" role="2LyG1a" />
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
    <node concept="3DMq4$" id="f73_nYZxwE" role="3DMxif">
      <node concept="3DMq4E" id="f73_nYZxwF" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxx$" />
        <ref role="3DMq5A" node="f73_nYZxxy" />
        <node concept="2JkZqM" id="f73_nYZxwG" role="1qtvm3">
          <property role="2JkZqL" value="3600" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwH" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxF" />
        <ref role="3DMq5A" node="f73_nYZxxy" />
        <node concept="2JkZqM" id="f73_nYZxwI" role="1qtvm3">
          <property role="2JkZqL" value="86400" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwJ" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxL" />
        <ref role="3DMq5A" node="f73_nYZxxy" />
        <node concept="2JkZqM" id="f73_nYZxwK" role="1qtvm3">
          <property role="2JkZqL" value="31536000" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwL" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxX" />
        <ref role="3DMq5A" node="f73_nYZxxy" />
        <node concept="2JkZqM" id="f73_nYZxwM" role="1qtvm3">
          <property role="2JkZqL" value="2592000" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwN" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxB" />
        <ref role="3DMq5A" node="f73_nYZxx_" />
        <node concept="2JkZqM" id="f73_nYZxwO" role="1qtvm3">
          <property role="2JkZqL" value="payment_type,total_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwP" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxO" />
        <ref role="3DMq5A" node="f73_nYZxxM" />
        <node concept="2JkZqM" id="f73_nYZxwQ" role="1qtvm3">
          <property role="2JkZqL" value="*" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwR" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxS" />
        <ref role="3DMq5A" node="f73_nYZxxQ" />
        <node concept="2JkZqM" id="f73_nYZxwS" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID,congestion_surcharge" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwT" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxy5" />
        <ref role="3DMq5A" node="f73_nYZxy3" />
        <node concept="2JkZqM" id="f73_nYZxwU" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID,DOLocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwV" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxx_" />
        <ref role="3DMq5A" node="f73_nYZxx$" />
        <node concept="2JkZqM" id="f73_nYZxwW" role="1qtvm3">
          <property role="2JkZqL" value="Airport_fee != 0.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwX" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxG" />
        <ref role="3DMq5A" node="f73_nYZxxF" />
        <node concept="2JkZqM" id="f73_nYZxwY" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID,passenger_count" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxwZ" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxM" />
        <ref role="3DMq5A" node="f73_nYZxxL" />
        <node concept="2JkZqM" id="f73_nYZxx0" role="1qtvm3">
          <property role="2JkZqL" value="tpep_pickup_datetime &gt;= 2024-12-25 00:00:00 &amp;&amp; tpep_pickup_datetime &lt;= 2024-12-25 23:59:59" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxx1" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxQ" />
        <ref role="3DMq5A" node="f73_nYZxx$" />
        <node concept="2JkZqM" id="f73_nYZxx2" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID == 161 || DOLocationID == 161" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxx3" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxxY" />
        <ref role="3DMq5A" node="f73_nYZxxX" />
        <node concept="2JkZqM" id="f73_nYZxx4" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID,trip_distance" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxx5" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxy3" />
        <ref role="3DMq5A" node="f73_nYZxx$" />
        <node concept="2JkZqM" id="f73_nYZxx6" role="1qtvm3">
          <property role="2JkZqL" value="tip_amount &gt; 10.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxx7" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxy7" />
        <ref role="3DMq5A" node="f73_nYZxx$" />
        <node concept="2JkZqM" id="f73_nYZxx8" role="1qtvm3">
          <property role="2JkZqL" value="passenger_count &gt; 4" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxx9" role="3DMq5I">
        <ref role="3DMq5$" node="f73_nYZxy9" />
        <ref role="3DMq5A" node="f73_nYZxx$" />
        <node concept="2JkZqM" id="f73_nYZxxa" role="1qtvm3">
          <property role="2JkZqL" value="payment_type == 1 &amp;&amp; total_amount &gt; 100.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxb" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxB" />
        <ref role="3DMq5$" node="f73_nYZxxC" />
        <node concept="2JkZqM" id="f73_nYZxxc" role="1qtvm3">
          <property role="2JkZqL" value="payment_type" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxd" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxG" />
        <ref role="3DMq5$" node="f73_nYZxxH" />
        <node concept="2JkZqM" id="f73_nYZxxe" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxf" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxS" />
        <ref role="3DMq5$" node="f73_nYZxxT" />
        <node concept="2JkZqM" id="f73_nYZxxg" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxh" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxY" />
        <ref role="3DMq5$" node="f73_nYZxxZ" />
        <node concept="2JkZqM" id="f73_nYZxxi" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxj" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxC" />
        <ref role="3DMq5$" node="f73_nYZxxD" />
        <node concept="2JkZqM" id="f73_nYZxxk" role="1qtvm3">
          <property role="2JkZqL" value="total_amount" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxl" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxH" />
        <ref role="3DMq5$" node="f73_nYZxxJ" />
        <node concept="2JkZqM" id="f73_nYZxxm" role="1qtvm3">
          <property role="2JkZqL" value="passenger_count" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxn" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxT" />
        <ref role="3DMq5$" node="f73_nYZxxV" />
        <node concept="2JkZqM" id="f73_nYZxxo" role="1qtvm3">
          <property role="2JkZqL" value="congestion_surcharge" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxp" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxZ" />
        <ref role="3DMq5$" node="f73_nYZxy1" />
        <node concept="2JkZqM" id="f73_nYZxxq" role="1qtvm3">
          <property role="2JkZqL" value="trip_distance" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxr" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxJ" />
        <ref role="3DMq5$" node="f73_nYZxxI" />
        <node concept="2JkZqM" id="f73_nYZxxs" role="1qtvm3">
          <property role="2JkZqL" value="passenger_count" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxt" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxxV" />
        <ref role="3DMq5$" node="f73_nYZxxU" />
        <node concept="2JkZqM" id="f73_nYZxxu" role="1qtvm3">
          <property role="2JkZqL" value="congestion_surcharge" />
        </node>
      </node>
      <node concept="3DMq4E" id="f73_nYZxxv" role="3DMq5I">
        <ref role="3DMq5A" node="f73_nYZxy1" />
        <ref role="3DMq5$" node="f73_nYZxy0" />
        <node concept="2JkZqM" id="f73_nYZxxw" role="1qtvm3">
          <property role="2JkZqL" value="trip_distance" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxx" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxy" role="FpmuI">
          <ref role="3DMq4F" node="3SawQFrbiHk" resolve="dataSource" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxz" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxx$" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxw0" resolve="window_tp1ljn_b" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxx_" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxvO" resolve="select_tp1ljn_b" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxA" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxB" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxw8" resolve="proj_query2" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxC" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwa" resolve="groupBy_query2" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxD" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwc" resolve="Average_query2" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxE" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxF" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxw2" resolve="window_tp1ljn_d" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxG" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwe" resolve="proj_query3" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxH" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwg" resolve="groupBy_query3" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxI" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwi" resolve="orderBy_query3" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxJ" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwk" resolve="Sum_query3" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxK" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxL" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxw4" resolve="window_tp1ljn_e" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxM" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxvQ" resolve="select_tp1ljn_e" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxN" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxO" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwm" resolve="Count_query5" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxP" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxQ" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxvS" resolve="select_tp1ljn_g" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxR" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxS" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwo" resolve="proj_query7" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxT" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwq" resolve="groupBy_query7" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxU" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxws" resolve="orderBy_query7" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxV" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwu" resolve="Average_query7" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxxW" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxxX" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxw6" resolve="window_tp1ljn_i" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxY" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxww" resolve="proj_query8" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxxZ" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwy" resolve="groupBy_query8" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxy0" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxw$" resolve="orderBy_query8" />
        </node>
        <node concept="3DMq4_" id="f73_nYZxy1" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwA" resolve="Sum_query8" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxy2" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxy3" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxvU" resolve="select_tp1ljn_j" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxy4" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxy5" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxwC" resolve="proj_query10" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxy6" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxy7" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxvW" resolve="select_tp1ljn_l" />
        </node>
      </node>
      <node concept="Fpmux" id="f73_nYZxy8" role="Fpmug">
        <node concept="3DMq4_" id="f73_nYZxy9" role="FpmuI">
          <ref role="3DMq4F" node="f73_nYZxvY" resolve="select_tp1ljn_m" />
        </node>
      </node>
      <node concept="37mRI7" id="f73_nYZxYX" role="lGtFl">
        <node concept="37mRIm" id="f73_nYZxYY" role="37mRID">
          <property role="37mO49" value="272202064992278626" />
          <node concept="gqqVs" id="f73_nYZxYW" role="37mO4d">
            <property role="gqqTZ" value="12.000100000000003" />
            <property role="gqqTW" value="102.00014999999998" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZ0" role="37mRID">
          <property role="37mO49" value="272202064992278628" />
          <node concept="gqqVs" id="f73_nYZxYZ" role="37mO4d">
            <property role="gqqTZ" value="226.00029836425782" />
            <property role="gqqTW" value="312.0005" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZ2" role="37mRID">
          <property role="37mO49" value="272202064992278629" />
          <node concept="gqqVs" id="f73_nYZxZ1" role="37mO4d">
            <property role="gqqTZ" value="1136.0004662109375" />
            <property role="gqqTW" value="372.00059999999996" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZ4" role="37mRID">
          <property role="37mO49" value="272202064992278631" />
          <node concept="gqqVs" id="f73_nYZxZ3" role="37mO4d">
            <property role="gqqTZ" value="1582.0007103515625" />
            <property role="gqqTW" value="372.00059999999996" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZ6" role="37mRID">
          <property role="37mO49" value="272202064992278632" />
          <node concept="gqqVs" id="f73_nYZxZ5" role="37mO4d">
            <property role="gqqTZ" value="1852.0009544921875" />
            <property role="gqqTW" value="372.00059999999996" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZ8" role="37mRID">
          <property role="37mO49" value="272202064992278633" />
          <node concept="gqqVs" id="f73_nYZxZ7" role="37mO4d">
            <property role="gqqTZ" value="2174.0010765625" />
            <property role="gqqTW" value="372.00059999999996" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZa" role="37mRID">
          <property role="37mO49" value="272202064992278635" />
          <node concept="gqqVs" id="f73_nYZxZ9" role="37mO4d">
            <property role="gqqTZ" value="226.00029836425782" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZc" role="37mRID">
          <property role="37mO49" value="272202064992278636" />
          <node concept="gqqVs" id="f73_nYZxZb" role="37mO4d">
            <property role="gqqTZ" value="1152.0004662109375" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZe" role="37mRID">
          <property role="37mO49" value="272202064992278637" />
          <node concept="gqqVs" id="f73_nYZxZd" role="37mO4d">
            <property role="gqqTZ" value="1570.0007103515625" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZg" role="37mRID">
          <property role="37mO49" value="272202064992278638" />
          <node concept="gqqVs" id="f73_nYZxZf" role="37mO4d">
            <property role="gqqTZ" value="2174.0010765625" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZi" role="37mRID">
          <property role="37mO49" value="272202064992278639" />
          <node concept="gqqVs" id="f73_nYZxZh" role="37mO4d">
            <property role="gqqTZ" value="1868.0009544921875" />
            <property role="gqqTW" value="72.00009999999999" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZk" role="37mRID">
          <property role="37mO49" value="272202064992278641" />
          <node concept="gqqVs" id="f73_nYZxZj" role="37mO4d">
            <property role="gqqTZ" value="226.00029836425782" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZm" role="37mRID">
          <property role="37mO49" value="272202064992278642" />
          <node concept="gqqVs" id="f73_nYZxZl" role="37mO4d">
            <property role="gqqTZ" value="1136.0004662109375" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZo" role="37mRID">
          <property role="37mO49" value="272202064992278644" />
          <node concept="gqqVs" id="f73_nYZxZn" role="37mO4d">
            <property role="gqqTZ" value="1570.0007103515625" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="106.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZq" role="37mRID">
          <property role="37mO49" value="272202064992278646" />
          <node concept="gqqVs" id="f73_nYZxZp" role="37mO4d">
            <property role="gqqTZ" value="1136.0004662109375" />
            <property role="gqqTW" value="312.0005" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZs" role="37mRID">
          <property role="37mO49" value="272202064992278648" />
          <node concept="gqqVs" id="f73_nYZxZr" role="37mO4d">
            <property role="gqqTZ" value="1582.0007103515625" />
            <property role="gqqTW" value="312.0005" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZu" role="37mRID">
          <property role="37mO49" value="272202064992278649" />
          <node concept="gqqVs" id="f73_nYZxZt" role="37mO4d">
            <property role="gqqTZ" value="1852.0009544921875" />
            <property role="gqqTW" value="312.0005" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZw" role="37mRID">
          <property role="37mO49" value="272202064992278650" />
          <node concept="gqqVs" id="f73_nYZxZv" role="37mO4d">
            <property role="gqqTZ" value="2496.001320703125" />
            <property role="gqqTW" value="312.0005" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZy" role="37mRID">
          <property role="37mO49" value="272202064992278651" />
          <node concept="gqqVs" id="f73_nYZxZx" role="37mO4d">
            <property role="gqqTZ" value="2174.0010765625" />
            <property role="gqqTW" value="312.0005" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZ$" role="37mRID">
          <property role="37mO49" value="272202064992278653" />
          <node concept="gqqVs" id="f73_nYZxZz" role="37mO4d">
            <property role="gqqTZ" value="226.00029836425782" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZA" role="37mRID">
          <property role="37mO49" value="272202064992278654" />
          <node concept="gqqVs" id="f73_nYZxZ_" role="37mO4d">
            <property role="gqqTZ" value="1152.0004662109375" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZC" role="37mRID">
          <property role="37mO49" value="272202064992278655" />
          <node concept="gqqVs" id="f73_nYZxZB" role="37mO4d">
            <property role="gqqTZ" value="1570.0007103515625" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZE" role="37mRID">
          <property role="37mO49" value="272202064992278656" />
          <node concept="gqqVs" id="f73_nYZxZD" role="37mO4d">
            <property role="gqqTZ" value="2174.0010765625" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZG" role="37mRID">
          <property role="37mO49" value="272202064992278657" />
          <node concept="gqqVs" id="f73_nYZxZF" role="37mO4d">
            <property role="gqqTZ" value="1868.0009544921875" />
            <property role="gqqTW" value="132.00019999999998" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZI" role="37mRID">
          <property role="37mO49" value="272202064992278659" />
          <node concept="gqqVs" id="f73_nYZxZH" role="37mO4d">
            <property role="gqqTZ" value="1136.0004662109375" />
            <property role="gqqTW" value="432.00069999999994" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZK" role="37mRID">
          <property role="37mO49" value="272202064992278661" />
          <node concept="gqqVs" id="f73_nYZxZJ" role="37mO4d">
            <property role="gqqTZ" value="1570.0007103515625" />
            <property role="gqqTW" value="432.00069999999994" />
            <property role="gqqTX" value="106.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZM" role="37mRID">
          <property role="37mO49" value="272202064992278663" />
          <node concept="gqqVs" id="f73_nYZxZL" role="37mO4d">
            <property role="gqqTZ" value="1136.0004662109375" />
            <property role="gqqTW" value="252.00039999999996" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZO" role="37mRID">
          <property role="37mO49" value="272202064992278665" />
          <node concept="gqqVs" id="f73_nYZxZN" role="37mO4d">
            <property role="gqqTZ" value="1136.0004662109375" />
            <property role="gqqTW" value="192.00029999999998" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZQ" role="37mRID">
          <property role="37mO49" value="272202064992278571" />
          <node concept="2VclpC" id="f73_nYZxZP" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZxZR" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZxZS" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZxZT" role="3wpmZR">
                  <property role="2Vclpx" value="158.0001983642578" />
                  <property role="2Vclpz" value="343.00055" />
                </node>
                <node concept="2VclrF" id="f73_nYZxZU" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfy" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="122.00019999999998" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfz" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="332.00055" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZxZW" role="37mRID">
          <property role="37mO49" value="272202064992278573" />
          <node concept="2VclpC" id="f73_nYZxZV" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZxZX" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZxZY" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZxZZ" role="3wpmZR">
                  <property role="2Vclpx" value="154.0001983642578" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy00" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyf$" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="122.00019999999998" />
            </node>
            <node concept="2VclrF" id="f73_nYZyf_" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="92.00014999999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy02" role="37mRID">
          <property role="37mO49" value="272202064992278575" />
          <node concept="2VclpC" id="f73_nYZy01" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy03" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy04" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy05" role="3wpmZR">
                  <property role="2Vclpx" value="142.0001983642578" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy06" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfA" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="122.00019999999998" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfB" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="32.000049999999995" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy08" role="37mRID">
          <property role="37mO49" value="272202064992278577" />
          <node concept="2VclpC" id="f73_nYZy07" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy09" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0a" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0b" role="3wpmZR">
                  <property role="2Vclpx" value="146.0001983642578" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0c" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfC" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="122.00019999999998" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfD" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="152.00024999999997" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0e" role="37mRID">
          <property role="37mO49" value="272202064992278579" />
          <node concept="2VclpC" id="f73_nYZy0d" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0f" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0g" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0h" role="3wpmZR">
                  <property role="2Vclpx" value="1318.0006103515625" />
                  <property role="2Vclpz" value="403.00064999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0i" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0k" role="37mRID">
          <property role="37mO49" value="272202064992278581" />
          <node concept="2VclpC" id="f73_nYZy0j" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0l" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0m" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0n" role="3wpmZR">
                  <property role="2Vclpx" value="1414.0006103515625" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0o" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0q" role="37mRID">
          <property role="37mO49" value="272202064992278583" />
          <node concept="2VclpC" id="f73_nYZy0p" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0r" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0s" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0t" role="3wpmZR">
                  <property role="2Vclpx" value="1286.0006103515625" />
                  <property role="2Vclpz" value="343.00055" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0u" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0w" role="37mRID">
          <property role="37mO49" value="272202064992278585" />
          <node concept="2VclpC" id="f73_nYZy0v" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0x" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0y" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0z" role="3wpmZR">
                  <property role="2Vclpx" value="1318.0006103515625" />
                  <property role="2Vclpz" value="463.0007499999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0$" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0A" role="37mRID">
          <property role="37mO49" value="272202064992278587" />
          <node concept="2VclpC" id="f73_nYZy0_" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0B" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0C" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0D" role="3wpmZR">
                  <property role="2Vclpx" value="684.0003967285156" />
                  <property role="2Vclpz" value="403.00064999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0E" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfE" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="332.00055" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfF" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="392.00064999999995" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0G" role="37mRID">
          <property role="37mO49" value="272202064992278589" />
          <node concept="2VclpC" id="f73_nYZy0F" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0H" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0I" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0J" role="3wpmZR">
                  <property role="2Vclpx" value="644.0003967285156" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0K" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0M" role="37mRID">
          <property role="37mO49" value="272202064992278591" />
          <node concept="2VclpC" id="f73_nYZy0L" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0N" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0O" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0P" role="3wpmZR">
                  <property role="2Vclpx" value="396.0003967285156" />
                  <property role="2Vclpz" value="43.000049999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0Q" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0S" role="37mRID">
          <property role="37mO49" value="272202064992278593" />
          <node concept="2VclpC" id="f73_nYZy0R" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0T" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy0U" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy0V" role="3wpmZR">
                  <property role="2Vclpx" value="588.0003967285156" />
                  <property role="2Vclpz" value="343.00055" />
                </node>
                <node concept="2VclrF" id="f73_nYZy0W" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy0Y" role="37mRID">
          <property role="37mO49" value="272202064992278595" />
          <node concept="2VclpC" id="f73_nYZy0X" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy0Z" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy10" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy11" role="3wpmZR">
                  <property role="2Vclpx" value="652.0003967285156" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="f73_nYZy12" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy14" role="37mRID">
          <property role="37mO49" value="272202064992278597" />
          <node concept="2VclpC" id="f73_nYZy13" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy15" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy16" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy17" role="3wpmZR">
                  <property role="2Vclpx" value="688.0003967285156" />
                  <property role="2Vclpz" value="463.0007499999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy18" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfG" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="332.00055" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfH" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="452.0007499999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1a" role="37mRID">
          <property role="37mO49" value="272202064992278599" />
          <node concept="2VclpC" id="f73_nYZy19" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1b" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1c" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1d" role="3wpmZR">
                  <property role="2Vclpx" value="680.0003967285156" />
                  <property role="2Vclpz" value="283.00045" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1e" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfI" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="332.00055" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfJ" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="272.00045" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1g" role="37mRID">
          <property role="37mO49" value="272202064992278601" />
          <node concept="2VclpC" id="f73_nYZy1f" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1h" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1i" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1j" role="3wpmZR">
                  <property role="2Vclpx" value="592.0003967285156" />
                  <property role="2Vclpz" value="223.00034999999997" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1k" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="f73_nYZyfK" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="332.00055" />
            </node>
            <node concept="2VclrF" id="f73_nYZyfL" role="2Vcluh">
              <property role="2Vclpx" value="376.0003967285156" />
              <property role="2Vclpz" value="212.00034999999997" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1m" role="37mRID">
          <property role="37mO49" value="272202064992278603" />
          <node concept="2VclpC" id="f73_nYZy1l" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1n" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1o" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1p" role="3wpmZR">
                  <property role="2Vclpx" value="1724.0008544921875" />
                  <property role="2Vclpz" value="403.00064999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1q" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1s" role="37mRID">
          <property role="37mO49" value="272202064992278605" />
          <node concept="2VclpC" id="f73_nYZy1r" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1t" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1u" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1v" role="3wpmZR">
                  <property role="2Vclpx" value="1370.0006103515625" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1w" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1y" role="37mRID">
          <property role="37mO49" value="272202064992278607" />
          <node concept="2VclpC" id="f73_nYZy1x" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1z" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1$" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1_" role="3wpmZR">
                  <property role="2Vclpx" value="1724.0008544921875" />
                  <property role="2Vclpz" value="343.00055" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1A" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1C" role="37mRID">
          <property role="37mO49" value="272202064992278609" />
          <node concept="2VclpC" id="f73_nYZy1B" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1D" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1E" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1F" role="3wpmZR">
                  <property role="2Vclpx" value="1370.0006103515625" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1G" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1I" role="37mRID">
          <property role="37mO49" value="272202064992278611" />
          <node concept="2VclpC" id="f73_nYZy1H" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1J" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1K" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1L" role="3wpmZR">
                  <property role="2Vclpx" value="2026.0010986328125" />
                  <property role="2Vclpz" value="403.00064999999995" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1M" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1O" role="37mRID">
          <property role="37mO49" value="272202064992278613" />
          <node concept="2VclpC" id="f73_nYZy1N" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1P" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1Q" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1R" role="3wpmZR">
                  <property role="2Vclpx" value="1712.0008544921875" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1S" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy1U" role="37mRID">
          <property role="37mO49" value="272202064992278615" />
          <node concept="2VclpC" id="f73_nYZy1T" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy1V" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy1W" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy1X" role="3wpmZR">
                  <property role="2Vclpx" value="1994.0010986328125" />
                  <property role="2Vclpz" value="343.00055" />
                </node>
                <node concept="2VclrF" id="f73_nYZy1Y" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy20" role="37mRID">
          <property role="37mO49" value="272202064992278617" />
          <node concept="2VclpC" id="f73_nYZy1Z" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy21" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy22" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy23" role="3wpmZR">
                  <property role="2Vclpx" value="1720.0008544921875" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="f73_nYZy24" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy26" role="37mRID">
          <property role="37mO49" value="272202064992278619" />
          <node concept="2VclpC" id="f73_nYZy25" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy27" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy28" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy29" role="3wpmZR">
                  <property role="2Vclpx" value="2014.0010986328125" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="f73_nYZy2a" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy2c" role="37mRID">
          <property role="37mO49" value="272202064992278621" />
          <node concept="2VclpC" id="f73_nYZy2b" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy2d" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy2e" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy2f" role="3wpmZR">
                  <property role="2Vclpx" value="2316.001220703125" />
                  <property role="2Vclpz" value="343.00055" />
                </node>
                <node concept="2VclrF" id="f73_nYZy2g" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="f73_nYZy2i" role="37mRID">
          <property role="37mO49" value="272202064992278623" />
          <node concept="2VclpC" id="f73_nYZy2h" role="37mO4d">
            <node concept="3ul5H1" id="f73_nYZy2j" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="f73_nYZy2k" role="3ul5Gz">
                <node concept="2VclrF" id="f73_nYZy2l" role="3wpmZR">
                  <property role="2Vclpx" value="2022.0010986328125" />
                  <property role="2Vclpz" value="163.00024999999997" />
                </node>
                <node concept="2VclrF" id="f73_nYZy2m" role="3wpmZP">
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
  <node concept="37lXYX" id="3TsnP2VS$Z7">
    <property role="TrG5h" value="TestScript2" />
    <node concept="37lXYJ" id="3TsnP2VS$Vu" role="37lXYW">
      <property role="TrG5h" value="dataSource" />
      <property role="1V3Vrz" value="3aQNPNd64Wc/NOOP" />
      <property role="2iLA8i" value="0" />
      <ref role="2iLy9k" node="3SawQFrbiH2" resolve="DataSource" />
      <node concept="2uUgHn" id="3TsnP2VS$Vv" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="3TsnP2VS_3z" role="37lXYW">
      <property role="2iLA8i" value="3" />
      <property role="TrG5h" value="window" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="3SawQFrbiFr" resolve="window" />
      <node concept="2uUgHn" id="3TsnP2VS_3_" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="3TsnP2VS$Wp" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="select_tp1ljn_b" />
      <property role="2iLA8i" value="28" />
      <ref role="2iLy9k" node="3TsnP2VS$T$" resolve="selection" />
      <node concept="2uUgHn" id="3TsnP2VS$Wr" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="3TsnP2VS$Wv" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="proj_query1" />
      <property role="2iLA8i" value="29" />
      <ref role="2iLy9k" node="3TsnP2VS$T7" resolve="projection" />
      <node concept="2uUgHn" id="3TsnP2VS$Wy" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="3TsnP2VS$W_" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="groupBy_query1" />
      <property role="2iLA8i" value="30" />
      <ref role="2iLy9k" node="3TsnP2VS$UQ" resolve="groupBy" />
      <node concept="2uUgHn" id="3TsnP2VS$WA" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="3TsnP2VS$WD" role="37lXYW">
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <property role="TrG5h" value="Count_query1" />
      <property role="2iLA8i" value="31" />
      <ref role="2iLy9k" node="3TsnP2VS$Uw" resolve="Count" />
      <node concept="2uUgHn" id="3TsnP2VS$WO" role="2LyG1a" />
    </node>
    <node concept="1lj4MQ" id="3TsnP2VS$SL" role="2QtU1L">
      <property role="TrG5h" value="window" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3TsnP2VS$SN" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3TsnP2VS$SP" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3TsnP2VS$SR" role="37ngyo">
        <node concept="1hWdMI" id="3TsnP2VS$ST" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3SawQFrbiK2" resolve="window" />
          <ref role="1hSE7A" node="3TsnP2VS$SN" resolve="rec_message" />
          <ref role="1fvXTc" node="3TsnP2VS$Za" resolve="ROWS" />
          <node concept="1lgcPH" id="3TsnP2VS$SV" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3TsnP2VS$Za" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="3TsnP2VS$SX" role="3ZcDeU">
          <node concept="2iUZJK" id="3TsnP2VS$SY" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="3TsnP2VS$T0" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="3TsnP2VS$T2" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="3TsnP2VS$T0" resolve="refs" />
          <node concept="3g$k$6" id="3TsnP2VS$T5" role="2ngaLO">
            <ref role="3g$k$l" node="3TsnP2VS$SV" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3TsnP2VS$T7" role="2QtU1L">
      <property role="TrG5h" value="projection" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3TsnP2VS$T9" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3TsnP2VS$Tb" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3TsnP2VS$Td" role="37ngyo">
        <node concept="1hWdMI" id="3TsnP2VS$Tf" role="3ZcDeU">
          <property role="2nvgqf" value="projectionResult" />
          <ref role="1hWdMJ" node="3TsnP2VS$Zh" resolve="projection" />
          <ref role="1hSE7A" node="3TsnP2VS$T9" resolve="rec_message" />
          <ref role="1fvXTc" node="3TsnP2VS$Za" resolve="ROWS" />
          <node concept="1lgcPH" id="3TsnP2VS$Tj" role="2nvgq3">
            <property role="TrG5h" value="projectionResult" />
            <ref role="1frCXN" node="3TsnP2VS$Za" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="3TsnP2VS$Tk" role="3ZcDeU">
          <node concept="2iUZJK" id="3TsnP2VS$Tl" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="3TsnP2VS$Tm" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2_LUnm" id="3TsnP2VS$Tp" role="3ZcDeU">
          <ref role="2_LUnp" node="3TsnP2VS$Tm" resolve="refs" />
          <node concept="Bk5ry" id="3TsnP2VS$Tr" role="2_WIQ$">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="37lXYU" id="3TsnP2VS$Tt" role="1e4STI">
            <property role="TrG5h" value="msg" />
            <node concept="1lgcPy" id="3TsnP2VS$Tv" role="34eGaj">
              <property role="TrG5h" value="env" />
              <property role="2uCmrR" value="5.0" />
              <ref role="1lgcPI" node="3TsnP2VS$Tr" resolve="ref" />
            </node>
            <node concept="3g$k$6" id="3TsnP2VS$Tw" role="GupN0">
              <ref role="3g$k$l" node="3TsnP2VS$Tj" resolve="projectionResult" />
            </node>
          </node>
          <node concept="37lS4T" id="3TsnP2VS$Ty" role="1e4STI">
            <ref role="37lS4Y" node="3TsnP2VS$Tt" resolve="msg" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3TsnP2VS$T$" role="2QtU1L">
      <property role="TrG5h" value="selection" />
      <property role="2F6P9D" value="rec_message" />
      <node concept="37lXYU" id="3TsnP2VS$TA" role="2F2NYG">
        <property role="TrG5h" value="rec_message" />
        <node concept="1lgcPH" id="3TsnP2VS$TC" role="GupN0">
          <property role="TrG5h" value="rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3TsnP2VS$TE" role="37ngyo">
        <node concept="1hWdMI" id="3TsnP2VS$TG" role="3ZcDeU">
          <property role="2nvgqf" value="selectionResult" />
          <ref role="1hWdMJ" node="3TsnP2VS$Zf" resolve="selection" />
          <ref role="1hSE7A" node="3TsnP2VS$TA" resolve="rec_message" />
          <ref role="1fvXTc" node="3TsnP2VS$Za" resolve="ROWS" />
          <node concept="1lgcPH" id="3TsnP2VS$TI" role="2nvgq3">
            <property role="TrG5h" value="selectionResult" />
            <ref role="1frCXN" node="3TsnP2VS$Za" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="3TsnP2VS$TJ" role="3ZcDeU">
          <node concept="2iUZJK" id="3TsnP2VS$TK" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="3TsnP2VS$TM" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2_LUnm" id="3TsnP2VS$TP" role="3ZcDeU">
          <ref role="2_LUnp" node="3TsnP2VS$TM" resolve="refs" />
          <node concept="37lXYU" id="3TsnP2VS$TS" role="1e4STI">
            <property role="TrG5h" value="msg" />
            <node concept="1lgcPy" id="3TsnP2VS$TU" role="34eGaj">
              <property role="TrG5h" value="env" />
              <property role="2uCmrR" value="5.0" />
              <ref role="1lgcPI" node="3TsnP2VS$U0" resolve="ref" />
            </node>
            <node concept="3g$k$6" id="3TsnP2VS$TW" role="GupN0">
              <ref role="3g$k$l" node="3TsnP2VS$TI" resolve="selectionResult" />
            </node>
          </node>
          <node concept="37lS4T" id="3TsnP2VS$TY" role="1e4STI">
            <ref role="37lS4Y" node="3TsnP2VS$TS" resolve="msg" />
          </node>
          <node concept="Bk5ry" id="3TsnP2VS$U0" role="2_WIQ$">
            <property role="TrG5h" value="ref" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3TsnP2VS$Uw" role="2QtU1L">
      <property role="TrG5h" value="Count" />
      <property role="2F6P9D" value="rec_msg" />
      <node concept="37lXYU" id="3TsnP2VS$Ux" role="2F2NYG">
        <property role="TrG5h" value="rec_msg" />
        <node concept="1lgcPH" id="3TsnP2VS$Uy" role="GupN0">
          <property role="TrG5h" value="rec_msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3TsnP2VS$Uz" role="37ngyo">
        <node concept="1hWdMI" id="3TsnP2VS$U$" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3TsnP2VS$Zk" resolve="count" />
          <ref role="1hSE7A" node="3TsnP2VS$Ux" resolve="rec_msg" />
          <ref role="1fvXTc" node="3TsnP2VS$Za" resolve="ROWS" />
          <node concept="1lgcPH" id="3TsnP2VS$UA" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3TsnP2VS$Za" resolve="ROWS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="3TsnP2VS$UC" role="3ZcDeU">
          <node concept="2iUZJK" id="3TsnP2VS$UE" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="3TsnP2VS$UG" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="3TsnP2VS$UI" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="3TsnP2VS$UG" resolve="refs" />
          <node concept="3g$k$6" id="3TsnP2VS$UJ" role="2ngaLO">
            <ref role="3g$k$l" node="3TsnP2VS$UA" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="3TsnP2VS$UQ" role="2QtU1L">
      <property role="TrG5h" value="groupBy" />
      <property role="2F6P9D" value="groupBy_rec_message" />
      <node concept="37lXYU" id="3TsnP2VS$UR" role="2F2NYG">
        <property role="TrG5h" value="groupBy_rec_message" />
        <node concept="1lgcPH" id="3TsnP2VS$US" role="GupN0">
          <property role="TrG5h" value="groupBy_rec_message.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="3TsnP2VS$UT" role="37ngyo">
        <node concept="1hWdMI" id="3TsnP2VS$UU" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="3TsnP2VS$ZV" resolve="groupBy" />
          <ref role="1hSE7A" node="3TsnP2VS$UR" resolve="groupBy_rec_message" />
          <ref role="1fvXTc" node="3TsnP2VS$Zc" resolve="GROUPS" />
          <node concept="1lgcPH" id="3TsnP2VS$UV" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="1frCXN" node="3TsnP2VS$Zc" resolve="GROUPS" />
          </node>
        </node>
        <node concept="2iZ$PO" id="3TsnP2VS$UW" role="3ZcDeU">
          <node concept="2iUZJK" id="3TsnP2VS$UX" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="3TsnP2VS$UY" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="3TsnP2VS$UZ" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="3TsnP2VS$UY" resolve="refs" />
          <node concept="3g$k$6" id="3TsnP2VS$V0" role="2ngaLO">
            <ref role="3g$k$l" node="3TsnP2VS$UV" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$Zf" role="1hWdPE">
      <property role="TrG5h" value="selection" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$Zh" role="1hWdPE">
      <property role="TrG5h" value="projection" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$Zk" role="1hWdPE">
      <property role="TrG5h" value="count" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$Zo" role="1hWdPE">
      <property role="TrG5h" value="average" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$Zt" role="1hWdPE">
      <property role="TrG5h" value="min" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$Zz" role="1hWdPE">
      <property role="TrG5h" value="max" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$ZE" role="1hWdPE">
      <property role="TrG5h" value="sum" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$ZM" role="1hWdPE">
      <property role="TrG5h" value="join" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS$ZV" role="1hWdPE">
      <property role="TrG5h" value="groupBy" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS_05" role="1hWdPE">
      <property role="TrG5h" value="orderBy" />
    </node>
    <node concept="1hWc2v" id="3TsnP2VS_0g" role="1hWdPE">
      <property role="TrG5h" value="window" />
    </node>
    <node concept="1frwoX" id="3TsnP2VS$Za" role="1fvW3h">
      <property role="TrG5h" value="ROWS" />
    </node>
    <node concept="1frwoX" id="3TsnP2VS$Zc" role="1fvW3h">
      <property role="TrG5h" value="GROUPS" />
    </node>
    <node concept="2QtU1Q" id="3TsnP2VS$Z8" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="3TsnP2VS$Z9" role="2QtU1V" />
    </node>
    <node concept="3DMq4$" id="3TsnP2VS$WQ" role="3DMxif">
      <node concept="3DMq4E" id="3TsnP2VS_4x" role="3DMq5I">
        <ref role="3DMq5A" node="3TsnP2VS$XP" />
        <ref role="3DMq5$" node="3TsnP2VS_4u" />
        <node concept="2JkZqM" id="3TsnP2VS_4F" role="1qtvm3">
          <property role="2JkZqL" value="300" />
        </node>
      </node>
      <node concept="3DMq4E" id="3TsnP2VS$Xl" role="3DMq5I">
        <ref role="3DMq5$" node="3TsnP2VS$Y4" />
        <ref role="3DMq5A" node="3TsnP2VS_4u" />
        <node concept="2JkZqM" id="3TsnP2VS$Xs" role="1qtvm3">
          <property role="2JkZqL" value="Airport_fee != 0.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="3TsnP2VS$Xz" role="3DMq5I">
        <ref role="3DMq5A" node="3TsnP2VS$Y4" />
        <ref role="3DMq5$" node="3TsnP2VS$Y5" />
        <node concept="2JkZqM" id="3TsnP2VS$X_" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID," />
        </node>
      </node>
      <node concept="3DMq4E" id="3TsnP2VS$XB" role="3DMq5I">
        <ref role="3DMq5A" node="3TsnP2VS$Y5" />
        <ref role="3DMq5$" node="3TsnP2VS$Y6" />
        <node concept="2JkZqM" id="3TsnP2VS$XD" role="1qtvm3">
          <property role="2JkZqL" value="PULocationID" />
        </node>
      </node>
      <node concept="3DMq4E" id="3TsnP2VS$XH" role="3DMq5I">
        <ref role="3DMq5A" node="3TsnP2VS$Y6" />
        <ref role="3DMq5$" node="3TsnP2VS$Y7" />
        <node concept="2JkZqM" id="3TsnP2VS$XK" role="1qtvm3">
          <property role="2JkZqL" value="*" />
        </node>
      </node>
      <node concept="Fpmux" id="3TsnP2VS$XO" role="Fpmug">
        <node concept="3DMq4_" id="3TsnP2VS$XP" role="FpmuI">
          <ref role="3DMq4F" node="3TsnP2VS$Vu" resolve="dataSource" />
        </node>
        <node concept="3DMq4_" id="3TsnP2VS_4u" role="FpmuI">
          <ref role="3DMq4F" node="3TsnP2VS_3z" resolve="window" />
        </node>
      </node>
      <node concept="Fpmux" id="3TsnP2VS$Y3" role="Fpmug">
        <node concept="3DMq4_" id="3TsnP2VS$Y4" role="FpmuI">
          <ref role="3DMq4F" node="3TsnP2VS$Wp" resolve="select_tp1ljn_b" />
        </node>
        <node concept="3DMq4_" id="3TsnP2VS$Y5" role="FpmuI">
          <ref role="3DMq4F" node="3TsnP2VS$Wv" resolve="proj_query1" />
        </node>
        <node concept="3DMq4_" id="3TsnP2VS$Y6" role="FpmuI">
          <ref role="3DMq4F" node="3TsnP2VS$W_" resolve="groupBy_query1" />
        </node>
        <node concept="3DMq4_" id="3TsnP2VS$Y7" role="FpmuI">
          <ref role="3DMq4F" node="3TsnP2VS$WD" resolve="Count_query1" />
        </node>
      </node>
      <node concept="37mRI7" id="3TsnP2VS_4I" role="lGtFl">
        <node concept="37mRIm" id="3TsnP2VS_4J" role="37mRID">
          <property role="37mO49" value="4493571328563105653" />
          <node concept="gqqVs" id="3TsnP2VS_4H" role="37mO4d">
            <property role="gqqTZ" value="12.000100000000003" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_4L" role="37mRID">
          <property role="37mO49" value="4493571328563106078" />
          <node concept="gqqVs" id="3TsnP2VS_4K" role="37mO4d">
            <property role="gqqTZ" value="166.00029836425782" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="58.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_4N" role="37mRID">
          <property role="37mO49" value="4493571328563105668" />
          <node concept="gqqVs" id="3TsnP2VS_4M" role="37mO4d">
            <property role="gqqTZ" value="408.0004967285156" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="130.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_4P" role="37mRID">
          <property role="37mO49" value="4493571328563105669" />
          <node concept="gqqVs" id="3TsnP2VS_4O" role="37mO4d">
            <property role="gqqTZ" value="682.0007103515625" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="98.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_4R" role="37mRID">
          <property role="37mO49" value="4493571328563105670" />
          <node concept="gqqVs" id="3TsnP2VS_4Q" role="37mO4d">
            <property role="gqqTZ" value="916.0008934570312" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="122.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_4T" role="37mRID">
          <property role="37mO49" value="4493571328563105671" />
          <node concept="gqqVs" id="3TsnP2VS_4S" role="37mO4d">
            <property role="gqqTZ" value="1086.0010765625" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="106.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_4V" role="37mRID">
          <property role="37mO49" value="4493571328563106081" />
          <node concept="2VclpC" id="3TsnP2VS_4U" role="37mO4d">
            <node concept="3ul5H1" id="3TsnP2VS_4W" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="3TsnP2VS_4X" role="3ul5Gz">
                <node concept="2VclrF" id="3TsnP2VS_4Y" role="3wpmZR">
                  <property role="2Vclpx" value="122.00019836425781" />
                  <property role="2Vclpz" value="43.00005" />
                </node>
                <node concept="2VclrF" id="3TsnP2VS_4Z" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_51" role="37mRID">
          <property role="37mO49" value="4493571328563105621" />
          <node concept="2VclpC" id="3TsnP2VS_50" role="37mO4d">
            <node concept="3ul5H1" id="3TsnP2VS_52" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="3TsnP2VS_53" role="3ul5Gz">
                <node concept="2VclrF" id="3TsnP2VS_54" role="3wpmZR">
                  <property role="2Vclpx" value="244.00039672851562" />
                  <property role="2Vclpz" value="43.00005" />
                </node>
                <node concept="2VclrF" id="3TsnP2VS_55" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_57" role="37mRID">
          <property role="37mO49" value="4493571328563105635" />
          <node concept="2VclpC" id="3TsnP2VS_56" role="37mO4d">
            <node concept="3ul5H1" id="3TsnP2VS_58" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="3TsnP2VS_59" role="3ul5Gz">
                <node concept="2VclrF" id="3TsnP2VS_5a" role="3wpmZR">
                  <property role="2Vclpx" value="558.0006103515625" />
                  <property role="2Vclpz" value="43.00005" />
                </node>
                <node concept="2VclrF" id="3TsnP2VS_5b" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_5d" role="37mRID">
          <property role="37mO49" value="4493571328563105639" />
          <node concept="2VclpC" id="3TsnP2VS_5c" role="37mO4d">
            <node concept="3ul5H1" id="3TsnP2VS_5e" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="3TsnP2VS_5f" role="3ul5Gz">
                <node concept="2VclrF" id="3TsnP2VS_5g" role="3wpmZR">
                  <property role="2Vclpx" value="800.0007934570312" />
                  <property role="2Vclpz" value="43.00005" />
                </node>
                <node concept="2VclrF" id="3TsnP2VS_5h" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="3TsnP2VS_5j" role="37mRID">
          <property role="37mO49" value="4493571328563105645" />
          <node concept="2VclpC" id="3TsnP2VS_5i" role="37mO4d">
            <node concept="3ul5H1" id="3TsnP2VS_5k" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="3TsnP2VS_5l" role="3ul5Gz">
                <node concept="2VclrF" id="3TsnP2VS_5m" role="3wpmZR">
                  <property role="2Vclpx" value="1058.0009765625" />
                  <property role="2Vclpz" value="43.00005" />
                </node>
                <node concept="2VclrF" id="3TsnP2VS_5n" role="3wpmZP">
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

