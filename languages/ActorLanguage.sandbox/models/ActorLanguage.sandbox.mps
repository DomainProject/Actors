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
      <concept id="4619656042771117415" name="ActorLanguage.structure.ForeachActorReference" flags="ng" index="2_LUnm">
        <reference id="4619656042771117416" name="actorReferenceList" index="2_LUnp" />
        <child id="4619656042772348181" name="actorReference" index="2_WIQ$" />
      </concept>
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry" />
      <concept id="711157185106633347" name="ActorLanguage.structure.SelectEnvelope" flags="ng" index="GouGM">
        <reference id="711157185106633348" name="envelope" index="GouGP" />
      </concept>
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
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="1411682935489244212" name="address" index="2iLA8i" />
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
            <node concept="GouGM" id="40skb7A2KeH" role="34eGaj">
              <ref role="GouGP" node="40skb7A2KdM" resolve="env" />
            </node>
          </node>
          <node concept="37lS4T" id="40skb7A2Ke8" role="3cqZAp">
            <ref role="37lS4Y" node="40skb7A2Keu" resolve="m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="I$NcBRdSu" role="2QtU1L">
      <property role="TrG5h" value="b2" />
    </node>
    <node concept="37lXYJ" id="3QReeeiZImi" role="37lXYW">
      <property role="TrG5h" value="actor1" />
      <property role="2iLA8i" value="1" />
      <ref role="2iLy9k" node="1enjyq1lUQ3" resolve="b1" />
      <node concept="2uUgHn" id="3QReeeiZImj" role="2LyG1a" />
    </node>
    <node concept="2LyTEn" id="3QReeeiZIm$" role="37lXYW">
      <property role="2LyTFK" value="5" />
      <property role="2LyTFQ" value="act" />
      <ref role="2iLGpD" node="I$NcBRdSu" resolve="b2" />
      <node concept="37lXYJ" id="3QReeeiZInh" role="BzvkV">
        <property role="TrG5h" value="act0" />
        <ref role="2iLy9k" node="I$NcBRdSu" resolve="b2" />
        <node concept="2uUgHn" id="3QReeeiZIni" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="3QReeeiZInj" role="BzvkV">
        <property role="TrG5h" value="act1" />
        <ref role="2iLy9k" node="I$NcBRdSu" resolve="b2" />
        <node concept="2uUgHn" id="3QReeeiZInk" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="3QReeeiZInl" role="BzvkV">
        <property role="TrG5h" value="act2" />
        <ref role="2iLy9k" node="I$NcBRdSu" resolve="b2" />
        <node concept="2uUgHn" id="3QReeeiZInm" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="3QReeeiZInn" role="BzvkV">
        <property role="TrG5h" value="act3" />
        <ref role="2iLy9k" node="I$NcBRdSu" resolve="b2" />
        <node concept="2uUgHn" id="3QReeeiZIno" role="2LyG1a" />
      </node>
      <node concept="37lXYJ" id="3QReeeiZInp" role="BzvkV">
        <property role="TrG5h" value="act4" />
        <ref role="2iLy9k" node="I$NcBRdSu" resolve="b2" />
        <node concept="2uUgHn" id="3QReeeiZInq" role="2LyG1a" />
      </node>
    </node>
    <node concept="3DMq4$" id="40skb7_VFK8" role="3DMxif">
      <node concept="3DMq4_" id="40skb7_VFKa" role="3DMq5C">
        <ref role="3DMq4F" node="3QReeeiZInh" resolve="act0" />
      </node>
      <node concept="3DMq4_" id="40skb7_VFKc" role="3DMq5C">
        <ref role="3DMq4F" node="3QReeeiZInj" resolve="act1" />
      </node>
      <node concept="3DMq4_" id="40skb7_VFKf" role="3DMq5C">
        <ref role="3DMq4F" node="3QReeeiZInl" resolve="act2" />
      </node>
      <node concept="3DMq4_" id="40skb7_VFKj" role="3DMq5C">
        <ref role="3DMq4F" node="3QReeeiZInn" resolve="act3" />
      </node>
      <node concept="3DMq4_" id="40skb7_VFKo" role="3DMq5C">
        <ref role="3DMq4F" node="3QReeeiZInp" resolve="act4" />
      </node>
      <node concept="3DMq4_" id="40skb7_VFKu" role="3DMq5C">
        <ref role="3DMq4F" node="3QReeeiZImi" resolve="actor1" />
      </node>
      <node concept="3DMq4E" id="40skb7_VFK_" role="3DMq5I">
        <ref role="3DMq5A" node="40skb7_VFKu" />
        <ref role="3DMq5$" node="40skb7_VFKa" />
      </node>
      <node concept="3DMq4E" id="40skb7_VFKB" role="3DMq5I">
        <ref role="3DMq5A" node="40skb7_VFKu" />
        <ref role="3DMq5$" node="40skb7_VFKc" />
      </node>
      <node concept="3DMq4E" id="40skb7_VFKQ" role="3DMq5I">
        <ref role="3DMq5A" node="40skb7_VFKu" />
        <ref role="3DMq5$" node="40skb7_VFKf" />
      </node>
      <node concept="3DMq4E" id="40skb7_VFKU" role="3DMq5I">
        <ref role="3DMq5A" node="40skb7_VFKu" />
        <ref role="3DMq5$" node="40skb7_VFKj" />
      </node>
      <node concept="3DMq4E" id="40skb7_VFKZ" role="3DMq5I">
        <ref role="3DMq5A" node="40skb7_VFKu" />
        <ref role="3DMq5$" node="40skb7_VFKo" />
      </node>
      <node concept="37mRI7" id="40skb7_VFLi" role="lGtFl">
        <node concept="37mRIm" id="40skb7_VFLj" role="37mRID">
          <property role="37mO49" value="4619656042772347914" />
          <node concept="gqqVs" id="40skb7_VFLh" role="37mO4d">
            <property role="gqqTZ" value="148.00029836425782" />
            <property role="gqqTW" value="152.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLl" role="37mRID">
          <property role="37mO49" value="4619656042772347916" />
          <node concept="gqqVs" id="40skb7_VFLk" role="37mO4d">
            <property role="gqqTZ" value="148.00029836425782" />
            <property role="gqqTW" value="50.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLn" role="37mRID">
          <property role="37mO49" value="4619656042772347919" />
          <node concept="gqqVs" id="40skb7_VFLm" role="37mO4d">
            <property role="gqqTZ" value="148.00029836425782" />
            <property role="gqqTW" value="101.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLp" role="37mRID">
          <property role="37mO49" value="4619656042772347923" />
          <node concept="gqqVs" id="40skb7_VFLo" role="37mO4d">
            <property role="gqqTZ" value="148.00029836425782" />
            <property role="gqqTW" value="254.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLr" role="37mRID">
          <property role="37mO49" value="4619656042772347928" />
          <node concept="gqqVs" id="40skb7_VFLq" role="37mO4d">
            <property role="gqqTZ" value="148.00029836425782" />
            <property role="gqqTW" value="203.0" />
            <property role="gqqTX" value="42.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLt" role="37mRID">
          <property role="37mO49" value="4619656042772347934" />
          <node concept="gqqVs" id="40skb7_VFLs" role="37mO4d">
            <property role="gqqTZ" value="50.0001" />
            <property role="gqqTW" value="50.0" />
            <property role="gqqTX" value="58.0" />
            <property role="gqqTy" value="31.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLv" role="37mRID">
          <property role="37mO49" value="4619656042772347941" />
          <node concept="2VclpC" id="40skb7_VFLu" role="37mO4d">
            <node concept="2VclrF" id="40skb7_VFLw" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="66.50005" />
            </node>
            <node concept="2VclrF" id="40skb7_VFLx" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="168.50005" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLz" role="37mRID">
          <property role="37mO49" value="4619656042772347958" />
          <node concept="2VclpC" id="40skb7_VFLy" role="37mO4d">
            <node concept="2VclrF" id="40skb7_VFL$" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="66.50005" />
            </node>
            <node concept="2VclrF" id="40skb7_VFL_" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="117.50005" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLB" role="37mRID">
          <property role="37mO49" value="4619656042772347962" />
          <node concept="2VclpC" id="40skb7_VFLA" role="37mO4d">
            <node concept="2VclrF" id="40skb7_VFLC" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="66.50005" />
            </node>
            <node concept="2VclrF" id="40skb7_VFLD" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="270.50005" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="40skb7_VFLF" role="37mRID">
          <property role="37mO49" value="4619656042772347967" />
          <node concept="2VclpC" id="40skb7_VFLE" role="37mO4d">
            <node concept="2VclrF" id="40skb7_VFLG" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="66.50005" />
            </node>
            <node concept="2VclrF" id="40skb7_VFLH" role="2Vcluh">
              <property role="2Vclpx" value="128.0001983642578" />
              <property role="2Vclpz" value="219.50005" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

