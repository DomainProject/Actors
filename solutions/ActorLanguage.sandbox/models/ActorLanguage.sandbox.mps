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
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="4619656042768923827" name="ActorLanguage.structure.ActorReferenceList" flags="ng" index="2_DyK2" />
      <concept id="4619656042771117415" name="ActorLanguage.structure.ForEachActorReferenceStatement" flags="ng" index="2_LUnm">
        <reference id="4619656042771117416" name="actorReferenceList" index="2_LUnp" />
        <child id="4619656042772348181" name="actorReference" index="2_WIQ$" />
        <child id="6946180687082990280" name="body" index="J9Q10" />
      </concept>
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry" />
      <concept id="6946180687074189095" name="ActorLanguage.structure.EmptyLine" flags="ng" index="IQpmJ" />
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="8453059353961860195" name="types" index="1fvW3h" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
      </concept>
      <concept id="8453059353960860303" name="ActorLanguage.structure.CustomType" flags="ng" index="1frwoX" />
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="7051067309802826947" name="ActorLanguage.structure.ExternalFunction" flags="ng" index="1hWc2v">
        <child id="6946180687069863893" name="function" index="I7Tlt" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH" />
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <property id="6842115693881541009" name="receivedMessageName" index="2F6P9D" />
        <child id="6842115693882584148" name="receivedMessage" index="2F2NYG" />
        <child id="3865756215866352723" name="statements" index="37ngyo" />
      </concept>
    </language>
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" name="com.mbeddr.core.statements">
      <concept id="7254843406768833938" name="com.mbeddr.core.statements.structure.ExpressionStatement" flags="ng" index="1_9egQ">
        <child id="7254843406768833939" name="expr" index="1_9egR" />
      </concept>
      <concept id="4185783222026475861" name="com.mbeddr.core.statements.structure.StatementList" flags="ng" index="3XIRFW">
        <child id="4185783222026475862" name="statements" index="3XIRFZ" />
      </concept>
      <concept id="4185783222026464515" name="com.mbeddr.core.statements.structure.Statement" flags="ng" index="3XISUE" />
    </language>
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" name="com.mbeddr.core.modules">
      <concept id="7713191144372389655" name="com.mbeddr.core.modules.structure.ITypeDef" flags="ngI" index="2I2SlH">
        <child id="6116558314501347862" name="original" index="rcJHR" />
      </concept>
      <concept id="6437088627575724001" name="com.mbeddr.core.modules.structure.Function" flags="ng" index="N3Fnx">
        <child id="4185783222026475860" name="body" index="3XIRFX" />
      </concept>
      <concept id="5950410542643524492" name="com.mbeddr.core.modules.structure.FunctionCall" flags="ng" index="3O_q_g">
        <reference id="5950410542643524493" name="function" index="3O_q_h" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="8463282783691618456" name="com.mbeddr.core.expressions.structure.UnsignedInt64tType" flags="ng" index="26Vqp1" />
      <concept id="8864856114140038681" name="com.mbeddr.core.expressions.structure.DoubleType" flags="ng" index="2fgwQN" />
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ngI" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="7892328519581699353" name="com.mbeddr.core.expressions.structure.VoidType" flags="ng" index="19Rifw" />
    </language>
  </registry>
  <node concept="37lXYX" id="61_MCxe_awW">
    <property role="TrG5h" value="Script" />
    <node concept="2QtU1Q" id="61_MCxe_awX" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="61_MCxe_awY" role="2QtU1V" />
    </node>
    <node concept="1frwoX" id="61_MCxeEREx" role="1fvW3h">
      <property role="TrG5h" value="simtime_t" />
      <node concept="2fgwQN" id="61_MCxeEREC" role="rcJHR" />
    </node>
    <node concept="1frwoX" id="61_MCxeERET" role="1fvW3h">
      <property role="TrG5h" value="lp_id_t" />
      <node concept="26Vqp1" id="61_MCxeERF0" role="rcJHR" />
    </node>
    <node concept="1hWc2v" id="61_MCxeJ5Wi" role="1hWdPE">
      <node concept="N3Fnx" id="61_MCxeJ5Wj" role="I7Tlt">
        <property role="TrG5h" value="selection" />
        <node concept="3XIRFW" id="61_MCxeJ5Wl" role="3XIRFX">
          <node concept="3XISUE" id="61_MCxeJ5Wm" role="3XIRFZ" />
        </node>
        <node concept="19Rifw" id="61_MCxfpSGH" role="2C2TGm" />
      </node>
    </node>
    <node concept="IQpmJ" id="61_MCxeXobF" role="1hWdPE" />
    <node concept="1hWc2v" id="61_MCxeXobH" role="1hWdPE">
      <node concept="N3Fnx" id="61_MCxeXobJ" role="I7Tlt">
        <property role="TrG5h" value="projection" />
        <node concept="19Rifw" id="61_MCxeXobK" role="2C2TGm" />
        <node concept="3XIRFW" id="61_MCxeXobL" role="3XIRFX">
          <node concept="3XISUE" id="61_MCxeXobM" role="3XIRFZ" />
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="61_MCxeXoc2" role="1hWdPE" />
    <node concept="1hWc2v" id="61_MCxeXoc4" role="1hWdPE">
      <node concept="N3Fnx" id="61_MCxeXoc6" role="I7Tlt">
        <property role="TrG5h" value="groupBy" />
        <node concept="19Rifw" id="61_MCxeXoc7" role="2C2TGm" />
        <node concept="3XIRFW" id="61_MCxeXoc8" role="3XIRFX">
          <node concept="3XISUE" id="61_MCxeXoc9" role="3XIRFZ" />
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="61_MCxfbrsd" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="61_MCxfbrso" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="61_MCxfbrsp" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="1_9egQ" id="61_MCxfbrGk" role="37ngyo">
        <node concept="3O_q_g" id="61_MCxfbrGj" role="1_9egR">
          <ref role="3O_q_h" node="61_MCxeJ5Wj" resolve="selection" />
        </node>
      </node>
      <node concept="2iZ$PO" id="61_MCxfbrWr" role="37ngyo">
        <node concept="2iUZJK" id="61_MCxfbrWt" role="2iUZJS">
          <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
        </node>
        <node concept="2_DyK2" id="61_MCxfbrWv" role="BvGUO">
          <property role="TrG5h" value="refs" />
        </node>
      </node>
      <node concept="2_LUnm" id="61_MCxfpL39" role="37ngyo">
        <ref role="2_LUnp" node="61_MCxfbrWv" resolve="refs" />
        <node concept="Bk5ry" id="61_MCxfpL3b" role="2_WIQ$">
          <property role="TrG5h" value="ref" />
        </node>
        <node concept="3XIRFW" id="61_MCxfpL3d" role="J9Q10">
          <node concept="37lXYU" id="61_MCxfpL7Q" role="3XIRFZ">
            <property role="TrG5h" value="m" />
            <node concept="3g$k$6" id="61_MCxfpSGY" role="GupN0">
              <ref role="3g$k$l" node="61_MCxfbrsp" resolve="msg.payload" />
            </node>
          </node>
          <node concept="37lS4T" id="61_MCxfpSJl" role="3XIRFZ">
            <ref role="37lS4Y" node="61_MCxfpL7Q" resolve="m" />
          </node>
        </node>
      </node>
      <node concept="3XISUE" id="61_MCxfbrWy" role="37ngyo" />
    </node>
    <node concept="IQpmJ" id="61_MCxfbrse" role="2QtU1L" />
    <node concept="IQpmJ" id="61_MCxfbrsf" role="2QtU1L" />
    <node concept="1lj4MQ" id="61_MCxfbrsi" role="2QtU1L">
      <property role="TrG5h" value="b2" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="61_MCxfbrsu" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="61_MCxfbrsv" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="61_MCxfbrsh" role="2QtU1L" />
  </node>
</model>

