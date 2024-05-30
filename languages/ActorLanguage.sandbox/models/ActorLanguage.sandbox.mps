<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  </imports>
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="711157185106633347" name="ActorLanguage.structure.SelectEnvelope" flags="ng" index="GouGM">
        <reference id="711157185106633348" name="envelope" index="GouGP" />
      </concept>
      <concept id="6739934483258578947" name="ActorLanguage.structure.ActorCreation" flags="ngI" index="2LwpqK">
        <reference id="6739934483260477068" name="behavior" index="2LF80Z" />
      </concept>
      <concept id="6739934483258184740" name="ActorLanguage.structure.CreateActors" flags="ng" index="2LyTEn">
        <property id="6739934483258184771" name="number" index="2LyTFK" />
        <property id="6739934483258184773" name="baseName" index="2LyTFQ" />
      </concept>
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
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
      </concept>
      <concept id="3865756215865914120" name="ActorLanguage.structure.AbstractActor" flags="ng" index="37lXZ3">
        <property id="3865756215865914208" name="address" index="37lXYF" />
      </concept>
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="2411303652489062023" name="ActorLanguage.structure.CreateEnvelope" flags="ng" index="1lgcPy">
        <property id="7694881003800154999" name="priority" index="2uCmrR" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH">
        <property id="2411303652489062574" name="body" index="1lgcdb" />
      </concept>
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="37lXYX" id="66sUT0$4BaN">
    <property role="TrG5h" value="ActorsScript" />
    <node concept="1lj4MQ" id="5Q93FfG0Dgk" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <node concept="1lgcPy" id="5Q93FfGgLoH" role="37ngyo">
        <property role="TrG5h" value="e1" />
        <property role="2uCmrR" value="2.0" />
      </node>
      <node concept="1lgcPH" id="5Q93FfGgLoM" role="37ngyo">
        <property role="TrG5h" value="p" />
        <property role="1lgcdb" value="Hello world" />
      </node>
      <node concept="37lXYU" id="5Q93FfGgLoU" role="37ngyo">
        <property role="TrG5h" value="m" />
        <node concept="3g$k$6" id="5Q93FfGgLp1" role="GupN0">
          <ref role="3g$k$l" node="5Q93FfGgLoM" resolve="p" />
        </node>
        <node concept="GouGM" id="5Q93FfGhDoT" role="34eGaj">
          <ref role="GouGP" node="5Q93FfGgLoH" resolve="e1" />
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="5Q93FfG0Dgm" role="2QtU1L">
      <property role="TrG5h" value="b2" />
    </node>
    <node concept="1lj4MQ" id="5Q93FfG0Dgr" role="2QtU1L">
      <property role="TrG5h" value="b3" />
    </node>
    <node concept="2QtU1Q" id="5Q93FfG0Dgv" role="2QtyCA">
      <property role="TrG5h" value="receptionist" />
      <property role="37lXYF" value="0" />
      <node concept="2uUgHn" id="5Q93FfG0Dgw" role="2QtU1V" />
    </node>
    <node concept="37lXYJ" id="5Q93FfGaia2" role="37lXYW">
      <property role="TrG5h" value="a1" />
      <property role="37lXYF" value="1" />
      <ref role="2LF80Z" node="5Q93FfG0Dgk" resolve="b1" />
      <node concept="2uUgHn" id="5Q93FfGaia3" role="2LyG1a" />
    </node>
    <node concept="2LyTEn" id="5Q93FfGbuIW" role="37lXYW">
      <property role="2LyTFK" value="10" />
      <property role="2LyTFQ" value="actor_example" />
      <ref role="2LF80Z" node="5Q93FfG0Dgr" resolve="b3" />
    </node>
  </node>
</model>

