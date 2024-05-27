<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:87817225-c01b-478e-988e-ef4f0c029490(Echoes.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="4evg" ref="r:cac2ac36-2a5a-4917-ae5f-b8c89756f9a5(Echoes.structure)" />
  </imports>
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929207" name="receiver" index="37lS4W" />
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.Actor" flags="ng" index="37lXYJ">
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <property id="3865756215865914226" name="text" index="37lXYT" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="3865756215865914231" name="actors" index="37lXYW" />
      </concept>
      <concept id="3865756215865914120" name="ActorLanguage.structure.AbstractActor" flags="ng" index="37lXZ3">
        <property id="3865756215865914208" name="address" index="37lXYF" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="4DsQTTkLQe0">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="518QUjCdNEy" role="3lj3bC">
      <ref role="30HIoZ" to="4evg:4DsQTTkLRlQ" resolve="EchoScript" />
      <ref role="3lhOvi" node="518QUjCdNEr" resolve="EchoesScript" />
    </node>
  </node>
  <node concept="37lXYX" id="518QUjCdNEr">
    <property role="TrG5h" value="EchoesScript" />
    <node concept="n94m4" id="518QUjCdNEs" role="lGtFl">
      <ref role="n9lRv" to="4evg:4DsQTTkLRlQ" resolve="EchoScript" />
    </node>
    <node concept="37lXYJ" id="518QUjCdNEu" role="37lXYW">
      <property role="TrG5h" value="dispatcher" />
      <property role="37lXYF" value="1" />
      <node concept="37lXYU" id="518QUjCg$1q" role="37ngyo">
        <property role="TrG5h" value="message" />
        <property role="37lXYT" value="text" />
        <node concept="1WS0z7" id="518QUjCg$1t" role="lGtFl">
          <node concept="3JmXsc" id="518QUjCg$1w" role="3Jn$fo">
            <node concept="3clFbS" id="518QUjCg$1x" role="2VODD2">
              <node concept="3clFbF" id="518QUjCg$1B" role="3cqZAp">
                <node concept="2OqwBi" id="518QUjCg$1y" role="3clFbG">
                  <node concept="3Tsc0h" id="518QUjCg$1_" role="2OqNvi">
                    <ref role="3TtcxE" to="4evg:4DsQTTkLRlR" resolve="echoes" />
                  </node>
                  <node concept="30H73N" id="518QUjCg$1A" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="518QUjCg$mQ" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="518QUjCg$mR" role="3zH0cK">
            <node concept="3clFbS" id="518QUjCg$mS" role="2VODD2">
              <node concept="3clFbF" id="518QUjCg$Nk" role="3cqZAp">
                <node concept="3cpWs3" id="518QUjCgCUd" role="3clFbG">
                  <node concept="Xl_RD" id="518QUjCg$Nj" role="3uHU7B">
                    <property role="Xl_RC" value="message" />
                  </node>
                  <node concept="2OqwBi" id="518QUjCgEQT" role="3uHU7w">
                    <node concept="30H73N" id="518QUjCgEq_" role="2Oq$k0" />
                    <node concept="2bSWHS" id="518QUjCgIX1" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="518QUjCgRKP" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="10eda999-5898-4cde-9416-196c5eca1268/3865756215865914225/3865756215865914226" />
          <node concept="3zFVjK" id="518QUjCgRKS" role="3zH0cK">
            <node concept="3clFbS" id="518QUjCgRKT" role="2VODD2">
              <node concept="3clFbF" id="518QUjCgRKZ" role="3cqZAp">
                <node concept="2OqwBi" id="518QUjCgRKU" role="3clFbG">
                  <node concept="3TrcHB" id="518QUjCgRKX" role="2OqNvi">
                    <ref role="3TsBF5" to="4evg:4DsQTTkLRlt" resolve="text" />
                  </node>
                  <node concept="30H73N" id="518QUjCgRKY" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37lXYJ" id="518QUjCgSMz" role="37ngyo">
        <property role="TrG5h" value="actor" />
        <property role="37lXYF" value="0" />
        <node concept="1WS0z7" id="518QUjCgT1X" role="lGtFl">
          <node concept="3JmXsc" id="518QUjCgT20" role="3Jn$fo">
            <node concept="3clFbS" id="518QUjCgT21" role="2VODD2">
              <node concept="3clFbF" id="518QUjCgT27" role="3cqZAp">
                <node concept="2OqwBi" id="518QUjCgT22" role="3clFbG">
                  <node concept="3Tsc0h" id="518QUjCgT25" role="2OqNvi">
                    <ref role="3TtcxE" to="4evg:4DsQTTkLRlR" resolve="echoes" />
                  </node>
                  <node concept="30H73N" id="518QUjCgT26" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="518QUjCgTez" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="518QUjCgTe$" role="3zH0cK">
            <node concept="3clFbS" id="518QUjCgTe_" role="2VODD2">
              <node concept="3clFbF" id="518QUjCgTrj" role="3cqZAp">
                <node concept="3cpWs3" id="518QUjCgTrk" role="3clFbG">
                  <node concept="Xl_RD" id="518QUjCgTrl" role="3uHU7B">
                    <property role="Xl_RC" value="actor" />
                  </node>
                  <node concept="2OqwBi" id="518QUjCgTrm" role="3uHU7w">
                    <node concept="30H73N" id="518QUjCgTrn" role="2Oq$k0" />
                    <node concept="2bSWHS" id="518QUjCgTro" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="518QUjCgU46" role="lGtFl">
          <property role="2qtEX9" value="address" />
          <property role="P4ACc" value="10eda999-5898-4cde-9416-196c5eca1268/3865756215865914120/3865756215865914208" />
          <node concept="3zFVjK" id="518QUjCgU47" role="3zH0cK">
            <node concept="3clFbS" id="518QUjCgU48" role="2VODD2">
              <node concept="3clFbF" id="518QUjCgUIN" role="3cqZAp">
                <node concept="3cpWs3" id="518QUjChsW8" role="3clFbG">
                  <node concept="3cmrfG" id="518QUjChsWc" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="518QUjCgVn3" role="3uHU7B">
                    <node concept="30H73N" id="518QUjCgUIM" role="2Oq$k0" />
                    <node concept="2bSWHS" id="518QUjCgZkN" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37lS4T" id="518QUjChdae" role="37ngyo">
        <ref role="37lS4Y" node="518QUjCg$1q" resolve="message" />
        <ref role="37lS4W" node="518QUjCgSMz" resolve="actor" />
        <node concept="1WS0z7" id="518QUjChe$N" role="lGtFl">
          <node concept="3JmXsc" id="518QUjChe$Q" role="3Jn$fo">
            <node concept="3clFbS" id="518QUjChe$R" role="2VODD2">
              <node concept="3clFbF" id="518QUjChe$X" role="3cqZAp">
                <node concept="2OqwBi" id="518QUjChe$S" role="3clFbG">
                  <node concept="3Tsc0h" id="518QUjChe$V" role="2OqNvi">
                    <ref role="3TtcxE" to="4evg:4DsQTTkLRlR" resolve="echoes" />
                  </node>
                  <node concept="30H73N" id="518QUjChe$W" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

