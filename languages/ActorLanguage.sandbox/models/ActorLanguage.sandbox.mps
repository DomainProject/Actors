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
      <concept id="6009747775853662927" name="ActorLanguage.structure.Become" flags="ng" index="2a5nGd">
        <reference id="6009747775853684712" name="newBehavior" index="2a5gSE" />
      </concept>
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
      <concept id="4619656042771117415" name="ActorLanguage.structure.ForEachActorReference" flags="ng" index="2_LUnm">
        <reference id="4619656042771117416" name="actorReferenceList" index="2_LUnp" />
        <child id="4619656042772348181" name="actorReference" index="2_WIQ$" />
      </concept>
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry" />
      <concept id="4447085707124854353" name="ActorLanguage.structure.StringBody" flags="ng" index="2JkZqM">
        <property id="4447085707124854354" name="body" index="2JkZqL" />
      </concept>
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
      <concept id="7033755722359605621" name="ActorLanguage.structure.Fetch" flags="ng" index="15wmb_">
        <property id="7033755722359605627" name="policy" index="15wmbF" />
        <child id="7694881003795133521" name="message" index="2uPo7h" />
      </concept>
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
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
        <child id="3865756215865914231" name="actors" index="37lXYW" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="2411303652489062023" name="ActorLanguage.structure.CreateEnvelope" flags="ng" index="1lgcPy">
        <property id="7694881003800154999" name="priority" index="2uCmrR" />
        <reference id="2411303652489062027" name="receiver" index="1lgcPI" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH">
        <child id="4447085707124351352" name="strings" index="2JqxAr" />
      </concept>
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <property id="6009747775857014808" name="type" index="2aK57q" />
        <child id="6009747775853714785" name="become" index="2a4Fiz" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <property role="2aK57q" value="5dAUsbpDFwk/BATCH" />
      <node concept="2iZ$PO" id="40skb7A1lDD" role="37ngyo">
        <node concept="2iUZJK" id="40skb7A1lDE" role="2iUZJS">
          <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
        </node>
        <node concept="2_DyK2" id="40skb7A1lDF" role="BvGUO">
          <property role="TrG5h" value="list" />
        </node>
      </node>
      <node concept="2_LUnm" id="40skb7A1lDO" role="37ngyo">
        <ref role="2_LUnp" node="40skb7A1lDF" resolve="list" />
        <node concept="Bk5ry" id="40skb7A1lE6" role="2_WIQ$">
          <property role="TrG5h" value="reference" />
        </node>
        <node concept="3clFbS" id="40skb7A1lDS" role="2LFqv$">
          <node concept="1lgcPy" id="40skb7A2KdM" role="3cqZAp">
            <property role="TrG5h" value="env" />
            <property role="2uCmrR" value="5.0" />
            <ref role="1lgcPI" node="40skb7A1lE6" resolve="reference" />
          </node>
          <node concept="1lgcPH" id="40skb7A2KdR" role="3cqZAp">
            <property role="TrG5h" value="p" />
            <node concept="2JkZqM" id="40skb7A2KdX" role="2JqxAr">
              <property role="2JkZqL" value="Hello" />
            </node>
            <node concept="2JkZqM" id="40skb7A2KdZ" role="2JqxAr">
              <property role="2JkZqL" value="World" />
            </node>
          </node>
          <node concept="37lXYU" id="40skb7A2Keu" role="3cqZAp">
            <property role="TrG5h" value="m" />
            <node concept="3g$k$6" id="40skb7A2KeE" role="GupN0">
              <ref role="3g$k$l" node="40skb7A2KdR" resolve="p" />
            </node>
            <node concept="1lgcPy" id="4tOv2viIB_0" role="34eGaj">
              <property role="TrG5h" value="env1" />
              <property role="2uCmrR" value="2.0" />
              <ref role="1lgcPI" node="40skb7A1lE6" resolve="reference" />
            </node>
          </node>
          <node concept="37lS4T" id="40skb7A2Ke8" role="3cqZAp">
            <ref role="37lS4Y" node="40skb7A2Keu" resolve="m" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5dAUsbpXT6m" role="37ngyo" />
      <node concept="2a5nGd" id="yb$Bgod4F4" role="2a4Fiz">
        <ref role="2a5gSE" node="1enjyq1lUQ3" resolve="b1" />
      </node>
    </node>
    <node concept="1lj4MQ" id="5dAUsbpWjZy" role="2QtU1L">
      <property role="TrG5h" value="b2" />
      <property role="2aK57q" value="5dAUsbpDFwl/RESPONSIVE" />
      <node concept="15wmb_" id="5dAUsbq1d0D" role="37ngyo">
        <property role="15wmbF" value="66sUT0$7o_R/FIFO" />
        <node concept="37lXYU" id="5dAUsbq1d0J" role="2uPo7h">
          <property role="TrG5h" value="rec_message0" />
          <node concept="1lgcPH" id="5dAUsbq1d0K" role="GupN0">
            <property role="TrG5h" value="rec_message0.payload" />
          </node>
        </node>
      </node>
      <node concept="2a5nGd" id="yb$Bgo8nNP" role="2a4Fiz">
        <ref role="2a5gSE" node="1enjyq1lUQ3" resolve="b1" />
      </node>
    </node>
    <node concept="1lj4MQ" id="5dAUsbq7zGl" role="2QtU1L">
      <property role="TrG5h" value="b3" />
      <property role="2aK57q" value="5dAUsbpDFwl/RESPONSIVE" />
      <node concept="15wmb_" id="5dAUsbqaSnQ" role="37ngyo">
        <property role="15wmbF" value="66sUT0$7o_R/FIFO" />
        <node concept="37lXYU" id="5dAUsbqcwIj" role="2uPo7h">
          <property role="TrG5h" value="rec_message0" />
          <node concept="1lgcPH" id="5dAUsbqcwIk" role="GupN0">
            <property role="TrG5h" value="rec_message0.payload" />
          </node>
        </node>
      </node>
      <node concept="2iZ$PO" id="5dAUsbqcwJw" role="37ngyo">
        <node concept="2iUZJK" id="5dAUsbqcwJy" role="2iUZJS">
          <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
        </node>
        <node concept="2_DyK2" id="5dAUsbqcwJ$" role="BvGUO">
          <property role="TrG5h" value="list" />
        </node>
      </node>
      <node concept="3clFbH" id="5dAUsbqcwJJ" role="37ngyo" />
      <node concept="2_LUnm" id="5dAUsbqcwK6" role="37ngyo">
        <ref role="2_LUnp" node="5dAUsbqcwJ$" resolve="list" />
        <node concept="Bk5ry" id="5dAUsbqcwK8" role="2_WIQ$">
          <property role="TrG5h" value="ref" />
        </node>
        <node concept="3clFbS" id="5dAUsbqcwKa" role="2LFqv$">
          <node concept="37lXYU" id="5dAUsbqe9Uz" role="3cqZAp">
            <property role="TrG5h" value="fwdMsg" />
            <node concept="3g$k$6" id="5dAUsbqe9UB" role="GupN0">
              <ref role="3g$k$l" node="5dAUsbqcwIk" resolve="rec_message0.payload" />
            </node>
            <node concept="1lgcPy" id="5dAUsbqe9UE" role="34eGaj">
              <property role="TrG5h" value="e" />
              <property role="2uCmrR" value="5.0" />
              <ref role="1lgcPI" node="5dAUsbqcwK8" resolve="ref" />
            </node>
          </node>
          <node concept="37lS4T" id="5dAUsbqe9UL" role="3cqZAp">
            <ref role="37lS4Y" node="5dAUsbqe9Uz" resolve="fwdMsg" />
          </node>
        </node>
      </node>
      <node concept="2a5nGd" id="yb$Bgo8nNR" role="2a4Fiz">
        <ref role="2a5gSE" node="5dAUsbpWjZy" resolve="b2" />
      </node>
    </node>
    <node concept="37lXYJ" id="5dAUsbqmeZ$" role="37lXYW">
      <property role="TrG5h" value="a1" />
      <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
      <node concept="2uUgHn" id="5dAUsbqmeZ_" role="2LyG1a" />
    </node>
    <node concept="2LyTEn" id="5dAUsbqnJsq" role="37lXYW">
      <property role="2LyTFK" value="2" />
      <property role="2LyTFQ" value="act" />
      <ref role="2iLGpD" node="5dAUsbq7zGl" resolve="b3" />
      <node concept="37lXYJ" id="5dAUsbqnJsx" role="BzvkV">
        <property role="TrG5h" value="act0" />
        <ref role="2iLy9k" node="5dAUsbq7zGl" resolve="b3" />
        <node concept="2uUgHn" id="5dAUsbqnJsy" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="5dAUsbqnJsz" role="BzvkV">
        <property role="TrG5h" value="act1" />
        <ref role="2iLy9k" node="5dAUsbq7zGl" resolve="b3" />
        <node concept="2uUgHn" id="5dAUsbqnJs$" role="2LyG1a" />
      </node>
    </node>
    <node concept="2LyTEn" id="5dAUsbqnJsT" role="37lXYW">
      <property role="2LyTFK" value="2" />
      <property role="2LyTFQ" value="actor" />
      <ref role="2iLGpD" node="5dAUsbpWjZy" resolve="b2" />
      <node concept="37lXYJ" id="5dAUsbqnJt3" role="BzvkV">
        <property role="TrG5h" value="actor0" />
        <ref role="2iLy9k" node="5dAUsbpWjZy" resolve="b2" />
        <node concept="2uUgHn" id="5dAUsbqnJt4" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="5dAUsbqnJt5" role="BzvkV">
        <property role="TrG5h" value="actor1" />
        <ref role="2iLy9k" node="5dAUsbpWjZy" resolve="b2" />
        <node concept="2uUgHn" id="5dAUsbqnJt6" role="2LyG1a" />
      </node>
    </node>
    <node concept="3DMq4$" id="5dAUsbqnJtb" role="3DMxif">
      <node concept="3DMq4_" id="5dAUsbqnJtd" role="3DMq5C">
        <ref role="3DMq4F" node="5dAUsbqmeZ$" resolve="a1" />
      </node>
      <node concept="3DMq4_" id="5dAUsbqnJtf" role="3DMq5C">
        <ref role="3DMq4F" node="5dAUsbqnJsx" resolve="act0" />
      </node>
      <node concept="3DMq4_" id="5dAUsbqnJti" role="3DMq5C">
        <ref role="3DMq4F" node="5dAUsbqnJsz" resolve="act1" />
      </node>
      <node concept="3DMq4_" id="5dAUsbqnJtm" role="3DMq5C">
        <ref role="3DMq4F" node="5dAUsbqnJt3" resolve="actor0" />
      </node>
      <node concept="3DMq4_" id="5dAUsbqnJtr" role="3DMq5C">
        <ref role="3DMq4F" node="5dAUsbqnJt5" resolve="actor1" />
      </node>
      <node concept="3DMq4E" id="5dAUsbqnJtx" role="3DMq5I">
        <ref role="3DMq5A" node="5dAUsbqnJtd" />
        <ref role="3DMq5$" node="5dAUsbqnJtf" />
      </node>
      <node concept="3DMq4E" id="5dAUsbqnJtz" role="3DMq5I">
        <ref role="3DMq5A" node="5dAUsbqnJtd" />
        <ref role="3DMq5$" node="5dAUsbqnJti" />
      </node>
      <node concept="3DMq4E" id="5dAUsbqnJtA" role="3DMq5I">
        <ref role="3DMq5A" node="5dAUsbqnJtf" />
        <ref role="3DMq5$" node="5dAUsbqnJtm" />
      </node>
      <node concept="3DMq4E" id="5dAUsbqnJtE" role="3DMq5I">
        <ref role="3DMq5A" node="5dAUsbqnJti" />
        <ref role="3DMq5$" node="5dAUsbqnJtr" />
      </node>
      <node concept="37mRI7" id="5dAUsbqnJtK" role="lGtFl">
        <node concept="37mRIm" id="5dAUsbqnJtL" role="37mRID">
          <property role="37mO49" value="6009747775869089613" />
          <node concept="gqqVs" id="5dAUsbqnJtJ" role="37mO4d">
            <property role="gqqTZ" value="12.0001" />
            <property role="gqqTW" value="37.5" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="5dAUsbqnJtN" role="37mRID">
          <property role="37mO49" value="6009747775869089615" />
          <node concept="gqqVs" id="5dAUsbqnJtM" role="37mO4d">
            <property role="gqqTZ" value="78.00029836425782" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="5dAUsbqnJtP" role="37mRID">
          <property role="37mO49" value="6009747775869089618" />
          <node concept="gqqVs" id="5dAUsbqnJtO" role="37mO4d">
            <property role="gqqTZ" value="78.00029836425782" />
            <property role="gqqTW" value="63.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="5dAUsbqnJtR" role="37mRID">
          <property role="37mO49" value="6009747775869089622" />
          <node concept="gqqVs" id="5dAUsbqnJtQ" role="37mO4d">
            <property role="gqqTZ" value="140.00049672851563" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="58.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="5dAUsbqnJtT" role="37mRID">
          <property role="37mO49" value="6009747775869089627" />
          <node concept="gqqVs" id="5dAUsbqnJtS" role="37mO4d">
            <property role="gqqTZ" value="140.00049672851563" />
            <property role="gqqTW" value="63.0" />
            <property role="gqqTX" value="58.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="5dAUsbqnJul" role="37mRID">
          <property role="37mO49" value="6009747775869089633" />
          <node concept="2VclpC" id="5dAUsbqnJuk" role="37mO4d">
            <node concept="2VclrF" id="5dAUsbqnJum" role="2Vcluh">
              <property role="2Vclpx" value="58.000200271606445" />
              <property role="2Vclpz" value="54.00005" />
            </node>
            <node concept="2VclrF" id="5dAUsbqnJun" role="2Vcluh">
              <property role="2Vclpx" value="58.000200271606445" />
              <property role="2Vclpz" value="28.50005" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="5dAUsbqnJup" role="37mRID">
          <property role="37mO49" value="6009747775869089635" />
          <node concept="2VclpC" id="5dAUsbqnJuo" role="37mO4d">
            <node concept="2VclrF" id="5dAUsbqnJuq" role="2Vcluh">
              <property role="2Vclpx" value="58.000200271606445" />
              <property role="2Vclpz" value="54.00005" />
            </node>
            <node concept="2VclrF" id="5dAUsbqnJur" role="2Vcluh">
              <property role="2Vclpx" value="58.000200271606445" />
              <property role="2Vclpz" value="79.50005" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

