<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="x27k" ref="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
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
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
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
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram">
      <concept id="6554619383003875357" name="de.itemis.mps.editor.diagram.structure.InlineEditorComponent" flags="ig" index="238au4" />
      <concept id="8433227566817223068" name="de.itemis.mps.editor.diagram.structure.LayeredLayoutAlgorithm" flags="ng" index="39fpm">
        <property id="7623784619795245948" name="direction" index="1NdBj4" />
      </concept>
      <concept id="6554619383001456740" name="de.itemis.mps.editor.diagram.structure.BoxEndpointTarget" flags="ng" index="23hSZX">
        <child id="6554619383001456819" name="targetId" index="23hSWE" />
      </concept>
      <concept id="1110129820007229393" name="de.itemis.mps.editor.diagram.structure.CellModel_Diagram" flags="ng" index="27vDVx">
        <property id="4706276119306323403" name="runAutoLayoutOnInit" index="1ju4zT" />
        <child id="8433227566816393050" name="layoutAlgorithm" index="35U2g" />
        <child id="5018298105379062639" name="autoLayoutOnInit" index="2Dxx3A" />
        <child id="8637411062076630380" name="connectionTypes" index="1xLlFP" />
        <child id="1981294357059564524" name="paletteSources" index="1RuSHk" />
      </concept>
      <concept id="3155126767689025629" name="de.itemis.mps.editor.diagram.structure.Content_Childs" flags="ng" index="aDKH9">
        <reference id="3155126767689025691" name="linkDeclaration" index="aDKIf" />
      </concept>
      <concept id="3462102746004176270" name="de.itemis.mps.editor.diagram.structure.DeleteHandler" flags="ig" index="2fs66k" />
      <concept id="9064581101900867235" name="de.itemis.mps.editor.diagram.structure.IEdgeEditor" flags="ngI" index="ljJFv">
        <child id="5725606875425248008" name="delete" index="1ide8m" />
        <child id="2044706694575458564" name="labelCell" index="3kqczz" />
        <child id="6358960566596428706" name="curved" index="3Czvdj" />
        <child id="8587703283523592228" name="endpointFrom" index="1PN8q7" />
        <child id="8587703283523592242" name="endpointTo" index="1PN8qh" />
      </concept>
      <concept id="5383048119156619323" name="de.itemis.mps.editor.diagram.structure.IDiagramElementsProvider" flags="ngI" index="HB_m5">
        <child id="3155126767688717334" name="contentList" index="aCds2" />
      </concept>
      <concept id="6237710625713195816" name="de.itemis.mps.editor.diagram.structure.CellModel_DiagramNode" flags="ng" index="2ZK4vF">
        <child id="5725606875425244480" name="deleteHandler" index="1idfhu" />
        <child id="1315262826372527521" name="editor" index="1ytjkN" />
      </concept>
      <concept id="6237710625713831199" name="de.itemis.mps.editor.diagram.structure.CellModel_DiagramConnector" flags="ng" index="2ZMJ7s" />
      <concept id="4277219764978107440" name="de.itemis.mps.editor.diagram.structure.SNodeConncetionType_toNode" flags="ng" index="3m_Ry6" />
      <concept id="4277219764978107398" name="de.itemis.mps.editor.diagram.structure.SNodeConncetionType_fromNode" flags="ng" index="3m_RyK" />
      <concept id="4277219764977337773" name="de.itemis.mps.editor.diagram.structure.SNodeConnectionType_Create" flags="ig" index="3mAF$r" />
      <concept id="4277219764977337122" name="de.itemis.mps.editor.diagram.structure.SNodeConnectionType" flags="ng" index="3mAFYk">
        <property id="4277219764978104391" name="label" index="3m_KjL" />
        <reference id="4277219764978094454" name="toConcept" index="3m_MR0" />
        <reference id="4277219764978086724" name="fromConcept" index="3m_WZM" />
        <child id="4277219764978094783" name="create" index="3m_MS9" />
      </concept>
      <concept id="8587703283519920118" name="de.itemis.mps.editor.diagram.structure.ThisNodeExpression" flags="ng" index="1Pxb5l" />
      <concept id="8587703283523590697" name="de.itemis.mps.editor.diagram.structure.ConnectionEndpoint" flags="ng" index="1PNbMa">
        <child id="9064581101900868073" name="target" index="ljJml" />
      </concept>
      <concept id="1981294357059563448" name="de.itemis.mps.editor.diagram.structure.ChildRolePaletteSource" flags="ng" index="1RuTs0">
        <reference id="1981294357059564497" name="linkDeclaration" index="1RuSHD" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1146253292180" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Simple" flags="nn" index="3y1jeu">
        <child id="1146253292181" name="value" index="3y1jev" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="3m_VcJMWBmW">
    <property role="3GE5qa" value="actor" />
    <ref role="1XX52x" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
    <node concept="3EZMnI" id="3m_VcJMYehl" role="2wV5jI">
      <node concept="l2Vlx" id="3m_VcJMYehm" role="2iSdaV" />
      <node concept="3F0ifn" id="3m_VcJMZPcU" role="3EZMnx">
        <property role="3F0ifm" value="create_actor" />
        <node concept="VechU" id="14g3IsRbcJi" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMZPdg" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F0A7n" id="3m_VcJMYeh_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="5VO4ZzQfhIK" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="1iCGBv" id="5Q93FfG7jbW" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:4uIaRgr9$HK" resolve="behavior" />
        <node concept="1sVBvm" id="5Q93FfG7jbY" role="1sWHZn">
          <node concept="3F0A7n" id="5Q93FfG7jcg" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4be3MWTKrBr" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="4be3MWTKrC0" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:4uIaRgr9$HJ" resolve="fetchPolicy" />
      </node>
      <node concept="3F0ifn" id="3m_VcJMZPf2" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F0ifn" id="4uIaRgr9$I1" role="3EZMnx">
        <property role="3F0ifm" value=";" />
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
        <node concept="VechU" id="40skb7A76vj" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
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
        <ref role="1NtTu8" to="o1mc:Buyr4_DLlL" resolve="payload" />
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
        <property role="3F0ifm" value=");" />
        <node concept="pVoyu" id="25QEYlOL_YR" role="3F10Kt">
          <property role="VOm3f" value="true" />
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
        <property role="3F0ifm" value=");" />
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
      <node concept="3F0ifn" id="7lfjb8Ufkq8" role="3EZMnx">
        <node concept="pVoyu" id="7lfjb8Ufks9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="7lfjb8Ufkse" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXapwTE" role="3EZMnx">
        <property role="3F0ifm" value="Custom Events:" />
        <node concept="pVoyu" id="1XiwwXapwTH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapwTI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXapwTJ" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXapwTL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapwTM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="1XiwwXapwTO" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1XiwwXap298" resolve="customEvents" />
        <node concept="l2Vlx" id="1XiwwXapwTQ" role="2czzBx" />
        <node concept="pVoyu" id="1XiwwXapwTV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapwTW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="1XiwwXaTC3k" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXapwTT" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXapwTX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapwTY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7lfjb8Uc8Pc" role="3EZMnx">
        <property role="3F0ifm" value="Types:" />
        <node concept="lj46D" id="7lfjb8Uc8QX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7lfjb8Ufksb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7lfjb8Uc8Wp" role="3EZMnx">
        <node concept="pVoyu" id="7lfjb8Uc8Yd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="7lfjb8Uc8Yf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7lfjb8Uc91Z" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:7lfjb8Uc8Lz" resolve="types" />
        <node concept="l2Vlx" id="7lfjb8Uc921" role="2czzBx" />
        <node concept="pVoyu" id="7lfjb8Uc93S" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="7lfjb8Uc93U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="7lfjb8UivTc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="2U7BfXzcKzX" role="4_6I_">
          <node concept="3clFbS" id="2U7BfXzcKzY" role="2VODD2">
            <node concept="3clFbF" id="2U7BfXzcSbu" role="3cqZAp">
              <node concept="2ShNRf" id="2U7BfXzcSbs" role="3clFbG">
                <node concept="3zrR0B" id="2U7BfXzd7uy" role="2ShVmc">
                  <node concept="3Tqbb2" id="2U7BfXzd7u$" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7lfjb8Uc95R" role="3EZMnx">
        <node concept="pVoyu" id="7lfjb8Uc97M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="7lfjb8Uc97O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="1XiwwXapIPp" role="3EZMnx">
        <ref role="PMmxG" node="1XiwwXap_fl" resolve="HorizontalBar" />
        <node concept="pVoyu" id="1XiwwXapIPq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapIPr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="67qr5KKhP1a" role="3EZMnx">
        <node concept="lj46D" id="67qr5KKhP2U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7lfjb8Uc8QZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="67qr5KKg27d" role="3EZMnx">
        <property role="3F0ifm" value="External Functions:" />
        <node concept="lj46D" id="67qr5KKg28Y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="67qr5KKhP2W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="67qr5KKg2eg" role="3EZMnx">
        <node concept="pVoyu" id="67qr5KKg2g0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="67qr5KKg2g2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="67qr5KKg2jE" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:67qr5KKaF4Q" resolve="externalFunctions" />
        <node concept="l2Vlx" id="67qr5KKg2jG" role="2czzBx" />
        <node concept="pj6Ft" id="67qr5KKg2lv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="67qr5KKg2lx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="67qr5KKg2l$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="61_MCxeJbR5" role="4_6I_">
          <node concept="3clFbS" id="61_MCxeJbR6" role="2VODD2">
            <node concept="3clFbF" id="61_MCxeJc6i" role="3cqZAp">
              <node concept="2ShNRf" id="61_MCxeJc6g" role="3clFbG">
                <node concept="3zrR0B" id="61_MCxeJg5v" role="2ShVmc">
                  <node concept="3Tqbb2" id="61_MCxeJg5x" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="67qr5KKg2nv" role="3EZMnx">
        <node concept="lj46D" id="67qr5KKg2pn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="1XiwwXapIPs" role="3EZMnx">
        <ref role="PMmxG" node="1XiwwXap_fl" resolve="HorizontalBar" />
        <node concept="pVoyu" id="1XiwwXapIPt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapIPu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="J4FZX0nRRb" role="3EZMnx">
        <node concept="pVoyu" id="J4FZX0nRRd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="J4FZX0nRRe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="J4FZX0nRRi" role="3EZMnx">
        <property role="3F0ifm" value="Configuration:" />
        <node concept="pVoyu" id="J4FZX0nRRk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="J4FZX0nRRl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="J4FZX0nRRn" role="3EZMnx">
        <node concept="pVoyu" id="J4FZX0nRRp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="J4FZX0nRRq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="J4FZX0nRRs" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:J4FZX0nRLh" resolve="configuration" />
        <node concept="l2Vlx" id="J4FZX0nRRu" role="2czzBx" />
        <node concept="pVoyu" id="J4FZX0nRRv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="J4FZX0nRRw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="J4FZX0nRRx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="J4FZX0sgJk" role="4_6I_">
          <node concept="3clFbS" id="J4FZX0sgJl" role="2VODD2">
            <node concept="3clFbF" id="J4FZX0shlv" role="3cqZAp">
              <node concept="2ShNRf" id="J4FZX0shlt" role="3clFbG">
                <node concept="3zrR0B" id="J4FZX0s_ga" role="2ShVmc">
                  <node concept="3Tqbb2" id="J4FZX0s_gc" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="J4FZX0nRRz" role="3EZMnx">
        <node concept="lj46D" id="J4FZX0nRR_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="J4FZX0nRRB" role="3EZMnx">
        <ref role="PMmxG" node="1XiwwXap_fl" resolve="HorizontalBar" />
        <node concept="pVoyu" id="J4FZX0nRRC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="J4FZX0nRRD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="67qr5KKg2ri" role="3EZMnx">
        <node concept="pVoyu" id="67qr5KKg2tc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="67qr5KKg2te" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3m_VcJMWBtx" role="3EZMnx">
        <property role="3F0ifm" value="Behaviors:" />
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
      <node concept="3F2HdR" id="6eYilKne1mS" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5Q93FfFZEV2" resolve="behaviors" />
        <node concept="l2Vlx" id="6eYilKne1mU" role="2czzBx" />
        <node concept="pj6Ft" id="6eYilKne1oA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="6eYilKne1oC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="6eYilKne1oF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="61_MCxeXoft" role="4_6I_">
          <node concept="3clFbS" id="61_MCxeXofu" role="2VODD2">
            <node concept="3clFbF" id="61_MCxeXoBr" role="3cqZAp">
              <node concept="2ShNRf" id="61_MCxeXoBp" role="3clFbG">
                <node concept="3zrR0B" id="61_MCxeXpfO" role="2ShVmc">
                  <node concept="3Tqbb2" id="61_MCxeXpfQ" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXapIPA" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXapIPC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapIPE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="1XiwwXapIPv" role="3EZMnx">
        <ref role="PMmxG" node="1XiwwXap_fl" resolve="HorizontalBar" />
        <node concept="pVoyu" id="1XiwwXapIPw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapIPx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Q93FfFZMxf" role="3EZMnx">
        <node concept="pVoyu" id="5Q93FfFZMxT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5Q93FfFZMxV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Q93FfFZMzn" role="3EZMnx">
        <property role="3F0ifm" value="Actors:" />
        <node concept="pVoyu" id="5Q93FfFZM$4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5Q93FfFZM$6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Q93FfFZM_C" role="3EZMnx">
        <node concept="pVoyu" id="5Q93FfFZMAo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5Q93FfFZMAq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5Q93FfFZMC2" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3m_VcJMWzdR" resolve="actorCreation" />
        <node concept="l2Vlx" id="5Q93FfFZMC4" role="2czzBx" />
        <node concept="pVoyu" id="5Q93FfFZMCR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5Q93FfFZMCT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="5Q93FfFZMCW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="61_MCxeYFja" role="4_6I_">
          <node concept="3clFbS" id="61_MCxeYFjb" role="2VODD2">
            <node concept="3clFbF" id="61_MCxeYFAL" role="3cqZAp">
              <node concept="2ShNRf" id="61_MCxeYFAJ" role="3clFbG">
                <node concept="3zrR0B" id="61_MCxeYHeM" role="2ShVmc">
                  <node concept="3Tqbb2" id="61_MCxeYHeO" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2oGQ1bfTGOh" role="3EZMnx">
        <node concept="lj46D" id="2oGQ1bfTGP9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="1XiwwXapIPG" role="3EZMnx">
        <ref role="PMmxG" node="1XiwwXap_fl" resolve="HorizontalBar" />
        <node concept="pVoyu" id="1XiwwXapIPH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXapIPI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="67qr5KKaF_X" role="3EZMnx">
        <node concept="pVoyu" id="67qr5KKaFBF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="67qr5KKaFBH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2oGQ1bfTGV2" role="3EZMnx">
        <property role="3F0ifm" value="Topology:" />
        <node concept="pVoyu" id="2oGQ1bfTGW2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2oGQ1bfTGW4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2oGQ1bfTGX9" role="3EZMnx">
        <node concept="pVoyu" id="2oGQ1bfTGYc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2oGQ1bfTGYe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2oGQ1bfTH0s" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:2oGQ1bfTGMt" resolve="topology" />
        <node concept="pVoyu" id="2oGQ1bfTH1y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2oGQ1bfTH1$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2oGQ1bfTH2J" role="3EZMnx">
        <node concept="pVoyu" id="2oGQ1bfTH3S" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2oGQ1bfTH3U" role="3F10Kt">
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
        <node concept="VechU" id="40skb7A76vc" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
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
      <node concept="3F0ifn" id="1enjyq1qCfX" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="1enjyq1qCgy" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:25QEYlOdAqb" resolve="receiver" />
        <node concept="1sVBvm" id="1enjyq1qCg$" role="1sWHZn">
          <node concept="3F0A7n" id="1enjyq1qCgS" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
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
        <node concept="11LMrY" id="3QReeeiVOID" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3QReeeiUw8j" role="3EZMnx">
        <property role="3F0ifm" value=";" />
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
        <node concept="VechU" id="40skb7A76JJ" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
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
      <node concept="1iCGBv" id="5YFcNFooM8r" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5YFcNFooLR8" resolve="type" />
        <node concept="1sVBvm" id="5YFcNFooM8t" role="1sWHZn">
          <node concept="3F0A7n" id="5YFcNFooM8Q" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7lfjb8U8swZ" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F2HdR" id="3QReeeiRi6c" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3QReeeiRi5S" resolve="strings" />
        <node concept="l2Vlx" id="3QReeeiRi6e" role="2czzBx" />
        <node concept="2o9xnK" id="3QReeeiRi6p" role="2gpyvW">
          <node concept="3clFbS" id="3QReeeiRi6q" role="2VODD2">
            <node concept="3clFbF" id="3QReeeiRpIP" role="3cqZAp">
              <node concept="Xl_RD" id="3QReeeiRpIO" role="3clFbG">
                <property role="Xl_RC" value=", " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="25QEYlOdAzd" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11LMrY" id="3QReeeiVOZ0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3QReeeiUw7N" role="3EZMnx">
        <property role="3F0ifm" value=";" />
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
      <node concept="3F0ifn" id="5VO4ZzPTuwc" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="5VO4ZzPVOy6" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5VO4ZzPVO6h" resolve="receivedMessageName" />
      </node>
      <node concept="3F0ifn" id="25QEYlOfjsh" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="1XiwwXabEKh" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F0ifn" id="1XiwwXa6adh" role="3EZMnx">
        <property role="3F0ifm" value="HANDLER" />
        <node concept="pVoyu" id="1XiwwXa6adj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="4uIaRgpGL4Q" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3m_VcJMYehj" resolve="function" />
        <node concept="1sVBvm" id="4uIaRgpGL4S" role="1sWHZn">
          <node concept="3F1sOY" id="4uIaRgpGL4W" role="2wV5jI">
            <ref role="1NtTu8" to="x27k:3CmSUB7Fp_k" resolve="body" />
          </node>
        </node>
        <node concept="lj46D" id="1XiwwXafSR8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXa6acv" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXa6acz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXa6acB" role="3EZMnx">
        <property role="3F0ifm" value="INIT" />
        <node concept="pVoyu" id="1XiwwXa6acM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="1XiwwXa6acE" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1XiwwXa6acs" resolve="initHandler" />
        <node concept="1sVBvm" id="1XiwwXa6acG" role="1sWHZn">
          <node concept="3F1sOY" id="1XiwwXa6acK" role="2wV5jI">
            <ref role="1NtTu8" to="x27k:3CmSUB7Fp_k" resolve="body" />
          </node>
        </node>
        <node concept="lj46D" id="1XiwwXafSR9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXa6acP" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXa6acR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXa6acV" role="3EZMnx">
        <property role="3F0ifm" value="CLEANUP" />
        <node concept="pVoyu" id="1XiwwXa6ad8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="1XiwwXa6acY" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1XiwwXa6act" resolve="cleanupHandler" />
        <node concept="1sVBvm" id="1XiwwXa6ad0" role="1sWHZn">
          <node concept="3F1sOY" id="1XiwwXa6ad6" role="2wV5jI">
            <ref role="1NtTu8" to="x27k:3CmSUB7Fp_k" resolve="body" />
          </node>
        </node>
        <node concept="lj46D" id="1XiwwXafSRa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXa6adb" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXa6add" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="1XiwwXapcEm" role="3EZMnx">
        <node concept="VPM3Z" id="1XiwwXapcEo" role="3F10Kt" />
        <node concept="3F2HdR" id="1XiwwXap2b7" role="3EZMnx">
          <ref role="1NtTu8" to="o1mc:1XiwwXap29b" resolve="customEventsHandlers" />
          <node concept="l2Vlx" id="1XiwwXap2bb" role="2czzBx" />
          <node concept="pVoyu" id="1XiwwXap2bc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1XiwwXap2bd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="1XiwwXaYJf9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1XiwwXap2bh" role="3EZMnx">
          <node concept="pVoyu" id="1XiwwXap2bj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1XiwwXap2bk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="1XiwwXapcEr" role="2iSdaV" />
        <node concept="pVoyu" id="1XiwwXaped5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="1XiwwXapeIG" role="pqm2j">
          <node concept="3clFbS" id="1XiwwXapeIH" role="2VODD2">
            <node concept="3clFbF" id="1XiwwXapeIJ" role="3cqZAp">
              <node concept="2OqwBi" id="1XiwwXap7tt" role="3clFbG">
                <node concept="2OqwBi" id="1XiwwXap3bl" role="2Oq$k0">
                  <node concept="pncrf" id="1XiwwXap2ID" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1XiwwXap3Oi" role="2OqNvi">
                    <ref role="3TtcxE" to="o1mc:1XiwwXap29b" resolve="customEventsHandlers" />
                  </node>
                </node>
                <node concept="3GX2aA" id="1XiwwXapc8L" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5dAUsbpt5Q9" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <property role="1$x2rV" value="No Become Statement" />
        <ref role="1NtTu8" to="o1mc:5dAUsbpt5Px" resolve="become" />
        <node concept="pVoyu" id="5dAUsbpuCW2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="1XiwwXabEKt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXabEKk" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="1XiwwXabEKm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="25QEYlOfjrB" role="2iSdaV" />
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
  <node concept="24kQdi" id="5Q93FfFZEVb">
    <property role="3GE5qa" value="receptionist" />
    <ref role="1XX52x" to="o1mc:5Q93FfFZEV5" resolve="Receptionist" />
    <node concept="3EZMnI" id="5Q93FfFZEVg" role="2wV5jI">
      <node concept="3F0ifn" id="5Q93FfFZEVi" role="3EZMnx">
        <property role="3F0ifm" value="create_receptionist" />
        <node concept="VechU" id="5Q93FfFZMfG" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Q93FfFZMgw" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F2HdR" id="5Q93FfFZMgO" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5Q93FfFZEV6" resolve="behavior" />
        <node concept="l2Vlx" id="5Q93FfFZMgQ" role="2czzBx" />
        <node concept="pj6Ft" id="5Q93FfFZMh1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="5Q93FfFZMh3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5Q93FfFZMh6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Q93FfFZEVy" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="5Q93FfFZEVj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5Q93FfG0DgB">
    <property role="3GE5qa" value="actor" />
    <ref role="1XX52x" to="o1mc:5Q93FfG0Dg$" resolve="CreateActors" />
    <node concept="3EZMnI" id="5Q93FfG0DgD" role="2wV5jI">
      <node concept="l2Vlx" id="5Q93FfG0DgE" role="2iSdaV" />
      <node concept="3F0ifn" id="5Q93FfG0DgF" role="3EZMnx">
        <property role="3F0ifm" value="create_actors" />
        <node concept="VechU" id="5Q93FfG0DgG" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="5Q93FfG0DgH" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="5Q93FfG0DhM" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5Q93FfG0Dh3" resolve="number" />
      </node>
      <node concept="3F0ifn" id="5Q93FfG0Dia" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="5Q93FfG0DgI" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5Q93FfG0Dh5" resolve="baseName" />
      </node>
      <node concept="3F0ifn" id="5VO4ZzQfhKi" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="1iCGBv" id="5Q93FfG7jbh" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3hefzVo8WA8" resolve="behavior" />
        <node concept="1sVBvm" id="5Q93FfG7jbj" role="1sWHZn">
          <node concept="3F0A7n" id="5Q93FfG7jbB" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4be3MWTKrCM" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="4be3MWTKrDy" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:4uIaRgr9$HJ" resolve="fetchPolicy" />
      </node>
      <node concept="3F0ifn" id="5Q93FfG0DgN" role="3EZMnx">
        <property role="3F0ifm" value=");" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1enjyq1qgdv">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="o1mc:1enjyq1qgdi" resolve="GetNeighborsFromReceptionist" />
    <node concept="3EZMnI" id="1enjyq1qgdx" role="2wV5jI">
      <node concept="3F1sOY" id="I$NcBvGpY" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:I$NcBk5Q7" resolve="actorReferences" />
      </node>
      <node concept="3F0ifn" id="I$NcBj68E" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="1enjyq1qgdF" role="3EZMnx">
        <property role="3F0ifm" value="GetNeighbors" />
        <node concept="VechU" id="1enjyq1qnyM" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="1enjyq1qgdL" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F1sOY" id="1enjyq1w6A5" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1enjyq1vbnu" resolve="policy" />
      </node>
      <node concept="3F0ifn" id="I$NcBj68Q" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F0ifn" id="7uEn6txiTcm" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="7uEn6txiTco" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1enjyq1qgd$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1enjyq1vbnp">
    <property role="3GE5qa" value="receptionist.receptionistPolicy" />
    <ref role="1XX52x" to="o1mc:1enjyq1vbnm" resolve="ReceptionistPolicy" />
    <node concept="3EZMnI" id="1enjyq1x0Zj" role="2wV5jI">
      <node concept="3F0ifn" id="1enjyq1IND7" role="3EZMnx">
        <property role="3F0ifm" value="Policy." />
        <node concept="11LMrY" id="1enjyq1INDc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1enjyq1HQgJ" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1enjyq1vbnn" resolve="policy" />
      </node>
      <node concept="l2Vlx" id="1enjyq1x0Zm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1enjyq1DTQE">
    <property role="3GE5qa" value="receptionist" />
    <ref role="1XX52x" to="o1mc:1enjyq1DTn_" resolve="SwitchPolicy" />
    <node concept="3EZMnI" id="gVKbLUG" role="2wV5jI">
      <ref role="1ERwB7" to="tpen:1CJSrHA7vHo" resolve="BigStatement_comment_action" />
      <node concept="3EZMnI" id="huRUsKU" role="3EZMnx">
        <node concept="pkWqt" id="huRUsKX" role="pqm2j">
          <node concept="3clFbS" id="huRUsKY" role="2VODD2">
            <node concept="3clFbF" id="huRUsKZ" role="3cqZAp">
              <node concept="3fqX7Q" id="huRUsL0" role="3clFbG">
                <node concept="2OqwBi" id="hxiFtgF" role="3fr31v">
                  <node concept="2OqwBi" id="hxiFqIc" role="2Oq$k0">
                    <node concept="pncrf" id="huRUsL3" role="2Oq$k0" />
                    <node concept="3TrcHB" id="huRUGe_" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:huRUkIr" resolve="label" />
                    </node>
                  </node>
                  <node concept="3y1jeu" id="huRUsL5" role="2OqNvi">
                    <node concept="10Nm6u" id="huRUsL6" role="3y1jev" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pxr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="huRUsKV" role="3EZMnx">
          <ref role="1ERwB7" to="tpen:ht5InvJ" resolve="AbstractLoopStatement_Label_Actions" />
          <ref role="1NtTu8" to="tpee:huRUkIr" resolve="label" />
          <ref role="1k5W1q" to="tpen:6aaE4aM9P_2" resolve="Label" />
        </node>
        <node concept="3F0ifn" id="huRUsKW" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$PXw" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPxyj" id="hEZKQ_y" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="l2Vlx" id="i0HV2II" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="42hlkH_mHwn" role="3EZMnx">
        <node concept="VPM3Z" id="42hlkH_mHwo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="42hlkH_mHwr" role="3EZMnx">
          <ref role="1NtTu8" to="tpee:42hlkH_myce" resolve="switchLabel" />
        </node>
        <node concept="3F0ifn" id="42hlkH_mHwt" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="l2Vlx" id="42hlkH_mHwq" role="2iSdaV" />
        <node concept="pkWqt" id="42hlkH_mHwu" role="pqm2j">
          <node concept="3clFbS" id="42hlkH_mHwv" role="2VODD2">
            <node concept="3clFbF" id="42hlkH_mHOo" role="3cqZAp">
              <node concept="2OqwBi" id="2_1mL0eog45" role="3clFbG">
                <node concept="2OqwBi" id="42hlkH_mHOq" role="2Oq$k0">
                  <node concept="pncrf" id="42hlkH_mHOp" role="2Oq$k0" />
                  <node concept="Bykcj" id="2_1mL0eog42" role="2OqNvi">
                    <node concept="1aIX9F" id="2_1mL0eog43" role="1xVPHs">
                      <node concept="26LbJo" id="2_1mL0eog44" role="1aIX9E">
                        <ref role="26LbJp" to="tpee:42hlkH_myce" resolve="switchLabel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2_1mL0eog46" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1enjyq1ET$$" role="3EZMnx">
        <property role="3F0ifm" value="switch policy" />
      </node>
      <node concept="3F0ifn" id="gVKbQvB" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="i0HV2Jo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="gVKcjQ4" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:gVKbHMJ" resolve="case" />
        <node concept="lj46D" id="i0HV2Jr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="i0NJYBq" role="2czzBx" />
        <node concept="3F0ifn" id="1GVsEVxVrfz" role="2czzBI">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="1GVsEVxVrg0" role="3F10Kt" />
          <node concept="11LMrY" id="1GVsEVxVrgV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="19qsfQAy5vN" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="19qsfQAy5Jw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="19qsfQA$W5m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="19qsfQAyfJG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="1wEcoXjJMGw" role="3vIgyS">
          <ref role="A1WHt" to="tpen:1wEcoXjJMGk" resolve="SwitchStatement_ApplySideTransforms" />
        </node>
        <node concept="pkWqt" id="1GVsEVylVOJ" role="pqm2j">
          <node concept="3clFbS" id="1GVsEVylVOK" role="2VODD2">
            <node concept="3clFbF" id="1GVsEVylVPA" role="3cqZAp">
              <node concept="22lmx$" id="1GVsEVymhn6" role="3clFbG">
                <node concept="22lmx$" id="1GVsEVymeuu" role="3uHU7B">
                  <node concept="2OqwBi" id="1GVsEVymgan" role="3uHU7B">
                    <node concept="2OqwBi" id="1GVsEVymeP7" role="2Oq$k0">
                      <node concept="pncrf" id="1GVsEVymezl" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1GVsEVymfFu" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gVKb1HI" resolve="defaultBlock" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="1GVsEVymgXc" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="1GVsEVylY4f" role="3uHU7w">
                    <node concept="2OqwBi" id="1GVsEVylW6e" role="2Oq$k0">
                      <node concept="pncrf" id="1GVsEVylVP_" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1GVsEVylWpN" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:gVKbHMJ" resolve="case" />
                      </node>
                    </node>
                    <node concept="1v1jN8" id="1GVsEVymjPJ" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1GVsEVymaTC" role="3uHU7w">
                  <node concept="2OqwBi" id="1GVsEVym7Fc" role="2Oq$k0">
                    <node concept="2OqwBi" id="1GVsEVym6V4" role="2Oq$k0">
                      <node concept="2OqwBi" id="1GVsEVym49r" role="2Oq$k0">
                        <node concept="2OqwBi" id="1GVsEVym1Hv" role="2Oq$k0">
                          <node concept="pncrf" id="1GVsEVym1sm" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="1GVsEVym2d3" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:gVKbHMJ" resolve="case" />
                          </node>
                        </node>
                        <node concept="1yVyf7" id="1GVsEVym6jf" role="2OqNvi" />
                      </node>
                      <node concept="3TrEf2" id="1GVsEVym7lm" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gVKbo18" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="1GVsEVym8hN" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="1GVsEVymdU$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="gVKcBgm" role="3EZMnx">
        <node concept="2SqB2G" id="4ZFm$8TqhlH" role="2SqHTX">
          <property role="TrG5h" value="defaultCollection" />
        </node>
        <node concept="VPM3Z" id="hEU$Pf5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="i0HV2Ju" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="gVKcEhZ" role="3EZMnx">
          <property role="3F0ifm" value="default" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <ref role="1ERwB7" to="tpen:5gDVLxsDFcD" resolve="SwitchDefault" />
        </node>
        <node concept="3F0ifn" id="gVKcEL2" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <ref role="1ERwB7" to="tpen:5gDVLxsDFcD" resolve="SwitchDefault" />
          <node concept="ljvvj" id="i0HV2Jv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11L4FC" id="1GVsEVxRfdS" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="gVKcJF6" role="3EZMnx">
          <ref role="1NtTu8" to="tpee:gVKb1HI" resolve="defaultBlock" />
          <node concept="lj46D" id="i0HV2Jw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="i0HV2Jx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="i0HV2Jz" role="2iSdaV" />
        <node concept="ljvvj" id="i0HV2J$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="5gDVLxsF$0q" role="pqm2j">
          <node concept="3clFbS" id="5gDVLxsF$0r" role="2VODD2">
            <node concept="3clFbF" id="5gDVLxsFwWF" role="3cqZAp">
              <node concept="2OqwBi" id="5gDVLxsFyMj" role="3clFbG">
                <node concept="2OqwBi" id="5gDVLxsFxay" role="2Oq$k0">
                  <node concept="pncrf" id="5gDVLxsFwWE" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5gDVLxsFy1v" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gVKb1HI" resolve="defaultBlock" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5gDVLxsFzyg" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="gVKbWb9" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="ljvvj" id="i0HV2JA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="1wEcoXjJMGQ" role="3vIgyS">
          <ref role="A1WHt" to="tpen:1wEcoXjJMGk" resolve="SwitchStatement_ApplySideTransforms" />
        </node>
        <node concept="pVoyu" id="1GVsEVxMOqM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0HV2JD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I$NcBgXXn">
    <property role="3GE5qa" value="receptionist" />
    <ref role="1XX52x" to="o1mc:I$NcBfmhW" resolve="ReturnActorReference" />
    <node concept="3EZMnI" id="I$NcBgXXp" role="2wV5jI">
      <node concept="3F0ifn" id="I$NcBgXXz" role="3EZMnx">
        <property role="3F0ifm" value="return" />
      </node>
      <node concept="1iCGBv" id="I$NcBgYhh" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:I$NcBgYhf" resolve="actorReference" />
        <node concept="1sVBvm" id="I$NcBgYhj" role="1sWHZn">
          <node concept="3F0A7n" id="I$NcBgYhu" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="11LMrY" id="I$NcBi6jH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="I$NcBgYhB" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="I$NcBgXXs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I$NcBonc5">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="o1mc:I$NcBonc3" resolve="CreateActorReference" />
    <node concept="3EZMnI" id="I$NcBoncc" role="2wV5jI">
      <node concept="3F1sOY" id="I$NcByL8A" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:I$NcBvGpk" resolve="actorReference" />
      </node>
      <node concept="3F0ifn" id="I$NcBonec" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="I$NcBoncm" role="3EZMnx">
        <property role="3F0ifm" value="create_actor_reference" />
        <node concept="VechU" id="I$NcBoncD" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="I$NcBoncs" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="I$NcB$Kng" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:I$NcB$KmZ" resolve="actor" />
        <node concept="1sVBvm" id="I$NcB$Kni" role="1sWHZn">
          <node concept="3F0A7n" id="I$NcB$Kny" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="I$NcBonc$" role="3EZMnx">
        <property role="3F0ifm" value=");" />
      </node>
      <node concept="l2Vlx" id="I$NcBoncf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I$NcBvGpo">
    <property role="3GE5qa" value="actor.actorReference" />
    <ref role="1XX52x" to="o1mc:I$NcBvGnh" resolve="ActorReference" />
    <node concept="3EZMnI" id="I$NcBvGpv" role="2wV5jI">
      <node concept="3F0ifn" id="I$NcBvGpA" role="3EZMnx">
        <property role="3F0ifm" value="ActorReference" />
        <node concept="VechU" id="I$NcBvGpO" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0A7n" id="I$NcBvGpK" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="I$NcBvGpy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2oGQ1bfTn$V">
    <property role="3GE5qa" value="topology" />
    <ref role="1XX52x" to="o1mc:2oGQ1bfTn$R" resolve="ActorBox" />
    <node concept="2ZK4vF" id="2oGQ1bfTn_5" role="2wV5jI">
      <node concept="3EZMnI" id="2oGQ1bfTn_h" role="1ytjkN">
        <node concept="1iCGBv" id="2oGQ1bfTn_$" role="3EZMnx">
          <ref role="1NtTu8" to="o1mc:2oGQ1bfTn$T" resolve="actor" />
          <node concept="1sVBvm" id="2oGQ1bfTn_A" role="1sWHZn">
            <node concept="3F0A7n" id="2oGQ1bfTn_K" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="2oGQ1bfTn_k" role="2iSdaV" />
      </node>
      <node concept="2fs66k" id="2oGQ1bg0ns1" role="1idfhu">
        <node concept="3clFbS" id="2oGQ1bg0ns2" role="2VODD2">
          <node concept="3cpWs6" id="2oGQ1bg0nQp" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="2oGQ1bfVsS2" role="CpUAK">
      <ref role="2$4xQ3" node="2oGQ1bfVsRT" resolve="graph" />
    </node>
  </node>
  <node concept="24kQdi" id="2oGQ1bfTnA0">
    <property role="3GE5qa" value="topology" />
    <ref role="1XX52x" to="o1mc:2oGQ1bfTn$S" resolve="ActorLink" />
    <node concept="2ZMJ7s" id="2oGQ1bfTnA5" role="2wV5jI">
      <node concept="1PNbMa" id="2oGQ1bfTnA7" role="1PN8q7">
        <node concept="23hSZX" id="2oGQ1bfTnAp" role="ljJml">
          <node concept="2OqwBi" id="2oGQ1bfTv3a" role="23hSWE">
            <node concept="1Pxb5l" id="2oGQ1bfTuUw" role="2Oq$k0" />
            <node concept="3TrEf2" id="2oGQ1bfTvez" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn_O" resolve="actorFrom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1PNbMa" id="2oGQ1bfTnAa" role="1PN8qh">
        <node concept="23hSZX" id="2oGQ1bfTvhf" role="ljJml">
          <node concept="2OqwBi" id="2oGQ1bfTvhQ" role="23hSWE">
            <node concept="1Pxb5l" id="2oGQ1bfTvhs" role="2Oq$k0" />
            <node concept="3TrEf2" id="2oGQ1bfTvvf" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn_Q" resolve="actorTo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2fs66k" id="2oGQ1bg1_Be" role="1ide8m">
        <node concept="3clFbS" id="2oGQ1bg1_Bf" role="2VODD2">
          <node concept="3cpWs6" id="2oGQ1bg1A1y" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbT" id="6g_QwonFyPQ" role="3Czvdj">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="238au4" id="7uuypCHR3gs" role="3kqczz">
        <node concept="3F1sOY" id="7uuypCHURO3" role="2wV5jI">
          <ref role="1NtTu8" to="o1mc:7uuypCHURKp" resolve="data" />
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="2oGQ1bfVtr0" role="CpUAK">
      <ref role="2$4xQ3" node="2oGQ1bfVsRT" resolve="graph" />
    </node>
  </node>
  <node concept="24kQdi" id="2oGQ1bfTvvF">
    <property role="3GE5qa" value="topology" />
    <ref role="1XX52x" to="o1mc:2oGQ1bfTn$Q" resolve="ActorsGraph" />
    <node concept="27vDVx" id="2oGQ1bfTvvH" role="2wV5jI">
      <property role="1ju4zT" value="true" />
      <node concept="aDKH9" id="2oGQ1bfTvvL" role="aCds2">
        <ref role="aDKIf" to="o1mc:6GNNap0lEGQ" resolve="actors" />
      </node>
      <node concept="aDKH9" id="2oGQ1bfTvvQ" role="aCds2">
        <ref role="aDKIf" to="o1mc:2oGQ1bfTn_W" resolve="links" />
      </node>
      <node concept="3mAFYk" id="2oGQ1bfTvvV" role="1xLlFP">
        <property role="3m_KjL" value="Create Link" />
        <ref role="3m_WZM" to="o1mc:2oGQ1bfTn$R" resolve="ActorBox" />
        <ref role="3m_MR0" to="o1mc:2oGQ1bfTn$R" resolve="ActorBox" />
        <node concept="3mAF$r" id="2oGQ1bfTvvW" role="3m_MS9">
          <node concept="3clFbS" id="2oGQ1bfTvvX" role="2VODD2">
            <node concept="3cpWs8" id="6GNNap1bS5$" role="3cqZAp">
              <node concept="3cpWsn" id="6GNNap1bS5B" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3Tqbb2" id="6GNNap1bS5y" role="1tU5fm">
                  <ref role="ehGHo" to="o1mc:2oGQ1bfTn$S" resolve="ActorLink" />
                </node>
                <node concept="2OqwBi" id="4MKvPwHQY2N" role="33vP2m">
                  <node concept="2OqwBi" id="6GNNap1bSlh" role="2Oq$k0">
                    <node concept="1Pxb5l" id="6GNNap1bSaT" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6GNNap1bSIw" role="2OqNvi">
                      <ref role="3TtcxE" to="o1mc:2oGQ1bfTn_W" resolve="links" />
                    </node>
                  </node>
                  <node concept="WFELt" id="4MKvPwHR350" role="2OqNvi">
                    <ref role="1A0vxQ" to="o1mc:2oGQ1bfTn$S" resolve="ActorLink" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2oGQ1bfTE_D" role="3cqZAp">
              <node concept="37vLTI" id="2oGQ1bfTFs3" role="3clFbG">
                <node concept="3m_RyK" id="2oGQ1bfTFwN" role="37vLTx" />
                <node concept="2OqwBi" id="2oGQ1bfTEJG" role="37vLTJ">
                  <node concept="37vLTw" id="2oGQ1bfTE_B" role="2Oq$k0">
                    <ref role="3cqZAo" node="6GNNap1bS5B" resolve="link" />
                  </node>
                  <node concept="3TrEf2" id="2oGQ1bfTEVx" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn_O" resolve="actorFrom" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2oGQ1bfTFRK" role="3cqZAp">
              <node concept="37vLTI" id="2oGQ1bfTGJ3" role="3clFbG">
                <node concept="3m_Ry6" id="2oGQ1bfTGJZ" role="37vLTx" />
                <node concept="2OqwBi" id="2oGQ1bfTG21" role="37vLTJ">
                  <node concept="37vLTw" id="2oGQ1bfTFRI" role="2Oq$k0">
                    <ref role="3cqZAo" node="6GNNap1bS5B" resolve="link" />
                  </node>
                  <node concept="3TrEf2" id="2oGQ1bfTGqh" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:2oGQ1bfTn_Q" resolve="actorTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1RuTs0" id="2oGQ1bfTGMq" role="1RuSHk">
        <ref role="1RuSHD" to="o1mc:6GNNap0lEGQ" resolve="actors" />
      </node>
      <node concept="pkWqt" id="6g_QwonHshj" role="2Dxx3A">
        <node concept="3clFbS" id="6g_QwonHshk" role="2VODD2">
          <node concept="3clFbF" id="6g_QwonHsKb" role="3cqZAp">
            <node concept="3clFbT" id="6g_QwonHsKa" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="39fpm" id="1OdtLo3nul4" role="35U2g">
        <property role="1NdBj4" value="6Bd7VwqYQBY/DOWN" />
      </node>
    </node>
    <node concept="2aJ2om" id="2oGQ1bfVtml" role="CpUAK">
      <ref role="2$4xQ3" node="2oGQ1bfVsRT" resolve="graph" />
    </node>
  </node>
  <node concept="2ABfQD" id="2oGQ1bfVsRS">
    <property role="3GE5qa" value="topology" />
    <property role="TrG5h" value="topology" />
    <node concept="2BsEeg" id="2oGQ1bfVsRT" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="graph" />
    </node>
  </node>
  <node concept="24kQdi" id="3QReeeiTd9D">
    <property role="3GE5qa" value="payload" />
    <ref role="1XX52x" to="o1mc:3QReeeiTcTh" resolve="StringBody" />
    <node concept="3EZMnI" id="3QReeeiTd9F" role="2wV5jI">
      <node concept="3F0A7n" id="3QReeeiTd9P" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3QReeeiTcTi" resolve="body" />
      </node>
      <node concept="l2Vlx" id="3QReeeiTd9I" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="40skb7_IBMT">
    <property role="3GE5qa" value="actor.actorReference" />
    <ref role="1XX52x" to="o1mc:40skb7_IBMN" resolve="ActorReferenceList" />
    <node concept="3EZMnI" id="40skb7_IBMV" role="2wV5jI">
      <node concept="3F0ifn" id="40skb7_IBN2" role="3EZMnx">
        <property role="3F0ifm" value="List" />
        <node concept="11LMrY" id="40skb7A8wyc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7uEn6txqVFU" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F0ifn" id="40skb7A8wxW" role="3EZMnx">
        <property role="3F0ifm" value="ActorReference" />
        <node concept="VechU" id="40skb7A8wyg" role="3F10Kt">
          <property role="Vb096" value="g1_qVrt/darkMagenta" />
        </node>
      </node>
      <node concept="3F0ifn" id="40skb7A8wy6" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="7uEn6tx$gM2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="40skb7_IBNe" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="40skb7_IBMY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="40skb7_QZlE">
    <property role="3GE5qa" value="statement" />
    <ref role="1XX52x" to="o1mc:40skb7_QZlB" resolve="ForEachActorReferenceStatement" />
    <node concept="3EZMnI" id="40skb7_QZlG" role="2wV5jI">
      <node concept="3F0ifn" id="40skb7_QZmA" role="3EZMnx">
        <property role="3F0ifm" value="foreach" />
      </node>
      <node concept="3F0ifn" id="40skb7_QZlW" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="40skb7A1lEP" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:40skb7_VFOl" resolve="actorReference" />
      </node>
      <node concept="3F0ifn" id="40skb7_VFPu" role="3EZMnx">
        <property role="3F0ifm" value="in" />
      </node>
      <node concept="1iCGBv" id="40skb7_QZmk" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:40skb7_QZlC" resolve="actorReferenceList" />
        <node concept="1sVBvm" id="40skb7_QZmm" role="1sWHZn">
          <node concept="3F0A7n" id="40skb7_QZmz" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="40skb7_QZm4" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F1sOY" id="61_MCxfgFyz" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:61_MCxfgEF8" resolve="body" />
      </node>
      <node concept="l2Vlx" id="40skb7_QZlJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5dAUsbpsYvE">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="o1mc:5dAUsbpsTbf" resolve="Become" />
    <node concept="3EZMnI" id="5dAUsbpsYvG" role="2wV5jI">
      <node concept="3F0ifn" id="5dAUsbpsYvQ" role="3EZMnx">
        <property role="3F0ifm" value="become" />
        <node concept="VechU" id="5dAUsbpt5P0" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="5dAUsbpsYvW" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="5dAUsbpt5P9" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5dAUsbpsYvC" resolve="newBehavior" />
        <node concept="1sVBvm" id="5dAUsbpt5Pb" role="1sWHZn">
          <node concept="3F0A7n" id="5dAUsbpt5Pp" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5dAUsbpsYw4" role="3EZMnx">
        <property role="3F0ifm" value=");" />
      </node>
      <node concept="l2Vlx" id="5dAUsbpsYvJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3y5SEGa8EA">
    <property role="3GE5qa" value="initializer" />
    <ref role="1XX52x" to="o1mc:3y5SEGa3lZ" resolve="Initializer" />
    <node concept="3EZMnI" id="3y5SEGa8EC" role="2wV5jI">
      <node concept="3F0ifn" id="3y5SEGa8EM" role="3EZMnx">
        <property role="3F0ifm" value="initializer" />
      </node>
      <node concept="3F0A7n" id="5VO4ZzQfgRk" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3y5SEGa8EW" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F2HdR" id="3y5SEGa8Fo" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3y5SEGa8E$" resolve="actions" />
        <node concept="l2Vlx" id="3y5SEGa8Fq" role="2czzBx" />
        <node concept="pVoyu" id="3y5SEGa8Fx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="3y5SEGa8Fz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="3y5SEGa8FA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3y5SEGa8F4" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="3y5SEGa8F9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3y5SEGa8EF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5VO4ZzQ7TK7">
    <property role="3GE5qa" value="fetch" />
    <ref role="1XX52x" to="o1mc:5VO4ZzQ7TK4" resolve="ChangeFetchPolicy" />
    <node concept="3EZMnI" id="5VO4ZzQ7TK9" role="2wV5jI">
      <node concept="3F0ifn" id="5VO4ZzQ7TKj" role="3EZMnx">
        <property role="3F0ifm" value="change_fetch_policy" />
        <node concept="VechU" id="5VO4ZzQ815D" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="5VO4ZzQ7TKp" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="5VO4ZzQ7TKL" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:5VO4ZzQ7TK5" resolve="newPolicy" />
      </node>
      <node concept="3F0ifn" id="5VO4ZzQ7TKx" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="5VO4ZzQ7TKc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6GNNap0lEGa">
    <property role="3GE5qa" value="topology" />
    <ref role="1XX52x" to="o1mc:6GNNap0lEG7" resolve="ActorBoxesList" />
    <node concept="3EZMnI" id="6GNNap0lEGc" role="2wV5jI">
      <node concept="3F2HdR" id="6GNNap0lEGm" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:6GNNap0lEG8" resolve="actorBoxes" />
        <node concept="l2Vlx" id="6GNNap0lEGo" role="2czzBx" />
        <node concept="pj6Ft" id="6GNNap0lEGr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6GNNap0lEGf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6GNNap1by2E">
    <property role="3GE5qa" value="topology" />
    <ref role="1XX52x" to="o1mc:6GNNap1by2_" resolve="ActorLinksList" />
    <node concept="3EZMnI" id="6GNNap1by2G" role="2wV5jI">
      <node concept="3F2HdR" id="6GNNap1by2Q" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:6GNNap1by2C" resolve="links" />
        <node concept="l2Vlx" id="6GNNap1by2S" role="2czzBx" />
        <node concept="pj6Ft" id="6GNNap1by2V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6GNNap1by2J" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3eevqy$DSMN">
    <property role="3GE5qa" value="message" />
    <ref role="1XX52x" to="o1mc:3eevqy$DSMD" resolve="SendMessageToNeighbors" />
    <node concept="3EZMnI" id="3eevqy$DSMS" role="2wV5jI">
      <node concept="3F0ifn" id="3eevqy$DSN3" role="3EZMnx">
        <property role="3F0ifm" value="SendMessageToNeighbors" />
        <node concept="VechU" id="3eevqy$DTwK" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="3eevqy$DSN9" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="1iCGBv" id="3eevqy$DSNx" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3eevqy$DSMG" resolve="referenceList" />
        <node concept="1sVBvm" id="3eevqy$DSNz" role="1sWHZn">
          <node concept="3F0A7n" id="3eevqy$DSNK" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3eevqy$DSNV" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="3eevqy$NIbh" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3eevqy$NH7s" resolve="payload" />
      </node>
      <node concept="3F0ifn" id="3eevqy$Hw16" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="3eevqy$Hw1L" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3eevqy$Hv0Q" resolve="priority" />
      </node>
      <node concept="3F0ifn" id="3eevqy$DSNh" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F0ifn" id="7uEn6txMkkN" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="7uEn6txMkkP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3eevqy$DSMV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="74ISy0fn_Kt">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="o1mc:74ISy0fnwrW" resolve="Window" />
    <node concept="3EZMnI" id="74ISy0fn_Ky" role="2wV5jI">
      <node concept="3F0ifn" id="74ISy0fn_K$" role="3EZMnx">
        <property role="3F0ifm" value="window" />
        <node concept="VechU" id="74ISy0fn_LI" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="74ISy0fn_KG" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="74ISy0fn_L4" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:74ISy0fn_Ko" resolve="type" />
      </node>
      <node concept="3F0ifn" id="74ISy0fn_Lg" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="74ISy0fn_LA" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:74ISy0fn_Kq" resolve="size" />
      </node>
      <node concept="3F0ifn" id="74ISy0fn_KO" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="74ISy0fn_K_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="61_MCxeu_ZK">
    <property role="3GE5qa" value="externalFunction" />
    <ref role="1XX52x" to="o1mc:61_MCxeu_ZD" resolve="ExternalFunctionPrototype" />
    <node concept="3EZMnI" id="61_MCxeu_ZM" role="2wV5jI">
      <node concept="3F1sOY" id="61_MCxeu_ZU" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:61_MCxeu_ZF" resolve="prototype" />
      </node>
      <node concept="3F0ifn" id="61_MCxeu_ZZ" role="3EZMnx">
        <property role="3F0ifm" value="defined by" />
      </node>
      <node concept="3F0A7n" id="61_MCxeuA03" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:61_MCxeuA02" resolve="header" />
      </node>
      <node concept="3F0ifn" id="61_MCxeuA06" role="3EZMnx">
        <property role="3F0ifm" value=".h" />
        <node concept="11L4FC" id="61_MCxeuHk2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="61_MCxeu_ZP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="61_MCxeJ8VE">
    <ref role="1XX52x" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
    <node concept="3F0ifn" id="61_MCxeJ8VG" role="2wV5jI">
      <node concept="VPxyj" id="61_MCxeJ8VI" role="3F10Kt" />
      <node concept="VPM3Z" id="61_MCxeJ8VK" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="61_MCxeNxwv">
    <ref role="aqKnT" to="o1mc:61_MCxeJ5WB" resolve="EmptyLine" />
    <node concept="22hDWj" id="61_MCxeNxww" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="2U7BfXzhzCm">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="o1mc:2U7BfXzcKw6" resolve="ExternalType" />
    <node concept="3EZMnI" id="2U7BfXzhzCr" role="2wV5jI">
      <node concept="3F0ifn" id="2U7BfXzhzCv" role="3EZMnx">
        <property role="3F0ifm" value="external type" />
      </node>
      <node concept="3F0A7n" id="2U7BfXzls68" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2U7BfXzhzCJ" role="3EZMnx">
        <property role="3F0ifm" value="defined in" />
      </node>
      <node concept="3F0A7n" id="J4FZX2TAsu" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:J4FZX2TAsr" resolve="header" />
      </node>
      <node concept="3F0ifn" id="2U7BfXzhzCP" role="3EZMnx">
        <property role="3F0ifm" value=".h" />
        <node concept="11L4FC" id="2U7BfXzhzCR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2U7BfXzhzCu" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="7uEn6txeTQ1">
    <property role="TrG5h" value="ALStyle" />
    <node concept="14StLt" id="7uEn6txeTQ2" role="V601i">
      <property role="TrG5h" value="Brace" />
      <node concept="11L4FC" id="7uEn6txeTRb" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11LMrY" id="7uEn6txeTRd" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1XiwwXap29k">
    <property role="3GE5qa" value="customEvents" />
    <ref role="1XX52x" to="o1mc:1XiwwXap29i" resolve="CustomEventHandler" />
    <node concept="3EZMnI" id="1XiwwXap29o" role="2wV5jI">
      <node concept="1iCGBv" id="1XiwwXap29s" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1XiwwXap29j" resolve="event" />
        <node concept="1sVBvm" id="1XiwwXap29u" role="1sWHZn">
          <node concept="3F0A7n" id="1XiwwXap29$" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXap29D" role="3EZMnx">
        <property role="3F0ifm" value="HANDLER" />
      </node>
      <node concept="1iCGBv" id="1XiwwXap29H" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:1XiwwXap29F" resolve="function" />
        <node concept="1sVBvm" id="1XiwwXap29J" role="1sWHZn">
          <node concept="3F1sOY" id="1XiwwXap29P" role="2wV5jI">
            <ref role="1NtTu8" to="x27k:3CmSUB7Fp_k" resolve="body" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1XiwwXaYJfb" role="3EZMnx">
        <node concept="pVoyu" id="1XiwwXaYJfd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1XiwwXap29r" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="1XiwwXap_fl">
    <property role="TrG5h" value="HorizontalBar" />
    <ref role="1XX52x" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
    <node concept="3gTLQM" id="1XiwwXap_jB" role="2wV5jI">
      <node concept="3Fmcul" id="1XiwwXap_jD" role="3FoqZy">
        <node concept="3clFbS" id="1XiwwXap_jF" role="2VODD2">
          <node concept="3cpWs8" id="1XiwwXap_zI" role="3cqZAp">
            <node concept="3cpWsn" id="7DTG8shokH2" role="3cpWs9">
              <property role="TrG5h" value="fontSize" />
              <property role="3TUv4t" value="true" />
              <node concept="10Oyi0" id="7DTG8shokH3" role="1tU5fm" />
              <node concept="2OqwBi" id="7DTG8shokH4" role="33vP2m">
                <node concept="2YIFZM" id="7DTG8shokH5" role="2Oq$k0">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                </node>
                <node concept="liA8E" id="7DTG8shokH6" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize()" resolve="getFontSize" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1XiwwXapA3O" role="3cqZAp">
            <node concept="3cpWsn" id="7DTG8shokH8" role="3cpWs9">
              <property role="TrG5h" value="desiredWidth" />
              <property role="3TUv4t" value="true" />
              <node concept="10Oyi0" id="7DTG8shokH9" role="1tU5fm" />
              <node concept="17qRlL" id="7DTG8shokHa" role="33vP2m">
                <node concept="3cmrfG" id="7DTG8shokHb" role="3uHU7w">
                  <property role="3cmrfH" value="80" />
                </node>
                <node concept="37vLTw" id="7DTG8shokHc" role="3uHU7B">
                  <ref role="3cqZAo" node="7DTG8shokH2" resolve="fontSize" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1XiwwXap_Ob" role="3cqZAp" />
          <node concept="3cpWs8" id="1XiwwXapAdZ" role="3cqZAp">
            <node concept="3cpWsn" id="7DTG8shokHk" role="3cpWs9">
              <property role="TrG5h" value="panel" />
              <node concept="3uibUv" id="7DTG8shokHl" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="2ShNRf" id="7DTG8shokHm" role="33vP2m">
                <node concept="YeOm9" id="7DTG8shokHn" role="2ShVmc">
                  <node concept="1Y3b0j" id="7DTG8shokHo" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                    <ref role="1Y3XeK" to="dxuu:~JPanel" resolve="JPanel" />
                    <node concept="2tJIrI" id="7DTG8shokHp" role="jymVt" />
                    <node concept="3Tm1VV" id="7DTG8shokHq" role="1B3o_S" />
                    <node concept="3clFb_" id="7DTG8shokHr" role="jymVt">
                      <property role="TrG5h" value="getPreferredSize" />
                      <node concept="3Tm1VV" id="7DTG8shokHs" role="1B3o_S" />
                      <node concept="3uibUv" id="7DTG8shokHt" role="3clF45">
                        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                      </node>
                      <node concept="3clFbS" id="7DTG8shokHu" role="3clF47">
                        <node concept="3cpWs6" id="7DTG8shokHv" role="3cqZAp">
                          <node concept="2ShNRf" id="7DTG8shokHw" role="3cqZAk">
                            <node concept="1pGfFk" id="7DTG8shokHx" role="2ShVmc">
                              <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                              <node concept="37vLTw" id="7DTG8shokHy" role="37wK5m">
                                <ref role="3cqZAo" node="7DTG8shokH8" resolve="desiredWidth" />
                              </node>
                              <node concept="37vLTw" id="7DTG8shokHz" role="37wK5m">
                                <ref role="3cqZAo" node="7DTG8shokH2" resolve="fontSize" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7DTG8shokH$" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="7DTG8shokH_" role="jymVt">
                      <property role="TrG5h" value="paintComponent" />
                      <node concept="3Tmbuc" id="7DTG8shokHA" role="1B3o_S" />
                      <node concept="3cqZAl" id="7DTG8shokHB" role="3clF45" />
                      <node concept="37vLTG" id="7DTG8shokHC" role="3clF46">
                        <property role="TrG5h" value="g" />
                        <node concept="3uibUv" id="7DTG8shokHD" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7DTG8shokHE" role="3clF47">
                        <node concept="3clFbF" id="7DTG8shokHF" role="3cqZAp">
                          <node concept="3nyPlj" id="7DTG8shokHG" role="3clFbG">
                            <ref role="37wK5l" to="dxuu:~JComponent.paintComponent(java.awt.Graphics)" resolve="paintComponent" />
                            <node concept="37vLTw" id="7DTG8shokHH" role="37wK5m">
                              <ref role="3cqZAo" node="7DTG8shokHC" resolve="g" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="7DTG8shokHI" role="3cqZAp">
                          <node concept="3cpWsn" id="7DTG8shokHJ" role="3cpWs9">
                            <property role="TrG5h" value="height" />
                            <node concept="10Oyi0" id="7DTG8shokHK" role="1tU5fm" />
                            <node concept="1rXfSq" id="7DTG8shokHL" role="33vP2m">
                              <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7DTG8shokHU" role="3cqZAp">
                          <node concept="2OqwBi" id="7DTG8shokHV" role="3clFbG">
                            <node concept="37vLTw" id="7DTG8shokHW" role="2Oq$k0">
                              <ref role="3cqZAo" node="7DTG8shokHC" resolve="g" />
                            </node>
                            <node concept="liA8E" id="7DTG8shokHX" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                              <node concept="10M0yZ" id="7DTG8shokHY" role="37wK5m">
                                <ref role="3cqZAo" to="z60i:~Color.black" resolve="black" />
                                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7DTG8shokHZ" role="3cqZAp">
                          <node concept="2OqwBi" id="7DTG8shokI0" role="3clFbG">
                            <node concept="liA8E" id="7DTG8shokI1" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
                              <node concept="2ShNRf" id="7DTG8shokI2" role="37wK5m">
                                <node concept="1pGfFk" id="7DTG8shokI3" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                                  <node concept="3cmrfG" id="7DTG8shokI4" role="37wK5m">
                                    <property role="3cmrfH" value="3" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1eOMI4" id="7DTG8shokI5" role="2Oq$k0">
                              <node concept="10QFUN" id="7DTG8shokI6" role="1eOMHV">
                                <node concept="3uibUv" id="7DTG8shokI7" role="10QFUM">
                                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                                </node>
                                <node concept="37vLTw" id="7DTG8shokI8" role="10QFUP">
                                  <ref role="3cqZAo" node="7DTG8shokHC" resolve="g" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7DTG8shokIj" role="3cqZAp">
                          <node concept="2OqwBi" id="7DTG8shokIk" role="3clFbG">
                            <node concept="liA8E" id="7DTG8shokIl" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
                              <node concept="10M0yZ" id="7DTG8shokIm" role="37wK5m">
                                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                              </node>
                              <node concept="10M0yZ" id="7DTG8shokIn" role="37wK5m">
                                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
                              </node>
                            </node>
                            <node concept="1eOMI4" id="7DTG8shokIo" role="2Oq$k0">
                              <node concept="10QFUN" id="7DTG8shokIp" role="1eOMHV">
                                <node concept="3uibUv" id="7DTG8shokIq" role="10QFUM">
                                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                                </node>
                                <node concept="37vLTw" id="7DTG8shokIr" role="10QFUP">
                                  <ref role="3cqZAo" node="7DTG8shokHC" resolve="g" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7DTG8shokIs" role="3cqZAp">
                          <node concept="2OqwBi" id="7DTG8shokIt" role="3clFbG">
                            <node concept="37vLTw" id="7DTG8shokIu" role="2Oq$k0">
                              <ref role="3cqZAo" node="7DTG8shokHC" resolve="g" />
                            </node>
                            <node concept="liA8E" id="7DTG8shokIv" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                              <node concept="3cmrfG" id="7DTG8shokIw" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="FJ1c_" id="7DTG8shokIx" role="37wK5m">
                                <node concept="3cmrfG" id="7DTG8shokIy" role="3uHU7w">
                                  <property role="3cmrfH" value="2" />
                                </node>
                                <node concept="37vLTw" id="7DTG8shokIz" role="3uHU7B">
                                  <ref role="3cqZAo" node="7DTG8shokHJ" resolve="height" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7DTG8shokI$" role="37wK5m">
                                <ref role="3cqZAo" node="7DTG8shokH8" resolve="desiredWidth" />
                              </node>
                              <node concept="FJ1c_" id="7DTG8shokI_" role="37wK5m">
                                <node concept="3cmrfG" id="7DTG8shokIA" role="3uHU7w">
                                  <property role="3cmrfH" value="2" />
                                </node>
                                <node concept="37vLTw" id="7DTG8shokIB" role="3uHU7B">
                                  <ref role="3cqZAo" node="7DTG8shokHJ" resolve="height" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7DTG8shokJ4" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1XiwwXapAdX" role="3cqZAp" />
          <node concept="3clFbF" id="7DTG8shokJ5" role="3cqZAp">
            <node concept="2OqwBi" id="7DTG8shokJ6" role="3clFbG">
              <node concept="37vLTw" id="7DTG8shokJ7" role="2Oq$k0">
                <ref role="3cqZAo" node="7DTG8shokHk" resolve="panel" />
              </node>
              <node concept="liA8E" id="7DTG8shokJ8" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
                <node concept="2ShNRf" id="7DTG8shokJ9" role="37wK5m">
                  <node concept="1pGfFk" id="7DTG8shokJa" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                    <node concept="3cmrfG" id="7DTG8shokJb" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="7DTG8shokJc" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7DTG8shokJd" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7DTG8shokJe" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1XiwwXapF0E" role="3cqZAp">
            <node concept="37vLTw" id="1XiwwXapFKu" role="3cqZAk">
              <ref role="3cqZAo" node="7DTG8shokHk" resolve="panel" />
            </node>
          </node>
          <node concept="3clFbH" id="1XiwwXapC8k" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="J4FZX0g81F">
    <property role="3GE5qa" value="actions" />
    <ref role="1XX52x" to="o1mc:J4FZX0g81D" resolve="GetSourceActor" />
    <node concept="3EZMnI" id="J4FZX1NQ5K" role="2wV5jI">
      <node concept="3F0ifn" id="J4FZX1NQ5O" role="3EZMnx">
        <property role="3F0ifm" value="GetSourceActor" />
      </node>
      <node concept="3F0ifn" id="J4FZX1NQ5R" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="3F0A7n" id="J4FZX1NQ60" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:J4FZX1NQ5J" resolve="policy" />
      </node>
      <node concept="3F0ifn" id="J4FZX1NQ5U" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="7uEn6txeTQ2" resolve="Brace" />
      </node>
      <node concept="l2Vlx" id="J4FZX1NQ5N" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="J4FZX2wITB">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="o1mc:J4FZX1oWBz" resolve="ExternalTypeDefinition" />
    <node concept="3EZMnI" id="J4FZX2wITD" role="2wV5jI">
      <node concept="3F1sOY" id="J4FZX2wITH" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:J4FZX1oWRc" resolve="structDeclaration" />
      </node>
      <node concept="3F0ifn" id="J4FZX2wITM" role="3EZMnx">
        <property role="3F0ifm" value="defined by" />
        <node concept="pVoyu" id="J4FZX2wITW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="J4FZX2wITP" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:J4FZX1oWB_" resolve="header" />
      </node>
      <node concept="3F0ifn" id="J4FZX2wITT" role="3EZMnx">
        <property role="3F0ifm" value=".h" />
        <node concept="11L4FC" id="J4FZX2wITV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="J4FZX2wITG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3hefzVnYPH2">
    <property role="3GE5qa" value="actor" />
    <ref role="1XX52x" to="o1mc:3hefzVnYPGZ" resolve="ListCreateActor" />
    <node concept="3EZMnI" id="3hefzVnYPH7" role="2wV5jI">
      <node concept="3F2HdR" id="3hefzVnYPHb" role="3EZMnx">
        <ref role="1NtTu8" to="o1mc:3hefzVnYPH1" resolve="actors" />
        <node concept="l2Vlx" id="3hefzVnYPHd" role="2czzBx" />
        <node concept="pj6Ft" id="3hefzVnYPHe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3hefzVnYPHa" role="2iSdaV" />
    </node>
  </node>
</model>

