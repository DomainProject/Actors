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
      <concept id="63639229097850239" name="ActorLanguage.structure.Initializer" flags="ng" index="2GMybP">
        <child id="63639229097872036" name="actions" index="2GMDOI" />
      </concept>
      <concept id="4447085707124854353" name="ActorLanguage.structure.StringBody" flags="ng" index="2JkZqM">
        <property id="4447085707124854354" name="body" index="2JkZqL" />
      </concept>
      <concept id="6739934483258184740" name="ActorLanguage.structure.CreateActors" flags="ng" index="2LyTEn">
        <property id="6739934483258184771" name="number" index="2LyTFK" />
        <property id="6739934483258184773" name="baseName" index="2LyTFQ" />
        <property id="4813801747212515933" name="fetchPolicy" index="1V3VlM" />
        <reference id="1411682935489267791" name="behavior" index="2iLGpD" />
        <child id="13109696846325256" name="actors" index="BzvkV" />
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
        <child id="63639229097885131" name="initializers" index="2GMED1" />
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
        <reference id="6893659982452170184" name="type" index="27M2VM" />
        <child id="4447085707124351352" name="strings" index="2JqxAr" />
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
    <property role="TrG5h" value="ActorScript" />
    <node concept="37lXYJ" id="4HR0qZdIAb6" role="37lXYW">
      <property role="2iLA8i" value="6" />
      <property role="TrG5h" value="dataSourceActor" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="4HR0qZdIA8s" resolve="dataSource" />
      <node concept="2uUgHn" id="4HR0qZdIAb8" role="2LyG1a" />
    </node>
    <node concept="2LyTEn" id="4zQgufL1f97" role="37lXYW">
      <property role="2LyTFK" value="2" />
      <property role="2LyTFQ" value="selectionActor" />
      <property role="1V3VlM" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLGpD" node="4HR0qZdIA2o" resolve="selection" />
      <node concept="37lXYJ" id="4zQgufL5wpo" role="BzvkV">
        <property role="TrG5h" value="selectionActor0" />
        <property role="2iLA8i" value="4" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="4HR0qZdIA2o" resolve="selection" />
        <node concept="2uUgHn" id="4zQgufL5wpp" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="4zQgufL5wpq" role="BzvkV">
        <property role="TrG5h" value="selectionActor1" />
        <property role="2iLA8i" value="7" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="4HR0qZdIA2o" resolve="selection" />
        <node concept="2uUgHn" id="4zQgufL5wpr" role="2LyG1a" />
      </node>
    </node>
    <node concept="37lXYJ" id="4HR0qZdIA7g" role="37lXYW">
      <property role="2iLA8i" value="3" />
      <property role="TrG5h" value="projectionActor" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="4HR0qZdI_YB" resolve="projection" />
      <node concept="2uUgHn" id="4HR0qZdIA7i" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="4HR0qZdIA7z" role="37lXYW">
      <property role="2iLA8i" value="5" />
      <property role="TrG5h" value="outputActor" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="4HR0qZdIA5f" resolve="output" />
      <node concept="2uUgHn" id="4HR0qZdIA7_" role="2LyG1a" />
    </node>
    <node concept="1lj4MQ" id="4HR0qZdI_YB" role="2QtU1L">
      <property role="TrG5h" value="projection" />
      <property role="2F6P9D" value="receivedMessage" />
      <node concept="37lXYU" id="4HR0qZdI_Zx" role="2F2NYG">
        <property role="TrG5h" value="receivedMessage" />
        <node concept="1lgcPH" id="4HR0qZdI_Zy" role="GupN0">
          <property role="TrG5h" value="receivedMessage.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="4HR0qZdI_Z_" role="37ngyo">
        <node concept="1hWdMI" id="4HR0qZdI_ZB" role="3ZcDeU">
          <property role="2nvgqf" value="projectionResult" />
          <ref role="1hWdMJ" node="4HR0qZdnK7x" resolve="projection" />
          <ref role="1hSE7A" node="4HR0qZdI_Zx" resolve="receivedMessage" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="type1" />
          <node concept="1lgcPH" id="4HR0qZdIA0B" role="2nvgq3">
            <property role="TrG5h" value="projectionResult" />
            <ref role="27M2VM" node="3SawQFrbiIW" resolve="type1" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4HR0qZdIA0L" role="3ZcDeU">
          <node concept="2iUZJK" id="4HR0qZdIA0N" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4HR0qZdIA0P" role="BvGUO">
            <property role="TrG5h" value="actorReferences" />
          </node>
        </node>
        <node concept="2_LUnm" id="4HR0qZdIA1v" role="3ZcDeU">
          <ref role="2_LUnp" node="4HR0qZdIA0P" resolve="actorReferences" />
          <node concept="Bk5ry" id="4HR0qZdIA1x" role="2_WIQ$">
            <property role="TrG5h" value="reference" />
          </node>
          <node concept="37lXYU" id="4HR0qZdIA1E" role="1e4STI">
            <property role="TrG5h" value="message" />
            <node concept="3g$k$6" id="4HR0qZdIA1I" role="GupN0">
              <ref role="3g$k$l" node="4HR0qZdIA0B" resolve="projectionResult" />
            </node>
            <node concept="1lgcPy" id="4HR0qZdIA1L" role="34eGaj">
              <property role="TrG5h" value="envelope" />
              <property role="2uCmrR" value="5.0" />
              <ref role="1lgcPI" node="4HR0qZdIA1x" resolve="reference" />
            </node>
          </node>
          <node concept="37lS4T" id="4HR0qZdIA2g" role="1e4STI">
            <ref role="37lS4Y" node="4HR0qZdIA1E" resolve="message" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="4HR0qZdIA2o" role="2QtU1L">
      <property role="TrG5h" value="selection" />
      <property role="2F6P9D" value="receivedeMessage" />
      <node concept="37lXYU" id="4HR0qZdIA3G" role="2F2NYG">
        <property role="TrG5h" value="receivedeMessage" />
        <node concept="1lgcPH" id="4HR0qZdIA3H" role="GupN0">
          <property role="TrG5h" value="receivedeMessage.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="4HR0qZdIA3L" role="37ngyo">
        <node concept="1hWdMI" id="4HR0qZdIA3O" role="3ZcDeU">
          <property role="2nvgqf" value="selectionResult" />
          <ref role="1hWdMJ" node="3SawQFrbiJ1" resolve="selection" />
          <ref role="1hSE7A" node="4HR0qZdIA3G" resolve="receivedeMessage" />
          <ref role="1fvXTc" node="3SawQFrbiIW" resolve="type1" />
          <node concept="1lgcPH" id="4HR0qZdIA4v" role="2nvgq3">
            <property role="TrG5h" value="selectionResult" />
            <ref role="27M2VM" node="3SawQFrbiIW" resolve="type1" />
          </node>
        </node>
        <node concept="2iZ$PO" id="4HR0qZdIA4A" role="3ZcDeU">
          <node concept="2iUZJK" id="4HR0qZdIA4C" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4HR0qZdIA4E" role="BvGUO">
            <property role="TrG5h" value="actorReferences" />
          </node>
        </node>
        <node concept="2nav41" id="4HR0qZdIA4Y" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4HR0qZdIA4E" resolve="actorReferences" />
          <node concept="3g$k$6" id="4HR0qZdIA50" role="2ngaLO">
            <ref role="3g$k$l" node="4HR0qZdIA4v" resolve="selectionResult" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="4HR0qZdIA5f" role="2QtU1L">
      <property role="TrG5h" value="output" />
      <property role="2F6P9D" value="receivedMessage" />
      <node concept="37lXYU" id="4HR0qZdIA6B" role="2F2NYG">
        <property role="TrG5h" value="receivedMessage" />
        <node concept="1lgcPH" id="4HR0qZdIA6C" role="GupN0">
          <property role="TrG5h" value="receivedMessage.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="4HR0qZdIA6G" role="37ngyo">
        <node concept="1hWdMI" id="4HR0qZdIA6J" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="4HR0qZdIA0D" resolve="output" />
          <ref role="1hSE7A" node="4HR0qZdIA6B" resolve="receivedMessage" />
          <ref role="1fvXTc" node="3SawQFrbiIY" resolve="type2" />
          <node concept="1lgcPH" id="4HR0qZdIA6W" role="2nvgq3">
            <property role="TrG5h" value="result" />
            <ref role="27M2VM" node="3SawQFrbiIY" resolve="type2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="4HR0qZdIA8s" role="2QtU1L">
      <property role="TrG5h" value="dataSource" />
      <property role="2F6P9D" value="receivedMessage" />
      <node concept="37lXYU" id="4HR0qZdIAa1" role="2F2NYG">
        <property role="TrG5h" value="receivedMessage" />
        <node concept="1lgcPH" id="4HR0qZdIAa2" role="GupN0">
          <property role="TrG5h" value="receivedMessage.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="4HR0qZdIAa6" role="37ngyo">
        <node concept="2iZ$PO" id="4HR0qZdIAa9" role="3ZcDeU">
          <node concept="2iUZJK" id="4HR0qZdIAaa" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="4HR0qZdIAab" role="BvGUO">
            <property role="TrG5h" value="actorReferences" />
          </node>
        </node>
        <node concept="2nav41" id="4HR0qZdIAaL" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="4HR0qZdIAab" resolve="actorReferences" />
          <node concept="3g$k$6" id="4HR0qZdIAaN" role="2ngaLO">
            <ref role="3g$k$l" node="4HR0qZdIAa2" resolve="receivedMessage.payload" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2GMybP" id="4HR0qZdnK7$" role="2GMED1">
      <property role="TrG5h" value="initializer1" />
      <node concept="1lgcPH" id="4HR0qZds203" role="2GMDOI">
        <property role="TrG5h" value="payload" />
        <ref role="27M2VM" node="3SawQFrbiIW" resolve="type1" />
        <node concept="2JkZqM" id="4HR0qZds205" role="2JqxAr">
          <property role="2JkZqL" value="payload example" />
        </node>
      </node>
    </node>
    <node concept="1hWc2v" id="3SawQFrbiJ1" role="1hWdPE">
      <property role="TrG5h" value="selection" />
    </node>
    <node concept="1hWc2v" id="4HR0qZdnK7x" role="1hWdPE">
      <property role="TrG5h" value="projection" />
    </node>
    <node concept="1hWc2v" id="4HR0qZdIA0D" role="1hWdPE">
      <property role="TrG5h" value="output" />
    </node>
    <node concept="1frwoX" id="3SawQFrbiIW" role="1fvW3h">
      <property role="TrG5h" value="type1" />
    </node>
    <node concept="1frwoX" id="3SawQFrbiIY" role="1fvW3h">
      <property role="TrG5h" value="type2" />
    </node>
    <node concept="2QtU1Q" id="3SawQFrbiIU" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="3SawQFrbiIV" role="2QtU1V" />
    </node>
    <node concept="3DMq4$" id="4zQgufL5wnI" role="3DMxif">
      <node concept="3DMq4E" id="4zQgufL5wq4" role="3DMq5I">
        <ref role="3DMq5A" node="4zQgufL5wnU" />
        <ref role="3DMq5$" node="4zQgufL5wpM" />
        <node concept="2JkZqM" id="4zQgufL5wq$" role="1qtvm3">
          <property role="2JkZqL" value="Attribute0 &lt; 3 &amp;&amp; Attribute1 != 0" />
        </node>
      </node>
      <node concept="3DMq4E" id="4zQgufL5wq7" role="3DMq5I">
        <ref role="3DMq5A" node="4zQgufL5wnU" />
        <ref role="3DMq5$" node="4zQgufL5wpP" />
        <node concept="2JkZqM" id="4zQgufL5wqA" role="1qtvm3">
          <property role="2JkZqL" value="Attribute3 &gt; 10" />
        </node>
      </node>
      <node concept="3DMq4E" id="4zQgufL5wqc" role="3DMq5I">
        <ref role="3DMq5A" node="4zQgufL5wpM" />
        <ref role="3DMq5$" node="4zQgufL5wo$" />
        <node concept="2JkZqM" id="4zQgufL5wqD" role="1qtvm3">
          <property role="2JkZqL" value="Attribute0, Attribute2" />
        </node>
      </node>
      <node concept="3DMq4E" id="4zQgufL5wqk" role="3DMq5I">
        <ref role="3DMq5A" node="4zQgufL5wpP" />
        <ref role="3DMq5$" node="4zQgufL5wo$" />
        <node concept="2JkZqM" id="4zQgufL5wqG" role="1qtvm3">
          <property role="2JkZqL" value="Attribute3" />
        </node>
      </node>
      <node concept="3DMq4E" id="4zQgufL5wqr" role="3DMq5I">
        <ref role="3DMq5A" node="4zQgufL5wo$" />
        <ref role="3DMq5$" node="4zQgufL5woN" />
      </node>
      <node concept="Fpmux" id="4zQgufL5wnL" role="Fpmug">
        <node concept="3DMq4_" id="4zQgufL5wnU" role="FpmuI">
          <ref role="3DMq4F" node="4HR0qZdIAb6" resolve="dataSourceActor" />
        </node>
      </node>
      <node concept="Fpmux" id="4zQgufL5wnW" role="Fpmug">
        <node concept="3DMq4_" id="4zQgufL5wpM" role="FpmuI">
          <ref role="3DMq4F" node="4zQgufL5wpo" resolve="selectionActor0" />
        </node>
      </node>
      <node concept="Fpmux" id="4zQgufL5wo3" role="Fpmug">
        <node concept="3DMq4_" id="4zQgufL5wpP" role="FpmuI">
          <ref role="3DMq4F" node="4zQgufL5wpq" resolve="selectionActor1" />
        </node>
      </node>
      <node concept="Fpmux" id="4zQgufL5wop" role="Fpmug">
        <node concept="3DMq4_" id="4zQgufL5wo$" role="FpmuI">
          <ref role="3DMq4F" node="4HR0qZdIA7g" resolve="projectionActor" />
        </node>
      </node>
      <node concept="Fpmux" id="4zQgufL5woA" role="Fpmug">
        <node concept="3DMq4_" id="4zQgufL5woN" role="FpmuI">
          <ref role="3DMq4F" node="4HR0qZdIA7z" resolve="outputActor" />
        </node>
      </node>
      <node concept="37mRI7" id="4zQgufL5wqK" role="lGtFl">
        <node concept="37mRIm" id="4zQgufL5wqL" role="37mRID">
          <property role="37mO49" value="5257462062259766778" />
          <node concept="gqqVs" id="4zQgufL5wqJ" role="37mO4d">
            <property role="gqqTZ" value="294.99995" />
            <property role="gqqTW" value="12.000100000000003" />
            <property role="gqqTX" value="132.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wqN" role="37mRID">
          <property role="37mO49" value="5257462062259766898" />
          <node concept="gqqVs" id="4zQgufL5wqM" role="37mO4d">
            <property role="gqqTZ" value="216.99995" />
            <property role="gqqTW" value="176.0002983642578" />
            <property role="gqqTX" value="132.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wqP" role="37mRID">
          <property role="37mO49" value="5257462062259766901" />
          <node concept="gqqVs" id="4zQgufL5wqO" role="37mO4d">
            <property role="gqqTZ" value="365.99995" />
            <property role="gqqTW" value="176.0002983642578" />
            <property role="gqqTX" value="132.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wqR" role="37mRID">
          <property role="37mO49" value="5257462062259766820" />
          <node concept="gqqVs" id="4zQgufL5wqQ" role="37mO4d">
            <property role="gqqTZ" value="294.99995" />
            <property role="gqqTW" value="330.0004967285156" />
            <property role="gqqTX" value="132.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wqT" role="37mRID">
          <property role="37mO49" value="5257462062259766835" />
          <node concept="gqqVs" id="4zQgufL5wqS" role="37mO4d">
            <property role="gqqTZ" value="310.99995" />
            <property role="gqqTW" value="447.0007103515625" />
            <property role="gqqTX" value="100.0" />
            <property role="gqqTy" value="33.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wqV" role="37mRID">
          <property role="37mO49" value="5257462062259766916" />
          <node concept="2VclpC" id="4zQgufL5wqU" role="37mO4d">
            <node concept="3ul5H1" id="4zQgufL5wqW" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="4zQgufL5wqX" role="3ul5Gz">
                <node concept="2VclrF" id="4zQgufL5wqY" role="3wpmZR">
                  <property role="2Vclpx" value="-37.0" />
                  <property role="2Vclpz" value="86.00019836425781" />
                </node>
                <node concept="2VclrF" id="4zQgufL5wqZ" role="3wpmZP">
                  <property role="2Vclpx" value="49.0" />
                  <property role="2Vclpz" value="-3.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="4zQgufL5wtO" role="2Vcluh">
              <property role="2Vclpx" value="361.0" />
              <property role="2Vclpz" value="63.000200271606445" />
            </node>
            <node concept="2VclrF" id="4zQgufL5wtP" role="2Vcluh">
              <property role="2Vclpx" value="286.0" />
              <property role="2Vclpz" value="63.000200271606445" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wr1" role="37mRID">
          <property role="37mO49" value="5257462062259766919" />
          <node concept="2VclpC" id="4zQgufL5wr0" role="37mO4d">
            <node concept="3ul5H1" id="4zQgufL5wr2" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="4zQgufL5wr3" role="3ul5Gz">
                <node concept="2VclrF" id="4zQgufL5wr4" role="3wpmZR">
                  <property role="2Vclpx" value="398.0" />
                  <property role="2Vclpz" value="86.00019836425781" />
                </node>
                <node concept="2VclrF" id="4zQgufL5wr5" role="3wpmZP">
                  <property role="2Vclpx" value="49.0" />
                  <property role="2Vclpz" value="-3.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="4zQgufL5wtQ" role="2Vcluh">
              <property role="2Vclpx" value="361.0" />
              <property role="2Vclpz" value="63.000200271606445" />
            </node>
            <node concept="2VclrF" id="4zQgufL5wtR" role="2Vcluh">
              <property role="2Vclpx" value="436.0" />
              <property role="2Vclpz" value="63.000200271606445" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wr7" role="37mRID">
          <property role="37mO49" value="5257462062259766924" />
          <node concept="2VclpC" id="4zQgufL5wr6" role="37mO4d">
            <node concept="3ul5H1" id="4zQgufL5wr8" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="4zQgufL5wr9" role="3ul5Gz">
                <node concept="2VclrF" id="4zQgufL5wra" role="3wpmZR">
                  <property role="2Vclpx" value="98.0" />
                  <property role="2Vclpz" value="258.0003967285156" />
                </node>
                <node concept="2VclrF" id="4zQgufL5wrb" role="3wpmZP">
                  <property role="2Vclpx" value="49.0" />
                  <property role="2Vclpz" value="-3.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="4zQgufL5wtS" role="2Vcluh">
              <property role="2Vclpx" value="281.0" />
              <property role="2Vclpz" value="218.00039672851562" />
            </node>
            <node concept="2VclrF" id="4zQgufL5wtT" role="2Vcluh">
              <property role="2Vclpx" value="356.0" />
              <property role="2Vclpz" value="218.00039672851562" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wrd" role="37mRID">
          <property role="37mO49" value="5257462062259766932" />
          <node concept="2VclpC" id="4zQgufL5wrc" role="37mO4d">
            <node concept="3ul5H1" id="4zQgufL5wre" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="4zQgufL5wrf" role="3ul5Gz">
                <node concept="2VclrF" id="4zQgufL5wrg" role="3wpmZR">
                  <property role="2Vclpx" value="371.0" />
                  <property role="2Vclpz" value="258.0003967285156" />
                </node>
                <node concept="2VclrF" id="4zQgufL5wrh" role="3wpmZP">
                  <property role="2Vclpx" value="49.0" />
                  <property role="2Vclpz" value="-3.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="4zQgufL5wtU" role="2Vcluh">
              <property role="2Vclpx" value="436.0" />
              <property role="2Vclpz" value="216.00039672851562" />
            </node>
            <node concept="2VclrF" id="4zQgufL5wtV" role="2Vcluh">
              <property role="2Vclpx" value="361.0" />
              <property role="2Vclpz" value="216.00039672851562" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4zQgufL5wrj" role="37mRID">
          <property role="37mO49" value="5257462062259766939" />
          <node concept="2VclpC" id="4zQgufL5wri" role="37mO4d">
            <node concept="3ul5H1" id="4zQgufL5wrk" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="4zQgufL5wrl" role="3ul5Gz">
                <node concept="2VclrF" id="4zQgufL5wrm" role="3wpmZR">
                  <property role="2Vclpx" value="234.0" />
                  <property role="2Vclpz" value="393.0006103515625" />
                </node>
                <node concept="2VclrF" id="4zQgufL5wrn" role="3wpmZP">
                  <property role="2Vclpx" value="49.0" />
                  <property role="2Vclpz" value="-3.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

