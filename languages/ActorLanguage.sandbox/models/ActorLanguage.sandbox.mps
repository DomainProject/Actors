<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="3865756215865914212" name="ActorLanguage.structure.Actor" flags="ng" index="37lXYJ">
        <child id="2411303652489357159" name="behavior" index="1lj4M2" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <property id="2411303652496830606" name="tag" index="1lQ_HF" />
        <child id="2411303652498257862" name="payload" index="1lH1Kz" />
        <child id="2411303652498257866" name="envelope" index="1lH1KJ" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="3865756215865914231" name="actors" index="37lXYW" />
      </concept>
      <concept id="3865756215865914120" name="ActorLanguage.structure.AbstractActor" flags="ng" index="37lXZ3">
        <property id="3865756215865914208" name="address" index="37lXYF" />
      </concept>
      <concept id="2411303652489062023" name="ActorLanguage.structure.Envelope" flags="ng" index="1lgcPy">
        <reference id="2411303652489062025" name="sender" index="1lgcPG" />
        <reference id="2411303652489062027" name="receiver" index="1lgcPI" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.Payload" flags="ng" index="1lgcPH">
        <property id="2411303652489062574" name="body" index="1lgcdb" />
      </concept>
      <concept id="2411303652489357139" name="ActorLanguage.structure.Behavior" flags="ng" index="1lj4MQ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
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
    <node concept="37lXYJ" id="25QEYlOfSia" role="37lXYW">
      <property role="TrG5h" value="actor1" />
      <property role="37lXYF" value="1" />
      <node concept="1lj4MQ" id="25QEYlOfSib" role="1lj4M2">
        <property role="TrG5h" value="b1" />
      </node>
    </node>
    <node concept="37lXYJ" id="25QEYlOivMs" role="37lXYW">
      <property role="TrG5h" value="actor2" />
      <property role="37lXYF" value="2" />
      <node concept="1lj4MQ" id="25QEYlOivMu" role="1lj4M2">
        <property role="TrG5h" value="b2" />
        <node concept="37lXYU" id="25QEYlOMnX9" role="37ngyo">
          <property role="1lQ_HF" value="2411303652498702153" />
          <property role="TrG5h" value="mess" />
          <node concept="1lgcPH" id="25QEYlOMnXa" role="1lH1Kz">
            <property role="1lgcdb" value="text" />
          </node>
          <node concept="1lgcPy" id="25QEYlOMnXb" role="1lH1KJ">
            <ref role="1lgcPG" node="25QEYlOivMs" resolve="actor2" />
            <ref role="1lgcPI" node="25QEYlOfSia" resolve="actor1" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

