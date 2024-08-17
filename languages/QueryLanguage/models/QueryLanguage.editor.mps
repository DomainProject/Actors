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
    <import index="av1m" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.menus.style(MPS.Editor/)" implicit="true" />
    <import index="fulz" ref="r:6f792c44-2a5d-40e8-9f05-33f7d4ae26ec(jetbrains.mps.editor.runtime.completion)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="7250830207897895674" name="jetbrains.mps.lang.editor.structure.CompletionCustomizationContextSpecificator_Concept" flags="ng" index="KNhPi">
        <reference id="9115396979021131941" name="conceptDeclaration" index="2RIln$" />
      </concept>
      <concept id="7250830207897895678" name="jetbrains.mps.lang.editor.structure.CompletionCustomizationConceptCreatingSpecificator" flags="ng" index="KNhPm" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="7818019076292260194" name="jetbrains.mps.lang.editor.structure.CompletionStyling" flags="ig" index="3dRTYf">
        <child id="7250830207897909099" name="specificator" index="KNiz3" />
        <child id="772883491827840107" name="customizeFunction" index="3l$a4r" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="772883491827578824" name="jetbrains.mps.lang.editor.structure.CompletionCustomization_CustomizeFunction" flags="ig" index="3lBaaS" />
      <concept id="772883491827671409" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameterCustomize_CompletionItemInformation" flags="ng" index="3lBNg1" />
      <concept id="772883491827671446" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameterCustomize_Style" flags="ng" index="3lBNjA" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
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
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
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
        <ref role="1NtTu8" to="p6im:7mg1zkgzI1k" resolve="columns" />
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
      <node concept="3F0A7n" id="1SzaAQ8CXif" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1SzaAQ8CXi_" role="3EZMnx">
        <node concept="pVoyu" id="1SzaAQ8CXiH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2G8vGeEpBFg" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:2G8vGeEpl5A" resolve="operations" />
        <node concept="l2Vlx" id="2G8vGeEpBFi" role="2czzBx" />
        <node concept="pj6Ft" id="2G8vGeEpBFm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1SzaAQ8CXiJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2G8vGeEpBFc" role="3EZMnx" />
      <node concept="l2Vlx" id="14g3IsRh3JT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRhhqT">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:66sUT0$8edT" resolve="Select" />
    <node concept="3EZMnI" id="14g3IsRhhqY" role="2wV5jI">
      <node concept="3F0ifn" id="5gn1UuTcwnM" role="3EZMnx">
        <property role="3F0ifm" value="CREATE VIEW" />
        <node concept="VechU" id="5gn1UuTcxlq" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
        <node concept="pkWqt" id="5gn1UuTcxlv" role="pqm2j">
          <node concept="3clFbS" id="5gn1UuTcxlw" role="2VODD2">
            <node concept="3clFbF" id="5gn1UuTcxlZ" role="3cqZAp">
              <node concept="2OqwBi" id="5gn1UuTcyES" role="3clFbG">
                <node concept="2OqwBi" id="5gn1UuTcxMM" role="2Oq$k0">
                  <node concept="pncrf" id="5gn1UuTcxlY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5gn1UuTcyrn" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5gn1UuTcziw" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="5gn1UuTcwM9" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:7p2QZoUxXLI" resolve="viewName" />
        <node concept="pkWqt" id="5gn1UuTcz_7" role="pqm2j">
          <node concept="3clFbS" id="5gn1UuTcz_8" role="2VODD2">
            <node concept="3clFbF" id="5gn1UuTcz_d" role="3cqZAp">
              <node concept="2OqwBi" id="5gn1UuTczFA" role="3clFbG">
                <node concept="2OqwBi" id="5gn1UuTcz_I" role="2Oq$k0">
                  <node concept="pncrf" id="5gn1UuTcz_c" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5gn1UuTczE1" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5gn1UuTczJr" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5gn1UuTcxcz" role="3EZMnx">
        <property role="3F0ifm" value="AS" />
        <node concept="VechU" id="5gn1UuTcxls" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
        <node concept="pkWqt" id="5gn1UuTczKj" role="pqm2j">
          <node concept="3clFbS" id="5gn1UuTczKk" role="2VODD2">
            <node concept="3clFbF" id="5gn1UuTczKN" role="3cqZAp">
              <node concept="2OqwBi" id="5gn1UuTczRc" role="3clFbG">
                <node concept="2OqwBi" id="5gn1UuTczLk" role="2Oq$k0">
                  <node concept="pncrf" id="5gn1UuTczKM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5gn1UuTczPB" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUCu21" resolve="viewTable" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5gn1UuTczV1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="14g3IsRhhr0" role="3EZMnx">
        <property role="3F0ifm" value="SELECT" />
        <node concept="VechU" id="14g3IsRhhtM" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
        <node concept="pVoyu" id="5gn1UuTcxln" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5PYs8dV0NJO" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
        <node concept="pkWqt" id="5PYs8dV0NLQ" role="pqm2j">
          <node concept="3clFbS" id="5PYs8dV0NLR" role="2VODD2">
            <node concept="3clFbF" id="5PYs8dV0NZq" role="3cqZAp">
              <node concept="2OqwBi" id="5PYs8dV0QX0" role="3clFbG">
                <node concept="2OqwBi" id="5PYs8dV0OPX" role="2Oq$k0">
                  <node concept="pncrf" id="5PYs8dV0NZp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5PYs8dV0QIo" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5PYs8dV0RM9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5PYs8dV0NKA" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="pkWqt" id="5PYs8dV0S3B" role="pqm2j">
          <node concept="3clFbS" id="5PYs8dV0S3C" role="2VODD2">
            <node concept="3clFbF" id="5PYs8dV0S47" role="3cqZAp">
              <node concept="2OqwBi" id="5PYs8dV0SN4" role="3clFbG">
                <node concept="2OqwBi" id="5PYs8dV0Sie" role="2Oq$k0">
                  <node concept="pncrf" id="5PYs8dV0S46" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5PYs8dV0SJK" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5PYs8dV0SQT" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="14g3IsRklwo" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:UaVdqMlpcc" resolve="cols" />
        <node concept="l2Vlx" id="14g3IsRklwq" role="2czzBx" />
        <node concept="2o9xnK" id="2G8vGeErrrT" role="2gpyvW">
          <node concept="3clFbS" id="2G8vGeErrrU" role="2VODD2">
            <node concept="3clFbF" id="2G8vGeErrG6" role="3cqZAp">
              <node concept="Xl_RD" id="2G8vGeErrG5" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5PYs8dV0NLr" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="pkWqt" id="5PYs8dV0TaJ" role="pqm2j">
          <node concept="3clFbS" id="5PYs8dV0TaK" role="2VODD2">
            <node concept="3clFbF" id="5PYs8dV0Tbf" role="3cqZAp">
              <node concept="2OqwBi" id="5PYs8dV0Ukt" role="3clFbG">
                <node concept="2OqwBi" id="5PYs8dV0TAq" role="2Oq$k0">
                  <node concept="pncrf" id="5PYs8dV0Tbe" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5PYs8dV0U8w" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:5PYs8dV0Cem" resolve="aggregateFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5PYs8dV0UHN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
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
      <node concept="3F2HdR" id="21Z4UyPhwd6" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:21Z4UyPhxqZ" resolve="tables" />
        <node concept="l2Vlx" id="21Z4UyPhwd8" role="2czzBx" />
        <node concept="2o9xnK" id="21Z4UyPhwi7" role="2gpyvW">
          <node concept="3clFbS" id="21Z4UyPhwi8" role="2VODD2">
            <node concept="3clFbF" id="21Z4UyPhwiB" role="3cqZAp">
              <node concept="Xl_RD" id="21Z4UyPhwiA" role="3clFbG">
                <property role="Xl_RC" value=" JOIN" />
              </node>
            </node>
          </node>
        </node>
        <node concept="tppnM" id="21Z4UyPhwjU" role="sWeuL">
          <node concept="VechU" id="21Z4UyPhwjZ" role="3F10Kt">
            <property role="Vb096" value="g1_qVrt/darkMagenta" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6MkW5HYMu7N" role="3EZMnx">
        <property role="3F0ifm" value="ON" />
        <node concept="VechU" id="6MkW5HYMucU" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
        <node concept="pkWqt" id="6MkW5HYMuJA" role="pqm2j">
          <node concept="3clFbS" id="6MkW5HYMuJB" role="2VODD2">
            <node concept="3clFbF" id="6MkW5HYMuK6" role="3cqZAp">
              <node concept="3eOSWO" id="6MkW5HYMHX2" role="3clFbG">
                <node concept="3cmrfG" id="6MkW5HYMHX6" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="6MkW5HYMyUw" role="3uHU7B">
                  <node concept="2OqwBi" id="6MkW5HYMvcT" role="2Oq$k0">
                    <node concept="pncrf" id="6MkW5HYMuK5" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6MkW5HYMw2y" role="2OqNvi">
                      <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="6MkW5HYMEDI" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="6MkW5HYMuEt" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:6MkW5HYMt1M" resolve="joinCondition" />
        <node concept="pkWqt" id="6MkW5HYMIir" role="pqm2j">
          <node concept="3clFbS" id="6MkW5HYMIis" role="2VODD2">
            <node concept="3clFbF" id="6MkW5HYMIix" role="3cqZAp">
              <node concept="3eOSWO" id="6MkW5HYMU_3" role="3clFbG">
                <node concept="3cmrfG" id="6MkW5HYMU_7" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="6MkW5HYMLX1" role="3uHU7B">
                  <node concept="2OqwBi" id="6MkW5HYMIJk" role="2Oq$k0">
                    <node concept="pncrf" id="6MkW5HYMIiw" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6MkW5HYMJ53" role="2OqNvi">
                      <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="6MkW5HYMRtm" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="14g3IsRhhtb" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRhhsH" resolve="where" />
        <node concept="pVoyu" id="14g3IsRhhtl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2G8vGeEqxuy" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:2G8vGeEqxtT" resolve="groupBy" />
        <node concept="pVoyu" id="2G8vGeEqxuP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2G8vGeEouhd" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:2G8vGeEougD" resolve="orderBy" />
        <node concept="pVoyu" id="2G8vGeEouhu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="32lqJACCgcL" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:32lqJACCeyQ" resolve="window" />
        <node concept="pVoyu" id="32lqJACCgmp" role="3F10Kt">
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
      <node concept="3F1sOY" id="2fooeIVvqIF" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRiyeO" resolve="condition" />
      </node>
      <node concept="l2Vlx" id="14g3IsRhhts" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14g3IsRku6G">
    <property role="3GE5qa" value="column" />
    <ref role="1XX52x" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
    <node concept="3EZMnI" id="14g3IsRku6I" role="2wV5jI">
      <node concept="3F1sOY" id="HpRLxUEDwT" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
        <node concept="pkWqt" id="HpRLxUEEkr" role="pqm2j">
          <node concept="3clFbS" id="HpRLxUEEks" role="2VODD2">
            <node concept="3clFbF" id="HpRLxUEEkx" role="3cqZAp">
              <node concept="2OqwBi" id="HpRLxUEFQg" role="3clFbG">
                <node concept="2OqwBi" id="HpRLxUEEIS" role="2Oq$k0">
                  <node concept="pncrf" id="HpRLxUEEkw" role="2Oq$k0" />
                  <node concept="3TrEf2" id="HpRLxUEFex" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="HpRLxUEGy9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="HpRLxUEE5e" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="pkWqt" id="HpRLxUEGNP" role="pqm2j">
          <node concept="3clFbS" id="HpRLxUEGNQ" role="2VODD2">
            <node concept="3clFbF" id="HpRLxUEGNU" role="3cqZAp">
              <node concept="2OqwBi" id="HpRLxUEGNW" role="3clFbG">
                <node concept="2OqwBi" id="HpRLxUEGNX" role="2Oq$k0">
                  <node concept="pncrf" id="HpRLxUEGNY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="HpRLxUEGNZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="HpRLxUEGO0" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="HpRLxUGTa8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="14g3IsRku6P" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRklvP" resolve="column" />
        <node concept="1sVBvm" id="14g3IsRku6R" role="1sWHZn">
          <node concept="3F0A7n" id="14g3IsRku6Y" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="pkWqt" id="21Z4UyPtJgS" role="pqm2j">
          <node concept="3clFbS" id="21Z4UyPtJgT" role="2VODD2">
            <node concept="3clFbJ" id="21Z4UyPN$yP" role="3cqZAp">
              <node concept="2OqwBi" id="21Z4UyPN_gH" role="3clFbw">
                <node concept="2OqwBi" id="21Z4UyPN$RD" role="2Oq$k0">
                  <node concept="pncrf" id="21Z4UyPN$yW" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="21Z4UyPN_3T" role="2OqNvi">
                    <node concept="1xMEDy" id="21Z4UyPN_3V" role="1xVPHs">
                      <node concept="chp4Y" id="21Z4UyPN_6n" role="ri$Ld">
                        <ref role="cht4Q" to="p6im:66sUT0$8edT" resolve="Select" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3w_OXm" id="21Z4UyPN_ID" role="2OqNvi" />
              </node>
              <node concept="3clFbS" id="21Z4UyPN$yR" role="3clFbx">
                <node concept="3cpWs6" id="21Z4UyPN_Jq" role="3cqZAp">
                  <node concept="3clFbT" id="21Z4UyPNA2a" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="21Z4UyPNA47" role="3cqZAp">
              <node concept="2dkUwp" id="21Z4UyPOa9_" role="3cqZAk">
                <node concept="2OqwBi" id="21Z4UyPNRK$" role="3uHU7B">
                  <node concept="2OqwBi" id="21Z4UyPNES3" role="2Oq$k0">
                    <node concept="2OqwBi" id="21Z4UyPNBEg" role="2Oq$k0">
                      <node concept="pncrf" id="21Z4UyPNA6o" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="21Z4UyPNCfv" role="2OqNvi">
                        <node concept="1xMEDy" id="21Z4UyPNCfx" role="1xVPHs">
                          <node concept="chp4Y" id="21Z4UyPNDrD" role="ri$Ld">
                            <ref role="cht4Q" to="p6im:66sUT0$8edT" resolve="Select" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="21Z4UyPNFrW" role="2OqNvi">
                      <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="21Z4UyPNXNM" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="21Z4UyPO9yd" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="21Z4UyPt4HN" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:14g3IsRklvP" resolve="column" />
        <node concept="1sVBvm" id="21Z4UyPt4HP" role="1sWHZn">
          <node concept="3F0A7n" id="21Z4UyPt4Ic" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="p6im:21Z4UyPqhVV" resolve="fullName" />
          </node>
        </node>
        <node concept="pkWqt" id="21Z4UyPtJ$f" role="pqm2j">
          <node concept="3clFbS" id="21Z4UyPtJ$g" role="2VODD2">
            <node concept="3clFbF" id="21Z4UyPtJ$I" role="3cqZAp">
              <node concept="1Wc70l" id="21Z4UyPMvJN" role="3clFbG">
                <node concept="3eOSWO" id="21Z4UyPML_5" role="3uHU7w">
                  <node concept="3cmrfG" id="21Z4UyPML_t" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="21Z4UyPM$38" role="3uHU7B">
                    <node concept="2OqwBi" id="21Z4UyPMxfi" role="2Oq$k0">
                      <node concept="2OqwBi" id="21Z4UyPMwBj" role="2Oq$k0">
                        <node concept="pncrf" id="21Z4UyPMwgq" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="21Z4UyPMwZs" role="2OqNvi">
                          <node concept="1xMEDy" id="21Z4UyPMwZu" role="1xVPHs">
                            <node concept="chp4Y" id="21Z4UyPMx2n" role="ri$Ld">
                              <ref role="cht4Q" to="p6im:66sUT0$8edT" resolve="Select" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="21Z4UyPMxKc" role="2OqNvi">
                        <ref role="3TtcxE" to="p6im:21Z4UyPhxqZ" resolve="tables" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="21Z4UyPMEvQ" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="21Z4UyPLK7h" role="3uHU7B">
                  <node concept="2OqwBi" id="21Z4UyPLK7i" role="2Oq$k0">
                    <node concept="pncrf" id="21Z4UyPLK7j" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="21Z4UyPLK7k" role="2OqNvi">
                      <node concept="1xMEDy" id="21Z4UyPLK7l" role="1xVPHs">
                        <node concept="chp4Y" id="21Z4UyPLK7m" role="ri$Ld">
                          <ref role="cht4Q" to="p6im:66sUT0$8edT" resolve="Select" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="21Z4UyPLK7n" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="HpRLxUEEfm" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="pkWqt" id="HpRLxUEGPo" role="pqm2j">
          <node concept="3clFbS" id="HpRLxUEGPp" role="2VODD2">
            <node concept="3clFbF" id="HpRLxUEGPt" role="3cqZAp">
              <node concept="2OqwBi" id="HpRLxUEGPv" role="3clFbG">
                <node concept="2OqwBi" id="HpRLxUEGPw" role="2Oq$k0">
                  <node concept="pncrf" id="HpRLxUEGPx" role="2Oq$k0" />
                  <node concept="3TrEf2" id="HpRLxUEGPy" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="HpRLxUEGPz" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="11L4FC" id="HpRLxUGTtS" role="3F10Kt">
          <property role="VOm3f" value="true" />
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
        <ref role="1NtTu8" to="p6im:21Z4UyPhwT6" resolve="table" />
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
        <ref role="1NtTu8" to="p6im:7mg1zkgy_WV" resolve="columns" />
        <node concept="l2Vlx" id="69qeU0f7cx3" role="2czzBx" />
        <node concept="2o9xnK" id="2G8vGeErJt3" role="2gpyvW">
          <node concept="3clFbS" id="2G8vGeErJt4" role="2VODD2">
            <node concept="3clFbF" id="2G8vGeErJHg" role="3cqZAp">
              <node concept="Xl_RD" id="2G8vGeErJHf" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="2o9xnK" id="2G8vGeErJHW" role="2gpyvW">
          <node concept="3clFbS" id="2G8vGeErJHX" role="2VODD2">
            <node concept="3clFbF" id="2G8vGeErJIs" role="3cqZAp">
              <node concept="Xl_RD" id="2G8vGeErJIr" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
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
        <ref role="1NtTu8" to="p6im:21Z4UyPhwT6" resolve="table" />
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
        <ref role="1NtTu8" to="p6im:7mg1zkgy_WV" resolve="columns" />
        <node concept="l2Vlx" id="69qeU0f8So7" role="2czzBx" />
        <node concept="2o9xnK" id="2G8vGeEs3x3" role="2gpyvW">
          <node concept="3clFbS" id="2G8vGeEs3x4" role="2VODD2">
            <node concept="3clFbF" id="2G8vGeEs3Lg" role="3cqZAp">
              <node concept="Xl_RD" id="2G8vGeEs3Lf" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="2o9xnK" id="2G8vGeEs3LW" role="2gpyvW">
          <node concept="3clFbS" id="2G8vGeEs3LX" role="2VODD2">
            <node concept="3clFbF" id="2G8vGeEs3Ms" role="3cqZAp">
              <node concept="Xl_RD" id="2G8vGeEs3Mr" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
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
  <node concept="24kQdi" id="2G8vGeEou9n">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:2G8vGeEou9h" resolve="OrderBy" />
    <node concept="3EZMnI" id="2G8vGeEou9p" role="2wV5jI">
      <node concept="3F0ifn" id="2G8vGeEou9z" role="3EZMnx">
        <property role="3F0ifm" value="ORDER BY" />
        <node concept="VechU" id="2G8vGeEou9U" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F2HdR" id="2G8vGeEqxrn" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:2G8vGeEqxrf" resolve="columns" />
        <node concept="l2Vlx" id="2G8vGeEqxrp" role="2czzBx" />
        <node concept="2o9xnK" id="21Z4UyPOOPf" role="2gpyvW">
          <node concept="3clFbS" id="21Z4UyPOOPg" role="2VODD2">
            <node concept="3clFbF" id="21Z4UyPOP5s" role="3cqZAp">
              <node concept="Xl_RD" id="21Z4UyPOP5r" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2G8vGeEou9s" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2G8vGeEp2qt">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:2G8vGeEp2qp" resolve="Delete" />
    <node concept="3EZMnI" id="2G8vGeEp2qv" role="2wV5jI">
      <node concept="3F0ifn" id="2G8vGeEp2qD" role="3EZMnx">
        <property role="3F0ifm" value="DELETE FROM" />
        <node concept="VechU" id="2G8vGeEpUk7" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="1iCGBv" id="2G8vGeEp2qN" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:21Z4UyPhwT6" resolve="table" />
        <node concept="1sVBvm" id="2G8vGeEp2qP" role="1sWHZn">
          <node concept="3F0A7n" id="2G8vGeEpUk4" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2G8vGeEp2rj" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:2G8vGeEp2qr" resolve="where" />
        <node concept="pVoyu" id="2G8vGeEp2rq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2G8vGeEqdEs" role="3EZMnx">
        <node concept="pVoyu" id="2G8vGeEqdEA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2G8vGeEp2qy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2G8vGeEqxtr">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:2G8vGeEqxre" resolve="GroupBy" />
    <node concept="3EZMnI" id="2G8vGeEqxtt" role="2wV5jI">
      <node concept="3F0ifn" id="2G8vGeEqxtB" role="3EZMnx">
        <property role="3F0ifm" value="GROUP BY" />
        <node concept="VechU" id="2G8vGeEqxtQ" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F2HdR" id="2G8vGeEqxtK" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:2G8vGeEqxtp" resolve="columns" />
        <node concept="l2Vlx" id="2G8vGeEqxtM" role="2czzBx" />
        <node concept="2o9xnK" id="21Z4UyPOO$9" role="2gpyvW">
          <node concept="3clFbS" id="21Z4UyPOO$a" role="2VODD2">
            <node concept="3clFbF" id="21Z4UyPOO$f" role="3cqZAp">
              <node concept="Xl_RD" id="21Z4UyPOO$e" role="3clFbG">
                <property role="Xl_RC" value="," />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2G8vGeEqxtw" role="2iSdaV" />
    </node>
  </node>
  <node concept="3dRTYf" id="2k0K6Kz$udF">
    <property role="TrG5h" value="DBOperationCompletionStyling" />
    <property role="3GE5qa" value="completionStyling" />
    <node concept="3Tm1VV" id="2k0K6Kz$udG" role="1B3o_S" />
    <node concept="KNhPm" id="2k0K6Kz$xp7" role="KNiz3">
      <ref role="2RIln$" to="p6im:2G8vGeEpl5$" resolve="DBOperation" />
    </node>
    <node concept="3lBaaS" id="2k0K6Kz$udI" role="3l$a4r">
      <node concept="3clFbS" id="2k0K6Kz$udJ" role="2VODD2">
        <node concept="3clFbJ" id="2k0K6Kz_KZX" role="3cqZAp">
          <node concept="3clFbS" id="2k0K6Kz_KZZ" role="3clFbx">
            <node concept="3clFbF" id="2k0K6Kz_LyE" role="3cqZAp">
              <node concept="2OqwBi" id="2k0K6Kz$xZV" role="3clFbG">
                <node concept="3lBNjA" id="2k0K6Kz$xR5" role="2Oq$k0" />
                <node concept="liA8E" id="2k0K6Kz$zSI" role="2OqNvi">
                  <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setDescriptionText(java.lang.String)" resolve="setDescriptionText" />
                  <node concept="Xl_RD" id="2k0K6Kz$_Cj" role="37wK5m">
                    <property role="Xl_RC" value="Create new table" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2k0K6KzCsWW" role="3clFbw">
            <node concept="2OqwBi" id="2k0K6KzCsWX" role="3uHU7B">
              <node concept="3lBNg1" id="2k0K6KzCsWY" role="2Oq$k0" />
              <node concept="liA8E" id="2k0K6KzCsWZ" role="2OqNvi">
                <ref role="37wK5l" to="fulz:6MqJAGngeyC" resolve="getOutputConcept" />
              </node>
            </node>
            <node concept="35c_gC" id="2k0K6KzCsX0" role="3uHU7w">
              <ref role="35c_gD" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
            </node>
          </node>
          <node concept="3eNFk2" id="2k0K6Kz_L$Y" role="3eNLev">
            <node concept="3clFbS" id="2k0K6Kz_L_0" role="3eOfB_">
              <node concept="3clFbF" id="2k0K6Kz_M9M" role="3cqZAp">
                <node concept="2OqwBi" id="2k0K6Kz_Mhe" role="3clFbG">
                  <node concept="3lBNjA" id="2k0K6Kz_M9L" role="2Oq$k0" />
                  <node concept="liA8E" id="2k0K6Kz_Myu" role="2OqNvi">
                    <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setDescriptionText(java.lang.String)" resolve="setDescriptionText" />
                    <node concept="Xl_RD" id="2k0K6Kz_Mzp" role="37wK5m">
                      <property role="Xl_RC" value="Add new row to existing table" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="2k0K6KzCRAI" role="3eO9$A">
              <node concept="2OqwBi" id="2k0K6KzCRAJ" role="3uHU7B">
                <node concept="3lBNg1" id="2k0K6KzCRAK" role="2Oq$k0" />
                <node concept="liA8E" id="2k0K6KzCRAL" role="2OqNvi">
                  <ref role="37wK5l" to="fulz:6MqJAGngeyC" resolve="getOutputConcept" />
                </node>
              </node>
              <node concept="35c_gC" id="2k0K6KzCRAM" role="3uHU7w">
                <ref role="35c_gD" to="p6im:69qeU0f77b8" resolve="InsertInto" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2k0K6Kz_MBK" role="3eNLev">
            <node concept="3clFbS" id="2k0K6Kz_MBM" role="3eOfB_">
              <node concept="3clFbF" id="2k0K6Kz_MPL" role="3cqZAp">
                <node concept="2OqwBi" id="2k0K6Kz_MQ3" role="3clFbG">
                  <node concept="3lBNjA" id="2k0K6Kz_MPK" role="2Oq$k0" />
                  <node concept="liA8E" id="2k0K6Kz_MTa" role="2OqNvi">
                    <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setDescriptionText(java.lang.String)" resolve="setDescriptionText" />
                    <node concept="Xl_RD" id="2k0K6Kz_MU8" role="37wK5m">
                      <property role="Xl_RC" value="Delete row(s) from table" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="2k0K6KzCRMO" role="3eO9$A">
              <node concept="2OqwBi" id="2k0K6KzCRMP" role="3uHU7B">
                <node concept="3lBNg1" id="2k0K6KzCRMQ" role="2Oq$k0" />
                <node concept="liA8E" id="2k0K6KzCRMR" role="2OqNvi">
                  <ref role="37wK5l" to="fulz:6MqJAGngeyC" resolve="getOutputConcept" />
                </node>
              </node>
              <node concept="35c_gC" id="2k0K6KzCRMS" role="3uHU7w">
                <ref role="35c_gD" to="p6im:2G8vGeEp2qp" resolve="Delete" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2k0K6Kz_MXR" role="3eNLev">
            <node concept="3clFbS" id="2k0K6Kz_MXT" role="3eOfB_">
              <node concept="3clFbF" id="2k0K6Kz_NAG" role="3cqZAp">
                <node concept="2OqwBi" id="2k0K6Kz_NI8" role="3clFbG">
                  <node concept="3lBNjA" id="2k0K6Kz_NAF" role="2Oq$k0" />
                  <node concept="liA8E" id="2k0K6Kz_O16" role="2OqNvi">
                    <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setDescriptionText(java.lang.String)" resolve="setDescriptionText" />
                    <node concept="Xl_RD" id="2k0K6Kz_O28" role="37wK5m">
                      <property role="Xl_RC" value="Update row(s) of existing table" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="2k0K6KzCS7a" role="3eO9$A">
              <node concept="2OqwBi" id="2k0K6KzCS7b" role="3uHU7B">
                <node concept="3lBNg1" id="2k0K6KzCS7c" role="2Oq$k0" />
                <node concept="liA8E" id="2k0K6KzCS7d" role="2OqNvi">
                  <ref role="37wK5l" to="fulz:6MqJAGngeyC" resolve="getOutputConcept" />
                </node>
              </node>
              <node concept="35c_gC" id="2k0K6KzCS7e" role="3uHU7w">
                <ref role="35c_gD" to="p6im:69qeU0f8SkZ" resolve="Update" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2k0K6Kz_O93" role="3eNLev">
            <node concept="3clFbS" id="2k0K6Kz_O95" role="3eOfB_">
              <node concept="3clFbF" id="2k0K6Kz_OKx" role="3cqZAp">
                <node concept="2OqwBi" id="2k0K6Kz_OTJ" role="3clFbG">
                  <node concept="3lBNjA" id="2k0K6Kz_OKw" role="2Oq$k0" />
                  <node concept="liA8E" id="2k0K6Kz_OZp" role="2OqNvi">
                    <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setDescriptionText(java.lang.String)" resolve="setDescriptionText" />
                    <node concept="Xl_RD" id="2k0K6Kz_P0u" role="37wK5m">
                      <property role="Xl_RC" value="Query row(s) from existing table" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="2k0K6KzCSio" role="3eO9$A">
              <node concept="2OqwBi" id="2k0K6KzCSip" role="3uHU7B">
                <node concept="3lBNg1" id="2k0K6KzCSiq" role="2Oq$k0" />
                <node concept="liA8E" id="2k0K6KzCSir" role="2OqNvi">
                  <ref role="37wK5l" to="fulz:6MqJAGngeyC" resolve="getOutputConcept" />
                </node>
              </node>
              <node concept="35c_gC" id="2k0K6KzCSis" role="3uHU7w">
                <ref role="35c_gD" to="p6im:66sUT0$8edT" resolve="Select" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7p2QZoUvpjX">
    <property role="3GE5qa" value="aggregationFunctions" />
    <ref role="1XX52x" to="p6im:5PYs8dV0yTO" resolve="AggregationFunction" />
    <node concept="PMmxH" id="7p2QZoUvpk3" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="VechU" id="7p2QZoUvpk5" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
      </node>
      <node concept="11LMrY" id="HpRLxUGRRZ" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="21Z4UyPhvrw">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="p6im:21Z4UyPhvru" resolve="TableReference" />
    <node concept="1iCGBv" id="21Z4UyPhvrx" role="2wV5jI">
      <ref role="1NtTu8" to="p6im:21Z4UyPhvrv" resolve="tableRef" />
      <node concept="1sVBvm" id="21Z4UyPhvry" role="1sWHZn">
        <node concept="3F0A7n" id="21Z4UyPhvrz" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3dRTYf" id="21Z4UyPx85L">
    <property role="3GE5qa" value="completionStyling" />
    <property role="TrG5h" value="ColumnRefCompletionStyling" />
    <node concept="3Tm1VV" id="21Z4UyPx85M" role="1B3o_S" />
    <node concept="KNhPm" id="21Z4UyPx86W" role="KNiz3">
      <ref role="2RIln$" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
    </node>
    <node concept="3lBaaS" id="21Z4UyPx85O" role="3l$a4r">
      <node concept="3clFbS" id="21Z4UyPx85P" role="2VODD2">
        <node concept="3cpWs8" id="21Z4UyP_nx5" role="3cqZAp">
          <node concept="3cpWsn" id="21Z4UyP_nx6" role="3cpWs9">
            <property role="TrG5h" value="parameterObject" />
            <node concept="3uibUv" id="21Z4UyP_nx7" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="21Z4UyP_nEf" role="33vP2m">
              <node concept="3lBNg1" id="21Z4UyP_nyE" role="2Oq$k0" />
              <node concept="liA8E" id="21Z4UyP_nNs" role="2OqNvi">
                <ref role="37wK5l" to="fulz:6MqJAGngeyx" resolve="getParameterObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="21Z4UyP_nOR" role="3cqZAp">
          <node concept="3clFbS" id="21Z4UyP_nOT" role="3clFbx">
            <node concept="3clFbF" id="21Z4UyP_ssF" role="3cqZAp">
              <node concept="2OqwBi" id="21Z4UyP_sxf" role="3clFbG">
                <node concept="3lBNjA" id="21Z4UyP_ssE" role="2Oq$k0" />
                <node concept="liA8E" id="21Z4UyP_sDg" role="2OqNvi">
                  <ref role="37wK5l" to="av1m:~EditorMenuItemStyle.setDescriptionText(java.lang.String)" resolve="setDescriptionText" />
                  <node concept="3cpWs3" id="21Z4UyPCgJD" role="37wK5m">
                    <node concept="Xl_RD" id="21Z4UyPCdFd" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                    <node concept="3cpWs3" id="21Z4UyPCdqt" role="3uHU7B">
                      <node concept="Xl_RD" id="21Z4UyPCalZ" role="3uHU7B">
                        <property role="Xl_RC" value="(" />
                      </node>
                      <node concept="2OqwBi" id="21Z4UyPBvVa" role="3uHU7w">
                        <node concept="1PxgMI" id="21Z4UyPBvIX" role="2Oq$k0">
                          <node concept="chp4Y" id="21Z4UyPBvKs" role="3oSUPX">
                            <ref role="cht4Q" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                          </node>
                          <node concept="2OqwBi" id="21Z4UyPAPm9" role="1m5AlR">
                            <node concept="1eOMI4" id="21Z4UyPAPbq" role="2Oq$k0">
                              <node concept="10QFUN" id="21Z4UyPAPbr" role="1eOMHV">
                                <node concept="3Tqbb2" id="21Z4UyPAPbs" role="10QFUM">
                                  <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                                </node>
                                <node concept="37vLTw" id="21Z4UyPAPbt" role="10QFUP">
                                  <ref role="3cqZAo" node="21Z4UyP_nx6" resolve="parameterObject" />
                                </node>
                              </node>
                            </node>
                            <node concept="1mfA1w" id="21Z4UyPBv_E" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="21Z4UyPBwfN" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="21Z4UyP_raX" role="3clFbw">
            <node concept="2OqwBi" id="21Z4UyP_s5a" role="3uHU7w">
              <node concept="1eOMI4" id="21Z4UyP_rrt" role="2Oq$k0">
                <node concept="10QFUN" id="21Z4UyP_rSg" role="1eOMHV">
                  <node concept="3Tqbb2" id="21Z4UyP_rTS" role="10QFUM" />
                  <node concept="37vLTw" id="21Z4UyP_rQE" role="10QFUP">
                    <ref role="3cqZAo" node="21Z4UyP_nx6" resolve="parameterObject" />
                  </node>
                </node>
              </node>
              <node concept="1mIQ4w" id="21Z4UyP_smk" role="2OqNvi">
                <node concept="chp4Y" id="21Z4UyP_soW" role="cj9EA">
                  <ref role="cht4Q" to="p6im:14g3IsRh3GN" resolve="Column" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="21Z4UyP_o2V" role="3uHU7B">
              <node concept="3Tqbb2" id="21Z4UyP_o4V" role="2ZW6by" />
              <node concept="37vLTw" id="21Z4UyP_nQO" role="2ZW6bz">
                <ref role="3cqZAo" node="21Z4UyP_nx6" resolve="parameterObject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5VF6QK6AuCL">
    <property role="3GE5qa" value="where.condition" />
    <ref role="1XX52x" to="p6im:5VF6QK6AuCo" resolve="SimpleCondition" />
    <node concept="3EZMnI" id="5VF6QK6AuCN" role="2wV5jI">
      <node concept="3F1sOY" id="5VF6QK6AuCO" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5VF6QK6AuCF" />
      </node>
      <node concept="3F0A7n" id="5VF6QK6AuCP" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5VF6QK6AuC$" resolve="operator" />
      </node>
      <node concept="3F1sOY" id="5VF6QK6AuCQ" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5VF6QK6AuCA" />
      </node>
      <node concept="l2Vlx" id="5VF6QK6AuCT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5VF6QK6AuD4">
    <property role="3GE5qa" value="where.condition" />
    <ref role="1XX52x" to="p6im:5VF6QK6AuCr" resolve="MultipleCondition" />
    <node concept="3EZMnI" id="5VF6QK6AuD6" role="2wV5jI">
      <node concept="3F0ifn" id="5VF6QK6C0xV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="5VF6QK6AuDy" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5VF6QK6AuDp" />
      </node>
      <node concept="3F0ifn" id="5VF6QK6C0y9" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0A7n" id="5VF6QK6AuDG" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5VF6QK6AuCw" resolve="operator" />
        <node concept="VechU" id="5VF6QK6AuDY" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="5VF6QK6C0yp" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="5VF6QK6AuDT" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:5VF6QK6AuDd" />
      </node>
      <node concept="3F0ifn" id="5VF6QK6C0yF" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="5VF6QK6AuD9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="UaVdqMkpsk">
    <property role="3GE5qa" value="column" />
    <ref role="1XX52x" to="p6im:UaVdqMkpsj" resolve="AllColumns" />
    <node concept="3EZMnI" id="HpRLxUEGQV" role="2wV5jI">
      <node concept="3F1sOY" id="HpRLxUEGR2" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
        <node concept="pkWqt" id="HpRLxUEGRE" role="pqm2j">
          <node concept="3clFbS" id="HpRLxUEGRF" role="2VODD2">
            <node concept="3clFbF" id="HpRLxUEGRJ" role="3cqZAp">
              <node concept="2OqwBi" id="HpRLxUEGRL" role="3clFbG">
                <node concept="2OqwBi" id="HpRLxUEGRM" role="2Oq$k0">
                  <node concept="pncrf" id="HpRLxUEGRN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="HpRLxUEGRO" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="HpRLxUEGRP" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="HpRLxUEGR8" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="pkWqt" id="HpRLxUEHpd" role="pqm2j">
          <node concept="3clFbS" id="HpRLxUEHpe" role="2VODD2">
            <node concept="3clFbF" id="HpRLxUEHpi" role="3cqZAp">
              <node concept="2OqwBi" id="HpRLxUEHpk" role="3clFbG">
                <node concept="2OqwBi" id="HpRLxUEHpl" role="2Oq$k0">
                  <node concept="pncrf" id="HpRLxUEHpm" role="2Oq$k0" />
                  <node concept="3TrEf2" id="HpRLxUEHpn" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="HpRLxUEHpo" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="HpRLxUGSdM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="HpRLxUEGRg" role="3EZMnx">
        <property role="3F0ifm" value="*" />
      </node>
      <node concept="3F0ifn" id="HpRLxUEGR$" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="pkWqt" id="HpRLxUEHBO" role="pqm2j">
          <node concept="3clFbS" id="HpRLxUEHBP" role="2VODD2">
            <node concept="3clFbF" id="HpRLxUEHCj" role="3cqZAp">
              <node concept="2OqwBi" id="HpRLxUEHCl" role="3clFbG">
                <node concept="2OqwBi" id="HpRLxUEHCm" role="2Oq$k0">
                  <node concept="pncrf" id="HpRLxUEHCn" role="2Oq$k0" />
                  <node concept="3TrEf2" id="HpRLxUEHCo" role="2OqNvi">
                    <ref role="3Tt5mk" to="p6im:HpRLxUE$GX" resolve="aggregationFunction" />
                  </node>
                </node>
                <node concept="3x8VRR" id="HpRLxUEHCp" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="11L4FC" id="HpRLxUGSxy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="HpRLxUEGQY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6MkW5HYMt1e">
    <ref role="1XX52x" to="p6im:6MkW5HYMt16" resolve="JoinCondition" />
    <node concept="3EZMnI" id="6MkW5HYMt1g" role="2wV5jI">
      <node concept="3F1sOY" id="6MkW5HYMt1q" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:6MkW5HYMt19" resolve="leftColumn" />
      </node>
      <node concept="3F0ifn" id="6MkW5HYMt1w" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="6MkW5HYMt1H" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:6MkW5HYMt1b" resolve="rightColumn" />
      </node>
      <node concept="l2Vlx" id="6MkW5HYMt1j" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="32lqJACCgAJ">
    <property role="3GE5qa" value="window" />
    <ref role="1XX52x" to="p6im:32lqJACCeyF" resolve="Window" />
    <node concept="3EZMnI" id="32lqJACCgAL" role="2wV5jI">
      <node concept="3F0ifn" id="32lqJACCgAV" role="3EZMnx">
        <property role="3F0ifm" value="WINDOW" />
        <node concept="VechU" id="32lqJACCgB1" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="32lqJACCgB3" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="32lqJACCgBw" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:32lqJACCeyL" resolve="type" />
      </node>
      <node concept="3F0ifn" id="32lqJACCgBI" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="32lqJACCgC7" role="3EZMnx">
        <ref role="1NtTu8" to="p6im:32lqJACCeyN" resolve="size" />
      </node>
      <node concept="3F0ifn" id="32lqJACCgCp" role="3EZMnx">
        <property role="3F0ifm" value="seconds" />
      </node>
      <node concept="3F0ifn" id="32lqJACCgBd" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="32lqJACCgAO" role="2iSdaV" />
    </node>
  </node>
</model>

