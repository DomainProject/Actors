<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1226339751946" name="jetbrains.mps.lang.editor.structure.PaddingTopStyleClassItem" flags="ln" index="27yT$n" />
      <concept id="1226339813308" name="jetbrains.mps.lang.editor.structure.PaddingBottomStyleClassItem" flags="ln" index="27z8qx" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3m_VcJMWBmW">
    <property role="3GE5qa" value="actor" />
    <ref role="1XX52x" to="o1mc:3m_VcJMWzd$" resolve="Actor" />
    <node concept="3EZMnI" id="3m_VcJMYehl" role="2wV5jI">
      <node concept="l2Vlx" id="3m_VcJMYehm" role="2iSdaV" />
      <node concept="3F0ifn" id="3m_VcJMZPcU" role="3EZMnx">
        <property role="3F0ifm" value="create_actor" />
        <node concept="VechU" id="14g3IsRbcJi" role="3F10Kt">
          <property role="Vb096" value="fLwANPs/magenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMZPdg" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="3m_VcJMYeh_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3m_VcJMZPdY" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="3m_VcJMZPeA" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3m_VcJMWzdw" resolve="address" />
      </node>
      <node concept="3F0ifn" id="25QEYlOfjuE" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="25QEYlOfjuW" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:25QEYlOeItB" resolve="behavior" />
      </node>
      <node concept="3F0ifn" id="3m_VcJMZPf2" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="66sUT0$6_4q" role="3EZMnx">
        <node concept="pVoyu" id="66sUT0$6_4_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3m_VcJMWBpa">
    <property role="3GE5qa" value="message" />
    <ref role="1XX52x" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
    <node concept="3EZMnI" id="25QEYlOdAr3" role="2wV5jI">
      <node concept="3F0ifn" id="25QEYlOHr5j" role="3EZMnx">
        <property role="3F0ifm" value="Message" />
        <node concept="Vb9p2" id="14g3IsRc3xR" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0A7n" id="25QEYlOHr61" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="25QEYlOHr6x" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="25QEYlOdArd" role="3EZMnx">
        <property role="3F0ifm" value="create_message" />
        <node concept="VechU" id="14g3IsRbcJq" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOKN1q" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="25QEYlOKN1W" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:Buyr4_DLlL" />
        <node concept="pVoyu" id="25QEYlOL_YC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="25QEYlOL_YE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOdAs_" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="2PvKG7DpAee" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
        <node concept="pVoyu" id="2PvKG7DpAev" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2PvKG7DpAex" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOdArr" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="pVoyu" id="25QEYlOL_YR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="27z8qx" id="14g3IsRePMY" role="3F10Kt">
          <property role="3$6WeP" value="0.5" />
        </node>
      </node>
      <node concept="l2Vlx" id="25QEYlOdAr6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3m_VcJMWBqu">
    <property role="3GE5qa" value="message" />
    <ref role="1XX52x" to="o1mc:3m_VcJMWARM" resolve="SendMessage" />
    <node concept="3EZMnI" id="3m_VcJMWBqz" role="2wV5jI">
      <node concept="3F0ifn" id="3m_VcJMWBqE" role="3EZMnx">
        <property role="3F0ifm" value="send_message" />
        <node concept="VechU" id="14g3IsRbcJu" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMWBqK" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="3m_VcJMWBqS" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3m_VcJMWARP" resolve="message" />
        <node concept="1sVBvm" id="3m_VcJMWBqU" role="1sWHZn">
          <node concept="3F0A7n" id="3m_VcJMWBr9" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMWBsc" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="3m_VcJMWBqA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3m_VcJMWBso">
    <ref role="1XX52x" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
    <node concept="3EZMnI" id="3m_VcJMWBsq" role="2wV5jI">
      <node concept="3F0A7n" id="3m_VcJMWBs$" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="pVoyu" id="3m_VcJMWBsW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMWBsE" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="ljvvj" id="3m_VcJMWBsY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMWBtx" role="3EZMnx">
        <property role="3F0ifm" value="Actors:" />
        <node concept="lj46D" id="3m_VcJMWBtC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3m_VcJMWBtE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="66sUT0$6_3E" role="3EZMnx">
        <node concept="lj46D" id="66sUT0$6_3W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="66sUT0$6YQ1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="3m_VcJMWBtQ" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3m_VcJMWzdR" />
        <node concept="l2Vlx" id="3m_VcJMWBtT" role="2czzBx" />
        <node concept="pj6Ft" id="3m_VcJMWBu3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3m_VcJMWBu5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="3m_VcJMWBu8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3m_VcJMWBuc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="66sUT0$6_2_" role="3EZMnx">
        <node concept="lj46D" id="66sUT0$6_2P" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3m_VcJMWBst" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="25QEYlOdAtd">
    <property role="3GE5qa" value="envelope" />
    <ref role="1XX52x" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
    <node concept="3EZMnI" id="25QEYlOdAtl" role="2wV5jI">
      <node concept="3F0ifn" id="Buyr4_JQaQ" role="3EZMnx">
        <property role="3F0ifm" value="Envelope" />
        <node concept="Vb9p2" id="14g3IsRc3xP" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0A7n" id="Buyr4_JQbo" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="Buyr4_JQbK" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="25QEYlOdAts" role="3EZMnx">
        <property role="3F0ifm" value="create_envelope" />
        <node concept="VechU" id="14g3IsRbcJm" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOdAty" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="25QEYlOdAvZ" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:25QEYlOdAqb" resolve="receiver" />
        <node concept="1sVBvm" id="25QEYlOdAw1" role="1sWHZn">
          <node concept="3F0A7n" id="25QEYlOdAwm" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="o1mc:3m_VcJMWzdw" resolve="address" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOgtpU" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="6F9Ho3OqgOr" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:6F9Ho3OqddR" resolve="priority" />
      </node>
      <node concept="3F0ifn" id="25QEYlOdAtE" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="25QEYlOdAto" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="25QEYlOdAyK">
    <property role="3GE5qa" value="payload" />
    <ref role="1XX52x" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
    <node concept="3EZMnI" id="25QEYlOdAyM" role="2wV5jI">
      <node concept="3F0ifn" id="4posSimN8vL" role="3EZMnx">
        <property role="3F0ifm" value="Payload" />
        <node concept="Vb9p2" id="14g3IsRc3xT" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0A7n" id="4posSimN8w7" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4posSimN8wn" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="l2Vlx" id="25QEYlOdAyP" role="2iSdaV" />
      <node concept="3F0ifn" id="25QEYlOdAyZ" role="3EZMnx">
        <property role="3F0ifm" value="create_payload" />
        <node concept="VechU" id="14g3IsRbcJw" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOdAz5" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="25QEYlOdAzn" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:25QEYlOdAyI" resolve="body" />
      </node>
      <node concept="3F0ifn" id="25QEYlOdAzd" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="25QEYlOfjry">
    <property role="3GE5qa" value="behavior" />
    <ref role="1XX52x" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
    <node concept="3EZMnI" id="25QEYlOfjr$" role="2wV5jI">
      <node concept="3F0ifn" id="25QEYlOfjrO" role="3EZMnx">
        <property role="3F0ifm" value="create_behavior" />
        <node concept="VechU" id="14g3IsRbcJk" role="3F10Kt">
          <property role="Vb096" value="fLwANPr/green" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOfjrU" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="25QEYlOfjs7" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="25QEYlOfjsh" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="25QEYlOfjst" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="27z8qx" id="14g3IsRfWJ0" role="3F10Kt">
          <property role="3$6WeP" value="0.3" />
        </node>
      </node>
      <node concept="3F2HdR" id="25QEYlOfjsU" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3m_VcJMYehj" resolve="actions" />
        <node concept="l2Vlx" id="25QEYlOfjsW" role="2czzBx" />
        <node concept="pVoyu" id="25QEYlOfjtk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="25QEYlOfjtm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="25QEYlOfjtp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOfjtD" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="27yT$n" id="14g3IsRfWJ2" role="3F10Kt">
          <property role="3$6WeP" value="0.3" />
        </node>
      </node>
      <node concept="l2Vlx" id="25QEYlOfjrB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="66sUT0$5L0L">
    <property role="3GE5qa" value="behavior" />
    <ref role="1XX52x" to="o1mc:66sUT0$5L0$" resolve="SelectBehavior" />
    <node concept="3EZMnI" id="66sUT0$5L0N" role="2wV5jI">
      <node concept="1iCGBv" id="66sUT0$5L0X" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:66sUT0$5L0_" resolve="behavior" />
        <node concept="1sVBvm" id="66sUT0$5L0Z" role="1sWHZn">
          <node concept="3F0A7n" id="66sUT0$5L19" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="66sUT0$5L0Q" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="66sUT0$7o_X">
    <property role="3GE5qa" value="fetch" />
    <ref role="1XX52x" to="o1mc:66sUT0$7o_P" resolve="Fetch" />
    <node concept="3EZMnI" id="66sUT0$7o_Z" role="2wV5jI">
      <node concept="3F0ifn" id="66sUT0$7oA6" role="3EZMnx">
        <property role="3F0ifm" value="fetch_message" />
        <node concept="VechU" id="14g3IsRbcJo" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="66sUT0$7oAc" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="6F9Ho3OgWyE" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:66sUT0$7o_V" resolve="policy" />
      </node>
      <node concept="3F0ifn" id="66sUT0$7oAz" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="PagzVklQ0n" role="3EZMnx">
        <property role="3F0ifm" value="---&gt;" />
        <node concept="pkWqt" id="PagzVklQ15" role="pqm2j">
          <node concept="3clFbS" id="PagzVklQ16" role="2VODD2">
            <node concept="3cpWs6" id="PagzVkmB58" role="3cqZAp">
              <node concept="2OqwBi" id="PagzVklSTQ" role="3cqZAk">
                <node concept="2OqwBi" id="PagzVklQBQ" role="2Oq$k0">
                  <node concept="pncrf" id="PagzVklQez" role="2Oq$k0" />
                  <node concept="3TrEf2" id="PagzVklSFX" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                  </node>
                </node>
                <node concept="3x8VRR" id="PagzVklTsM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="PagzVklQ0K" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:6F9Ho3O73hh" resolve="message" />
        <node concept="1sVBvm" id="PagzVklQ0M" role="1sWHZn">
          <node concept="3F0A7n" id="PagzVklQ12" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="pkWqt" id="PagzVklTTl" role="pqm2j">
              <node concept="3clFbS" id="PagzVklTTm" role="2VODD2">
                <node concept="3cpWs6" id="PagzVkmBrm" role="3cqZAp">
                  <node concept="2OqwBi" id="PagzVklUk8" role="3cqZAk">
                    <node concept="pncrf" id="PagzVklTTO" role="2Oq$k0" />
                    <node concept="3x8VRR" id="PagzVklUZ0" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="66sUT0$7oA2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="Buyr4_JQa6">
    <property role="3GE5qa" value="envelope" />
    <ref role="1XX52x" to="o1mc:Buyr4_JQa3" resolve="SelectEnvelope" />
    <node concept="3EZMnI" id="4I00NIR_9ID" role="2wV5jI">
      <node concept="1iCGBv" id="4I00NIR_9IK" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:Buyr4_JQa4" resolve="envelope" />
        <node concept="1sVBvm" id="4I00NIR_9IM" role="1sWHZn">
          <node concept="3F0A7n" id="4I00NIR_9IW" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="4I00NIR_9IG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4posSimMjE8">
    <property role="3GE5qa" value="payload" />
    <ref role="1XX52x" to="o1mc:4posSimMjE2" resolve="SelectPayload" />
    <node concept="3EZMnI" id="4posSimMjEa" role="2wV5jI">
      <node concept="1iCGBv" id="4posSimMjEj" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:4posSimMjEh" resolve="payload" />
        <node concept="1sVBvm" id="4posSimMjEl" role="1sWHZn">
          <node concept="3F0A7n" id="4posSimMjEv" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4posSimMjEd" role="2iSdaV" />
    </node>
  </node>
</model>

