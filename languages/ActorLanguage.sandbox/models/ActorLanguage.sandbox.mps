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
      <concept id="1411682935490806610" name="ActorLanguage.structure.GetActorsFromReceptionist" flags="ng" index="2iZ$PO">
        <child id="1411682935492097502" name="policy" index="2iUZJS" />
        <child id="13109696840883591" name="actorReferences" index="BvGUO" />
      </concept>
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="4619656042768923827" name="ActorLanguage.structure.ActorReferenceList" flags="ng" index="2_DyK2" />
      <concept id="4619656042771117415" name="ActorLanguage.structure.ForEachActorReferenceStatement" flags="ng" index="2_LUnm">
        <reference id="4619656042771117416" name="actorReferenceList" index="2_LUnp" />
        <child id="4619656042772348181" name="actorReference" index="2_WIQ$" />
      </concept>
      <concept id="13109696842003203" name="ActorLanguage.structure.CreateActorReference" flags="ng" index="BjY0K">
        <reference id="13109696845252031" name="actor" index="BJpqc" />
        <child id="13109696843925076" name="actorReference" index="Bk5lB" />
      </concept>
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry">
        <reference id="13109696843924946" name="actor" index="Bk5rx" />
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
        <child id="6739934483257929414" name="behavior" index="2QtU1P" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="7033755722359605621" name="ActorLanguage.structure.Fetch" flags="ng" index="15wmb_">
        <child id="7694881003795133521" name="message" index="2uPo7h" />
      </concept>
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="4813801747212515788" name="fetchPolicy" index="1V3Vrz" />
        <reference id="1411682935489260658" name="behavior" index="2iLy9k" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
        <child id="3269545992594456658" name="envelope" index="34eGaj" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="63639229097885131" name="initializer" index="2GMED1" />
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actors" index="37lXYW" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
      </concept>
      <concept id="7051067309796483633" name="ActorLanguage.structure.ActorLanguageStatement" flags="ngI" index="1e4STH">
        <child id="7051067309796483634" name="statements" index="1e4STI" />
      </concept>
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="7051067309802826947" name="ActorLanguage.structure.ExternalFunction" flags="ng" index="1hWc2v" />
      <concept id="7051067309802828018" name="ActorLanguage.structure.ExecuteExternalFunction" flags="ng" index="1hWdMI">
        <reference id="7051067309803752890" name="message" index="1hSE7A" />
        <reference id="7051067309802828019" name="function" index="1hWdMJ" />
      </concept>
      <concept id="2411303652489062023" name="ActorLanguage.structure.CreateEnvelope" flags="ng" index="1lgcPy">
        <property id="7694881003800154999" name="priority" index="2uCmrR" />
        <reference id="2411303652489062027" name="receiver" index="1lgcPI" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH">
        <child id="4447085707124351352" name="strings" index="2JqxAr" />
      </concept>
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
    <node concept="37lXYJ" id="4be3MWTVZaf" role="37lXYW">
      <property role="TrG5h" value="a0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="67qr5KJWq2C" resolve="b1" />
      <node concept="2uUgHn" id="4be3MWTVZag" role="2LyG1a" />
    </node>
    <node concept="2LyTEn" id="4be3MWTVZan" role="37lXYW">
      <property role="2LyTFK" value="5" />
      <property role="2LyTFQ" value="act" />
      <property role="1V3VlM" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLGpD" node="67qr5KJWq2K" resolve="b2" />
      <node concept="37lXYJ" id="67qr5KJWq3k" role="BzvkV">
        <property role="TrG5h" value="act0" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="67qr5KJWq2K" resolve="b2" />
        <node concept="2uUgHn" id="67qr5KJWq3l" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="67qr5KJWq3m" role="BzvkV">
        <property role="TrG5h" value="act1" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="67qr5KJWq2K" resolve="b2" />
        <node concept="2uUgHn" id="67qr5KJWq3n" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="67qr5KJWq3o" role="BzvkV">
        <property role="TrG5h" value="act2" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="67qr5KJWq2K" resolve="b2" />
        <node concept="2uUgHn" id="67qr5KJWq3p" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="67qr5KJWq3q" role="BzvkV">
        <property role="TrG5h" value="act3" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="67qr5KJWq2K" resolve="b2" />
        <node concept="2uUgHn" id="67qr5KJWq3r" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="67qr5KJWq3s" role="BzvkV">
        <property role="TrG5h" value="act4" />
        <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
        <ref role="2iLy9k" node="67qr5KJWq2K" resolve="b2" />
        <node concept="2uUgHn" id="67qr5KJWq3t" role="2LyG1a" />
      </node>
    </node>
    <node concept="2LyTEn" id="4be3MWTVZaZ" role="37lXYW">
      <property role="2LyTFK" value="3" />
      <property role="2LyTFQ" value="actor" />
      <property role="1V3VlM" value="66sUT0$7o_S/HIGHEST_PRIORITY" />
      <ref role="2iLGpD" node="67qr5KJWq34" resolve="b3" />
      <node concept="37lXYJ" id="67qr5KJWq3C" role="BzvkV">
        <property role="TrG5h" value="actor0" />
        <property role="1V3Vrz" value="66sUT0$7o_S/HIGHEST_PRIORITY" />
        <ref role="2iLy9k" node="67qr5KJWq34" resolve="b3" />
        <node concept="2uUgHn" id="67qr5KJWq3D" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="67qr5KJWq3E" role="BzvkV">
        <property role="TrG5h" value="actor1" />
        <property role="1V3Vrz" value="66sUT0$7o_S/HIGHEST_PRIORITY" />
        <ref role="2iLy9k" node="67qr5KJWq34" resolve="b3" />
        <node concept="2uUgHn" id="67qr5KJWq3F" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="67qr5KJWq3G" role="BzvkV">
        <property role="TrG5h" value="actor2" />
        <property role="1V3Vrz" value="66sUT0$7o_S/HIGHEST_PRIORITY" />
        <ref role="2iLy9k" node="67qr5KJWq34" resolve="b3" />
        <node concept="2uUgHn" id="67qr5KJWq3H" role="2LyG1a" />
      </node>
    </node>
    <node concept="2GMybP" id="3y5SEGd1fV" role="2GMED1">
      <node concept="BjY0K" id="3y5SEGxTMt" role="2GMDOI">
        <ref role="BJpqc" node="4be3MWTVZaf" resolve="a0" />
        <node concept="Bk5ry" id="3y5SEGxTMu" role="Bk5lB">
          <property role="TrG5h" value="ref" />
          <ref role="Bk5rx" node="4be3MWTVZaf" resolve="a0" />
        </node>
      </node>
      <node concept="37lXYU" id="67qr5KJWq3U" role="2GMDOI">
        <property role="TrG5h" value="m" />
        <node concept="1lgcPH" id="67qr5KJWq42" role="GupN0">
          <property role="TrG5h" value="p" />
          <node concept="2JkZqM" id="67qr5KJWq45" role="2JqxAr">
            <property role="2JkZqL" value="hello" />
          </node>
        </node>
        <node concept="1lgcPy" id="67qr5KJWq47" role="34eGaj">
          <property role="TrG5h" value="e" />
          <property role="2uCmrR" value="5.0" />
          <ref role="1lgcPI" node="3y5SEGxTMu" resolve="ref" />
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="67qr5KJWq2C" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <node concept="15wmb_" id="67qr5KJWq2D" role="37ngyo">
        <node concept="37lXYU" id="67qr5KJWq2E" role="2uPo7h">
          <property role="TrG5h" value="rec_message0" />
          <node concept="1lgcPH" id="67qr5KJWq2F" role="GupN0">
            <property role="TrG5h" value="rec_message0.payload" />
          </node>
        </node>
      </node>
      <node concept="2iZ$PO" id="67qr5KJWq4_" role="37ngyo">
        <node concept="2iUZJK" id="67qr5KJWq4B" role="2iUZJS">
          <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
        </node>
        <node concept="2_DyK2" id="67qr5KJWq4D" role="BvGUO">
          <property role="TrG5h" value="refs" />
        </node>
      </node>
      <node concept="2_LUnm" id="67qr5KJWq4T" role="37ngyo">
        <ref role="2_LUnp" node="67qr5KJWq4D" resolve="refs" />
        <node concept="Bk5ry" id="67qr5KJWq4V" role="2_WIQ$">
          <property role="TrG5h" value="ref" />
        </node>
        <node concept="37lXYU" id="67qr5KJWq55" role="1e4STI">
          <property role="TrG5h" value="m" />
          <node concept="3g$k$6" id="67qr5KJWq59" role="GupN0">
            <ref role="3g$k$l" node="67qr5KJWq2F" resolve="rec_message0.payload" />
          </node>
          <node concept="1lgcPy" id="67qr5KJWq5c" role="34eGaj">
            <property role="TrG5h" value="e" />
            <property role="2uCmrR" value="5.0" />
            <ref role="1lgcPI" node="67qr5KJWq4V" resolve="ref" />
          </node>
        </node>
        <node concept="37lS4T" id="67qr5KJZ5VY" role="1e4STI">
          <ref role="37lS4Y" node="67qr5KJWq55" resolve="m" />
        </node>
      </node>
      <node concept="3clFbH" id="67qr5KK4FlF" role="37ngyo" />
      <node concept="1hWdMI" id="67qr5KKjBy$" role="37ngyo">
        <ref role="1hWdMJ" node="67qr5KKcstY" resolve="compute" />
        <ref role="1hSE7A" node="67qr5KJWq55" resolve="m" />
      </node>
    </node>
    <node concept="1lj4MQ" id="67qr5KJWq2K" role="2QtU1L">
      <property role="TrG5h" value="b2" />
      <node concept="15wmb_" id="67qr5KJWq2L" role="37ngyo">
        <node concept="37lXYU" id="67qr5KJWq2M" role="2uPo7h">
          <property role="TrG5h" value="rec_message0" />
          <node concept="1lgcPH" id="67qr5KJWq2N" role="GupN0">
            <property role="TrG5h" value="rec_message0.payload" />
          </node>
        </node>
      </node>
      <node concept="1hWdMI" id="67qr5KKecQO" role="37ngyo">
        <ref role="1hWdMJ" node="67qr5KKcsu0" resolve="process" />
        <ref role="1hSE7A" node="67qr5KJWq2M" resolve="rec_message0" />
      </node>
    </node>
    <node concept="1lj4MQ" id="67qr5KJWq34" role="2QtU1L">
      <property role="TrG5h" value="b3" />
      <node concept="15wmb_" id="67qr5KJWq35" role="37ngyo">
        <node concept="37lXYU" id="67qr5KJWq36" role="2uPo7h">
          <property role="TrG5h" value="rec_message0" />
          <node concept="1lgcPH" id="67qr5KJWq37" role="GupN0">
            <property role="TrG5h" value="rec_message0.payload" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1hWc2v" id="67qr5KKcstY" role="1hWdPE">
      <property role="TrG5h" value="compute" />
    </node>
    <node concept="1hWc2v" id="67qr5KKcsu0" role="1hWdPE">
      <property role="TrG5h" value="process" />
    </node>
  </node>
</model>

