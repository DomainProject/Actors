<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d994e664-8630-4748-bb4b-f8271af10c5f(Echoes.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="4evg" ref="r:cac2ac36-2a5a-4917-ae5f-b8c89756f9a5(Echoes.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="4DsQTTkLRlv">
    <ref role="1XX52x" to="4evg:4DsQTTkLRlr" resolve="Echo" />
    <node concept="3EZMnI" id="4DsQTTkLRlx" role="2wV5jI">
      <node concept="3F0ifn" id="4DsQTTkLRlC" role="3EZMnx">
        <property role="3F0ifm" value="echo" />
      </node>
      <node concept="3F0A7n" id="4DsQTTkLRlM" role="3EZMnx">
        <ref role="1NtTu8" to="4evg:4DsQTTkLRlt" resolve="text" />
      </node>
      <node concept="l2Vlx" id="4DsQTTkLRl$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4DsQTTkLRlT">
    <ref role="1XX52x" to="4evg:4DsQTTkLRlQ" resolve="EchoScript" />
    <node concept="3EZMnI" id="4DsQTTkLRlV" role="2wV5jI">
      <node concept="3F0ifn" id="4DsQTTkLRm5" role="3EZMnx">
        <property role="3F0ifm" value="Echoes:" />
      </node>
      <node concept="3F2HdR" id="4DsQTTkLRmd" role="3EZMnx">
        <ref role="1NtTu8" to="4evg:4DsQTTkLRlR" resolve="echoes" />
        <node concept="l2Vlx" id="4DsQTTkLRmg" role="2czzBx" />
        <node concept="pj6Ft" id="4DsQTTkLRmk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4DsQTTkLRmm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4DsQTTkLRmp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4DsQTTkLRlY" role="2iSdaV" />
    </node>
  </node>
</model>

