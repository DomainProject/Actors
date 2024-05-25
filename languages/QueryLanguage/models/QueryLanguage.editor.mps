<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c300430e-546a-4ebd-bac3-68a434c0a2c6(QueryLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="14g3IsRh3Hc">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
    <node concept="3EZMnI" id="14g3IsRh3Hg" role="2wV5jI">
      <node concept="3F0ifn" id="14g3IsRh3Hq" role="3EZMnx">
        <property role="3F0ifm" value="CREATE TABLE" />
        <node concept="VechU" id="14g3IsRh3Iy" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0A7n" id="14g3IsRh3H$" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="14g3IsRh3HH" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="14g3IsRh3HU" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRh3H8" resolve="columns" />
        <node concept="l2Vlx" id="14g3IsRh3HX" role="2czzBx" />
        <node concept="pj6Ft" id="14g3IsRh3I3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="14g3IsRh3I5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="14g3IsRh3I8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="14g3IsRh3Im" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="14g3IsRhhqz" role="3EZMnx">
        <node concept="pVoyu" id="14g3IsRhhqK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="14g3IsRh3Hj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRh3IA">
    <property role="3GE5qa" value="column" />
    <ref role="1XX52x" to="p6im:14g3IsRh3GN" resolve="Column" />
    <node concept="3EZMnI" id="14g3IsRh3ID" role="2wV5jI">
      <node concept="3F0A7n" id="14g3IsRh3IN" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0A7n" id="14g3IsRh3IX" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRh3GR" resolve="type" />
      </node>
      <node concept="l2Vlx" id="14g3IsRh3IG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRh3JO">
    <ref role="1XX52x" to="p6im:14g3IsRh3Jd" resolve="Script" />
    <node concept="3EZMnI" id="14g3IsRh3JQ" role="2wV5jI">
      <node concept="3F2HdR" id="14g3IsRh3K0" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRh3Jg" resolve="queries" />
        <node concept="l2Vlx" id="14g3IsRh3K2" role="2czzBx" />
        <node concept="pj6Ft" id="14g3IsRh3K5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="14g3IsRh3Kc" role="3EZMnx" />
      <node concept="l2Vlx" id="14g3IsRh3JT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRhhqT">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:66sUT0$8edT" resolve="Select" />
    <node concept="3EZMnI" id="14g3IsRhhqY" role="2wV5jI">
      <node concept="3F0ifn" id="14g3IsRhhr0" role="3EZMnx">
        <property role="3F0ifm" value="SELECT" />
        <node concept="VechU" id="14g3IsRhhtM" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F2HdR" id="14g3IsRklwo" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRklvU" resolve="columns" />
        <node concept="l2Vlx" id="14g3IsRklwq" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="14g3IsRhhrj" role="3EZMnx">
        <property role="3F0ifm" value="FROM" />
        <node concept="VechU" id="14g3IsRhhtO" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
        <node concept="pVoyu" id="14g3IsRhEtG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="14g3IsRhhrA" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f9BdA" />
        <node concept="1sVBvm" id="14g3IsRhhrC" role="1sWHZn">
          <node concept="3F0A7n" id="14g3IsRhhrQ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="14g3IsRhhtb" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRhhsH" resolve="where" />
        <node concept="pVoyu" id="14g3IsRhhtl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="14g3IsRibwT" role="3EZMnx">
        <node concept="pVoyu" id="14g3IsRibx7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="14g3IsRhhr1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRhhtn">
    <property role="3GE5qa" value="where" />
    <ref role="1XX52x" to="p6im:66sUT0$8edV" resolve="Where" />
    <node concept="3EZMnI" id="14g3IsRhhtp" role="2wV5jI">
      <node concept="3F0ifn" id="14g3IsRhhtw" role="3EZMnx">
        <property role="3F0ifm" value="WHERE" />
        <node concept="VechU" id="14g3IsRhhtK" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F1sOY" id="14g3IsRiyfd" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRiyeO" resolve="condition" />
      </node>
      <node concept="l2Vlx" id="14g3IsRhhts" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRhL1d">
    <property role="3GE5qa" value="where" />
    <ref role="1XX52x" to="p6im:14g3IsRhKZN" resolve="Condition" />
    <node concept="3EZMnI" id="14g3IsRhL1f" role="2wV5jI">
      <node concept="1iCGBv" id="14g3IsRkCmu" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRkCfv" resolve="column" />
        <node concept="1sVBvm" id="14g3IsRkCmw" role="1sWHZn">
          <node concept="3F0A7n" id="14g3IsRkCmD" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="14g3IsRhL1s" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRhL16" resolve="operator" />
      </node>
      <node concept="3F1sOY" id="69qeU0f7czC" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f7cyC" resolve="value" />
      </node>
      <node concept="l2Vlx" id="14g3IsRhL1i" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRku6G">
    <property role="3GE5qa" value="column" />
    <ref role="1XX52x" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
    <node concept="3EZMnI" id="14g3IsRku6I" role="2wV5jI">
      <node concept="1iCGBv" id="14g3IsRku6P" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRklvP" resolve="column" />
        <node concept="1sVBvm" id="14g3IsRku6R" role="1sWHZn">
          <node concept="3F0A7n" id="14g3IsRku6Y" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="14g3IsRku6L" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="69qeU0f7cvx">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:69qeU0f77b8" resolve="InsertInto" />
    <node concept="3EZMnI" id="69qeU0f7cvz" role="2wV5jI">
      <node concept="3F0ifn" id="69qeU0f7cvL" role="3EZMnx">
        <property role="3F0ifm" value="INSERT INTO" />
        <node concept="VechU" id="69qeU0f7czJ" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="1iCGBv" id="69qeU0f7cvZ" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f9BdA" />
        <node concept="1sVBvm" id="69qeU0f7cw1" role="1sWHZn">
          <node concept="3F0A7n" id="69qeU0f7cwc" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="69qeU0f7cwn" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="69qeU0f7cx1" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f7cwP" resolve="columns" />
        <node concept="l2Vlx" id="69qeU0f7cx3" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="69qeU0f7cw_" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="69qeU0f7cxP" role="3EZMnx">
        <property role="3F0ifm" value="VALUES" />
        <node concept="pVoyu" id="69qeU0f7cy0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="69qeU0f7czO" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="69qeU0f8uuH" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="69qeU0f8uvF" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f7cyz" resolve="values" />
        <node concept="l2Vlx" id="69qeU0f8uvH" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="69qeU0f8uvb" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="69qeU0f8Fqk" role="3EZMnx">
        <node concept="pVoyu" id="69qeU0f8Frb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="69qeU0f7cvA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="69qeU0f7cyh">
    <property role="3GE5qa" value="value" />
    <ref role="1XX52x" to="p6im:69qeU0f7cyb" resolve="Value" />
    <node concept="3EZMnI" id="69qeU0f7cyj" role="2wV5jI">
      <node concept="3F0A7n" id="69qeU0f7cyt" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f7cye" resolve="value" />
      </node>
      <node concept="l2Vlx" id="69qeU0f7cym" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="69qeU0f8Slg">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:69qeU0f8SkZ" resolve="Update" />
    <node concept="3EZMnI" id="69qeU0f8Sli" role="2wV5jI">
      <node concept="3F0ifn" id="69qeU0f8Sls" role="3EZMnx">
        <property role="3F0ifm" value="UPDATE" />
        <node concept="VechU" id="69qeU0f8Sqj" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="1iCGBv" id="69qeU0f8SlC" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f9BdA" />
        <node concept="1sVBvm" id="69qeU0f8SlE" role="1sWHZn">
          <node concept="3F0A7n" id="69qeU0f8SlP" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="69qeU0f8Sm5" role="3EZMnx">
        <property role="3F0ifm" value="SET" />
        <node concept="pVoyu" id="69qeU0f8Smc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="69qeU0f8Sqo" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="69qeU0f8Smn" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="69qeU0f8So5" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f8Sl7" resolve="columns" />
        <node concept="l2Vlx" id="69qeU0f8So7" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="69qeU0f8SmD" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="69qeU0f8SmX" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="69qeU0f8Snj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="69qeU0f8So$" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f8Slb" resolve="values" />
        <node concept="l2Vlx" id="69qeU0f8SoA" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="69qeU0f9_2Z" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F1sOY" id="69qeU0f8SpY" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:69qeU0f8Sl3" resolve="where" />
        <node concept="pVoyu" id="69qeU0f8Sqh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="69qeU0fbewe" role="3EZMnx">
        <node concept="pVoyu" id="69qeU0fbew$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="69qeU0f8Sll" role="2iSdaV" />
    </node>
  </node>
</model>

