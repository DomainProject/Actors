<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="711157185106633347" name="ActorLanguage.structure.SelectEnvelope" flags="ng" index="GouGM">
        <reference id="711157185106633348" name="envelope" index="GouGP" />
      </concept>
      <concept id="7033755722359605621" name="ActorLanguage.structure.Fetch" flags="ng" index="15wmb_" />
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.Actor" flags="ng" index="37lXYJ">
        <child id="2411303652489357159" name="behavior" index="1lj4M2" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
        <child id="711157185105040755" name="envelope" index="GupN2" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="3865756215865914231" name="actors" index="37lXYW" />
      </concept>
      <concept id="3865756215865914120" name="ActorLanguage.structure.AbstractActor" flags="ng" index="37lXZ3">
        <property id="3865756215865914208" name="address" index="37lXYF" />
      </concept>
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="2411303652489062023" name="ActorLanguage.structure.CreateEnvelope" flags="ng" index="1lgcPy">
        <property id="2411303652489062041" name="priority" index="1lgcPW" />
        <reference id="2411303652489062025" name="sender" index="1lgcPG" />
        <reference id="2411303652489062027" name="receiver" index="1lgcPI" />
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
    <property role="TrG5h" value="script" />
    <node concept="37lXYJ" id="14g3IsRaB7b" role="37lXYW">
      <property role="TrG5h" value="a1" />
      <property role="37lXYF" value="1" />
      <node concept="1lj4MQ" id="14g3IsRaB7f" role="1lj4M2">
        <property role="TrG5h" value="b1" />
        <node concept="1lgcPy" id="14g3IsRaB7i" role="37ngyo">
          <property role="TrG5h" value="e1" />
          <ref role="1lgcPG" node="14g3IsRaB7b" resolve="a1" />
          <ref role="1lgcPI" node="14g3IsRaB8T" resolve="a2" />
        </node>
        <node concept="1lgcPH" id="14g3IsRaB7n" role="37ngyo">
          <property role="TrG5h" value="p1" />
          <property role="1lgcdb" value="hello" />
        </node>
        <node concept="37lXYU" id="14g3IsRaB7v" role="37ngyo">
          <property role="TrG5h" value="m1" />
          <node concept="3g$k$6" id="14g3IsRaB7C" role="GupN0">
            <ref role="3g$k$l" node="14g3IsRaB7n" resolve="p1" />
          </node>
          <node concept="GouGM" id="14g3IsRaB7F" role="GupN2">
            <ref role="GouGP" node="14g3IsRaB7i" resolve="e1" />
          </node>
        </node>
        <node concept="1lgcPy" id="14g3IsRaB7P" role="37ngyo">
          <property role="TrG5h" value="e2" />
          <ref role="1lgcPG" node="14g3IsRaB7b" resolve="a1" />
          <ref role="1lgcPI" node="14g3IsRaB8T" resolve="a2" />
        </node>
        <node concept="1lgcPH" id="14g3IsRaB85" role="37ngyo">
          <property role="TrG5h" value="p2" />
          <property role="1lgcdb" value="hi" />
        </node>
        <node concept="37lXYU" id="14g3IsRaB8n" role="37ngyo">
          <property role="TrG5h" value="m2" />
          <node concept="3g$k$6" id="14g3IsRaB8_" role="GupN0">
            <ref role="3g$k$l" node="14g3IsRaB85" resolve="p2" />
          </node>
          <node concept="GouGM" id="14g3IsRaB8C" role="GupN2">
            <ref role="GouGP" node="14g3IsRaB7P" resolve="e2" />
          </node>
        </node>
        <node concept="15wmb_" id="14g3IsRePLd" role="37ngyo" />
        <node concept="37lS4T" id="14g3IsRePLB" role="37ngyo">
          <ref role="37lS4Y" node="14g3IsRaB8n" resolve="m2" />
        </node>
      </node>
    </node>
    <node concept="37lXYJ" id="14g3IsRaB8T" role="37lXYW">
      <property role="TrG5h" value="a2" />
      <property role="37lXYF" value="2" />
      <node concept="1lj4MQ" id="14g3IsRaB9b" role="1lj4M2">
        <property role="TrG5h" value="b2" />
        <node concept="1lgcPy" id="14g3IsRaB9e" role="37ngyo">
          <property role="TrG5h" value="e1" />
          <ref role="1lgcPG" node="14g3IsRaB8T" resolve="a2" />
          <ref role="1lgcPI" node="14g3IsRaB7b" resolve="a1" />
        </node>
        <node concept="1lgcPH" id="14g3IsRaB9j" role="37ngyo">
          <property role="TrG5h" value="p1" />
          <property role="1lgcdb" value="hello" />
        </node>
        <node concept="37lXYU" id="14g3IsRaB9r" role="37ngyo">
          <property role="TrG5h" value="m1" />
          <node concept="1lgcPH" id="14g3IsRaB9$" role="GupN0">
            <property role="TrG5h" value="p2" />
            <property role="1lgcdb" value="hi" />
          </node>
          <node concept="1lgcPy" id="14g3IsRbcJf" role="GupN2">
            <property role="TrG5h" value="e2" />
            <property role="1lgcPW" value="25QEYlOdAql/HIGH" />
            <ref role="1lgcPG" node="14g3IsRaB8T" resolve="a2" />
            <ref role="1lgcPI" node="14g3IsRaB7b" resolve="a1" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

