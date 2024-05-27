<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="711157185106633347" name="ActorLanguage.structure.SelectEnvelope" flags="ng" index="GouGM">
        <reference id="711157185106633348" name="envelope" index="GouGP" />
      </concept>
      <concept id="2823449341852920188" name="ActorLanguage.structure.ReplyToMessage" flags="ng" index="2LmG5b">
        <reference id="2823449341852920189" name="receivedMessage" index="2LmG5a" />
        <reference id="2823449341852920193" name="newMessage" index="2LmG6Q" />
      </concept>
      <concept id="7033755722359605621" name="ActorLanguage.structure.Fetch" flags="ng" index="15wmb_">
        <property id="7033755722359605627" name="policy" index="15wmbF" />
        <child id="7694881003795133521" name="message" index="2uPo7h" />
      </concept>
      <concept id="7033755722359181348" name="ActorLanguage.structure.SelectBehavior" flags="ng" index="15yZIO">
        <reference id="7033755722359181349" name="behavior" index="15yZIP" />
      </concept>
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.Actor" flags="ng" index="37lXYJ">
        <child id="7694881003796458673" name="messageQueue" index="2uYt$L" />
        <child id="2411303652489357159" name="behavior" index="1lj4M2" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
        <child id="3269545992594456658" name="envelope" index="34eGaj" />
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
        <property id="7694881003800154999" name="priority" index="2uCmrR" />
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
    <node concept="37lXYJ" id="6CMnlJwL$S8" role="37lXYW">
      <property role="TrG5h" value="a1" />
      <property role="37lXYF" value="1" />
      <node concept="2uUgHn" id="6CMnlJwL$S9" role="2uYt$L" />
      <node concept="1lj4MQ" id="6CMnlJwL$Se" role="1lj4M2">
        <property role="TrG5h" value="b1" />
        <node concept="1lgcPy" id="6CMnlJwL$S$" role="37ngyo">
          <property role="TrG5h" value="e1" />
          <property role="2uCmrR" value="5" />
          <ref role="1lgcPG" node="6CMnlJwL$S8" resolve="a1" />
          <ref role="1lgcPI" node="6CMnlJwL$Sm" resolve="a2" />
        </node>
        <node concept="1lgcPH" id="6CMnlJwL$SD" role="37ngyo">
          <property role="TrG5h" value="p1" />
          <property role="1lgcdb" value="test" />
        </node>
        <node concept="37lXYU" id="6CMnlJwL$SL" role="37ngyo">
          <property role="TrG5h" value="m1" />
          <node concept="3g$k$6" id="6CMnlJwL$SU" role="GupN0">
            <ref role="3g$k$l" node="6CMnlJwL$SD" resolve="p1" />
          </node>
          <node concept="GouGM" id="6CMnlJwL$SX" role="34eGaj">
            <ref role="GouGP" node="6CMnlJwL$S$" resolve="e1" />
          </node>
        </node>
        <node concept="37lXYU" id="6CMnlJwL$T7" role="37ngyo">
          <property role="TrG5h" value="m2" />
          <node concept="3g$k$6" id="6CMnlJwL$Tj" role="GupN0">
            <ref role="3g$k$l" node="6CMnlJwL$SD" resolve="p1" />
          </node>
          <node concept="1lgcPy" id="6CMnlJwL$Tm" role="34eGaj">
            <property role="TrG5h" value="e2" />
            <property role="2uCmrR" value="0" />
            <ref role="1lgcPG" node="6CMnlJwL$S8" resolve="a1" />
            <ref role="1lgcPI" node="6CMnlJwL$Sm" resolve="a2" />
          </node>
        </node>
        <node concept="37lS4T" id="6CMnlJwS9ns" role="37ngyo">
          <ref role="37lS4Y" node="6CMnlJwL$SL" resolve="m1" />
        </node>
        <node concept="37lS4T" id="6CMnlJwS9nQ" role="37ngyo">
          <ref role="37lS4Y" node="6CMnlJwL$T7" resolve="m2" />
        </node>
        <node concept="37lXYU" id="2sIU3umxO0O" role="37ngyo">
          <property role="TrG5h" value="m" />
          <node concept="3g$k$6" id="2sIU3umxO1v" role="GupN0">
            <ref role="3g$k$l" node="6CMnlJwL$SD" resolve="p1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="37lXYJ" id="6CMnlJwL$Sm" role="37lXYW">
      <property role="TrG5h" value="a2" />
      <property role="37lXYF" value="2" />
      <node concept="2uUgHn" id="6CMnlJwL$So" role="2uYt$L" />
      <node concept="1lj4MQ" id="6CMnlJwL$Sx" role="1lj4M2">
        <property role="TrG5h" value="b2" />
        <node concept="15wmb_" id="2sIU3umsd1P" role="37ngyo">
          <property role="15wmbF" value="66sUT0$7o_R/FIFO" />
          <node concept="37lXYU" id="2sIU3umsd1Z" role="2uPo7h">
            <property role="TrG5h" value="rec_message0" />
            <node concept="1lgcPH" id="2sIU3umsd20" role="GupN0">
              <property role="TrG5h" value="rec_message0.payload" />
            </node>
          </node>
        </node>
        <node concept="15wmb_" id="2sIU3umt1kU" role="37ngyo">
          <property role="15wmbF" value="66sUT0$7o_S/HIGHEST_PRIORITY" />
          <node concept="37lXYU" id="2sIU3umt1l9" role="2uPo7h">
            <property role="TrG5h" value="rec_message1" />
            <node concept="1lgcPH" id="2sIU3umt1la" role="GupN0">
              <property role="TrG5h" value="rec_message1.payload" />
            </node>
          </node>
        </node>
        <node concept="37lXYU" id="2sIU3umuWe6" role="37ngyo">
          <property role="TrG5h" value="reply" />
          <node concept="1lgcPH" id="2sIU3umuWeu" role="GupN0">
            <property role="TrG5h" value="reply_p" />
            <property role="1lgcdb" value="reply" />
          </node>
          <node concept="1lgcPy" id="2sIU3umw7ot" role="34eGaj">
            <property role="TrG5h" value="reply_e" />
            <property role="2uCmrR" value="0" />
            <ref role="1lgcPG" node="6CMnlJwL$Sm" resolve="a2" />
          </node>
        </node>
        <node concept="2LmG5b" id="2sIU3umw7qg" role="37ngyo">
          <ref role="2LmG5a" node="2sIU3umsd1Z" resolve="rec_message0" />
          <ref role="2LmG6Q" node="2sIU3umuWe6" resolve="reply" />
        </node>
        <node concept="2LmG5b" id="2sIU3umw7r9" role="37ngyo">
          <ref role="2LmG5a" node="2sIU3umt1l9" resolve="rec_message1" />
          <ref role="2LmG6Q" node="2sIU3umuWe6" resolve="reply" />
        </node>
      </node>
    </node>
    <node concept="37lXYJ" id="6CMnlJwUfiP" role="37lXYW">
      <property role="TrG5h" value="a3" />
      <property role="37lXYF" value="3" />
      <node concept="2uUgHn" id="6CMnlJwUfiR" role="2uYt$L" />
      <node concept="1lj4MQ" id="6CMnlJwUfjx" role="1lj4M2">
        <property role="TrG5h" value="b3" />
      </node>
    </node>
    <node concept="37lXYJ" id="2sIU3umyTdP" role="37lXYW">
      <property role="TrG5h" value="a4" />
      <property role="37lXYF" value="4" />
      <node concept="2uUgHn" id="2sIU3umyTdR" role="2uYt$L" />
      <node concept="15yZIO" id="2sIU3umyTf7" role="1lj4M2">
        <ref role="15yZIP" node="6CMnlJwUfjx" resolve="b3" />
      </node>
    </node>
  </node>
</model>

