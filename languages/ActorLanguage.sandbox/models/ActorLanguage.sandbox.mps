<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929207" name="receiver" index="37lS4W" />
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.Actor" flags="ng" index="37lXYJ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.Message" flags="ng" index="37lXYU">
        <property id="3865756215865914226" name="text" index="37lXYT" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="3865756215865914231" name="actors" index="37lXYW" />
      </concept>
      <concept id="3865756215865914120" name="ActorLanguage.structure.AbstractActor" flags="ng" index="37lXZ3">
        <property id="3865756215865914208" name="address" index="37lXYF" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="37lXYX" id="3m_VcJMYeha">
    <property role="TrG5h" value="script" />
    <node concept="37lXYJ" id="3m_VcJN0cTf" role="37lXYW">
      <property role="TrG5h" value="actor1" />
      <property role="37lXYF" value="10" />
      <node concept="37lXYU" id="3m_VcJN0cTh" role="37ngyo">
        <property role="TrG5h" value="message" />
        <property role="37lXYT" value="hello" />
      </node>
      <node concept="37lS4T" id="2LRe1VceMmS" role="37ngyo">
        <ref role="37lS4Y" node="3m_VcJN0cTh" resolve="message" />
        <ref role="37lS4W" node="3m_VcJN0cT$" resolve="actor2" />
      </node>
    </node>
    <node concept="37lXYJ" id="3m_VcJN0cT$" role="37lXYW">
      <property role="TrG5h" value="actor2" />
      <property role="37lXYF" value="34" />
    </node>
  </node>
</model>

