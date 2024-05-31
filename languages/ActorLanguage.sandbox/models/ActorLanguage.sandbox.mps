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
      <concept id="1411682935494907365" name="ActorLanguage.structure.SwitchPolicy" flags="ng" index="2icdJ3" />
      <concept id="1411682935492097494" name="ActorLanguage.structure.GetActorPolicy" flags="ng" index="2iUZJK">
        <property id="1411682935492097495" name="policy" index="2iUZJL" />
      </concept>
      <concept id="1411682935490806610" name="ActorLanguage.structure.GetActorFromReceptionist" flags="ng" index="2iZ$PO">
        <reference id="1411682935491377520" name="actorReference" index="2iTJtm" />
        <child id="1411682935492097502" name="policy" index="2iUZJS" />
      </concept>
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="6739934483261025217" name="ActorLanguage.structure.ActorReference" flags="ng" index="2LDelM" />
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929414" name="behavior" index="2QtU1P" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
      </concept>
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
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
          <node concept="3clFbS" id="1enjyq1PHNK" role="3Kbo56">
            <node concept="3cpWs6" id="1enjyq1PHNZ" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbS" id="1enjyq1PHO2" role="3Kb1Dw">
          <node concept="3cpWs6" id="1enjyq1PHOh" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="1enjyq1lUQ3" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <node concept="1Dw8fO" id="1enjyq1rx06" role="37ngyo">
        <node concept="3cpWsn" id="1enjyq1rx07" role="1Duv9x">
          <property role="TrG5h" value="i" />
          <node concept="10Oyi0" id="1enjyq1rx0f" role="1tU5fm" />
          <node concept="3cmrfG" id="1enjyq1rx0v" role="33vP2m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
        <node concept="3clFbS" id="1enjyq1rx08" role="2LFqv$">
          <node concept="2LDelM" id="1enjyq1sr_B" role="3cqZAp">
            <property role="TrG5h" value="ref1" />
          </node>
          <node concept="2iZ$PO" id="1enjyq1JLfw" role="3cqZAp">
            <ref role="2iTJtm" node="1enjyq1sr_B" resolve="ref1" />
            <node concept="2iUZJK" id="1enjyq1JLfy" role="2iUZJS">
              <property role="2iUZJL" value="1enjyq1qgdk/RANDOM" />
            </node>
          </node>
        </node>
        <node concept="3eOVzh" id="1enjyq1ryxu" role="1Dwp0S">
          <node concept="3cmrfG" id="1enjyq1ryxJ" role="3uHU7w">
            <property role="3cmrfH" value="20" />
          </node>
          <node concept="37vLTw" id="1enjyq1rx0E" role="3uHU7B">
            <ref role="3cqZAo" node="1enjyq1rx07" resolve="i" />
          </node>
        </node>
        <node concept="3uNrnE" id="1enjyq1ryHw" role="1Dwrff">
          <node concept="37vLTw" id="1enjyq1ryHy" role="2$L3a6">
            <ref role="3cqZAo" node="1enjyq1rx07" resolve="i" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

