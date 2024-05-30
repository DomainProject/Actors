<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f7b35bb(checkpoints/ActorLanguage.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="uqek" ref="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="ze1j" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1732176556423009631" name="jetbrains.mps.baseLanguage.structure.MultiLineComment" flags="ng" index="2lOVwT">
        <child id="1732176556423038857" name="lines" index="2lOMFJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
      </concept>
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
      </concept>
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
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="3133179214568824809" name="jetbrains.mps.lang.text.structure.NodeWrapperElement" flags="nn" index="tu5oc">
        <child id="3133179214568824810" name="node" index="tu5of" />
      </concept>
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="AbstractActor_Constraints" />
    <uo k="s:originTrace" v="n:3204091364824116595" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364824116595" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3204091364824116595" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:3204091364824116595" />
      <node concept="3cqZAl" id="6" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364824116595" />
      </node>
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364824116595" />
        <node concept="XkiVB" id="9" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3204091364824116595" />
          <node concept="1BaE9c" id="a" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AbstractActor$R3" />
            <uo k="s:originTrace" v="n:3204091364824116595" />
            <node concept="2YIFZM" id="b" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3204091364824116595" />
              <node concept="1adDum" id="c" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
              </node>
              <node concept="1adDum" id="d" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
              </node>
              <node concept="1adDum" id="e" role="37wK5m">
                <property role="1adDun" value="0x35a5eccbf2f23308L" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
              </node>
              <node concept="Xl_RD" id="f" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.AbstractActor" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364824116595" />
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:3204091364824116595" />
    </node>
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:3204091364824116595" />
      <node concept="3Tmbuc" id="g" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364824116595" />
      </node>
      <node concept="3uibUv" id="h" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:3204091364824116595" />
        <node concept="3uibUv" id="k" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:3204091364824116595" />
        </node>
        <node concept="3uibUv" id="l" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3204091364824116595" />
        </node>
      </node>
      <node concept="3clFbS" id="i" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364824116595" />
        <node concept="3cpWs8" id="m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824116595" />
          <node concept="3cpWsn" id="o" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:3204091364824116595" />
            <node concept="3uibUv" id="p" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:3204091364824116595" />
              <node concept="3uibUv" id="r" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
              </node>
              <node concept="3uibUv" id="s" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
              </node>
            </node>
            <node concept="2ShNRf" id="q" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364824116595" />
              <node concept="1pGfFk" id="t" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:3204091364824116595" />
                <node concept="3uibUv" id="u" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:3204091364824116595" />
                </node>
                <node concept="3uibUv" id="v" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:3204091364824116595" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824116595" />
          <node concept="37vLTw" id="w" role="3clFbG">
            <ref role="3cqZAo" node="o" resolve="properties" />
            <uo k="s:originTrace" v="n:3204091364824116595" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364824116595" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="x">
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="ActorReference_Constraints" />
    <uo k="s:originTrace" v="n:6739934483261025264" />
    <node concept="3Tm1VV" id="y" role="1B3o_S">
      <uo k="s:originTrace" v="n:6739934483261025264" />
    </node>
    <node concept="3uibUv" id="z" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6739934483261025264" />
    </node>
    <node concept="3clFbW" id="$" role="jymVt">
      <uo k="s:originTrace" v="n:6739934483261025264" />
      <node concept="3cqZAl" id="A" role="3clF45">
        <uo k="s:originTrace" v="n:6739934483261025264" />
      </node>
      <node concept="3clFbS" id="B" role="3clF47">
        <uo k="s:originTrace" v="n:6739934483261025264" />
        <node concept="XkiVB" id="D" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6739934483261025264" />
          <node concept="1BaE9c" id="E" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ActorReference$fP" />
            <uo k="s:originTrace" v="n:6739934483261025264" />
            <node concept="2YIFZM" id="F" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6739934483261025264" />
              <node concept="1adDum" id="G" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:6739934483261025264" />
              </node>
              <node concept="1adDum" id="H" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:6739934483261025264" />
              </node>
              <node concept="1adDum" id="I" role="37wK5m">
                <property role="1adDun" value="0x5d890eb3ec2debc1L" />
                <uo k="s:originTrace" v="n:6739934483261025264" />
              </node>
              <node concept="Xl_RD" id="J" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.ActorReference" />
                <uo k="s:originTrace" v="n:6739934483261025264" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="C" role="1B3o_S">
        <uo k="s:originTrace" v="n:6739934483261025264" />
      </node>
    </node>
    <node concept="2tJIrI" id="_" role="jymVt">
      <uo k="s:originTrace" v="n:6739934483261025264" />
    </node>
  </node>
  <node concept="312cEu" id="K">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="L" role="1zkMxy">
      <ref role="3uigEE" to="ze1j:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="M" role="1B3o_S" />
    <node concept="3clFbW" id="N" role="jymVt">
      <node concept="3cqZAl" id="Q" role="3clF45" />
      <node concept="3Tm1VV" id="R" role="1B3o_S" />
      <node concept="3clFbS" id="S" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="O" role="jymVt" />
    <node concept="3clFb_" id="P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="U" role="1B3o_S" />
      <node concept="3uibUv" id="V" role="3clF45">
        <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="W" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="Y" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="X" role="3clF47">
        <node concept="1_3QMa" id="Z" role="3cqZAp">
          <node concept="37vLTw" id="11" role="1_3QMn">
            <ref role="3cqZAo" node="W" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="12" role="1_3QMm">
            <node concept="3clFbS" id="1g" role="1pnPq1">
              <node concept="3cpWs6" id="1i" role="3cqZAp">
                <node concept="1nCR9W" id="1j" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.AbstractActor_Constraints" />
                  <node concept="3uibUv" id="1k" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1h" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
            </node>
          </node>
          <node concept="1pnPoh" id="13" role="1_3QMm">
            <node concept="3clFbS" id="1l" role="1pnPq1">
              <node concept="3cpWs6" id="1n" role="3cqZAp">
                <node concept="1nCR9W" id="1o" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.SendMessage_Constraints" />
                  <node concept="3uibUv" id="1p" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1m" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:3m_VcJMWARM" resolve="SendMessage" />
            </node>
          </node>
          <node concept="1pnPoh" id="14" role="1_3QMm">
            <node concept="3clFbS" id="1q" role="1pnPq1">
              <node concept="3cpWs6" id="1s" role="3cqZAp">
                <node concept="1nCR9W" id="1t" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.CreateActor_Constraints" />
                  <node concept="3uibUv" id="1u" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1r" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
            </node>
          </node>
          <node concept="1pnPoh" id="15" role="1_3QMm">
            <node concept="3clFbS" id="1v" role="1pnPq1">
              <node concept="3cpWs6" id="1x" role="3cqZAp">
                <node concept="1nCR9W" id="1y" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.CreateEnvelope_Constraints" />
                  <node concept="3uibUv" id="1z" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1w" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
            </node>
          </node>
          <node concept="1pnPoh" id="16" role="1_3QMm">
            <node concept="3clFbS" id="1$" role="1pnPq1">
              <node concept="3cpWs6" id="1A" role="3cqZAp">
                <node concept="1nCR9W" id="1B" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.SelectPayload_Constraints" />
                  <node concept="3uibUv" id="1C" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1_" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:4posSimMjE2" resolve="SelectPayload" />
            </node>
          </node>
          <node concept="1pnPoh" id="17" role="1_3QMm">
            <node concept="3clFbS" id="1D" role="1pnPq1">
              <node concept="3cpWs6" id="1F" role="3cqZAp">
                <node concept="1nCR9W" id="1G" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.SelectEnvelope_Constraints" />
                  <node concept="3uibUv" id="1H" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1E" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:Buyr4_JQa3" resolve="SelectEnvelope" />
            </node>
          </node>
          <node concept="1pnPoh" id="18" role="1_3QMm">
            <node concept="3clFbS" id="1I" role="1pnPq1">
              <node concept="3cpWs6" id="1K" role="3cqZAp">
                <node concept="1nCR9W" id="1L" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.CreateMessage_Constraints" />
                  <node concept="3uibUv" id="1M" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1J" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
            </node>
          </node>
          <node concept="1pnPoh" id="19" role="1_3QMm">
            <node concept="3clFbS" id="1N" role="1pnPq1">
              <node concept="3cpWs6" id="1P" role="3cqZAp">
                <node concept="1nCR9W" id="1Q" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.CreateBehavior_Constraints" />
                  <node concept="3uibUv" id="1R" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1O" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
            </node>
          </node>
          <node concept="1pnPoh" id="1a" role="1_3QMm">
            <node concept="3clFbS" id="1S" role="1pnPq1">
              <node concept="3cpWs6" id="1U" role="3cqZAp">
                <node concept="1nCR9W" id="1V" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.CreatePayload_Constraints" />
                  <node concept="3uibUv" id="1W" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1T" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
            </node>
          </node>
          <node concept="1pnPoh" id="1b" role="1_3QMm">
            <node concept="3clFbS" id="1X" role="1pnPq1">
              <node concept="3cpWs6" id="1Z" role="3cqZAp">
                <node concept="1nCR9W" id="20" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.Fetch_Constraints" />
                  <node concept="3uibUv" id="21" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="1Y" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:66sUT0$7o_P" resolve="Fetch" />
            </node>
          </node>
          <node concept="1pnPoh" id="1c" role="1_3QMm">
            <node concept="3clFbS" id="22" role="1pnPq1">
              <node concept="3cpWs6" id="24" role="3cqZAp">
                <node concept="1nCR9W" id="25" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.Envelope_Constraints" />
                  <node concept="3uibUv" id="26" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="23" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:Buyr4_LN85" resolve="Envelope" />
            </node>
          </node>
          <node concept="1pnPoh" id="1d" role="1_3QMm">
            <node concept="3clFbS" id="27" role="1pnPq1">
              <node concept="3cpWs6" id="29" role="3cqZAp">
                <node concept="1nCR9W" id="2a" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.ReplyToMessage_Constraints" />
                  <node concept="3uibUv" id="2b" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="28" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:2sIU3umt2_W" resolve="ReplyToMessage" />
            </node>
          </node>
          <node concept="1pnPoh" id="1e" role="1_3QMm">
            <node concept="3clFbS" id="2c" role="1pnPq1">
              <node concept="3cpWs6" id="2e" role="3cqZAp">
                <node concept="1nCR9W" id="2f" role="3cqZAk">
                  <property role="1nD$Q0" value="ActorLanguage.constraints.ActorReference_Constraints" />
                  <node concept="3uibUv" id="2g" role="2lIhxL">
                    <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="2d" role="1pnPq6">
              <ref role="3gnhBz" to="o1mc:5Q93FfGbuJ1" resolve="ActorReference" />
            </node>
          </node>
          <node concept="3clFbS" id="1f" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="10" role="3cqZAp">
          <node concept="2ShNRf" id="2h" role="3cqZAk">
            <node concept="1pGfFk" id="2i" role="2ShVmc">
              <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
              <node concept="37vLTw" id="2j" role="37wK5m">
                <ref role="3cqZAo" node="W" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2k">
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="CreateActor_Constraints" />
    <uo k="s:originTrace" v="n:5358399129734674219" />
    <node concept="3Tm1VV" id="2l" role="1B3o_S">
      <uo k="s:originTrace" v="n:5358399129734674219" />
    </node>
    <node concept="3uibUv" id="2m" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5358399129734674219" />
    </node>
    <node concept="3clFbW" id="2n" role="jymVt">
      <uo k="s:originTrace" v="n:5358399129734674219" />
      <node concept="3cqZAl" id="2s" role="3clF45">
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
      <node concept="3clFbS" id="2t" role="3clF47">
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="XkiVB" id="2v" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="1BaE9c" id="2w" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CreateActor$Uv" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="2YIFZM" id="2x" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="1adDum" id="2y" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
              <node concept="1adDum" id="2z" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
              <node concept="1adDum" id="2$" role="37wK5m">
                <property role="1adDun" value="0x35a5eccbf2f23364L" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
              <node concept="Xl_RD" id="2_" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.CreateActor" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2u" role="1B3o_S">
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
    </node>
    <node concept="2tJIrI" id="2o" role="jymVt">
      <uo k="s:originTrace" v="n:5358399129734674219" />
    </node>
    <node concept="312cEu" id="2p" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:5358399129734674219" />
      <node concept="3clFbW" id="2A" role="jymVt">
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="3cqZAl" id="2F" role="3clF45">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3Tm1VV" id="2G" role="1B3o_S">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3clFbS" id="2H" role="3clF47">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="XkiVB" id="2J" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="1BaE9c" id="2K" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="2YIFZM" id="2P" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="1adDum" id="2Q" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="1adDum" id="2R" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="1adDum" id="2S" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="1adDum" id="2T" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="Xl_RD" id="2U" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2L" role="37wK5m">
              <ref role="3cqZAo" node="2I" resolve="container" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="3clFbT" id="2M" role="37wK5m">
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="3clFbT" id="2N" role="37wK5m">
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="3clFbT" id="2O" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2I" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="2V" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2B" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="3Tm1VV" id="2W" role="1B3o_S">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="10P_77" id="2X" role="3clF45">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="37vLTG" id="2Y" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3Tqbb2" id="33" role="1tU5fm">
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="37vLTG" id="2Z" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="34" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="37vLTG" id="30" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="35" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="3clFbS" id="31" role="3clF47">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3cpWs8" id="36" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="3cpWsn" id="39" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="10P_77" id="3a" role="1tU5fm">
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
              <node concept="1rXfSq" id="3b" role="33vP2m">
                <ref role="37wK5l" node="2C" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="37vLTw" id="3c" role="37wK5m">
                  <ref role="3cqZAo" node="2Y" resolve="node" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="2YIFZM" id="3d" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="37vLTw" id="3e" role="37wK5m">
                    <ref role="3cqZAo" node="2Z" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="37" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="3clFbS" id="3f" role="3clFbx">
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="3clFbF" id="3h" role="3cqZAp">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="2OqwBi" id="3i" role="3clFbG">
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="37vLTw" id="3j" role="2Oq$k0">
                    <ref role="3cqZAo" node="30" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="liA8E" id="3k" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                    <node concept="2ShNRf" id="3l" role="37wK5m">
                      <uo k="s:originTrace" v="n:5358399129734674219" />
                      <node concept="1pGfFk" id="3m" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:5358399129734674219" />
                        <node concept="Xl_RD" id="3n" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:5358399129734674219" />
                        </node>
                        <node concept="Xl_RD" id="3o" role="37wK5m">
                          <property role="Xl_RC" value="5358399129735929297" />
                          <uo k="s:originTrace" v="n:5358399129734674219" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3g" role="3clFbw">
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="3y3z36" id="3p" role="3uHU7w">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="10Nm6u" id="3r" role="3uHU7w">
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="37vLTw" id="3s" role="3uHU7B">
                  <ref role="3cqZAo" node="30" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
              <node concept="3fqX7Q" id="3q" role="3uHU7B">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="37vLTw" id="3t" role="3fr31v">
                  <ref role="3cqZAo" node="39" resolve="result" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="38" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="37vLTw" id="3u" role="3clFbG">
              <ref role="3cqZAo" node="39" resolve="result" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="32" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
      </node>
      <node concept="2YIFZL" id="2C" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="37vLTG" id="3v" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3Tqbb2" id="3$" role="1tU5fm">
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="37vLTG" id="3w" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="3_" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="10P_77" id="3x" role="3clF45">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3Tm6S6" id="3y" role="1B3o_S">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3clFbS" id="3z" role="3clF47">
          <uo k="s:originTrace" v="n:5358399129735929298" />
          <node concept="3clFbJ" id="3A" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129736927030" />
            <node concept="3clFbS" id="3D" role="3clFbx">
              <uo k="s:originTrace" v="n:5358399129736927032" />
              <node concept="3cpWs6" id="3F" role="3cqZAp">
                <uo k="s:originTrace" v="n:5358399129736939518" />
                <node concept="3clFbT" id="3G" role="3cqZAk">
                  <uo k="s:originTrace" v="n:5358399129736941270" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3E" role="3clFbw">
              <uo k="s:originTrace" v="n:5358399129737285322" />
              <node concept="37vLTw" id="3H" role="2Oq$k0">
                <ref role="3cqZAo" node="3w" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:5358399129736927363" />
              </node>
              <node concept="17RlXB" id="3I" role="2OqNvi">
                <uo k="s:originTrace" v="n:5358399129737292927" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="3B" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129736664227" />
            <node concept="2GrKxI" id="3J" role="2Gsz3X">
              <property role="TrG5h" value="actor" />
              <uo k="s:originTrace" v="n:5358399129736664229" />
            </node>
            <node concept="2OqwBi" id="3K" role="2GsD0m">
              <uo k="s:originTrace" v="n:5358399129736681556" />
              <node concept="2OqwBi" id="3M" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5358399129736670389" />
                <node concept="2OqwBi" id="3O" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:5358399129736668199" />
                  <node concept="37vLTw" id="3Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="3v" resolve="node" />
                    <uo k="s:originTrace" v="n:5358399129736667159" />
                  </node>
                  <node concept="1mfA1w" id="3R" role="2OqNvi">
                    <uo k="s:originTrace" v="n:5358399129736669504" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="3P" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5358399129736671894" />
                  <node concept="1xMEDy" id="3S" role="1xVPHs">
                    <uo k="s:originTrace" v="n:5358399129736671896" />
                    <node concept="chp4Y" id="3T" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                      <uo k="s:originTrace" v="n:5358399129736672339" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="3N" role="2OqNvi">
                <uo k="s:originTrace" v="n:5358399129736702436" />
                <node concept="2ShNRf" id="3U" role="576Qk">
                  <uo k="s:originTrace" v="n:5358399129736702815" />
                  <node concept="Tc6Ow" id="3V" role="2ShVmc">
                    <uo k="s:originTrace" v="n:5358399129736704225" />
                    <node concept="37vLTw" id="3W" role="HW$Y0">
                      <ref role="3cqZAo" node="3v" resolve="node" />
                      <uo k="s:originTrace" v="n:5358399129736709676" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3L" role="2LFqv$">
              <uo k="s:originTrace" v="n:5358399129736664233" />
              <node concept="3clFbJ" id="3X" role="3cqZAp">
                <uo k="s:originTrace" v="n:5358399129737156602" />
                <node concept="3clFbS" id="3Z" role="3clFbx">
                  <uo k="s:originTrace" v="n:5358399129737156604" />
                  <node concept="3N13vt" id="41" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5358399129737177634" />
                  </node>
                </node>
                <node concept="3clFbC" id="40" role="3clFbw">
                  <uo k="s:originTrace" v="n:5358399129737171908" />
                  <node concept="10Nm6u" id="42" role="3uHU7w">
                    <uo k="s:originTrace" v="n:5358399129737177297" />
                  </node>
                  <node concept="2OqwBi" id="43" role="3uHU7B">
                    <uo k="s:originTrace" v="n:5358399129737157939" />
                    <node concept="2GrUjf" id="44" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3J" resolve="actor" />
                      <uo k="s:originTrace" v="n:5358399129737156942" />
                    </node>
                    <node concept="3TrcHB" id="45" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:5358399129737162574" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3Y" role="3cqZAp">
                <uo k="s:originTrace" v="n:5358399129736711129" />
                <node concept="2OqwBi" id="46" role="3clFbw">
                  <uo k="s:originTrace" v="n:5358399129736724577" />
                  <node concept="2OqwBi" id="48" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5358399129736713367" />
                    <node concept="2GrUjf" id="4a" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3J" resolve="actor" />
                      <uo k="s:originTrace" v="n:5358399129736712501" />
                    </node>
                    <node concept="3TrcHB" id="4b" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:5358399129736718970" />
                    </node>
                  </node>
                  <node concept="liA8E" id="49" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <uo k="s:originTrace" v="n:5358399129736732233" />
                    <node concept="37vLTw" id="4c" role="37wK5m">
                      <ref role="3cqZAo" node="3w" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:5358399129736732501" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="47" role="3clFbx">
                  <uo k="s:originTrace" v="n:5358399129736711131" />
                  <node concept="3cpWs6" id="4d" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5358399129736734095" />
                    <node concept="3clFbT" id="4e" role="3cqZAk">
                      <uo k="s:originTrace" v="n:5358399129736734739" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3C" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129736735379" />
            <node concept="3clFbT" id="4f" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5358399129736735969" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2D" role="1B3o_S">
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
      <node concept="3uibUv" id="2E" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
    </node>
    <node concept="312cEu" id="2q" role="jymVt">
      <property role="TrG5h" value="Address_Property" />
      <uo k="s:originTrace" v="n:5358399129734674219" />
      <node concept="3clFbW" id="4g" role="jymVt">
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="3cqZAl" id="4l" role="3clF45">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3Tm1VV" id="4m" role="1B3o_S">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3clFbS" id="4n" role="3clF47">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="XkiVB" id="4p" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="1BaE9c" id="4q" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="address$Eakk" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="2YIFZM" id="4v" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="1adDum" id="4w" role="37wK5m">
                  <property role="1adDun" value="0x10eda99958984cdeL" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="1adDum" id="4x" role="37wK5m">
                  <property role="1adDun" value="0x9416196c5eca1268L" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="1adDum" id="4y" role="37wK5m">
                  <property role="1adDun" value="0x35a5eccbf2f23308L" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="1adDum" id="4z" role="37wK5m">
                  <property role="1adDun" value="0x35a5eccbf2f23360L" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="Xl_RD" id="4$" role="37wK5m">
                  <property role="Xl_RC" value="address" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4r" role="37wK5m">
              <ref role="3cqZAo" node="4o" resolve="container" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="3clFbT" id="4s" role="37wK5m">
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="3clFbT" id="4t" role="37wK5m">
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="3clFbT" id="4u" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4o" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="4_" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4h" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="3Tm1VV" id="4A" role="1B3o_S">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="10P_77" id="4B" role="3clF45">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="37vLTG" id="4C" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3Tqbb2" id="4H" role="1tU5fm">
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="37vLTG" id="4D" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="4I" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="37vLTG" id="4E" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3uibUv" id="4J" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="3clFbS" id="4F" role="3clF47">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3cpWs8" id="4K" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="3cpWsn" id="4N" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="10P_77" id="4O" role="1tU5fm">
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
              <node concept="1rXfSq" id="4P" role="33vP2m">
                <ref role="37wK5l" node="4i" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="37vLTw" id="4Q" role="37wK5m">
                  <ref role="3cqZAo" node="4C" resolve="node" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="2YIFZM" id="4R" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRioHy" resolve="castInteger" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="37vLTw" id="4S" role="37wK5m">
                    <ref role="3cqZAo" node="4D" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4L" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="3clFbS" id="4T" role="3clFbx">
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="3clFbF" id="4V" role="3cqZAp">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="2OqwBi" id="4W" role="3clFbG">
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="37vLTw" id="4X" role="2Oq$k0">
                    <ref role="3cqZAo" node="4E" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="liA8E" id="4Y" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                    <node concept="2ShNRf" id="4Z" role="37wK5m">
                      <uo k="s:originTrace" v="n:5358399129734674219" />
                      <node concept="1pGfFk" id="50" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:5358399129734674219" />
                        <node concept="Xl_RD" id="51" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:5358399129734674219" />
                        </node>
                        <node concept="Xl_RD" id="52" role="37wK5m">
                          <property role="Xl_RC" value="5358399129737551913" />
                          <uo k="s:originTrace" v="n:5358399129734674219" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4U" role="3clFbw">
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="3y3z36" id="53" role="3uHU7w">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="10Nm6u" id="55" role="3uHU7w">
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="37vLTw" id="56" role="3uHU7B">
                  <ref role="3cqZAo" node="4E" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
              <node concept="3fqX7Q" id="54" role="3uHU7B">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="37vLTw" id="57" role="3fr31v">
                  <ref role="3cqZAo" node="4N" resolve="result" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4M" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="37vLTw" id="58" role="3clFbG">
              <ref role="3cqZAo" node="4N" resolve="result" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4G" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
      </node>
      <node concept="2YIFZL" id="4i" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="37vLTG" id="59" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3Tqbb2" id="5e" role="1tU5fm">
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="37vLTG" id="5a" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="10Oyi0" id="5f" role="1tU5fm">
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
        <node concept="10P_77" id="5b" role="3clF45">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3Tm6S6" id="5c" role="1B3o_S">
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3clFbS" id="5d" role="3clF47">
          <uo k="s:originTrace" v="n:5358399129737551914" />
          <node concept="3clFbJ" id="5g" role="3cqZAp">
            <uo k="s:originTrace" v="n:6739934483260737436" />
            <node concept="3clFbS" id="5j" role="3clFbx">
              <uo k="s:originTrace" v="n:6739934483260737438" />
              <node concept="3cpWs6" id="5l" role="3cqZAp">
                <uo k="s:originTrace" v="n:6739934483260787801" />
                <node concept="3clFbT" id="5m" role="3cqZAk">
                  <uo k="s:originTrace" v="n:6739934483260788143" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="5k" role="3clFbw">
              <uo k="s:originTrace" v="n:6739934483260769565" />
              <node concept="2d3UOw" id="5n" role="3uHU7w">
                <uo k="s:originTrace" v="n:6739934483260785646" />
                <node concept="3cmrfG" id="5p" role="3uHU7w">
                  <property role="3cmrfH" value="100" />
                  <uo k="s:originTrace" v="n:6739934483260787420" />
                </node>
                <node concept="37vLTw" id="5q" role="3uHU7B">
                  <ref role="3cqZAo" node="5a" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:6739934483260769872" />
                </node>
              </node>
              <node concept="2dkUwp" id="5o" role="3uHU7B">
                <uo k="s:originTrace" v="n:6739934483260768532" />
                <node concept="37vLTw" id="5r" role="3uHU7B">
                  <ref role="3cqZAo" node="5a" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:6739934483260737801" />
                </node>
                <node concept="3cmrfG" id="5s" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                  <uo k="s:originTrace" v="n:6739934483260768815" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="5h" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129737551993" />
            <node concept="2GrKxI" id="5t" role="2Gsz3X">
              <property role="TrG5h" value="actor" />
              <uo k="s:originTrace" v="n:5358399129737551994" />
            </node>
            <node concept="2OqwBi" id="5u" role="2GsD0m">
              <uo k="s:originTrace" v="n:5358399129737551995" />
              <node concept="2OqwBi" id="5w" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5358399129737551996" />
                <node concept="2OqwBi" id="5y" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:5358399129737551997" />
                  <node concept="37vLTw" id="5$" role="2Oq$k0">
                    <ref role="3cqZAo" node="59" resolve="node" />
                    <uo k="s:originTrace" v="n:5358399129737551998" />
                  </node>
                  <node concept="1mfA1w" id="5_" role="2OqNvi">
                    <uo k="s:originTrace" v="n:5358399129737551999" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="5z" role="2OqNvi">
                  <uo k="s:originTrace" v="n:5358399129737552000" />
                  <node concept="1xMEDy" id="5A" role="1xVPHs">
                    <uo k="s:originTrace" v="n:5358399129737552001" />
                    <node concept="chp4Y" id="5B" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzd$" resolve="CreateActor" />
                      <uo k="s:originTrace" v="n:5358399129737552002" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="5x" role="2OqNvi">
                <uo k="s:originTrace" v="n:5358399129737552003" />
                <node concept="2ShNRf" id="5C" role="576Qk">
                  <uo k="s:originTrace" v="n:5358399129737552004" />
                  <node concept="Tc6Ow" id="5D" role="2ShVmc">
                    <uo k="s:originTrace" v="n:5358399129737552005" />
                    <node concept="37vLTw" id="5E" role="HW$Y0">
                      <ref role="3cqZAo" node="59" resolve="node" />
                      <uo k="s:originTrace" v="n:5358399129737552006" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5v" role="2LFqv$">
              <uo k="s:originTrace" v="n:5358399129737552007" />
              <node concept="3clFbJ" id="5F" role="3cqZAp">
                <uo k="s:originTrace" v="n:5358399129737552016" />
                <node concept="3clFbC" id="5G" role="3clFbw">
                  <uo k="s:originTrace" v="n:5358399129737596065" />
                  <node concept="37vLTw" id="5I" role="3uHU7w">
                    <ref role="3cqZAo" node="5a" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:5358399129737602532" />
                  </node>
                  <node concept="2OqwBi" id="5J" role="3uHU7B">
                    <uo k="s:originTrace" v="n:5358399129737552018" />
                    <node concept="2GrUjf" id="5K" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5t" resolve="actor" />
                      <uo k="s:originTrace" v="n:5358399129737552019" />
                    </node>
                    <node concept="3TrcHB" id="5L" role="2OqNvi">
                      <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                      <uo k="s:originTrace" v="n:5358399129737577884" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5H" role="3clFbx">
                  <uo k="s:originTrace" v="n:5358399129737552023" />
                  <node concept="3cpWs6" id="5M" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5358399129737552024" />
                    <node concept="3clFbT" id="5N" role="3cqZAk">
                      <uo k="s:originTrace" v="n:5358399129737552025" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5i" role="3cqZAp">
            <uo k="s:originTrace" v="n:5358399129737552026" />
            <node concept="3clFbT" id="5O" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5358399129737552027" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4j" role="1B3o_S">
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
      <node concept="3uibUv" id="4k" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
    </node>
    <node concept="3clFb_" id="2r" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:5358399129734674219" />
      <node concept="3Tmbuc" id="5P" role="1B3o_S">
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
      <node concept="3uibUv" id="5Q" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="3uibUv" id="5T" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
        <node concept="3uibUv" id="5U" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5358399129734674219" />
        </node>
      </node>
      <node concept="3clFbS" id="5R" role="3clF47">
        <uo k="s:originTrace" v="n:5358399129734674219" />
        <node concept="3cpWs8" id="5V" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="3cpWsn" id="5Z" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="3uibUv" id="60" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="3uibUv" id="62" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
              <node concept="3uibUv" id="63" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
              </node>
            </node>
            <node concept="2ShNRf" id="61" role="33vP2m">
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="1pGfFk" id="64" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="3uibUv" id="65" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
                <node concept="3uibUv" id="66" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5W" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="2OqwBi" id="67" role="3clFbG">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="37vLTw" id="68" role="2Oq$k0">
              <ref role="3cqZAo" node="5Z" resolve="properties" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="liA8E" id="69" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="1BaE9c" id="6a" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="2YIFZM" id="6c" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="1adDum" id="6d" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="1adDum" id="6e" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="1adDum" id="6f" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="1adDum" id="6g" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="Xl_RD" id="6h" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="6b" role="37wK5m">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="1pGfFk" id="6i" role="2ShVmc">
                  <ref role="37wK5l" node="2A" resolve="CreateActor_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="Xjq3P" id="6j" role="37wK5m">
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="2OqwBi" id="6k" role="3clFbG">
            <uo k="s:originTrace" v="n:5358399129734674219" />
            <node concept="37vLTw" id="6l" role="2Oq$k0">
              <ref role="3cqZAo" node="5Z" resolve="properties" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
            </node>
            <node concept="liA8E" id="6m" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:5358399129734674219" />
              <node concept="1BaE9c" id="6n" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="address$Eakk" />
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="2YIFZM" id="6p" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="1adDum" id="6q" role="37wK5m">
                    <property role="1adDun" value="0x10eda99958984cdeL" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="1adDum" id="6r" role="37wK5m">
                    <property role="1adDun" value="0x9416196c5eca1268L" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="1adDum" id="6s" role="37wK5m">
                    <property role="1adDun" value="0x35a5eccbf2f23308L" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="1adDum" id="6t" role="37wK5m">
                    <property role="1adDun" value="0x35a5eccbf2f23360L" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                  <node concept="Xl_RD" id="6u" role="37wK5m">
                    <property role="Xl_RC" value="address" />
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="6o" role="37wK5m">
                <uo k="s:originTrace" v="n:5358399129734674219" />
                <node concept="1pGfFk" id="6v" role="2ShVmc">
                  <ref role="37wK5l" node="4g" resolve="CreateActor_Constraints.Address_Property" />
                  <uo k="s:originTrace" v="n:5358399129734674219" />
                  <node concept="Xjq3P" id="6w" role="37wK5m">
                    <uo k="s:originTrace" v="n:5358399129734674219" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129734674219" />
          <node concept="37vLTw" id="6x" role="3clFbG">
            <ref role="3cqZAo" node="5Z" resolve="properties" />
            <uo k="s:originTrace" v="n:5358399129734674219" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:5358399129734674219" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6y">
    <property role="3GE5qa" value="behavior" />
    <property role="TrG5h" value="CreateBehavior_Constraints" />
    <uo k="s:originTrace" v="n:1229499084497597942" />
    <node concept="3Tm1VV" id="6z" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084497597942" />
    </node>
    <node concept="3uibUv" id="6$" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1229499084497597942" />
    </node>
    <node concept="3clFbW" id="6_" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084497597942" />
      <node concept="3cqZAl" id="6D" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084497597942" />
      </node>
      <node concept="3clFbS" id="6E" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084497597942" />
        <node concept="XkiVB" id="6G" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="1BaE9c" id="6H" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CreateBehavior$iN" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="2YIFZM" id="6I" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="1adDum" id="6J" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
              <node concept="1adDum" id="6K" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
              <node concept="1adDum" id="6L" role="37wK5m">
                <property role="1adDun" value="0x2176abe5743ae753L" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
              <node concept="Xl_RD" id="6M" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.CreateBehavior" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6F" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084497597942" />
      </node>
    </node>
    <node concept="2tJIrI" id="6A" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084497597942" />
    </node>
    <node concept="312cEu" id="6B" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:1229499084497597942" />
      <node concept="3clFbW" id="6N" role="jymVt">
        <uo k="s:originTrace" v="n:1229499084497597942" />
        <node concept="3cqZAl" id="6S" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="3Tm1VV" id="6T" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="3clFbS" id="6U" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="XkiVB" id="6W" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="1BaE9c" id="6X" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="2YIFZM" id="72" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="1adDum" id="73" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="1adDum" id="74" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="1adDum" id="75" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="1adDum" id="76" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="Xl_RD" id="77" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6Y" role="37wK5m">
              <ref role="3cqZAo" node="6V" resolve="container" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
            </node>
            <node concept="3clFbT" id="6Z" role="37wK5m">
              <uo k="s:originTrace" v="n:1229499084497597942" />
            </node>
            <node concept="3clFbT" id="70" role="37wK5m">
              <uo k="s:originTrace" v="n:1229499084497597942" />
            </node>
            <node concept="3clFbT" id="71" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6V" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3uibUv" id="78" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1229499084497597942" />
        <node concept="3Tm1VV" id="79" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="10P_77" id="7a" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="37vLTG" id="7b" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3Tqbb2" id="7g" role="1tU5fm">
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
        <node concept="37vLTG" id="7c" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3uibUv" id="7h" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
        <node concept="37vLTG" id="7d" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3uibUv" id="7i" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
        <node concept="3clFbS" id="7e" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3cpWs8" id="7j" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="3cpWsn" id="7m" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="10P_77" id="7n" role="1tU5fm">
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
              <node concept="1rXfSq" id="7o" role="33vP2m">
                <ref role="37wK5l" node="6P" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="37vLTw" id="7p" role="37wK5m">
                  <ref role="3cqZAo" node="7b" resolve="node" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="2YIFZM" id="7q" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                  <node concept="37vLTw" id="7r" role="37wK5m">
                    <ref role="3cqZAo" node="7c" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7k" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="3clFbS" id="7s" role="3clFbx">
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="3clFbF" id="7u" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="2OqwBi" id="7v" role="3clFbG">
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                  <node concept="37vLTw" id="7w" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                  <node concept="liA8E" id="7x" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                    <node concept="2ShNRf" id="7y" role="37wK5m">
                      <uo k="s:originTrace" v="n:1229499084497597942" />
                      <node concept="1pGfFk" id="7z" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:1229499084497597942" />
                        <node concept="Xl_RD" id="7$" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:1229499084497597942" />
                        </node>
                        <node concept="Xl_RD" id="7_" role="37wK5m">
                          <property role="Xl_RC" value="1229499084497597945" />
                          <uo k="s:originTrace" v="n:1229499084497597942" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7t" role="3clFbw">
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="3y3z36" id="7A" role="3uHU7w">
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="10Nm6u" id="7C" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="37vLTw" id="7D" role="3uHU7B">
                  <ref role="3cqZAo" node="7d" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
              </node>
              <node concept="3fqX7Q" id="7B" role="3uHU7B">
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="37vLTw" id="7E" role="3fr31v">
                  <ref role="3cqZAo" node="7m" resolve="result" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7l" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="37vLTw" id="7F" role="3clFbG">
              <ref role="3cqZAo" node="7m" resolve="result" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7f" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
      </node>
      <node concept="2YIFZL" id="6P" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:1229499084497597942" />
        <node concept="37vLTG" id="7G" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3Tqbb2" id="7L" role="1tU5fm">
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
        <node concept="37vLTG" id="7H" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3uibUv" id="7M" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
        <node concept="10P_77" id="7I" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="3Tm6S6" id="7J" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="3clFbS" id="7K" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497597946" />
          <node concept="2Gpval" id="7N" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497598887" />
            <node concept="2GrKxI" id="7P" role="2Gsz3X">
              <property role="TrG5h" value="behavior" />
              <uo k="s:originTrace" v="n:1229499084497598888" />
            </node>
            <node concept="2OqwBi" id="7Q" role="2GsD0m">
              <uo k="s:originTrace" v="n:1229499084497617093" />
              <node concept="2OqwBi" id="7S" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1229499084497604242" />
                <node concept="2OqwBi" id="7U" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1229499084497601528" />
                  <node concept="37vLTw" id="7W" role="2Oq$k0">
                    <ref role="3cqZAo" node="7G" resolve="node" />
                    <uo k="s:originTrace" v="n:1229499084497600811" />
                  </node>
                  <node concept="2Xjw5R" id="7X" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1229499084497603356" />
                    <node concept="1xMEDy" id="7Y" role="1xVPHs">
                      <uo k="s:originTrace" v="n:1229499084497603358" />
                      <node concept="chp4Y" id="7Z" role="ri$Ld">
                        <ref role="cht4Q" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                        <uo k="s:originTrace" v="n:1229499084497603531" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Rf3mk" id="7V" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1229499084497605908" />
                  <node concept="1xMEDy" id="80" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1229499084497605910" />
                    <node concept="chp4Y" id="81" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:25QEYlOeItj" resolve="CreateBehavior" />
                      <uo k="s:originTrace" v="n:1229499084497606912" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="7T" role="2OqNvi">
                <uo k="s:originTrace" v="n:1229499084497646727" />
                <node concept="2ShNRf" id="82" role="576Qk">
                  <uo k="s:originTrace" v="n:1229499084497646818" />
                  <node concept="Tc6Ow" id="83" role="2ShVmc">
                    <uo k="s:originTrace" v="n:1229499084497648922" />
                    <node concept="37vLTw" id="84" role="HW$Y0">
                      <ref role="3cqZAo" node="7G" resolve="node" />
                      <uo k="s:originTrace" v="n:1229499084497653813" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7R" role="2LFqv$">
              <uo k="s:originTrace" v="n:1229499084497598890" />
              <node concept="3clFbJ" id="85" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497678978" />
                <node concept="3clFbS" id="87" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497678980" />
                  <node concept="3N13vt" id="89" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497699955" />
                  </node>
                </node>
                <node concept="3clFbC" id="88" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497696283" />
                  <node concept="10Nm6u" id="8a" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1229499084497699594" />
                  </node>
                  <node concept="2OqwBi" id="8b" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1229499084497680275" />
                    <node concept="2GrUjf" id="8c" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7P" resolve="behavior" />
                      <uo k="s:originTrace" v="n:1229499084497679298" />
                    </node>
                    <node concept="3TrcHB" id="8d" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497685903" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="86" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497654100" />
                <node concept="2OqwBi" id="8e" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497666284" />
                  <node concept="2OqwBi" id="8g" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1229499084497655249" />
                    <node concept="2GrUjf" id="8i" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7P" resolve="behavior" />
                      <uo k="s:originTrace" v="n:1229499084497654330" />
                    </node>
                    <node concept="3TrcHB" id="8j" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497659929" />
                    </node>
                  </node>
                  <node concept="liA8E" id="8h" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <uo k="s:originTrace" v="n:1229499084497674204" />
                    <node concept="37vLTw" id="8k" role="37wK5m">
                      <ref role="3cqZAo" node="7H" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:1229499084497674475" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="8f" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497654102" />
                  <node concept="3cpWs6" id="8l" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497676948" />
                    <node concept="3clFbT" id="8m" role="3cqZAk">
                      <uo k="s:originTrace" v="n:1229499084497677360" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7O" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497678033" />
            <node concept="3clFbT" id="8n" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084497678368" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6Q" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084497597942" />
      </node>
      <node concept="3uibUv" id="6R" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1229499084497597942" />
      </node>
    </node>
    <node concept="3clFb_" id="6C" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:1229499084497597942" />
      <node concept="3Tmbuc" id="8o" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084497597942" />
      </node>
      <node concept="3uibUv" id="8p" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:1229499084497597942" />
        <node concept="3uibUv" id="8s" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
        <node concept="3uibUv" id="8t" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1229499084497597942" />
        </node>
      </node>
      <node concept="3clFbS" id="8q" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084497597942" />
        <node concept="3cpWs8" id="8u" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="3cpWsn" id="8x" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="3uibUv" id="8y" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="3uibUv" id="8$" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
              <node concept="3uibUv" id="8_" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
              </node>
            </node>
            <node concept="2ShNRf" id="8z" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="1pGfFk" id="8A" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="3uibUv" id="8B" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
                <node concept="3uibUv" id="8C" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8v" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="2OqwBi" id="8D" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084497597942" />
            <node concept="37vLTw" id="8E" role="2Oq$k0">
              <ref role="3cqZAo" node="8x" resolve="properties" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
            </node>
            <node concept="liA8E" id="8F" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:1229499084497597942" />
              <node concept="1BaE9c" id="8G" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="2YIFZM" id="8I" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                  <node concept="1adDum" id="8J" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                  <node concept="1adDum" id="8K" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                  <node concept="1adDum" id="8L" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                  <node concept="1adDum" id="8M" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                  <node concept="Xl_RD" id="8N" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="8H" role="37wK5m">
                <uo k="s:originTrace" v="n:1229499084497597942" />
                <node concept="1pGfFk" id="8O" role="2ShVmc">
                  <ref role="37wK5l" node="6N" resolve="CreateBehavior_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:1229499084497597942" />
                  <node concept="Xjq3P" id="8P" role="37wK5m">
                    <uo k="s:originTrace" v="n:1229499084497597942" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8w" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084497597942" />
          <node concept="37vLTw" id="8Q" role="3clFbG">
            <ref role="3cqZAo" node="8x" resolve="properties" />
            <uo k="s:originTrace" v="n:1229499084497597942" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084497597942" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8R">
    <property role="3GE5qa" value="envelope" />
    <property role="TrG5h" value="CreateEnvelope_Constraints" />
    <uo k="s:originTrace" v="n:2411303652489959480" />
    <node concept="3Tm1VV" id="8S" role="1B3o_S">
      <uo k="s:originTrace" v="n:2411303652489959480" />
    </node>
    <node concept="3uibUv" id="8T" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2411303652489959480" />
    </node>
    <node concept="3clFbW" id="8U" role="jymVt">
      <uo k="s:originTrace" v="n:2411303652489959480" />
      <node concept="3cqZAl" id="8Z" role="3clF45">
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
      <node concept="3clFbS" id="90" role="3clF47">
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="XkiVB" id="92" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="1BaE9c" id="93" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CreateEnvelope$OK" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="2YIFZM" id="94" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="1adDum" id="95" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
              <node concept="1adDum" id="96" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
              <node concept="1adDum" id="97" role="37wK5m">
                <property role="1adDun" value="0x2176abe574366687L" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
              <node concept="Xl_RD" id="98" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.CreateEnvelope" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="91" role="1B3o_S">
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
    </node>
    <node concept="2tJIrI" id="8V" role="jymVt">
      <uo k="s:originTrace" v="n:2411303652489959480" />
    </node>
    <node concept="312cEu" id="8W" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:2411303652489959480" />
      <node concept="3clFbW" id="99" role="jymVt">
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="3cqZAl" id="9e" role="3clF45">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3Tm1VV" id="9f" role="1B3o_S">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3clFbS" id="9g" role="3clF47">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="XkiVB" id="9i" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="1BaE9c" id="9j" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="2YIFZM" id="9o" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="1adDum" id="9p" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="1adDum" id="9q" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="1adDum" id="9r" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="1adDum" id="9s" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="Xl_RD" id="9t" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="9k" role="37wK5m">
              <ref role="3cqZAo" node="9h" resolve="container" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="3clFbT" id="9l" role="37wK5m">
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="3clFbT" id="9m" role="37wK5m">
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="3clFbT" id="9n" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="9h" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="9u" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="9a" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="3Tm1VV" id="9v" role="1B3o_S">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="10P_77" id="9w" role="3clF45">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="37vLTG" id="9x" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3Tqbb2" id="9A" role="1tU5fm">
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="37vLTG" id="9y" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="9B" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="37vLTG" id="9z" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="9C" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="3clFbS" id="9$" role="3clF47">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3cpWs8" id="9D" role="3cqZAp">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="3cpWsn" id="9G" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="10P_77" id="9H" role="1tU5fm">
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
              <node concept="1rXfSq" id="9I" role="33vP2m">
                <ref role="37wK5l" node="9b" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="37vLTw" id="9J" role="37wK5m">
                  <ref role="3cqZAo" node="9x" resolve="node" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="2YIFZM" id="9K" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="37vLTw" id="9L" role="37wK5m">
                    <ref role="3cqZAo" node="9y" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="9E" role="3cqZAp">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="3clFbS" id="9M" role="3clFbx">
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="3clFbF" id="9O" role="3cqZAp">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="2OqwBi" id="9P" role="3clFbG">
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="37vLTw" id="9Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="9z" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="liA8E" id="9R" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                    <node concept="2ShNRf" id="9S" role="37wK5m">
                      <uo k="s:originTrace" v="n:2411303652489959480" />
                      <node concept="1pGfFk" id="9T" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:2411303652489959480" />
                        <node concept="Xl_RD" id="9U" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:2411303652489959480" />
                        </node>
                        <node concept="Xl_RD" id="9V" role="37wK5m">
                          <property role="Xl_RC" value="1229499084497702851" />
                          <uo k="s:originTrace" v="n:2411303652489959480" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="9N" role="3clFbw">
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="3y3z36" id="9W" role="3uHU7w">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="10Nm6u" id="9Y" role="3uHU7w">
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="37vLTw" id="9Z" role="3uHU7B">
                  <ref role="3cqZAo" node="9z" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
              <node concept="3fqX7Q" id="9X" role="3uHU7B">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="37vLTw" id="a0" role="3fr31v">
                  <ref role="3cqZAo" node="9G" resolve="result" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="9F" role="3cqZAp">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="37vLTw" id="a1" role="3clFbG">
              <ref role="3cqZAo" node="9G" resolve="result" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="9_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
      </node>
      <node concept="2YIFZL" id="9b" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="37vLTG" id="a2" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3Tqbb2" id="a7" role="1tU5fm">
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="37vLTG" id="a3" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="a8" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="10P_77" id="a4" role="3clF45">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3Tm6S6" id="a5" role="1B3o_S">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3clFbS" id="a6" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497702852" />
          <node concept="2Gpval" id="a9" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497703761" />
            <node concept="2GrKxI" id="ab" role="2Gsz3X">
              <property role="TrG5h" value="envelope" />
              <uo k="s:originTrace" v="n:1229499084497703762" />
            </node>
            <node concept="2OqwBi" id="ac" role="2GsD0m">
              <uo k="s:originTrace" v="n:1229499084497703763" />
              <node concept="2OqwBi" id="ae" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1229499084497703764" />
                <node concept="2OqwBi" id="ag" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1229499084497703765" />
                  <node concept="37vLTw" id="ai" role="2Oq$k0">
                    <ref role="3cqZAo" node="a2" resolve="node" />
                    <uo k="s:originTrace" v="n:1229499084497703766" />
                  </node>
                  <node concept="1mfA1w" id="aj" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1229499084497719581" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="ah" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1229499084497703770" />
                  <node concept="1xMEDy" id="ak" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1229499084497703771" />
                    <node concept="chp4Y" id="al" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
                      <uo k="s:originTrace" v="n:1229499084497703772" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="af" role="2OqNvi">
                <uo k="s:originTrace" v="n:1229499084497703773" />
                <node concept="2ShNRf" id="am" role="576Qk">
                  <uo k="s:originTrace" v="n:1229499084497703774" />
                  <node concept="Tc6Ow" id="an" role="2ShVmc">
                    <uo k="s:originTrace" v="n:1229499084497703775" />
                    <node concept="37vLTw" id="ao" role="HW$Y0">
                      <ref role="3cqZAo" node="a2" resolve="node" />
                      <uo k="s:originTrace" v="n:1229499084497703776" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="ad" role="2LFqv$">
              <uo k="s:originTrace" v="n:1229499084497703777" />
              <node concept="3clFbJ" id="ap" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497703778" />
                <node concept="3clFbS" id="ar" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497703779" />
                  <node concept="3N13vt" id="at" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497703780" />
                  </node>
                </node>
                <node concept="3clFbC" id="as" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497703781" />
                  <node concept="10Nm6u" id="au" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1229499084497703782" />
                  </node>
                  <node concept="2OqwBi" id="av" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1229499084497703783" />
                    <node concept="2GrUjf" id="aw" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="ab" resolve="envelope" />
                      <uo k="s:originTrace" v="n:1229499084497703784" />
                    </node>
                    <node concept="3TrcHB" id="ax" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497703785" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="aq" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497703786" />
                <node concept="2OqwBi" id="ay" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497703787" />
                  <node concept="2OqwBi" id="a$" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1229499084497703788" />
                    <node concept="2GrUjf" id="aA" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="ab" resolve="envelope" />
                      <uo k="s:originTrace" v="n:1229499084497703789" />
                    </node>
                    <node concept="3TrcHB" id="aB" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497703790" />
                    </node>
                  </node>
                  <node concept="liA8E" id="a_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <uo k="s:originTrace" v="n:1229499084497703791" />
                    <node concept="37vLTw" id="aC" role="37wK5m">
                      <ref role="3cqZAo" node="a3" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:1229499084497703792" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="az" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497703793" />
                  <node concept="3cpWs6" id="aD" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497703794" />
                    <node concept="3clFbT" id="aE" role="3cqZAk">
                      <uo k="s:originTrace" v="n:1229499084497703795" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="aa" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497720979" />
            <node concept="3clFbT" id="aF" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084497721639" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9c" role="1B3o_S">
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
      <node concept="3uibUv" id="9d" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
    </node>
    <node concept="312cEu" id="8X" role="jymVt">
      <property role="TrG5h" value="Priority_Property" />
      <uo k="s:originTrace" v="n:2411303652489959480" />
      <node concept="3clFbW" id="aG" role="jymVt">
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="3cqZAl" id="aL" role="3clF45">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3Tm1VV" id="aM" role="1B3o_S">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3clFbS" id="aN" role="3clF47">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="XkiVB" id="aP" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="1BaE9c" id="aQ" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="priority$YWiN" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="2YIFZM" id="aV" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="1adDum" id="aW" role="37wK5m">
                  <property role="1adDun" value="0x10eda99958984cdeL" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="1adDum" id="aX" role="37wK5m">
                  <property role="1adDun" value="0x9416196c5eca1268L" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="1adDum" id="aY" role="37wK5m">
                  <property role="1adDun" value="0x2176abe574366687L" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="1adDum" id="aZ" role="37wK5m">
                  <property role="1adDun" value="0x6ac9b580f468d377L" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="Xl_RD" id="b0" role="37wK5m">
                  <property role="Xl_RC" value="priority" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="aR" role="37wK5m">
              <ref role="3cqZAo" node="aO" resolve="container" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="3clFbT" id="aS" role="37wK5m">
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="3clFbT" id="aT" role="37wK5m">
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="3clFbT" id="aU" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="aO" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="b1" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="aH" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="3Tm1VV" id="b2" role="1B3o_S">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="10P_77" id="b3" role="3clF45">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="37vLTG" id="b4" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3Tqbb2" id="b9" role="1tU5fm">
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="37vLTG" id="b5" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="ba" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="37vLTG" id="b6" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="bb" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="3clFbS" id="b7" role="3clF47">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3cpWs8" id="bc" role="3cqZAp">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="3cpWsn" id="bf" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="10P_77" id="bg" role="1tU5fm">
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
              <node concept="1rXfSq" id="bh" role="33vP2m">
                <ref role="37wK5l" node="aI" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="37vLTw" id="bi" role="37wK5m">
                  <ref role="3cqZAo" node="b4" resolve="node" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="2YIFZM" id="bj" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="37vLTw" id="bk" role="37wK5m">
                    <ref role="3cqZAo" node="b5" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="bd" role="3cqZAp">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="3clFbS" id="bl" role="3clFbx">
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="3clFbF" id="bn" role="3cqZAp">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="2OqwBi" id="bo" role="3clFbG">
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="37vLTw" id="bp" role="2Oq$k0">
                    <ref role="3cqZAo" node="b6" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="liA8E" id="bq" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                    <node concept="2ShNRf" id="br" role="37wK5m">
                      <uo k="s:originTrace" v="n:2411303652489959480" />
                      <node concept="1pGfFk" id="bs" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:2411303652489959480" />
                        <node concept="Xl_RD" id="bt" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:2411303652489959480" />
                        </node>
                        <node concept="Xl_RD" id="bu" role="37wK5m">
                          <property role="Xl_RC" value="7694881003800157413" />
                          <uo k="s:originTrace" v="n:2411303652489959480" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="bm" role="3clFbw">
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="3y3z36" id="bv" role="3uHU7w">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="10Nm6u" id="bx" role="3uHU7w">
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="37vLTw" id="by" role="3uHU7B">
                  <ref role="3cqZAo" node="b6" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
              <node concept="3fqX7Q" id="bw" role="3uHU7B">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="37vLTw" id="bz" role="3fr31v">
                  <ref role="3cqZAo" node="bf" resolve="result" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="be" role="3cqZAp">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="37vLTw" id="b$" role="3clFbG">
              <ref role="3cqZAo" node="bf" resolve="result" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="b8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
      </node>
      <node concept="2YIFZL" id="aI" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="37vLTG" id="b_" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3Tqbb2" id="bE" role="1tU5fm">
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="37vLTG" id="bA" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3uibUv" id="bF" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
        <node concept="10P_77" id="bB" role="3clF45">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3Tm6S6" id="bC" role="1B3o_S">
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3clFbS" id="bD" role="3clF47">
          <uo k="s:originTrace" v="n:7694881003800157414" />
          <node concept="3clFbJ" id="bG" role="3cqZAp">
            <uo k="s:originTrace" v="n:6739934483261374171" />
            <node concept="3clFbS" id="bI" role="3clFbx">
              <uo k="s:originTrace" v="n:6739934483261374173" />
              <node concept="3cpWs6" id="bK" role="3cqZAp">
                <uo k="s:originTrace" v="n:7694881003800157555" />
                <node concept="1Wc70l" id="bL" role="3cqZAk">
                  <uo k="s:originTrace" v="n:7694881003800169308" />
                  <node concept="2dkUwp" id="bM" role="3uHU7w">
                    <uo k="s:originTrace" v="n:7694881003800169467" />
                    <node concept="2YIFZM" id="bO" role="3uHU7B">
                      <ref role="37wK5l" to="wyt6:~Double.valueOf(java.lang.String)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                      <uo k="s:originTrace" v="n:6739934483256821051" />
                      <node concept="37vLTw" id="bQ" role="37wK5m">
                        <ref role="3cqZAo" node="bA" resolve="propertyValue" />
                        <uo k="s:originTrace" v="n:6739934483256821160" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="bP" role="3uHU7w">
                      <property role="$nhwW" value="5.0" />
                      <uo k="s:originTrace" v="n:6739934483256726116" />
                    </node>
                  </node>
                  <node concept="2d3UOw" id="bN" role="3uHU7B">
                    <uo k="s:originTrace" v="n:7694881003800167829" />
                    <node concept="2YIFZM" id="bR" role="3uHU7B">
                      <ref role="37wK5l" to="wyt6:~Double.valueOf(java.lang.String)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                      <uo k="s:originTrace" v="n:6739934483256818175" />
                      <node concept="37vLTw" id="bT" role="37wK5m">
                        <ref role="3cqZAo" node="bA" resolve="propertyValue" />
                        <uo k="s:originTrace" v="n:6739934483256819577" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="bS" role="3uHU7w">
                      <property role="$nhwW" value="0.0" />
                      <uo k="s:originTrace" v="n:6739934483256723804" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="bJ" role="3clFbw">
              <uo k="s:originTrace" v="n:6739934483261383583" />
              <node concept="10Nm6u" id="bU" role="3uHU7w">
                <uo k="s:originTrace" v="n:6739934483261387735" />
              </node>
              <node concept="37vLTw" id="bV" role="3uHU7B">
                <ref role="3cqZAo" node="bA" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:6739934483261374323" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="bH" role="3cqZAp">
            <uo k="s:originTrace" v="n:6739934483261388486" />
            <node concept="3clFbT" id="bW" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6739934483261388801" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="aJ" role="1B3o_S">
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
      <node concept="3uibUv" id="aK" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
    </node>
    <node concept="3clFb_" id="8Y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:2411303652489959480" />
      <node concept="3Tmbuc" id="bX" role="1B3o_S">
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
      <node concept="3uibUv" id="bY" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="3uibUv" id="c1" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
        <node concept="3uibUv" id="c2" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2411303652489959480" />
        </node>
      </node>
      <node concept="3clFbS" id="bZ" role="3clF47">
        <uo k="s:originTrace" v="n:2411303652489959480" />
        <node concept="3cpWs8" id="c3" role="3cqZAp">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="3cpWsn" id="c7" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="3uibUv" id="c8" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="3uibUv" id="ca" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
              <node concept="3uibUv" id="cb" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
              </node>
            </node>
            <node concept="2ShNRf" id="c9" role="33vP2m">
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="1pGfFk" id="cc" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="3uibUv" id="cd" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
                <node concept="3uibUv" id="ce" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c4" role="3cqZAp">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="2OqwBi" id="cf" role="3clFbG">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="37vLTw" id="cg" role="2Oq$k0">
              <ref role="3cqZAo" node="c7" resolve="properties" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="liA8E" id="ch" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="1BaE9c" id="ci" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="2YIFZM" id="ck" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="1adDum" id="cl" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="1adDum" id="cm" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="1adDum" id="cn" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="1adDum" id="co" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="Xl_RD" id="cp" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="cj" role="37wK5m">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="1pGfFk" id="cq" role="2ShVmc">
                  <ref role="37wK5l" node="99" resolve="CreateEnvelope_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="Xjq3P" id="cr" role="37wK5m">
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c5" role="3cqZAp">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="2OqwBi" id="cs" role="3clFbG">
            <uo k="s:originTrace" v="n:2411303652489959480" />
            <node concept="37vLTw" id="ct" role="2Oq$k0">
              <ref role="3cqZAo" node="c7" resolve="properties" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
            </node>
            <node concept="liA8E" id="cu" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:2411303652489959480" />
              <node concept="1BaE9c" id="cv" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="priority$YWiN" />
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="2YIFZM" id="cx" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="1adDum" id="cy" role="37wK5m">
                    <property role="1adDun" value="0x10eda99958984cdeL" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="1adDum" id="cz" role="37wK5m">
                    <property role="1adDun" value="0x9416196c5eca1268L" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="1adDum" id="c$" role="37wK5m">
                    <property role="1adDun" value="0x2176abe574366687L" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="1adDum" id="c_" role="37wK5m">
                    <property role="1adDun" value="0x6ac9b580f468d377L" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                  <node concept="Xl_RD" id="cA" role="37wK5m">
                    <property role="Xl_RC" value="priority" />
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="cw" role="37wK5m">
                <uo k="s:originTrace" v="n:2411303652489959480" />
                <node concept="1pGfFk" id="cB" role="2ShVmc">
                  <ref role="37wK5l" node="aG" resolve="CreateEnvelope_Constraints.Priority_Property" />
                  <uo k="s:originTrace" v="n:2411303652489959480" />
                  <node concept="Xjq3P" id="cC" role="37wK5m">
                    <uo k="s:originTrace" v="n:2411303652489959480" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c6" role="3cqZAp">
          <uo k="s:originTrace" v="n:2411303652489959480" />
          <node concept="37vLTw" id="cD" role="3clFbG">
            <ref role="3cqZAo" node="c7" resolve="properties" />
            <uo k="s:originTrace" v="n:2411303652489959480" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="c0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2411303652489959480" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="cE">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="CreateMessage_Constraints" />
    <uo k="s:originTrace" v="n:1229499084496954935" />
    <node concept="3Tm1VV" id="cF" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084496954935" />
    </node>
    <node concept="3uibUv" id="cG" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1229499084496954935" />
    </node>
    <node concept="3clFbW" id="cH" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084496954935" />
      <node concept="3cqZAl" id="cL" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084496954935" />
      </node>
      <node concept="3clFbS" id="cM" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084496954935" />
        <node concept="XkiVB" id="cO" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="1BaE9c" id="cP" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CreateMessage$aX" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="2YIFZM" id="cQ" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="1adDum" id="cR" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
              <node concept="1adDum" id="cS" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
              <node concept="1adDum" id="cT" role="37wK5m">
                <property role="1adDun" value="0x35a5eccbf2f23371L" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
              <node concept="Xl_RD" id="cU" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.CreateMessage" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="cN" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084496954935" />
      </node>
    </node>
    <node concept="2tJIrI" id="cI" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084496954935" />
    </node>
    <node concept="312cEu" id="cJ" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:1229499084496954935" />
      <node concept="3clFbW" id="cV" role="jymVt">
        <uo k="s:originTrace" v="n:1229499084496954935" />
        <node concept="3cqZAl" id="d0" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="3Tm1VV" id="d1" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="3clFbS" id="d2" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="XkiVB" id="d4" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="1BaE9c" id="d5" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="2YIFZM" id="da" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="1adDum" id="db" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="1adDum" id="dc" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="1adDum" id="dd" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="1adDum" id="de" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="Xl_RD" id="df" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="d6" role="37wK5m">
              <ref role="3cqZAo" node="d3" resolve="container" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
            </node>
            <node concept="3clFbT" id="d7" role="37wK5m">
              <uo k="s:originTrace" v="n:1229499084496954935" />
            </node>
            <node concept="3clFbT" id="d8" role="37wK5m">
              <uo k="s:originTrace" v="n:1229499084496954935" />
            </node>
            <node concept="3clFbT" id="d9" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="d3" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3uibUv" id="dg" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="cW" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1229499084496954935" />
        <node concept="3Tm1VV" id="dh" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="10P_77" id="di" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="37vLTG" id="dj" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3Tqbb2" id="do" role="1tU5fm">
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
        <node concept="37vLTG" id="dk" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3uibUv" id="dp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
        <node concept="37vLTG" id="dl" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3uibUv" id="dq" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
        <node concept="3clFbS" id="dm" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3cpWs8" id="dr" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="3cpWsn" id="du" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="10P_77" id="dv" role="1tU5fm">
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
              <node concept="1rXfSq" id="dw" role="33vP2m">
                <ref role="37wK5l" node="cX" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="37vLTw" id="dx" role="37wK5m">
                  <ref role="3cqZAo" node="dj" resolve="node" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="2YIFZM" id="dy" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                  <node concept="37vLTw" id="dz" role="37wK5m">
                    <ref role="3cqZAo" node="dk" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="ds" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="3clFbS" id="d$" role="3clFbx">
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="3clFbF" id="dA" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="2OqwBi" id="dB" role="3clFbG">
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                  <node concept="37vLTw" id="dC" role="2Oq$k0">
                    <ref role="3cqZAo" node="dl" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                  <node concept="liA8E" id="dD" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                    <node concept="2ShNRf" id="dE" role="37wK5m">
                      <uo k="s:originTrace" v="n:1229499084496954935" />
                      <node concept="1pGfFk" id="dF" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:1229499084496954935" />
                        <node concept="Xl_RD" id="dG" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:1229499084496954935" />
                        </node>
                        <node concept="Xl_RD" id="dH" role="37wK5m">
                          <property role="Xl_RC" value="1229499084496955024" />
                          <uo k="s:originTrace" v="n:1229499084496954935" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="d_" role="3clFbw">
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="3y3z36" id="dI" role="3uHU7w">
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="10Nm6u" id="dK" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="37vLTw" id="dL" role="3uHU7B">
                  <ref role="3cqZAo" node="dl" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
              </node>
              <node concept="3fqX7Q" id="dJ" role="3uHU7B">
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="37vLTw" id="dM" role="3fr31v">
                  <ref role="3cqZAo" node="du" resolve="result" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="dt" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="37vLTw" id="dN" role="3clFbG">
              <ref role="3cqZAo" node="du" resolve="result" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="dn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
      </node>
      <node concept="2YIFZL" id="cX" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:1229499084496954935" />
        <node concept="37vLTG" id="dO" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3Tqbb2" id="dT" role="1tU5fm">
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
        <node concept="37vLTG" id="dP" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3uibUv" id="dU" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
        <node concept="10P_77" id="dQ" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="3Tm6S6" id="dR" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="3clFbS" id="dS" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084496955025" />
          <node concept="2Gpval" id="dV" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497149116" />
            <node concept="2GrKxI" id="dX" role="2Gsz3X">
              <property role="TrG5h" value="message" />
              <uo k="s:originTrace" v="n:1229499084497149117" />
            </node>
            <node concept="2OqwBi" id="dY" role="2GsD0m">
              <uo k="s:originTrace" v="n:1229499084497166495" />
              <node concept="2OqwBi" id="e0" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1229499084497153317" />
                <node concept="2OqwBi" id="e2" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1229499084497151704" />
                  <node concept="37vLTw" id="e4" role="2Oq$k0">
                    <ref role="3cqZAo" node="dO" resolve="node" />
                    <uo k="s:originTrace" v="n:1229499084497150987" />
                  </node>
                  <node concept="1mfA1w" id="e5" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1229499084497152721" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="e3" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1229499084497155375" />
                  <node concept="1xMEDy" id="e6" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1229499084497155377" />
                    <node concept="chp4Y" id="e7" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                      <uo k="s:originTrace" v="n:1229499084497155537" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="e1" role="2OqNvi">
                <uo k="s:originTrace" v="n:1229499084497197066" />
                <node concept="2ShNRf" id="e8" role="576Qk">
                  <uo k="s:originTrace" v="n:1229499084497197157" />
                  <node concept="Tc6Ow" id="e9" role="2ShVmc">
                    <uo k="s:originTrace" v="n:1229499084497211013" />
                    <node concept="37vLTw" id="ea" role="HW$Y0">
                      <ref role="3cqZAo" node="dO" resolve="node" />
                      <uo k="s:originTrace" v="n:1229499084497215738" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="dZ" role="2LFqv$">
              <uo k="s:originTrace" v="n:1229499084497149119" />
              <node concept="3clFbJ" id="eb" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497385165" />
                <node concept="3clFbS" id="ed" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497385167" />
                  <node concept="3N13vt" id="ef" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497415001" />
                  </node>
                </node>
                <node concept="3clFbC" id="ee" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497457136" />
                  <node concept="10Nm6u" id="eg" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1229499084497458452" />
                  </node>
                  <node concept="2OqwBi" id="eh" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1229499084497387475" />
                    <node concept="2GrUjf" id="ei" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="dX" resolve="message" />
                      <uo k="s:originTrace" v="n:1229499084497385488" />
                    </node>
                    <node concept="3TrcHB" id="ej" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497392222" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="ec" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497216025" />
                <node concept="2OqwBi" id="ek" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497231002" />
                  <node concept="2OqwBi" id="em" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1229499084497218129" />
                    <node concept="2GrUjf" id="eo" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="dX" resolve="message" />
                      <uo k="s:originTrace" v="n:1229499084497216255" />
                    </node>
                    <node concept="3TrcHB" id="ep" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497223326" />
                    </node>
                  </node>
                  <node concept="liA8E" id="en" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <uo k="s:originTrace" v="n:1229499084497240734" />
                    <node concept="37vLTw" id="eq" role="37wK5m">
                      <ref role="3cqZAo" node="dP" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:1229499084497241088" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="el" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497216027" />
                  <node concept="3cpWs6" id="er" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497242501" />
                    <node concept="3clFbT" id="es" role="3cqZAk">
                      <uo k="s:originTrace" v="n:1229499084497242833" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="dW" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497243504" />
            <node concept="3clFbT" id="et" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084497244643" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="cY" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084496954935" />
      </node>
      <node concept="3uibUv" id="cZ" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1229499084496954935" />
      </node>
    </node>
    <node concept="3clFb_" id="cK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:1229499084496954935" />
      <node concept="3Tmbuc" id="eu" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084496954935" />
      </node>
      <node concept="3uibUv" id="ev" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:1229499084496954935" />
        <node concept="3uibUv" id="ey" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
        <node concept="3uibUv" id="ez" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1229499084496954935" />
        </node>
      </node>
      <node concept="3clFbS" id="ew" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084496954935" />
        <node concept="3cpWs8" id="e$" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="3cpWsn" id="eB" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="3uibUv" id="eC" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="3uibUv" id="eE" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
              <node concept="3uibUv" id="eF" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
              </node>
            </node>
            <node concept="2ShNRf" id="eD" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="1pGfFk" id="eG" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="3uibUv" id="eH" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
                <node concept="3uibUv" id="eI" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="e_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="2OqwBi" id="eJ" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084496954935" />
            <node concept="37vLTw" id="eK" role="2Oq$k0">
              <ref role="3cqZAo" node="eB" resolve="properties" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
            </node>
            <node concept="liA8E" id="eL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:1229499084496954935" />
              <node concept="1BaE9c" id="eM" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="2YIFZM" id="eO" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                  <node concept="1adDum" id="eP" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                  <node concept="1adDum" id="eQ" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                  <node concept="1adDum" id="eR" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                  <node concept="1adDum" id="eS" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                  <node concept="Xl_RD" id="eT" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="eN" role="37wK5m">
                <uo k="s:originTrace" v="n:1229499084496954935" />
                <node concept="1pGfFk" id="eU" role="2ShVmc">
                  <ref role="37wK5l" node="cV" resolve="CreateMessage_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:1229499084496954935" />
                  <node concept="Xjq3P" id="eV" role="37wK5m">
                    <uo k="s:originTrace" v="n:1229499084496954935" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="eA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084496954935" />
          <node concept="37vLTw" id="eW" role="3clFbG">
            <ref role="3cqZAo" node="eB" resolve="properties" />
            <uo k="s:originTrace" v="n:1229499084496954935" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ex" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084496954935" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="eX">
    <property role="3GE5qa" value="payload" />
    <property role="TrG5h" value="CreatePayload_Constraints" />
    <uo k="s:originTrace" v="n:1229499084497726811" />
    <node concept="3Tm1VV" id="eY" role="1B3o_S">
      <uo k="s:originTrace" v="n:1229499084497726811" />
    </node>
    <node concept="3uibUv" id="eZ" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1229499084497726811" />
    </node>
    <node concept="3clFbW" id="f0" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084497726811" />
      <node concept="3cqZAl" id="f4" role="3clF45">
        <uo k="s:originTrace" v="n:1229499084497726811" />
      </node>
      <node concept="3clFbS" id="f5" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084497726811" />
        <node concept="XkiVB" id="f7" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="1BaE9c" id="f8" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CreatePayload$Pf" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="2YIFZM" id="f9" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="1adDum" id="fa" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
              <node concept="1adDum" id="fb" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
              <node concept="1adDum" id="fc" role="37wK5m">
                <property role="1adDun" value="0x2176abe574366688L" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
              <node concept="Xl_RD" id="fd" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.CreatePayload" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="f6" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084497726811" />
      </node>
    </node>
    <node concept="2tJIrI" id="f1" role="jymVt">
      <uo k="s:originTrace" v="n:1229499084497726811" />
    </node>
    <node concept="312cEu" id="f2" role="jymVt">
      <property role="TrG5h" value="Name_Property" />
      <uo k="s:originTrace" v="n:1229499084497726811" />
      <node concept="3clFbW" id="fe" role="jymVt">
        <uo k="s:originTrace" v="n:1229499084497726811" />
        <node concept="3cqZAl" id="fj" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="3Tm1VV" id="fk" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="3clFbS" id="fl" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="XkiVB" id="fn" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="1BaE9c" id="fo" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="2YIFZM" id="ft" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="1adDum" id="fu" role="37wK5m">
                  <property role="1adDun" value="0xceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="1adDum" id="fv" role="37wK5m">
                  <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="1adDum" id="fw" role="37wK5m">
                  <property role="1adDun" value="0x110396eaaa4L" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="1adDum" id="fx" role="37wK5m">
                  <property role="1adDun" value="0x110396ec041L" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="Xl_RD" id="fy" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="fp" role="37wK5m">
              <ref role="3cqZAo" node="fm" resolve="container" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
            </node>
            <node concept="3clFbT" id="fq" role="37wK5m">
              <uo k="s:originTrace" v="n:1229499084497726811" />
            </node>
            <node concept="3clFbT" id="fr" role="37wK5m">
              <uo k="s:originTrace" v="n:1229499084497726811" />
            </node>
            <node concept="3clFbT" id="fs" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="fm" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3uibUv" id="fz" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ff" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1229499084497726811" />
        <node concept="3Tm1VV" id="f$" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="10P_77" id="f_" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="37vLTG" id="fA" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3Tqbb2" id="fF" role="1tU5fm">
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
        <node concept="37vLTG" id="fB" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3uibUv" id="fG" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
        <node concept="37vLTG" id="fC" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3uibUv" id="fH" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
        <node concept="3clFbS" id="fD" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3cpWs8" id="fI" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="3cpWsn" id="fL" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="10P_77" id="fM" role="1tU5fm">
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
              <node concept="1rXfSq" id="fN" role="33vP2m">
                <ref role="37wK5l" node="fg" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="37vLTw" id="fO" role="37wK5m">
                  <ref role="3cqZAo" node="fA" resolve="node" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="2YIFZM" id="fP" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                  <node concept="37vLTw" id="fQ" role="37wK5m">
                    <ref role="3cqZAo" node="fB" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="fJ" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="3clFbS" id="fR" role="3clFbx">
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="3clFbF" id="fT" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="2OqwBi" id="fU" role="3clFbG">
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                  <node concept="37vLTw" id="fV" role="2Oq$k0">
                    <ref role="3cqZAo" node="fC" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                  <node concept="liA8E" id="fW" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                    <node concept="2ShNRf" id="fX" role="37wK5m">
                      <uo k="s:originTrace" v="n:1229499084497726811" />
                      <node concept="1pGfFk" id="fY" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:1229499084497726811" />
                        <node concept="Xl_RD" id="fZ" role="37wK5m">
                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                          <uo k="s:originTrace" v="n:1229499084497726811" />
                        </node>
                        <node concept="Xl_RD" id="g0" role="37wK5m">
                          <property role="Xl_RC" value="1229499084497726900" />
                          <uo k="s:originTrace" v="n:1229499084497726811" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="fS" role="3clFbw">
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="3y3z36" id="g1" role="3uHU7w">
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="10Nm6u" id="g3" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="37vLTw" id="g4" role="3uHU7B">
                  <ref role="3cqZAo" node="fC" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
              </node>
              <node concept="3fqX7Q" id="g2" role="3uHU7B">
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="37vLTw" id="g5" role="3fr31v">
                  <ref role="3cqZAo" node="fL" resolve="result" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="fK" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="37vLTw" id="g6" role="3clFbG">
              <ref role="3cqZAo" node="fL" resolve="result" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="fE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
      </node>
      <node concept="2YIFZL" id="fg" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:1229499084497726811" />
        <node concept="37vLTG" id="g7" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3Tqbb2" id="gc" role="1tU5fm">
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
        <node concept="37vLTG" id="g8" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3uibUv" id="gd" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
        <node concept="10P_77" id="g9" role="3clF45">
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="3Tm6S6" id="ga" role="1B3o_S">
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="3clFbS" id="gb" role="3clF47">
          <uo k="s:originTrace" v="n:1229499084497726901" />
          <node concept="2Gpval" id="ge" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497727767" />
            <node concept="2GrKxI" id="gg" role="2Gsz3X">
              <property role="TrG5h" value="payload" />
              <uo k="s:originTrace" v="n:1229499084497727768" />
            </node>
            <node concept="2OqwBi" id="gh" role="2GsD0m">
              <uo k="s:originTrace" v="n:1229499084497727769" />
              <node concept="2OqwBi" id="gj" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1229499084497727770" />
                <node concept="2OqwBi" id="gl" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1229499084497727771" />
                  <node concept="37vLTw" id="gn" role="2Oq$k0">
                    <ref role="3cqZAo" node="g7" resolve="node" />
                    <uo k="s:originTrace" v="n:1229499084497727772" />
                  </node>
                  <node concept="1mfA1w" id="go" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1229499084497747270" />
                  </node>
                </node>
                <node concept="2Rf3mk" id="gm" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1229499084497727776" />
                  <node concept="1xMEDy" id="gp" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1229499084497727777" />
                    <node concept="chp4Y" id="gq" role="ri$Ld">
                      <ref role="cht4Q" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                      <uo k="s:originTrace" v="n:1229499084497727778" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="66VNe" id="gk" role="2OqNvi">
                <uo k="s:originTrace" v="n:1229499084497727779" />
                <node concept="2ShNRf" id="gr" role="576Qk">
                  <uo k="s:originTrace" v="n:1229499084497727780" />
                  <node concept="Tc6Ow" id="gs" role="2ShVmc">
                    <uo k="s:originTrace" v="n:1229499084497727781" />
                    <node concept="37vLTw" id="gt" role="HW$Y0">
                      <ref role="3cqZAo" node="g7" resolve="node" />
                      <uo k="s:originTrace" v="n:1229499084497727782" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="gi" role="2LFqv$">
              <uo k="s:originTrace" v="n:1229499084497727783" />
              <node concept="3clFbJ" id="gu" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497727784" />
                <node concept="3clFbS" id="gw" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497727785" />
                  <node concept="3N13vt" id="gy" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497727786" />
                  </node>
                </node>
                <node concept="3clFbC" id="gx" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497727787" />
                  <node concept="10Nm6u" id="gz" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1229499084497727788" />
                  </node>
                  <node concept="2OqwBi" id="g$" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1229499084497727789" />
                    <node concept="2GrUjf" id="g_" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="gg" resolve="payload" />
                      <uo k="s:originTrace" v="n:1229499084497727790" />
                    </node>
                    <node concept="3TrcHB" id="gA" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497727791" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="gv" role="3cqZAp">
                <uo k="s:originTrace" v="n:1229499084497727792" />
                <node concept="2OqwBi" id="gB" role="3clFbw">
                  <uo k="s:originTrace" v="n:1229499084497727793" />
                  <node concept="2OqwBi" id="gD" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1229499084497727794" />
                    <node concept="2GrUjf" id="gF" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="gg" resolve="payload" />
                      <uo k="s:originTrace" v="n:1229499084497727795" />
                    </node>
                    <node concept="3TrcHB" id="gG" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:1229499084497727796" />
                    </node>
                  </node>
                  <node concept="liA8E" id="gE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <uo k="s:originTrace" v="n:1229499084497727797" />
                    <node concept="37vLTw" id="gH" role="37wK5m">
                      <ref role="3cqZAo" node="g8" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:1229499084497727798" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="gC" role="3clFbx">
                  <uo k="s:originTrace" v="n:1229499084497727799" />
                  <node concept="3cpWs6" id="gI" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1229499084497727800" />
                    <node concept="3clFbT" id="gJ" role="3cqZAk">
                      <uo k="s:originTrace" v="n:1229499084497727801" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="gf" role="3cqZAp">
            <uo k="s:originTrace" v="n:1229499084497750951" />
            <node concept="3clFbT" id="gK" role="3cqZAk">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1229499084497751321" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="fh" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084497726811" />
      </node>
      <node concept="3uibUv" id="fi" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1229499084497726811" />
      </node>
    </node>
    <node concept="3clFb_" id="f3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:1229499084497726811" />
      <node concept="3Tmbuc" id="gL" role="1B3o_S">
        <uo k="s:originTrace" v="n:1229499084497726811" />
      </node>
      <node concept="3uibUv" id="gM" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:1229499084497726811" />
        <node concept="3uibUv" id="gP" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
        <node concept="3uibUv" id="gQ" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1229499084497726811" />
        </node>
      </node>
      <node concept="3clFbS" id="gN" role="3clF47">
        <uo k="s:originTrace" v="n:1229499084497726811" />
        <node concept="3cpWs8" id="gR" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="3cpWsn" id="gU" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="3uibUv" id="gV" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="3uibUv" id="gX" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
              <node concept="3uibUv" id="gY" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
              </node>
            </node>
            <node concept="2ShNRf" id="gW" role="33vP2m">
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="1pGfFk" id="gZ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="3uibUv" id="h0" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
                <node concept="3uibUv" id="h1" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="2OqwBi" id="h2" role="3clFbG">
            <uo k="s:originTrace" v="n:1229499084497726811" />
            <node concept="37vLTw" id="h3" role="2Oq$k0">
              <ref role="3cqZAo" node="gU" resolve="properties" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
            </node>
            <node concept="liA8E" id="h4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:1229499084497726811" />
              <node concept="1BaE9c" id="h5" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="name$MnvL" />
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="2YIFZM" id="h7" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                  <node concept="1adDum" id="h8" role="37wK5m">
                    <property role="1adDun" value="0xceab519525ea4f22L" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                  <node concept="1adDum" id="h9" role="37wK5m">
                    <property role="1adDun" value="0x9b92103b95ca8c0cL" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                  <node concept="1adDum" id="ha" role="37wK5m">
                    <property role="1adDun" value="0x110396eaaa4L" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                  <node concept="1adDum" id="hb" role="37wK5m">
                    <property role="1adDun" value="0x110396ec041L" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                  <node concept="Xl_RD" id="hc" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="h6" role="37wK5m">
                <uo k="s:originTrace" v="n:1229499084497726811" />
                <node concept="1pGfFk" id="hd" role="2ShVmc">
                  <ref role="37wK5l" node="fe" resolve="CreatePayload_Constraints.Name_Property" />
                  <uo k="s:originTrace" v="n:1229499084497726811" />
                  <node concept="Xjq3P" id="he" role="37wK5m">
                    <uo k="s:originTrace" v="n:1229499084497726811" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gT" role="3cqZAp">
          <uo k="s:originTrace" v="n:1229499084497726811" />
          <node concept="37vLTw" id="hf" role="3clFbG">
            <ref role="3cqZAo" node="gU" resolve="properties" />
            <uo k="s:originTrace" v="n:1229499084497726811" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1229499084497726811" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hg">
    <property role="3GE5qa" value="envelope" />
    <property role="TrG5h" value="Envelope_Constraints" />
    <uo k="s:originTrace" v="n:3269545992596782494" />
    <node concept="3Tm1VV" id="hh" role="1B3o_S">
      <uo k="s:originTrace" v="n:3269545992596782494" />
    </node>
    <node concept="3uibUv" id="hi" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3269545992596782494" />
    </node>
    <node concept="3clFbW" id="hj" role="jymVt">
      <uo k="s:originTrace" v="n:3269545992596782494" />
      <node concept="3cqZAl" id="hl" role="3clF45">
        <uo k="s:originTrace" v="n:3269545992596782494" />
      </node>
      <node concept="3clFbS" id="hm" role="3clF47">
        <uo k="s:originTrace" v="n:3269545992596782494" />
        <node concept="XkiVB" id="ho" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3269545992596782494" />
          <node concept="1BaE9c" id="hp" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Envelope$QA" />
            <uo k="s:originTrace" v="n:3269545992596782494" />
            <node concept="2YIFZM" id="hq" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:3269545992596782494" />
              <node concept="1adDum" id="hr" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:3269545992596782494" />
              </node>
              <node concept="1adDum" id="hs" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:3269545992596782494" />
              </node>
              <node concept="1adDum" id="ht" role="37wK5m">
                <property role="1adDun" value="0x9de89b125c73205L" />
                <uo k="s:originTrace" v="n:3269545992596782494" />
              </node>
              <node concept="Xl_RD" id="hu" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.Envelope" />
                <uo k="s:originTrace" v="n:3269545992596782494" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hn" role="1B3o_S">
        <uo k="s:originTrace" v="n:3269545992596782494" />
      </node>
    </node>
    <node concept="2tJIrI" id="hk" role="jymVt">
      <uo k="s:originTrace" v="n:3269545992596782494" />
    </node>
  </node>
  <node concept="312cEu" id="hv">
    <property role="3GE5qa" value="fetch" />
    <property role="TrG5h" value="Fetch_Constraints" />
    <uo k="s:originTrace" v="n:7694881003796842316" />
    <node concept="3Tm1VV" id="hw" role="1B3o_S">
      <uo k="s:originTrace" v="n:7694881003796842316" />
    </node>
    <node concept="3uibUv" id="hx" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7694881003796842316" />
    </node>
    <node concept="3clFbW" id="hy" role="jymVt">
      <uo k="s:originTrace" v="n:7694881003796842316" />
      <node concept="3cqZAl" id="hA" role="3clF45">
        <uo k="s:originTrace" v="n:7694881003796842316" />
      </node>
      <node concept="3clFbS" id="hB" role="3clF47">
        <uo k="s:originTrace" v="n:7694881003796842316" />
        <node concept="XkiVB" id="hD" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="1BaE9c" id="hE" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Fetch$Nj" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
            <node concept="2YIFZM" id="hF" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
              <node concept="1adDum" id="hG" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
              <node concept="1adDum" id="hH" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
              <node concept="1adDum" id="hI" role="37wK5m">
                <property role="1adDun" value="0x619ceb90241d8975L" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
              <node concept="Xl_RD" id="hJ" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.Fetch" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hC" role="1B3o_S">
        <uo k="s:originTrace" v="n:7694881003796842316" />
      </node>
    </node>
    <node concept="2tJIrI" id="hz" role="jymVt">
      <uo k="s:originTrace" v="n:7694881003796842316" />
    </node>
    <node concept="312cEu" id="h$" role="jymVt">
      <property role="TrG5h" value="Policy_Property" />
      <uo k="s:originTrace" v="n:7694881003796842316" />
      <node concept="3clFbW" id="hK" role="jymVt">
        <uo k="s:originTrace" v="n:7694881003796842316" />
        <node concept="3cqZAl" id="hP" role="3clF45">
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="3Tm1VV" id="hQ" role="1B3o_S">
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="3clFbS" id="hR" role="3clF47">
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="XkiVB" id="hT" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
            <node concept="1BaE9c" id="hU" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="policy$Ol3f" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
              <node concept="2YIFZM" id="hZ" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
                <node concept="1adDum" id="i0" role="37wK5m">
                  <property role="1adDun" value="0x10eda99958984cdeL" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
                <node concept="1adDum" id="i1" role="37wK5m">
                  <property role="1adDun" value="0x9416196c5eca1268L" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
                <node concept="1adDum" id="i2" role="37wK5m">
                  <property role="1adDun" value="0x619ceb90241d8975L" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
                <node concept="1adDum" id="i3" role="37wK5m">
                  <property role="1adDun" value="0x619ceb90241d897bL" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
                <node concept="Xl_RD" id="i4" role="37wK5m">
                  <property role="Xl_RC" value="policy" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="hV" role="37wK5m">
              <ref role="3cqZAo" node="hS" resolve="container" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
            </node>
            <node concept="3clFbT" id="hW" role="37wK5m">
              <uo k="s:originTrace" v="n:7694881003796842316" />
            </node>
            <node concept="3clFbT" id="hX" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
            </node>
            <node concept="3clFbT" id="hY" role="37wK5m">
              <uo k="s:originTrace" v="n:7694881003796842316" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="hS" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3uibUv" id="i5" role="1tU5fm">
            <ref role="3uigEE" to="ze1j:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="hL" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setPropertyValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7694881003796842316" />
        <node concept="3Tm1VV" id="i6" role="1B3o_S">
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="3cqZAl" id="i7" role="3clF45">
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="37vLTG" id="i8" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3Tqbb2" id="ic" role="1tU5fm">
            <uo k="s:originTrace" v="n:7694881003796842316" />
          </node>
        </node>
        <node concept="37vLTG" id="i9" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3uibUv" id="id" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
          </node>
        </node>
        <node concept="2AHcQZ" id="ia" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="3clFbS" id="ib" role="3clF47">
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3clFbF" id="ie" role="3cqZAp">
            <uo k="s:originTrace" v="n:7694881003796842316" />
            <node concept="1rXfSq" id="if" role="3clFbG">
              <ref role="37wK5l" node="hM" resolve="staticSetPropertyValue" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
              <node concept="37vLTw" id="ig" role="37wK5m">
                <ref role="3cqZAo" node="i8" resolve="node" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
              <node concept="2YIFZM" id="ih" role="37wK5m">
                <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                <ref role="37wK5l" to="i8bi:7xvVBHRispT" resolve="castEnummember" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
                <node concept="37vLTw" id="ii" role="37wK5m">
                  <ref role="3cqZAo" node="i9" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="hM" role="jymVt">
        <property role="TrG5h" value="staticSetPropertyValue" />
        <uo k="s:originTrace" v="n:7694881003796842316" />
        <node concept="3clFbS" id="ij" role="3clF47">
          <uo k="s:originTrace" v="n:7694881003796842320" />
          <node concept="3clFbF" id="io" role="3cqZAp">
            <uo k="s:originTrace" v="n:7694881003799213755" />
            <node concept="37vLTI" id="iD" role="3clFbG">
              <uo k="s:originTrace" v="n:7694881003799219324" />
              <node concept="37vLTw" id="iE" role="37vLTx">
                <ref role="3cqZAo" node="in" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:7694881003799220638" />
              </node>
              <node concept="2OqwBi" id="iF" role="37vLTJ">
                <uo k="s:originTrace" v="n:7694881003799214833" />
                <node concept="37vLTw" id="iG" role="2Oq$k0">
                  <ref role="3cqZAo" node="im" resolve="node" />
                  <uo k="s:originTrace" v="n:7694881003799213754" />
                </node>
                <node concept="3TrcHB" id="iH" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:66sUT0$7o_V" resolve="policy" />
                  <uo k="s:originTrace" v="n:7694881003799217963" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="ip" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366050397619" />
          </node>
          <node concept="3SKdUt" id="iq" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052116636" />
            <node concept="1PaTwC" id="iI" role="1aUNEU">
              <uo k="s:originTrace" v="n:7652281366052116637" />
              <node concept="3oM_SD" id="iJ" role="1PaTwD">
                <property role="3oM_SC" value="the" />
                <uo k="s:originTrace" v="n:7652281366052116883" />
              </node>
              <node concept="3oM_SD" id="iK" role="1PaTwD">
                <property role="3oM_SC" value="following" />
                <uo k="s:originTrace" v="n:7652281366052116908" />
              </node>
              <node concept="3oM_SD" id="iL" role="1PaTwD">
                <property role="3oM_SC" value="code" />
                <uo k="s:originTrace" v="n:7652281366052116913" />
              </node>
              <node concept="3oM_SD" id="iM" role="1PaTwD">
                <property role="3oM_SC" value="creates" />
                <uo k="s:originTrace" v="n:7652281366052116922" />
              </node>
              <node concept="3oM_SD" id="iN" role="1PaTwD">
                <property role="3oM_SC" value="a" />
                <uo k="s:originTrace" v="n:7652281366052116935" />
              </node>
              <node concept="3oM_SD" id="iO" role="1PaTwD">
                <property role="3oM_SC" value="generic" />
                <uo k="s:originTrace" v="n:7652281366052116943" />
              </node>
              <node concept="3oM_SD" id="iP" role="1PaTwD">
                <property role="3oM_SC" value="message" />
                <uo k="s:originTrace" v="n:7652281366052116997" />
              </node>
              <node concept="3oM_SD" id="iQ" role="1PaTwD">
                <property role="3oM_SC" value="that" />
                <uo k="s:originTrace" v="n:7652281366052117007" />
              </node>
              <node concept="3oM_SD" id="iR" role="1PaTwD">
                <property role="3oM_SC" value="models" />
                <uo k="s:originTrace" v="n:7652281366052117021" />
              </node>
              <node concept="3oM_SD" id="iS" role="1PaTwD">
                <property role="3oM_SC" value="the" />
                <uo k="s:originTrace" v="n:7652281366052117038" />
              </node>
              <node concept="3oM_SD" id="iT" role="1PaTwD">
                <property role="3oM_SC" value="message" />
                <uo k="s:originTrace" v="n:7652281366052117086" />
              </node>
              <node concept="3oM_SD" id="iU" role="1PaTwD">
                <property role="3oM_SC" value="to" />
                <uo k="s:originTrace" v="n:7652281366052117100" />
              </node>
              <node concept="3oM_SD" id="iV" role="1PaTwD">
                <property role="3oM_SC" value="be" />
                <uo k="s:originTrace" v="n:7652281366052117116" />
              </node>
              <node concept="3oM_SD" id="iW" role="1PaTwD">
                <property role="3oM_SC" value="received" />
                <uo k="s:originTrace" v="n:7652281366052117133" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="ir" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052117158" />
          </node>
          <node concept="3clFbF" id="is" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052117920" />
            <node concept="37vLTI" id="iX" role="3clFbG">
              <uo k="s:originTrace" v="n:7652281366052128753" />
              <node concept="2ShNRf" id="iY" role="37vLTx">
                <uo k="s:originTrace" v="n:7652281366052128946" />
                <node concept="3zrR0B" id="j0" role="2ShVmc">
                  <uo k="s:originTrace" v="n:7652281366052128944" />
                  <node concept="3Tqbb2" id="j1" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                    <uo k="s:originTrace" v="n:7652281366052128945" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="iZ" role="37vLTJ">
                <uo k="s:originTrace" v="n:7652281366052118594" />
                <node concept="37vLTw" id="j2" role="2Oq$k0">
                  <ref role="3cqZAo" node="im" resolve="node" />
                  <uo k="s:originTrace" v="n:7652281366052117919" />
                </node>
                <node concept="3TrEf2" id="j3" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                  <uo k="s:originTrace" v="n:7652281366052127300" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="it" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052666180" />
          </node>
          <node concept="3cpWs8" id="iu" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052694501" />
            <node concept="3cpWsn" id="j4" role="3cpWs9">
              <property role="TrG5h" value="receivedMessages" />
              <uo k="s:originTrace" v="n:7652281366052694504" />
              <node concept="10Oyi0" id="j5" role="1tU5fm">
                <uo k="s:originTrace" v="n:7652281366052694499" />
              </node>
              <node concept="3cmrfG" id="j6" role="33vP2m">
                <property role="3cmrfH" value="0" />
                <uo k="s:originTrace" v="n:7652281366052695565" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="iv" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052932362" />
          </node>
          <node concept="3cpWs8" id="iw" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366053286226" />
            <node concept="3cpWsn" id="j7" role="3cpWs9">
              <property role="TrG5h" value="existingMessages" />
              <uo k="s:originTrace" v="n:7652281366053286229" />
              <node concept="A3Dl8" id="j8" role="1tU5fm">
                <uo k="s:originTrace" v="n:7652281366053286223" />
                <node concept="3Tqbb2" id="ja" role="A3Ik2">
                  <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                  <uo k="s:originTrace" v="n:7652281366053288715" />
                </node>
              </node>
              <node concept="2OqwBi" id="j9" role="33vP2m">
                <uo k="s:originTrace" v="n:7652281366053208087" />
                <node concept="2OqwBi" id="jb" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7652281366052941894" />
                  <node concept="2OqwBi" id="jd" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7652281366052939132" />
                    <node concept="37vLTw" id="jf" role="2Oq$k0">
                      <ref role="3cqZAo" node="im" resolve="node" />
                      <uo k="s:originTrace" v="n:7652281366052938252" />
                    </node>
                    <node concept="2Xjw5R" id="jg" role="2OqNvi">
                      <uo k="s:originTrace" v="n:7652281366052940881" />
                      <node concept="1xMEDy" id="jh" role="1xVPHs">
                        <uo k="s:originTrace" v="n:7652281366052940883" />
                        <node concept="chp4Y" id="ji" role="ri$Ld">
                          <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                          <uo k="s:originTrace" v="n:7652281366052941072" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Rf3mk" id="je" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7652281366052943913" />
                    <node concept="1xMEDy" id="jj" role="1xVPHs">
                      <uo k="s:originTrace" v="n:7652281366052943915" />
                      <node concept="chp4Y" id="jk" role="ri$Ld">
                        <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                        <uo k="s:originTrace" v="n:7652281366052945327" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="jc" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7652281366053250284" />
                  <node concept="1bVj0M" id="jl" role="23t8la">
                    <uo k="s:originTrace" v="n:7652281366053250286" />
                    <node concept="3clFbS" id="jm" role="1bW5cS">
                      <uo k="s:originTrace" v="n:7652281366053250287" />
                      <node concept="3clFbF" id="jo" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7652281366053251515" />
                        <node concept="3y3z36" id="jp" role="3clFbG">
                          <uo k="s:originTrace" v="n:7652281366053252609" />
                          <node concept="2OqwBi" id="jq" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7652281366053256105" />
                            <node concept="37vLTw" id="js" role="2Oq$k0">
                              <ref role="3cqZAo" node="im" resolve="node" />
                              <uo k="s:originTrace" v="n:7652281366053254112" />
                            </node>
                            <node concept="3TrEf2" id="jt" role="2OqNvi">
                              <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                              <uo k="s:originTrace" v="n:7652281366053257826" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="jr" role="3uHU7B">
                            <ref role="3cqZAo" node="jn" resolve="it" />
                            <uo k="s:originTrace" v="n:7652281366053251514" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="jn" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <uo k="s:originTrace" v="n:7652281366053250288" />
                      <node concept="2jxLKc" id="ju" role="1tU5fm">
                        <uo k="s:originTrace" v="n:7652281366053250289" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="ix" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366053283661" />
          </node>
          <node concept="3clFbJ" id="iy" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052935315" />
            <node concept="3clFbS" id="jv" role="3clFbx">
              <uo k="s:originTrace" v="n:7652281366052935317" />
              <node concept="2Gpval" id="jx" role="3cqZAp">
                <uo k="s:originTrace" v="n:7652281366052669877" />
                <node concept="2GrKxI" id="jy" role="2Gsz3X">
                  <property role="TrG5h" value="message" />
                  <uo k="s:originTrace" v="n:7652281366052669879" />
                </node>
                <node concept="37vLTw" id="jz" role="2GsD0m">
                  <ref role="3cqZAo" node="j7" resolve="existingMessages" />
                  <uo k="s:originTrace" v="n:7652281366053291842" />
                </node>
                <node concept="3clFbS" id="j$" role="2LFqv$">
                  <uo k="s:originTrace" v="n:7652281366052669883" />
                  <node concept="3clFbJ" id="j_" role="3cqZAp">
                    <uo k="s:originTrace" v="n:7652281366052676991" />
                    <node concept="2OqwBi" id="jA" role="3clFbw">
                      <uo k="s:originTrace" v="n:7652281366052686735" />
                      <node concept="2OqwBi" id="jC" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7652281366052677749" />
                        <node concept="2GrUjf" id="jE" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="jy" resolve="message" />
                          <uo k="s:originTrace" v="n:7652281366052677026" />
                        </node>
                        <node concept="3TrcHB" id="jF" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          <uo k="s:originTrace" v="n:7652281366052680815" />
                        </node>
                      </node>
                      <node concept="liA8E" id="jD" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <uo k="s:originTrace" v="n:7652281366052690433" />
                        <node concept="Xl_RD" id="jG" role="37wK5m">
                          <property role="Xl_RC" value="rec_message" />
                          <uo k="s:originTrace" v="n:7652281366052690636" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="jB" role="3clFbx">
                      <uo k="s:originTrace" v="n:7652281366052676993" />
                      <node concept="3clFbF" id="jH" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7652281366052695701" />
                        <node concept="3uNrnE" id="jI" role="3clFbG">
                          <uo k="s:originTrace" v="n:7652281366052705027" />
                          <node concept="37vLTw" id="jJ" role="2$L3a6">
                            <ref role="3cqZAo" node="j4" resolve="receivedMessages" />
                            <uo k="s:originTrace" v="n:7652281366052705029" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="jw" role="3clFbw">
              <uo k="s:originTrace" v="n:7652281366052957192" />
              <node concept="3GX2aA" id="jK" role="2OqNvi">
                <uo k="s:originTrace" v="n:7652281366052980565" />
              </node>
              <node concept="37vLTw" id="jL" role="2Oq$k0">
                <ref role="3cqZAo" node="j7" resolve="existingMessages" />
                <uo k="s:originTrace" v="n:7652281366053290001" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="iz" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052932699" />
          </node>
          <node concept="3clFbF" id="i$" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052711051" />
            <node concept="37vLTI" id="jM" role="3clFbG">
              <uo k="s:originTrace" v="n:7652281366052727973" />
              <node concept="3cpWs3" id="jN" role="37vLTx">
                <uo k="s:originTrace" v="n:7652281366052745113" />
                <node concept="37vLTw" id="jP" role="3uHU7w">
                  <ref role="3cqZAo" node="j4" resolve="receivedMessages" />
                  <uo k="s:originTrace" v="n:7652281366052747452" />
                </node>
                <node concept="Xl_RD" id="jQ" role="3uHU7B">
                  <property role="Xl_RC" value="rec_message" />
                  <uo k="s:originTrace" v="n:7652281366052729402" />
                </node>
              </node>
              <node concept="2OqwBi" id="jO" role="37vLTJ">
                <uo k="s:originTrace" v="n:7652281366052715628" />
                <node concept="2OqwBi" id="jR" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7652281366052713367" />
                  <node concept="37vLTw" id="jT" role="2Oq$k0">
                    <ref role="3cqZAo" node="im" resolve="node" />
                    <uo k="s:originTrace" v="n:7652281366052711050" />
                  </node>
                  <node concept="3TrEf2" id="jU" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                    <uo k="s:originTrace" v="n:7652281366052714837" />
                  </node>
                </node>
                <node concept="3TrcHB" id="jS" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:7652281366052717753" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="i_" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052332574" />
          </node>
          <node concept="3clFbF" id="iA" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052152427" />
            <node concept="37vLTI" id="jV" role="3clFbG">
              <uo k="s:originTrace" v="n:7652281366052156768" />
              <node concept="2ShNRf" id="jW" role="37vLTx">
                <uo k="s:originTrace" v="n:7652281366052156953" />
                <node concept="3zrR0B" id="jY" role="2ShVmc">
                  <uo k="s:originTrace" v="n:7652281366052156837" />
                  <node concept="3Tqbb2" id="jZ" role="3zrR0E">
                    <ref role="ehGHo" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                    <uo k="s:originTrace" v="n:7652281366052156838" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="jX" role="37vLTJ">
                <uo k="s:originTrace" v="n:7652281366052155132" />
                <node concept="2OqwBi" id="k0" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7652281366052153185" />
                  <node concept="37vLTw" id="k2" role="2Oq$k0">
                    <ref role="3cqZAo" node="im" resolve="node" />
                    <uo k="s:originTrace" v="n:7652281366052152426" />
                  </node>
                  <node concept="3TrEf2" id="k3" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                    <uo k="s:originTrace" v="n:7652281366052154384" />
                  </node>
                </node>
                <node concept="3TrEf2" id="k1" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
                  <uo k="s:originTrace" v="n:7652281366052156087" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="iB" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052354041" />
            <node concept="37vLTI" id="k4" role="3clFbG">
              <uo k="s:originTrace" v="n:7652281366052373933" />
              <node concept="3cpWs3" id="k5" role="37vLTx">
                <uo k="s:originTrace" v="n:7652281366052389921" />
                <node concept="2OqwBi" id="k7" role="3uHU7B">
                  <uo k="s:originTrace" v="n:7652281366052378531" />
                  <node concept="2OqwBi" id="k9" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7652281366052376740" />
                    <node concept="37vLTw" id="kb" role="2Oq$k0">
                      <ref role="3cqZAo" node="im" resolve="node" />
                      <uo k="s:originTrace" v="n:7652281366052376041" />
                    </node>
                    <node concept="3TrEf2" id="kc" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                      <uo k="s:originTrace" v="n:7652281366052377718" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="ka" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    <uo k="s:originTrace" v="n:7652281366052379657" />
                  </node>
                </node>
                <node concept="Xl_RD" id="k8" role="3uHU7w">
                  <property role="Xl_RC" value=".payload" />
                  <uo k="s:originTrace" v="n:7652281366052390018" />
                </node>
              </node>
              <node concept="2OqwBi" id="k6" role="37vLTJ">
                <uo k="s:originTrace" v="n:7652281366052361289" />
                <node concept="1PxgMI" id="kd" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7652281366052360128" />
                  <node concept="chp4Y" id="kf" role="3oSUPX">
                    <ref role="cht4Q" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                    <uo k="s:originTrace" v="n:7652281366052360486" />
                  </node>
                  <node concept="2OqwBi" id="kg" role="1m5AlR">
                    <uo k="s:originTrace" v="n:7652281366052355820" />
                    <node concept="2OqwBi" id="kh" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7652281366052354430" />
                      <node concept="37vLTw" id="kj" role="2Oq$k0">
                        <ref role="3cqZAo" node="im" resolve="node" />
                        <uo k="s:originTrace" v="n:7652281366052354040" />
                      </node>
                      <node concept="3TrEf2" id="kk" role="2OqNvi">
                        <ref role="3Tt5mk" to="o1mc:6F9Ho3O73hh" resolve="message" />
                        <uo k="s:originTrace" v="n:7652281366052355048" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="ki" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:Buyr4_DLlL" resolve="payload" />
                      <uo k="s:originTrace" v="n:7652281366052357782" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="ke" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:7652281366052363169" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="iC" role="3cqZAp">
            <uo k="s:originTrace" v="n:7652281366052116371" />
          </node>
        </node>
        <node concept="3Tm6S6" id="ik" role="1B3o_S">
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="3cqZAl" id="il" role="3clF45">
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="37vLTG" id="im" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3Tqbb2" id="kl" role="1tU5fm">
            <uo k="s:originTrace" v="n:7694881003796842316" />
          </node>
        </node>
        <node concept="37vLTG" id="in" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3uibUv" id="km" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SEnumerationLiteral" resolve="SEnumerationLiteral" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hN" role="1B3o_S">
        <uo k="s:originTrace" v="n:7694881003796842316" />
      </node>
      <node concept="3uibUv" id="hO" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7694881003796842316" />
      </node>
    </node>
    <node concept="3clFb_" id="h_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedProperties" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:7694881003796842316" />
      <node concept="3Tmbuc" id="kn" role="1B3o_S">
        <uo k="s:originTrace" v="n:7694881003796842316" />
      </node>
      <node concept="3uibUv" id="ko" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:7694881003796842316" />
        <node concept="3uibUv" id="kr" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
        <node concept="3uibUv" id="ks" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7694881003796842316" />
        </node>
      </node>
      <node concept="3clFbS" id="kp" role="3clF47">
        <uo k="s:originTrace" v="n:7694881003796842316" />
        <node concept="3cpWs8" id="kt" role="3cqZAp">
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="3cpWsn" id="kw" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
            <node concept="3uibUv" id="kx" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
              <node concept="3uibUv" id="kz" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
              <node concept="3uibUv" id="k$" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
              </node>
            </node>
            <node concept="2ShNRf" id="ky" role="33vP2m">
              <uo k="s:originTrace" v="n:7694881003796842316" />
              <node concept="1pGfFk" id="k_" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
                <node concept="3uibUv" id="kA" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
                <node concept="3uibUv" id="kB" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ku" role="3cqZAp">
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="2OqwBi" id="kC" role="3clFbG">
            <uo k="s:originTrace" v="n:7694881003796842316" />
            <node concept="37vLTw" id="kD" role="2Oq$k0">
              <ref role="3cqZAo" node="kw" resolve="properties" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
            </node>
            <node concept="liA8E" id="kE" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:7694881003796842316" />
              <node concept="1BaE9c" id="kF" role="37wK5m">
                <property role="1ouuDV" value="PROPS" />
                <property role="1BaxDp" value="policy$Ol3f" />
                <uo k="s:originTrace" v="n:7694881003796842316" />
                <node concept="2YIFZM" id="kH" role="1Bazha">
                  <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                  <node concept="1adDum" id="kI" role="37wK5m">
                    <property role="1adDun" value="0x10eda99958984cdeL" />
                    <uo k="s:originTrace" v="n:7694881003796842316" />
                  </node>
                  <node concept="1adDum" id="kJ" role="37wK5m">
                    <property role="1adDun" value="0x9416196c5eca1268L" />
                    <uo k="s:originTrace" v="n:7694881003796842316" />
                  </node>
                  <node concept="1adDum" id="kK" role="37wK5m">
                    <property role="1adDun" value="0x619ceb90241d8975L" />
                    <uo k="s:originTrace" v="n:7694881003796842316" />
                  </node>
                  <node concept="1adDum" id="kL" role="37wK5m">
                    <property role="1adDun" value="0x619ceb90241d897bL" />
                    <uo k="s:originTrace" v="n:7694881003796842316" />
                  </node>
                  <node concept="Xl_RD" id="kM" role="37wK5m">
                    <property role="Xl_RC" value="policy" />
                    <uo k="s:originTrace" v="n:7694881003796842316" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="kG" role="37wK5m">
                <uo k="s:originTrace" v="n:7694881003796842316" />
                <node concept="1pGfFk" id="kN" role="2ShVmc">
                  <ref role="37wK5l" node="hK" resolve="Fetch_Constraints.Policy_Property" />
                  <uo k="s:originTrace" v="n:7694881003796842316" />
                  <node concept="Xjq3P" id="kO" role="37wK5m">
                    <uo k="s:originTrace" v="n:7694881003796842316" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kv" role="3cqZAp">
          <uo k="s:originTrace" v="n:7694881003796842316" />
          <node concept="37vLTw" id="kP" role="3clFbG">
            <ref role="3cqZAo" node="kw" resolve="properties" />
            <uo k="s:originTrace" v="n:7694881003796842316" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="kq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:7694881003796842316" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="kQ">
    <node concept="39e2AJ" id="kR" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="kU" role="39e3Y0">
        <ref role="39e2AK" to="uqek:2LRe1VcfePN" resolve="AbstractActor_Constraints" />
        <node concept="385nmt" id="l7" role="385vvn">
          <property role="385vuF" value="AbstractActor_Constraints" />
          <node concept="3u3nmq" id="l9" role="385v07">
            <property role="3u3nmv" value="3204091364824116595" />
          </node>
        </node>
        <node concept="39e2AT" id="l8" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="AbstractActor_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kV" role="39e3Y0">
        <ref role="39e2AK" to="uqek:5Q93FfGbuJK" resolve="ActorReference_Constraints" />
        <node concept="385nmt" id="la" role="385vvn">
          <property role="385vuF" value="ActorReference_Constraints" />
          <node concept="3u3nmq" id="lc" role="385v07">
            <property role="3u3nmv" value="6739934483261025264" />
          </node>
        </node>
        <node concept="39e2AT" id="lb" role="39e2AY">
          <ref role="39e2AS" node="x" resolve="ActorReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kW" role="39e3Y0">
        <ref role="39e2AK" to="uqek:4DsQTTkAfsF" resolve="CreateActor_Constraints" />
        <node concept="385nmt" id="ld" role="385vvn">
          <property role="385vuF" value="CreateActor_Constraints" />
          <node concept="3u3nmq" id="lf" role="385v07">
            <property role="3u3nmv" value="5358399129734674219" />
          </node>
        </node>
        <node concept="39e2AT" id="le" role="39e2AY">
          <ref role="39e2AS" node="2k" resolve="CreateActor_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kX" role="39e3Y0">
        <ref role="39e2AK" to="uqek:14g3IsR9rnQ" resolve="CreateBehavior_Constraints" />
        <node concept="385nmt" id="lg" role="385vvn">
          <property role="385vuF" value="CreateBehavior_Constraints" />
          <node concept="3u3nmq" id="li" role="385v07">
            <property role="3u3nmv" value="1229499084497597942" />
          </node>
        </node>
        <node concept="39e2AT" id="lh" role="39e2AY">
          <ref role="39e2AS" node="6y" resolve="CreateBehavior_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kY" role="39e3Y0">
        <ref role="39e2AK" to="uqek:25QEYlOh1wS" resolve="CreateEnvelope_Constraints" />
        <node concept="385nmt" id="lj" role="385vvn">
          <property role="385vuF" value="CreateEnvelope_Constraints" />
          <node concept="3u3nmq" id="ll" role="385v07">
            <property role="3u3nmv" value="2411303652489959480" />
          </node>
        </node>
        <node concept="39e2AT" id="lk" role="39e2AY">
          <ref role="39e2AS" node="8R" resolve="CreateEnvelope_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kZ" role="39e3Y0">
        <ref role="39e2AK" to="uqek:14g3IsR6YoR" resolve="CreateMessage_Constraints" />
        <node concept="385nmt" id="lm" role="385vvn">
          <property role="385vuF" value="CreateMessage_Constraints" />
          <node concept="3u3nmq" id="lo" role="385v07">
            <property role="3u3nmv" value="1229499084496954935" />
          </node>
        </node>
        <node concept="39e2AT" id="ln" role="39e2AY">
          <ref role="39e2AS" node="cE" resolve="CreateMessage_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l0" role="39e3Y0">
        <ref role="39e2AK" to="uqek:14g3IsR9UPr" resolve="CreatePayload_Constraints" />
        <node concept="385nmt" id="lp" role="385vvn">
          <property role="385vuF" value="CreatePayload_Constraints" />
          <node concept="3u3nmq" id="lr" role="385v07">
            <property role="3u3nmv" value="1229499084497726811" />
          </node>
        </node>
        <node concept="39e2AT" id="lq" role="39e2AY">
          <ref role="39e2AS" node="eX" resolve="CreatePayload_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l1" role="39e3Y0">
        <ref role="39e2AK" to="uqek:2PvKG7Dy7Qu" resolve="Envelope_Constraints" />
        <node concept="385nmt" id="ls" role="385vvn">
          <property role="385vuF" value="Envelope_Constraints" />
          <node concept="3u3nmq" id="lu" role="385v07">
            <property role="3u3nmv" value="3269545992596782494" />
          </node>
        </node>
        <node concept="39e2AT" id="lt" role="39e2AY">
          <ref role="39e2AS" node="hg" resolve="Envelope_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l2" role="39e3Y0">
        <ref role="39e2AK" to="uqek:6F9Ho3Od$tc" resolve="Fetch_Constraints" />
        <node concept="385nmt" id="lv" role="385vvn">
          <property role="385vuF" value="Fetch_Constraints" />
          <node concept="3u3nmq" id="lx" role="385v07">
            <property role="3u3nmv" value="7694881003796842316" />
          </node>
        </node>
        <node concept="39e2AT" id="lw" role="39e2AY">
          <ref role="39e2AS" node="hv" resolve="Fetch_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l3" role="39e3Y0">
        <ref role="39e2AK" to="uqek:2sIU3umt3ek" resolve="ReplyToMessage_Constraints" />
        <node concept="385nmt" id="ly" role="385vvn">
          <property role="385vuF" value="ReplyToMessage_Constraints" />
          <node concept="3u3nmq" id="l$" role="385v07">
            <property role="3u3nmv" value="2823449341852922772" />
          </node>
        </node>
        <node concept="39e2AT" id="lz" role="39e2AY">
          <ref role="39e2AS" node="lS" resolve="ReplyToMessage_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l4" role="39e3Y0">
        <ref role="39e2AK" to="uqek:4posSimNLvb" resolve="SelectEnvelope_Constraints" />
        <node concept="385nmt" id="l_" role="385vvn">
          <property role="385vuF" value="SelectEnvelope_Constraints" />
          <node concept="3u3nmq" id="lB" role="385v07">
            <property role="3u3nmv" value="5068928393908525003" />
          </node>
        </node>
        <node concept="39e2AT" id="lA" role="39e2AY">
          <ref role="39e2AS" node="p_" resolve="SelectEnvelope_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l5" role="39e3Y0">
        <ref role="39e2AK" to="uqek:4posSimNCv6" resolve="SelectPayload_Constraints" />
        <node concept="385nmt" id="lC" role="385vvn">
          <property role="385vuF" value="SelectPayload_Constraints" />
          <node concept="3u3nmq" id="lE" role="385v07">
            <property role="3u3nmv" value="5068928393908488134" />
          </node>
        </node>
        <node concept="39e2AT" id="lD" role="39e2AY">
          <ref role="39e2AS" node="rS" resolve="SelectPayload_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="l6" role="39e3Y0">
        <ref role="39e2AK" to="uqek:4DsQTTkx6L6" resolve="SendMessage_Constraints" />
        <node concept="385nmt" id="lF" role="385vvn">
          <property role="385vuF" value="SendMessage_Constraints" />
          <node concept="3u3nmq" id="lH" role="385v07">
            <property role="3u3nmv" value="5358399129733327942" />
          </node>
        </node>
        <node concept="39e2AT" id="lG" role="39e2AY">
          <ref role="39e2AS" node="tw" resolve="SendMessage_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kS" role="39e2AI">
      <property role="39e3Y2" value="map_ConstraintsClassifierMethod" />
      <node concept="39e2AG" id="lI" role="39e3Y0">
        <ref role="39e2AK" to="uqek:2sIU3umv8Wj" resolve="getReceiver" />
        <node concept="385nmt" id="lK" role="385vvn">
          <property role="385vuF" value="_additional_getReceiver(node&lt;CreateMessage&gt;):node&lt;AbstractActor&gt;" />
          <node concept="3u3nmq" id="lM" role="385v07">
            <property role="3u3nmv" value="2823449341853470483" />
          </node>
        </node>
        <node concept="39e2AT" id="lL" role="39e2AY">
          <ref role="39e2AS" node="tB" resolve="_additional_getReceiver" />
        </node>
      </node>
      <node concept="39e2AG" id="lJ" role="39e3Y0">
        <ref role="39e2AK" to="uqek:2sIU3umv4H1" resolve="getSender" />
        <node concept="385nmt" id="lN" role="385vvn">
          <property role="385vuF" value="_additional_getSender(node&lt;CreateMessage&gt;):node&lt;AbstractActor&gt;" />
          <node concept="3u3nmq" id="lP" role="385v07">
            <property role="3u3nmv" value="2823449341853453121" />
          </node>
        </node>
        <node concept="39e2AT" id="lO" role="39e2AY">
          <ref role="39e2AS" node="tA" resolve="_additional_getSender" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kT" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="lQ" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="lR" role="39e2AY">
          <ref role="39e2AS" node="K" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="lS">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="ReplyToMessage_Constraints" />
    <uo k="s:originTrace" v="n:2823449341852922772" />
    <node concept="3Tm1VV" id="lT" role="1B3o_S">
      <uo k="s:originTrace" v="n:2823449341852922772" />
    </node>
    <node concept="3uibUv" id="lU" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2823449341852922772" />
    </node>
    <node concept="3clFbW" id="lV" role="jymVt">
      <uo k="s:originTrace" v="n:2823449341852922772" />
      <node concept="3cqZAl" id="lY" role="3clF45">
        <uo k="s:originTrace" v="n:2823449341852922772" />
      </node>
      <node concept="3clFbS" id="lZ" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341852922772" />
        <node concept="XkiVB" id="m1" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="1BaE9c" id="m2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ReplyToMessage$fU" />
            <uo k="s:originTrace" v="n:2823449341852922772" />
            <node concept="2YIFZM" id="m3" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="1adDum" id="m4" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
              <node concept="1adDum" id="m5" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
              <node concept="1adDum" id="m6" role="37wK5m">
                <property role="1adDun" value="0x272ee8379674297cL" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
              <node concept="Xl_RD" id="m7" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.ReplyToMessage" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="m0" role="1B3o_S">
        <uo k="s:originTrace" v="n:2823449341852922772" />
      </node>
    </node>
    <node concept="2tJIrI" id="lW" role="jymVt">
      <uo k="s:originTrace" v="n:2823449341852922772" />
    </node>
    <node concept="3clFb_" id="lX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedReferences" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:2823449341852922772" />
      <node concept="3Tmbuc" id="m8" role="1B3o_S">
        <uo k="s:originTrace" v="n:2823449341852922772" />
      </node>
      <node concept="3uibUv" id="m9" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:2823449341852922772" />
        <node concept="3uibUv" id="mc" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          <uo k="s:originTrace" v="n:2823449341852922772" />
        </node>
        <node concept="3uibUv" id="md" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2823449341852922772" />
        </node>
      </node>
      <node concept="3clFbS" id="ma" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341852922772" />
        <node concept="3cpWs8" id="me" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="3cpWsn" id="mk" role="3cpWs9">
            <property role="TrG5h" value="d0" />
            <uo k="s:originTrace" v="n:2823449341852922772" />
            <node concept="3uibUv" id="ml" role="1tU5fm">
              <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
            </node>
            <node concept="2ShNRf" id="mm" role="33vP2m">
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="YeOm9" id="mn" role="2ShVmc">
                <uo k="s:originTrace" v="n:2823449341852922772" />
                <node concept="1Y3b0j" id="mo" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                  <node concept="1BaE9c" id="mp" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="newMessage$f833" />
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                    <node concept="2YIFZM" id="mv" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                      <node concept="1adDum" id="mw" role="37wK5m">
                        <property role="1adDun" value="0x10eda99958984cdeL" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="1adDum" id="mx" role="37wK5m">
                        <property role="1adDun" value="0x9416196c5eca1268L" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="1adDum" id="my" role="37wK5m">
                        <property role="1adDun" value="0x272ee8379674297cL" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="1adDum" id="mz" role="37wK5m">
                        <property role="1adDun" value="0x272ee83796742981L" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="Xl_RD" id="m$" role="37wK5m">
                        <property role="Xl_RC" value="newMessage" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="mq" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="Xjq3P" id="mr" role="37wK5m">
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="3clFbT" id="ms" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="3clFbT" id="mt" role="37wK5m">
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="3clFb_" id="mu" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                    <node concept="3Tm1VV" id="m_" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                    <node concept="3uibUv" id="mA" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                    <node concept="2AHcQZ" id="mB" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                    <node concept="3clFbS" id="mC" role="3clF47">
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                      <node concept="3cpWs6" id="mE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                        <node concept="2ShNRf" id="mF" role="3cqZAk">
                          <uo k="s:originTrace" v="n:2823449341852922891" />
                          <node concept="YeOm9" id="mG" role="2ShVmc">
                            <uo k="s:originTrace" v="n:2823449341852922891" />
                            <node concept="1Y3b0j" id="mH" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                              <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                              <uo k="s:originTrace" v="n:2823449341852922891" />
                              <node concept="3Tm1VV" id="mI" role="1B3o_S">
                                <uo k="s:originTrace" v="n:2823449341852922891" />
                              </node>
                              <node concept="3clFb_" id="mJ" role="jymVt">
                                <property role="TrG5h" value="getSearchScopeValidatorNode" />
                                <uo k="s:originTrace" v="n:2823449341852922891" />
                                <node concept="3Tm1VV" id="mL" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                </node>
                                <node concept="3uibUv" id="mM" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                </node>
                                <node concept="3clFbS" id="mN" role="3clF47">
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                  <node concept="3cpWs6" id="mP" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852922891" />
                                    <node concept="2ShNRf" id="mQ" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:2823449341852922891" />
                                      <node concept="1pGfFk" id="mR" role="2ShVmc">
                                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                        <uo k="s:originTrace" v="n:2823449341852922891" />
                                        <node concept="Xl_RD" id="mS" role="37wK5m">
                                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                                          <uo k="s:originTrace" v="n:2823449341852922891" />
                                        </node>
                                        <node concept="Xl_RD" id="mT" role="37wK5m">
                                          <property role="Xl_RC" value="2823449341852922891" />
                                          <uo k="s:originTrace" v="n:2823449341852922891" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="mO" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="mK" role="jymVt">
                                <property role="TrG5h" value="createScope" />
                                <uo k="s:originTrace" v="n:2823449341852922891" />
                                <node concept="3Tm1VV" id="mU" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                </node>
                                <node concept="3uibUv" id="mV" role="3clF45">
                                  <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                </node>
                                <node concept="37vLTG" id="mW" role="3clF46">
                                  <property role="TrG5h" value="_context" />
                                  <property role="3TUv4t" value="true" />
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                  <node concept="3uibUv" id="mZ" role="1tU5fm">
                                    <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                    <uo k="s:originTrace" v="n:2823449341852922891" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="mX" role="3clF47">
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                  <node concept="3cpWs8" id="n0" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852923061" />
                                    <node concept="3cpWsn" id="n5" role="3cpWs9">
                                      <property role="TrG5h" value="messages" />
                                      <uo k="s:originTrace" v="n:2823449341852923062" />
                                      <node concept="_YKpA" id="n6" role="1tU5fm">
                                        <uo k="s:originTrace" v="n:2823449341852923063" />
                                        <node concept="3Tqbb2" id="n8" role="_ZDj9">
                                          <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                          <uo k="s:originTrace" v="n:2823449341852923064" />
                                        </node>
                                      </node>
                                      <node concept="2ShNRf" id="n7" role="33vP2m">
                                        <uo k="s:originTrace" v="n:2823449341852923065" />
                                        <node concept="Tc6Ow" id="n9" role="2ShVmc">
                                          <uo k="s:originTrace" v="n:2823449341852923066" />
                                          <node concept="3Tqbb2" id="na" role="HW$YZ">
                                            <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                            <uo k="s:originTrace" v="n:2823449341852923067" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="n1" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852923136" />
                                  </node>
                                  <node concept="2Gpval" id="n2" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852925175" />
                                    <node concept="2GrKxI" id="nb" role="2Gsz3X">
                                      <property role="TrG5h" value="message" />
                                      <uo k="s:originTrace" v="n:2823449341852925176" />
                                    </node>
                                    <node concept="2OqwBi" id="nc" role="2GsD0m">
                                      <uo k="s:originTrace" v="n:2823449341852925177" />
                                      <node concept="2OqwBi" id="ne" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:2823449341852925178" />
                                        <node concept="1DoJHT" id="ng" role="2Oq$k0">
                                          <property role="1Dpdpm" value="getReferenceNode" />
                                          <uo k="s:originTrace" v="n:2823449341852925179" />
                                          <node concept="3uibUv" id="ni" role="1Ez5kq">
                                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                          </node>
                                          <node concept="37vLTw" id="nj" role="1EMhIo">
                                            <ref role="3cqZAo" node="mW" resolve="_context" />
                                          </node>
                                        </node>
                                        <node concept="2Xjw5R" id="nh" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:2823449341852925180" />
                                          <node concept="1xMEDy" id="nk" role="1xVPHs">
                                            <uo k="s:originTrace" v="n:2823449341852925181" />
                                            <node concept="chp4Y" id="nl" role="ri$Ld">
                                              <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                              <uo k="s:originTrace" v="n:2823449341852925182" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2Rf3mk" id="nf" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:2823449341852925183" />
                                        <node concept="1xMEDy" id="nm" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:2823449341852925184" />
                                          <node concept="chp4Y" id="nn" role="ri$Ld">
                                            <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                            <uo k="s:originTrace" v="n:2823449341852925185" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="nd" role="2LFqv$">
                                      <uo k="s:originTrace" v="n:2823449341852925186" />
                                      <node concept="3cpWs8" id="no" role="3cqZAp">
                                        <uo k="s:originTrace" v="n:2823449341852925187" />
                                        <node concept="3cpWsn" id="nq" role="3cpWs9">
                                          <property role="TrG5h" value="sender" />
                                          <uo k="s:originTrace" v="n:2823449341852925188" />
                                          <node concept="3Tqbb2" id="nr" role="1tU5fm">
                                            <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                            <uo k="s:originTrace" v="n:2823449341852925189" />
                                          </node>
                                          <node concept="2ShNRf" id="ns" role="33vP2m">
                                            <uo k="s:originTrace" v="n:2823449341852925190" />
                                            <node concept="3zrR0B" id="nt" role="2ShVmc">
                                              <uo k="s:originTrace" v="n:2823449341852925191" />
                                              <node concept="3Tqbb2" id="nu" role="3zrR0E">
                                                <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                                <uo k="s:originTrace" v="n:2823449341852925192" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="np" role="3cqZAp">
                                        <uo k="s:originTrace" v="n:2823449341852925193" />
                                        <node concept="3clFbS" id="nv" role="3clFbx">
                                          <uo k="s:originTrace" v="n:2823449341852925194" />
                                          <node concept="Jncv_" id="nx" role="3cqZAp">
                                            <ref role="JncvD" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
                                            <uo k="s:originTrace" v="n:2823449341852925195" />
                                            <node concept="2OqwBi" id="n_" role="JncvB">
                                              <uo k="s:originTrace" v="n:2823449341852925196" />
                                              <node concept="2GrUjf" id="nC" role="2Oq$k0">
                                                <ref role="2Gs0qQ" node="nb" resolve="message" />
                                                <uo k="s:originTrace" v="n:2823449341852925197" />
                                              </node>
                                              <node concept="3TrEf2" id="nD" role="2OqNvi">
                                                <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
                                                <uo k="s:originTrace" v="n:2823449341852925198" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="nA" role="Jncv$">
                                              <uo k="s:originTrace" v="n:2823449341852925199" />
                                            </node>
                                            <node concept="JncvC" id="nB" role="JncvA">
                                              <property role="TrG5h" value="envelope" />
                                              <uo k="s:originTrace" v="n:2823449341852925206" />
                                              <node concept="2jxLKc" id="nE" role="1tU5fm">
                                                <uo k="s:originTrace" v="n:2823449341852925207" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Jncv_" id="ny" role="3cqZAp">
                                            <ref role="JncvD" to="o1mc:Buyr4_JQa3" resolve="SelectEnvelope" />
                                            <uo k="s:originTrace" v="n:2823449341852925208" />
                                            <node concept="2OqwBi" id="nF" role="JncvB">
                                              <uo k="s:originTrace" v="n:2823449341852925209" />
                                              <node concept="2GrUjf" id="nI" role="2Oq$k0">
                                                <ref role="2Gs0qQ" node="nb" resolve="message" />
                                                <uo k="s:originTrace" v="n:2823449341852925210" />
                                              </node>
                                              <node concept="3TrEf2" id="nJ" role="2OqNvi">
                                                <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
                                                <uo k="s:originTrace" v="n:2823449341852925211" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="nG" role="Jncv$">
                                              <uo k="s:originTrace" v="n:2823449341852925212" />
                                            </node>
                                            <node concept="JncvC" id="nH" role="JncvA">
                                              <property role="TrG5h" value="envelope" />
                                              <uo k="s:originTrace" v="n:2823449341852925221" />
                                              <node concept="2jxLKc" id="nK" role="1tU5fm">
                                                <uo k="s:originTrace" v="n:2823449341852925222" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbH" id="nz" role="3cqZAp">
                                            <uo k="s:originTrace" v="n:2823449341852925223" />
                                          </node>
                                          <node concept="3clFbJ" id="n$" role="3cqZAp">
                                            <uo k="s:originTrace" v="n:2823449341852925224" />
                                            <node concept="3clFbS" id="nL" role="3clFbx">
                                              <uo k="s:originTrace" v="n:2823449341852925225" />
                                              <node concept="3clFbF" id="nN" role="3cqZAp">
                                                <uo k="s:originTrace" v="n:2823449341852925226" />
                                                <node concept="2OqwBi" id="nO" role="3clFbG">
                                                  <uo k="s:originTrace" v="n:2823449341852925227" />
                                                  <node concept="37vLTw" id="nP" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="n5" resolve="messages" />
                                                    <uo k="s:originTrace" v="n:2823449341852925228" />
                                                  </node>
                                                  <node concept="TSZUe" id="nQ" role="2OqNvi">
                                                    <uo k="s:originTrace" v="n:2823449341852925229" />
                                                    <node concept="2GrUjf" id="nR" role="25WWJ7">
                                                      <ref role="2Gs0qQ" node="nb" resolve="message" />
                                                      <uo k="s:originTrace" v="n:2823449341852925230" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbC" id="nM" role="3clFbw">
                                              <uo k="s:originTrace" v="n:2823449341852925231" />
                                              <node concept="2OqwBi" id="nS" role="3uHU7w">
                                                <uo k="s:originTrace" v="n:2823449341852925232" />
                                                <node concept="1DoJHT" id="nU" role="2Oq$k0">
                                                  <property role="1Dpdpm" value="getReferenceNode" />
                                                  <uo k="s:originTrace" v="n:2823449341852925233" />
                                                  <node concept="3uibUv" id="nW" role="1Ez5kq">
                                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                  </node>
                                                  <node concept="37vLTw" id="nX" role="1EMhIo">
                                                    <ref role="3cqZAo" node="mW" resolve="_context" />
                                                  </node>
                                                </node>
                                                <node concept="2Xjw5R" id="nV" role="2OqNvi">
                                                  <uo k="s:originTrace" v="n:2823449341852925234" />
                                                  <node concept="1xMEDy" id="nY" role="1xVPHs">
                                                    <uo k="s:originTrace" v="n:2823449341852925235" />
                                                    <node concept="chp4Y" id="nZ" role="ri$Ld">
                                                      <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                                      <uo k="s:originTrace" v="n:2823449341852925236" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="nT" role="3uHU7B">
                                                <ref role="3cqZAo" node="nq" resolve="sender" />
                                                <uo k="s:originTrace" v="n:2823449341852925237" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="nw" role="3clFbw">
                                          <uo k="s:originTrace" v="n:2823449341852925238" />
                                          <node concept="2OqwBi" id="o0" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:2823449341852925239" />
                                            <node concept="2GrUjf" id="o2" role="2Oq$k0">
                                              <ref role="2Gs0qQ" node="nb" resolve="message" />
                                              <uo k="s:originTrace" v="n:2823449341852925240" />
                                            </node>
                                            <node concept="3TrEf2" id="o3" role="2OqNvi">
                                              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
                                              <uo k="s:originTrace" v="n:2823449341852925241" />
                                            </node>
                                          </node>
                                          <node concept="3x8VRR" id="o1" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:2823449341852925242" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="n3" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852925164" />
                                  </node>
                                  <node concept="3clFbF" id="n4" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852929846" />
                                    <node concept="2YIFZM" id="o4" role="3clFbG">
                                      <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                                      <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                      <uo k="s:originTrace" v="n:2823449341852929848" />
                                      <node concept="2OqwBi" id="o5" role="37wK5m">
                                        <uo k="s:originTrace" v="n:2823449341852929849" />
                                        <node concept="37vLTw" id="o6" role="2Oq$k0">
                                          <ref role="3cqZAo" node="n5" resolve="messages" />
                                          <uo k="s:originTrace" v="n:2823449341852929850" />
                                        </node>
                                        <node concept="ANE8D" id="o7" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:2823449341852929851" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="mY" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:2823449341852922891" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="mD" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="mf" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="3cpWsn" id="o8" role="3cpWs9">
            <property role="TrG5h" value="d1" />
            <uo k="s:originTrace" v="n:2823449341852922772" />
            <node concept="3uibUv" id="o9" role="1tU5fm">
              <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
            </node>
            <node concept="2ShNRf" id="oa" role="33vP2m">
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="YeOm9" id="ob" role="2ShVmc">
                <uo k="s:originTrace" v="n:2823449341852922772" />
                <node concept="1Y3b0j" id="oc" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                  <node concept="1BaE9c" id="od" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="receivedMessage$f2bE" />
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                    <node concept="2YIFZM" id="oj" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                      <node concept="1adDum" id="ok" role="37wK5m">
                        <property role="1adDun" value="0x10eda99958984cdeL" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="1adDum" id="ol" role="37wK5m">
                        <property role="1adDun" value="0x9416196c5eca1268L" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="1adDum" id="om" role="37wK5m">
                        <property role="1adDun" value="0x272ee8379674297cL" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="1adDum" id="on" role="37wK5m">
                        <property role="1adDun" value="0x272ee8379674297dL" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                      <node concept="Xl_RD" id="oo" role="37wK5m">
                        <property role="Xl_RC" value="receivedMessage" />
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="oe" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="Xjq3P" id="of" role="37wK5m">
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="3clFbT" id="og" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="3clFbT" id="oh" role="37wK5m">
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                  </node>
                  <node concept="3clFb_" id="oi" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:2823449341852922772" />
                    <node concept="3Tm1VV" id="op" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                    <node concept="3uibUv" id="oq" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                    <node concept="2AHcQZ" id="or" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                    <node concept="3clFbS" id="os" role="3clF47">
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                      <node concept="3cpWs6" id="ou" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2823449341852922772" />
                        <node concept="2ShNRf" id="ov" role="3cqZAk">
                          <uo k="s:originTrace" v="n:2823449341852936117" />
                          <node concept="YeOm9" id="ow" role="2ShVmc">
                            <uo k="s:originTrace" v="n:2823449341852936117" />
                            <node concept="1Y3b0j" id="ox" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                              <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                              <uo k="s:originTrace" v="n:2823449341852936117" />
                              <node concept="3Tm1VV" id="oy" role="1B3o_S">
                                <uo k="s:originTrace" v="n:2823449341852936117" />
                              </node>
                              <node concept="3clFb_" id="oz" role="jymVt">
                                <property role="TrG5h" value="getSearchScopeValidatorNode" />
                                <uo k="s:originTrace" v="n:2823449341852936117" />
                                <node concept="3Tm1VV" id="o_" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                </node>
                                <node concept="3uibUv" id="oA" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                </node>
                                <node concept="3clFbS" id="oB" role="3clF47">
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                  <node concept="3cpWs6" id="oD" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852936117" />
                                    <node concept="2ShNRf" id="oE" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:2823449341852936117" />
                                      <node concept="1pGfFk" id="oF" role="2ShVmc">
                                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                        <uo k="s:originTrace" v="n:2823449341852936117" />
                                        <node concept="Xl_RD" id="oG" role="37wK5m">
                                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                                          <uo k="s:originTrace" v="n:2823449341852936117" />
                                        </node>
                                        <node concept="Xl_RD" id="oH" role="37wK5m">
                                          <property role="Xl_RC" value="2823449341852936117" />
                                          <uo k="s:originTrace" v="n:2823449341852936117" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="oC" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="o$" role="jymVt">
                                <property role="TrG5h" value="createScope" />
                                <uo k="s:originTrace" v="n:2823449341852936117" />
                                <node concept="3Tm1VV" id="oI" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                </node>
                                <node concept="3uibUv" id="oJ" role="3clF45">
                                  <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                </node>
                                <node concept="37vLTG" id="oK" role="3clF46">
                                  <property role="TrG5h" value="_context" />
                                  <property role="3TUv4t" value="true" />
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                  <node concept="3uibUv" id="oN" role="1tU5fm">
                                    <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                    <uo k="s:originTrace" v="n:2823449341852936117" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="oL" role="3clF47">
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                  <node concept="3clFbF" id="oO" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:2823449341852936254" />
                                    <node concept="2YIFZM" id="oP" role="3clFbG">
                                      <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                                      <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                      <uo k="s:originTrace" v="n:2823449341852937086" />
                                      <node concept="2OqwBi" id="oQ" role="37wK5m">
                                        <uo k="s:originTrace" v="n:2823449341852953837" />
                                        <node concept="2OqwBi" id="oR" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:2823449341852941091" />
                                          <node concept="2OqwBi" id="oT" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:2823449341852938302" />
                                            <node concept="1DoJHT" id="oV" role="2Oq$k0">
                                              <property role="1Dpdpm" value="getReferenceNode" />
                                              <uo k="s:originTrace" v="n:2823449341852937248" />
                                              <node concept="3uibUv" id="oX" role="1Ez5kq">
                                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                              </node>
                                              <node concept="37vLTw" id="oY" role="1EMhIo">
                                                <ref role="3cqZAo" node="oK" resolve="_context" />
                                              </node>
                                            </node>
                                            <node concept="2Xjw5R" id="oW" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:2823449341852939851" />
                                              <node concept="1xMEDy" id="oZ" role="1xVPHs">
                                                <uo k="s:originTrace" v="n:2823449341852939853" />
                                                <node concept="chp4Y" id="p0" role="ri$Ld">
                                                  <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                                  <uo k="s:originTrace" v="n:2823449341852940172" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2Rf3mk" id="oU" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:2823449341852943039" />
                                            <node concept="1xMEDy" id="p1" role="1xVPHs">
                                              <uo k="s:originTrace" v="n:2823449341852943041" />
                                              <node concept="chp4Y" id="p2" role="ri$Ld">
                                                <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                                <uo k="s:originTrace" v="n:2823449341852943345" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3zZkjj" id="oS" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:2823449341852980038" />
                                          <node concept="1bVj0M" id="p3" role="23t8la">
                                            <uo k="s:originTrace" v="n:2823449341852980040" />
                                            <node concept="3clFbS" id="p4" role="1bW5cS">
                                              <uo k="s:originTrace" v="n:2823449341852980041" />
                                              <node concept="3clFbF" id="p6" role="3cqZAp">
                                                <uo k="s:originTrace" v="n:2823449341852980614" />
                                                <node concept="2OqwBi" id="p7" role="3clFbG">
                                                  <uo k="s:originTrace" v="n:2823449341852994191" />
                                                  <node concept="2OqwBi" id="p8" role="2Oq$k0">
                                                    <uo k="s:originTrace" v="n:2823449341852981788" />
                                                    <node concept="37vLTw" id="pa" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="p5" resolve="it" />
                                                      <uo k="s:originTrace" v="n:2823449341852980613" />
                                                    </node>
                                                    <node concept="3TrcHB" id="pb" role="2OqNvi">
                                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                      <uo k="s:originTrace" v="n:2823449341852985752" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="p9" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                                                    <uo k="s:originTrace" v="n:2823449341852998377" />
                                                    <node concept="Xl_RD" id="pc" role="37wK5m">
                                                      <property role="Xl_RC" value="rec_message[0-9]+" />
                                                      <uo k="s:originTrace" v="n:2823449341852998683" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="p5" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <uo k="s:originTrace" v="n:2823449341852980042" />
                                              <node concept="2jxLKc" id="pd" role="1tU5fm">
                                                <uo k="s:originTrace" v="n:2823449341852980043" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="oM" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:2823449341852936117" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ot" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:2823449341852922772" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="mg" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="3cpWsn" id="pe" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:2823449341852922772" />
            <node concept="3uibUv" id="pf" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="3uibUv" id="ph" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
              <node concept="3uibUv" id="pi" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
            </node>
            <node concept="2ShNRf" id="pg" role="33vP2m">
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="1pGfFk" id="pj" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
                <node concept="3uibUv" id="pk" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                </node>
                <node concept="3uibUv" id="pl" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mh" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="2OqwBi" id="pm" role="3clFbG">
            <uo k="s:originTrace" v="n:2823449341852922772" />
            <node concept="37vLTw" id="pn" role="2Oq$k0">
              <ref role="3cqZAo" node="pe" resolve="references" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
            </node>
            <node concept="liA8E" id="po" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="2OqwBi" id="pp" role="37wK5m">
                <uo k="s:originTrace" v="n:2823449341852922772" />
                <node concept="37vLTw" id="pr" role="2Oq$k0">
                  <ref role="3cqZAo" node="mk" resolve="d0" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                </node>
                <node concept="liA8E" id="ps" role="2OqNvi">
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                </node>
              </node>
              <node concept="37vLTw" id="pq" role="37wK5m">
                <ref role="3cqZAo" node="mk" resolve="d0" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mi" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="2OqwBi" id="pt" role="3clFbG">
            <uo k="s:originTrace" v="n:2823449341852922772" />
            <node concept="37vLTw" id="pu" role="2Oq$k0">
              <ref role="3cqZAo" node="pe" resolve="references" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
            </node>
            <node concept="liA8E" id="pv" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:2823449341852922772" />
              <node concept="2OqwBi" id="pw" role="37wK5m">
                <uo k="s:originTrace" v="n:2823449341852922772" />
                <node concept="37vLTw" id="py" role="2Oq$k0">
                  <ref role="3cqZAo" node="o8" resolve="d1" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                </node>
                <node concept="liA8E" id="pz" role="2OqNvi">
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:2823449341852922772" />
                </node>
              </node>
              <node concept="37vLTw" id="px" role="37wK5m">
                <ref role="3cqZAo" node="o8" resolve="d1" />
                <uo k="s:originTrace" v="n:2823449341852922772" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mj" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341852922772" />
          <node concept="37vLTw" id="p$" role="3clFbG">
            <ref role="3cqZAo" node="pe" resolve="references" />
            <uo k="s:originTrace" v="n:2823449341852922772" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="mb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:2823449341852922772" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="p_">
    <property role="3GE5qa" value="envelope" />
    <property role="TrG5h" value="SelectEnvelope_Constraints" />
    <uo k="s:originTrace" v="n:5068928393908525003" />
    <node concept="3Tm1VV" id="pA" role="1B3o_S">
      <uo k="s:originTrace" v="n:5068928393908525003" />
    </node>
    <node concept="3uibUv" id="pB" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5068928393908525003" />
    </node>
    <node concept="3clFbW" id="pC" role="jymVt">
      <uo k="s:originTrace" v="n:5068928393908525003" />
      <node concept="3cqZAl" id="pF" role="3clF45">
        <uo k="s:originTrace" v="n:5068928393908525003" />
      </node>
      <node concept="3clFbS" id="pG" role="3clF47">
        <uo k="s:originTrace" v="n:5068928393908525003" />
        <node concept="XkiVB" id="pI" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5068928393908525003" />
          <node concept="1BaE9c" id="pJ" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SelectEnvelope$S6" />
            <uo k="s:originTrace" v="n:5068928393908525003" />
            <node concept="2YIFZM" id="pK" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5068928393908525003" />
              <node concept="1adDum" id="pL" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
              <node concept="1adDum" id="pM" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
              <node concept="1adDum" id="pN" role="37wK5m">
                <property role="1adDun" value="0x9de89b125bf6283L" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
              <node concept="Xl_RD" id="pO" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.SelectEnvelope" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="pH" role="1B3o_S">
        <uo k="s:originTrace" v="n:5068928393908525003" />
      </node>
    </node>
    <node concept="2tJIrI" id="pD" role="jymVt">
      <uo k="s:originTrace" v="n:5068928393908525003" />
    </node>
    <node concept="3clFb_" id="pE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedReferences" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:5068928393908525003" />
      <node concept="3Tmbuc" id="pP" role="1B3o_S">
        <uo k="s:originTrace" v="n:5068928393908525003" />
      </node>
      <node concept="3uibUv" id="pQ" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:5068928393908525003" />
        <node concept="3uibUv" id="pT" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          <uo k="s:originTrace" v="n:5068928393908525003" />
        </node>
        <node concept="3uibUv" id="pU" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5068928393908525003" />
        </node>
      </node>
      <node concept="3clFbS" id="pR" role="3clF47">
        <uo k="s:originTrace" v="n:5068928393908525003" />
        <node concept="3cpWs8" id="pV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908525003" />
          <node concept="3cpWsn" id="pZ" role="3cpWs9">
            <property role="TrG5h" value="d0" />
            <uo k="s:originTrace" v="n:5068928393908525003" />
            <node concept="3uibUv" id="q0" role="1tU5fm">
              <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:5068928393908525003" />
            </node>
            <node concept="2ShNRf" id="q1" role="33vP2m">
              <uo k="s:originTrace" v="n:5068928393908525003" />
              <node concept="YeOm9" id="q2" role="2ShVmc">
                <uo k="s:originTrace" v="n:5068928393908525003" />
                <node concept="1Y3b0j" id="q3" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5068928393908525003" />
                  <node concept="1BaE9c" id="q4" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="envelope$EmhE" />
                    <uo k="s:originTrace" v="n:5068928393908525003" />
                    <node concept="2YIFZM" id="qa" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:5068928393908525003" />
                      <node concept="1adDum" id="qb" role="37wK5m">
                        <property role="1adDun" value="0x10eda99958984cdeL" />
                        <uo k="s:originTrace" v="n:5068928393908525003" />
                      </node>
                      <node concept="1adDum" id="qc" role="37wK5m">
                        <property role="1adDun" value="0x9416196c5eca1268L" />
                        <uo k="s:originTrace" v="n:5068928393908525003" />
                      </node>
                      <node concept="1adDum" id="qd" role="37wK5m">
                        <property role="1adDun" value="0x9de89b125bf6283L" />
                        <uo k="s:originTrace" v="n:5068928393908525003" />
                      </node>
                      <node concept="1adDum" id="qe" role="37wK5m">
                        <property role="1adDun" value="0x9de89b125bf6284L" />
                        <uo k="s:originTrace" v="n:5068928393908525003" />
                      </node>
                      <node concept="Xl_RD" id="qf" role="37wK5m">
                        <property role="Xl_RC" value="envelope" />
                        <uo k="s:originTrace" v="n:5068928393908525003" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="q5" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5068928393908525003" />
                  </node>
                  <node concept="Xjq3P" id="q6" role="37wK5m">
                    <uo k="s:originTrace" v="n:5068928393908525003" />
                  </node>
                  <node concept="3clFbT" id="q7" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:5068928393908525003" />
                  </node>
                  <node concept="3clFbT" id="q8" role="37wK5m">
                    <uo k="s:originTrace" v="n:5068928393908525003" />
                  </node>
                  <node concept="3clFb_" id="q9" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:5068928393908525003" />
                    <node concept="3Tm1VV" id="qg" role="1B3o_S">
                      <uo k="s:originTrace" v="n:5068928393908525003" />
                    </node>
                    <node concept="3uibUv" id="qh" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:5068928393908525003" />
                    </node>
                    <node concept="2AHcQZ" id="qi" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:5068928393908525003" />
                    </node>
                    <node concept="3clFbS" id="qj" role="3clF47">
                      <uo k="s:originTrace" v="n:5068928393908525003" />
                      <node concept="3cpWs6" id="ql" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5068928393908525003" />
                        <node concept="2ShNRf" id="qm" role="3cqZAk">
                          <uo k="s:originTrace" v="n:5068928393911058007" />
                          <node concept="YeOm9" id="qn" role="2ShVmc">
                            <uo k="s:originTrace" v="n:5068928393911058007" />
                            <node concept="1Y3b0j" id="qo" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                              <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                              <uo k="s:originTrace" v="n:5068928393911058007" />
                              <node concept="3Tm1VV" id="qp" role="1B3o_S">
                                <uo k="s:originTrace" v="n:5068928393911058007" />
                              </node>
                              <node concept="3clFb_" id="qq" role="jymVt">
                                <property role="TrG5h" value="getSearchScopeValidatorNode" />
                                <uo k="s:originTrace" v="n:5068928393911058007" />
                                <node concept="3Tm1VV" id="qs" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                </node>
                                <node concept="3uibUv" id="qt" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                </node>
                                <node concept="3clFbS" id="qu" role="3clF47">
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                  <node concept="3cpWs6" id="qw" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:5068928393911058007" />
                                    <node concept="2ShNRf" id="qx" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:5068928393911058007" />
                                      <node concept="1pGfFk" id="qy" role="2ShVmc">
                                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                        <uo k="s:originTrace" v="n:5068928393911058007" />
                                        <node concept="Xl_RD" id="qz" role="37wK5m">
                                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                                          <uo k="s:originTrace" v="n:5068928393911058007" />
                                        </node>
                                        <node concept="Xl_RD" id="q$" role="37wK5m">
                                          <property role="Xl_RC" value="5068928393911058007" />
                                          <uo k="s:originTrace" v="n:5068928393911058007" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="qv" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="qr" role="jymVt">
                                <property role="TrG5h" value="createScope" />
                                <uo k="s:originTrace" v="n:5068928393911058007" />
                                <node concept="3Tm1VV" id="q_" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                </node>
                                <node concept="3uibUv" id="qA" role="3clF45">
                                  <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                </node>
                                <node concept="37vLTG" id="qB" role="3clF46">
                                  <property role="TrG5h" value="_context" />
                                  <property role="3TUv4t" value="true" />
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                  <node concept="3uibUv" id="qE" role="1tU5fm">
                                    <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                    <uo k="s:originTrace" v="n:5068928393911058007" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="qC" role="3clF47">
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                  <node concept="2lOVwT" id="qF" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6739934483261713244" />
                                    <node concept="1PaTwC" id="qI" role="2lOMFJ">
                                      <uo k="s:originTrace" v="n:6739934483261713245" />
                                      <node concept="tu5oc" id="qK" role="1PaTwD">
                                        <uo k="s:originTrace" v="n:6739934483261713698" />
                                        <node concept="3cpWsn" id="qM" role="tu5of">
                                          <property role="3TUv4t" value="true" />
                                          <property role="TrG5h" value="envelopes" />
                                          <uo k="s:originTrace" v="n:5068928393912599912" />
                                          <node concept="A3Dl8" id="qN" role="1tU5fm">
                                            <uo k="s:originTrace" v="n:5068928393912600113" />
                                            <node concept="3Tqbb2" id="qP" role="A3Ik2">
                                              <ref role="ehGHo" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
                                              <uo k="s:originTrace" v="n:5068928393912600337" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="qO" role="33vP2m">
                                            <uo k="s:originTrace" v="n:3269545992597399396" />
                                            <node concept="2OqwBi" id="qQ" role="2Oq$k0">
                                              <uo k="s:originTrace" v="n:5068928393912609036" />
                                              <node concept="2OqwBi" id="qS" role="2Oq$k0">
                                                <uo k="s:originTrace" v="n:5068928393912601746" />
                                                <node concept="2Xjw5R" id="qU" role="2OqNvi">
                                                  <uo k="s:originTrace" v="n:5068928393912608282" />
                                                  <node concept="1xMEDy" id="qW" role="1xVPHs">
                                                    <uo k="s:originTrace" v="n:5068928393912608284" />
                                                    <node concept="chp4Y" id="qX" role="ri$Ld">
                                                      <ref role="cht4Q" to="o1mc:66sUT0$4BdB" resolve="AbstractBehavior" />
                                                      <uo k="s:originTrace" v="n:5068928393912608421" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="1DoJHT" id="qV" role="2Oq$k0">
                                                  <property role="1Dpdpm" value="getContextNode" />
                                                  <uo k="s:originTrace" v="n:1229499084496630133" />
                                                  <node concept="3uibUv" id="qY" role="1Ez5kq">
                                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                  </node>
                                                  <node concept="37vLTw" id="qZ" role="1EMhIo">
                                                    <ref role="3cqZAo" node="qB" resolve="_context" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2Rf3mk" id="qT" role="2OqNvi">
                                                <uo k="s:originTrace" v="n:5068928393912610547" />
                                                <node concept="1xMEDy" id="r0" role="1xVPHs">
                                                  <uo k="s:originTrace" v="n:5068928393912610549" />
                                                  <node concept="chp4Y" id="r1" role="ri$Ld">
                                                    <ref role="cht4Q" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
                                                    <uo k="s:originTrace" v="n:5068928393912610781" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3zZkjj" id="qR" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:3269545992597428311" />
                                              <node concept="1bVj0M" id="r2" role="23t8la">
                                                <uo k="s:originTrace" v="n:3269545992597428313" />
                                                <node concept="3clFbS" id="r3" role="1bW5cS">
                                                  <uo k="s:originTrace" v="n:3269545992597428314" />
                                                  <node concept="3clFbF" id="r5" role="3cqZAp">
                                                    <uo k="s:originTrace" v="n:3269545992597428708" />
                                                    <node concept="3clFbC" id="r6" role="3clFbG">
                                                      <uo k="s:originTrace" v="n:3269545992597444462" />
                                                      <node concept="2OqwBi" id="r7" role="3uHU7B">
                                                        <uo k="s:originTrace" v="n:3269545992597431371" />
                                                        <node concept="37vLTw" id="r9" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="r4" resolve="it" />
                                                          <uo k="s:originTrace" v="n:3269545992597431077" />
                                                        </node>
                                                        <node concept="3TrEf2" id="ra" role="2OqNvi">
                                                          <ref role="3Tt5mk" to="o1mc:25QEYlOdAq9" resolve="sender" />
                                                          <uo k="s:originTrace" v="n:3269545992597436873" />
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="r8" role="3uHU7w">
                                                        <uo k="s:originTrace" v="n:3269545992597441684" />
                                                        <node concept="1DoJHT" id="rb" role="2Oq$k0">
                                                          <property role="1Dpdpm" value="getContextNode" />
                                                          <uo k="s:originTrace" v="n:3269545992597440779" />
                                                          <node concept="3uibUv" id="rd" role="1Ez5kq">
                                                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                          </node>
                                                          <node concept="37vLTw" id="re" role="1EMhIo">
                                                            <ref role="3cqZAo" node="qB" resolve="_context" />
                                                          </node>
                                                        </node>
                                                        <node concept="2Xjw5R" id="rc" role="2OqNvi">
                                                          <uo k="s:originTrace" v="n:3269545992597443733" />
                                                          <node concept="1xMEDy" id="rf" role="1xVPHs">
                                                            <uo k="s:originTrace" v="n:3269545992597443735" />
                                                            <node concept="chp4Y" id="rg" role="ri$Ld">
                                                              <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                                              <uo k="s:originTrace" v="n:3269545992597444144" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="gl6BB" id="r4" role="1bW2Oz">
                                                  <property role="TrG5h" value="it" />
                                                  <uo k="s:originTrace" v="n:3269545992597428315" />
                                                  <node concept="2jxLKc" id="rh" role="1tU5fm">
                                                    <uo k="s:originTrace" v="n:3269545992597428316" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3oM_SD" id="qL" role="1PaTwD">
                                        <property role="3oM_SC" value="" />
                                        <uo k="s:originTrace" v="n:6739934483261714120" />
                                      </node>
                                    </node>
                                    <node concept="1PaTwC" id="qJ" role="2lOMFJ">
                                      <uo k="s:originTrace" v="n:6739934483261714180" />
                                      <node concept="tu5oc" id="ri" role="1PaTwD">
                                        <uo k="s:originTrace" v="n:6739934483261714335" />
                                        <node concept="3clFbF" id="rk" role="tu5of">
                                          <uo k="s:originTrace" v="n:5068928393911071555" />
                                          <node concept="2YIFZM" id="rl" role="3clFbG">
                                            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                                            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                            <uo k="s:originTrace" v="n:5068928393911072514" />
                                            <node concept="37vLTw" id="rm" role="37wK5m">
                                              <ref role="3cqZAo" node="qM" resolve="envelopes" />
                                              <uo k="s:originTrace" v="n:5068928393912604788" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3oM_SD" id="rj" role="1PaTwD">
                                        <property role="3oM_SC" value="" />
                                        <uo k="s:originTrace" v="n:6739934483261714056" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3SKdUt" id="qG" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6739934483261723115" />
                                    <node concept="1PaTwC" id="rn" role="1aUNEU">
                                      <uo k="s:originTrace" v="n:6739934483261723116" />
                                      <node concept="3oM_SD" id="ro" role="1PaTwD">
                                        <property role="3oM_SC" value="this" />
                                        <uo k="s:originTrace" v="n:6739934483261723479" />
                                      </node>
                                      <node concept="3oM_SD" id="rp" role="1PaTwD">
                                        <property role="3oM_SC" value="return" />
                                        <uo k="s:originTrace" v="n:6739934483261723487" />
                                      </node>
                                      <node concept="3oM_SD" id="rq" role="1PaTwD">
                                        <property role="3oM_SC" value="is" />
                                        <uo k="s:originTrace" v="n:6739934483261723498" />
                                      </node>
                                      <node concept="3oM_SD" id="rr" role="1PaTwD">
                                        <property role="3oM_SC" value="temporary" />
                                        <uo k="s:originTrace" v="n:6739934483261723505" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="qH" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6739934483261715130" />
                                    <node concept="2YIFZM" id="rs" role="3cqZAk">
                                      <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                                      <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                      <uo k="s:originTrace" v="n:6739934483261716103" />
                                      <node concept="2OqwBi" id="rt" role="37wK5m">
                                        <uo k="s:originTrace" v="n:6739934483261720133" />
                                        <node concept="2OqwBi" id="ru" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:6739934483261717168" />
                                          <node concept="1DoJHT" id="rw" role="2Oq$k0">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:6739934483262413268" />
                                            <node concept="3uibUv" id="ry" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="rz" role="1EMhIo">
                                              <ref role="3cqZAo" node="qB" resolve="_context" />
                                            </node>
                                          </node>
                                          <node concept="2Xjw5R" id="rx" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:6739934483261718951" />
                                            <node concept="1xMEDy" id="r$" role="1xVPHs">
                                              <uo k="s:originTrace" v="n:6739934483261718953" />
                                              <node concept="chp4Y" id="r_" role="ri$Ld">
                                                <ref role="cht4Q" to="o1mc:66sUT0$4BdB" resolve="AbstractBehavior" />
                                                <uo k="s:originTrace" v="n:6739934483261719273" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2Rf3mk" id="rv" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:6739934483261721907" />
                                          <node concept="1xMEDy" id="rA" role="1xVPHs">
                                            <uo k="s:originTrace" v="n:6739934483261721909" />
                                            <node concept="chp4Y" id="rB" role="ri$Ld">
                                              <ref role="cht4Q" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
                                              <uo k="s:originTrace" v="n:6739934483261722213" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="qD" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:5068928393911058007" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="qk" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:5068928393908525003" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="pW" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908525003" />
          <node concept="3cpWsn" id="rC" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:5068928393908525003" />
            <node concept="3uibUv" id="rD" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:5068928393908525003" />
              <node concept="3uibUv" id="rF" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
              <node concept="3uibUv" id="rG" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
            </node>
            <node concept="2ShNRf" id="rE" role="33vP2m">
              <uo k="s:originTrace" v="n:5068928393908525003" />
              <node concept="1pGfFk" id="rH" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
                <node concept="3uibUv" id="rI" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                  <uo k="s:originTrace" v="n:5068928393908525003" />
                </node>
                <node concept="3uibUv" id="rJ" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5068928393908525003" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pX" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908525003" />
          <node concept="2OqwBi" id="rK" role="3clFbG">
            <uo k="s:originTrace" v="n:5068928393908525003" />
            <node concept="37vLTw" id="rL" role="2Oq$k0">
              <ref role="3cqZAo" node="rC" resolve="references" />
              <uo k="s:originTrace" v="n:5068928393908525003" />
            </node>
            <node concept="liA8E" id="rM" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:5068928393908525003" />
              <node concept="2OqwBi" id="rN" role="37wK5m">
                <uo k="s:originTrace" v="n:5068928393908525003" />
                <node concept="37vLTw" id="rP" role="2Oq$k0">
                  <ref role="3cqZAo" node="pZ" resolve="d0" />
                  <uo k="s:originTrace" v="n:5068928393908525003" />
                </node>
                <node concept="liA8E" id="rQ" role="2OqNvi">
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:5068928393908525003" />
                </node>
              </node>
              <node concept="37vLTw" id="rO" role="37wK5m">
                <ref role="3cqZAo" node="pZ" resolve="d0" />
                <uo k="s:originTrace" v="n:5068928393908525003" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908525003" />
          <node concept="37vLTw" id="rR" role="3clFbG">
            <ref role="3cqZAo" node="rC" resolve="references" />
            <uo k="s:originTrace" v="n:5068928393908525003" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="pS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:5068928393908525003" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="rS">
    <property role="3GE5qa" value="payload" />
    <property role="TrG5h" value="SelectPayload_Constraints" />
    <uo k="s:originTrace" v="n:5068928393908488134" />
    <node concept="3Tm1VV" id="rT" role="1B3o_S">
      <uo k="s:originTrace" v="n:5068928393908488134" />
    </node>
    <node concept="3uibUv" id="rU" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5068928393908488134" />
    </node>
    <node concept="3clFbW" id="rV" role="jymVt">
      <uo k="s:originTrace" v="n:5068928393908488134" />
      <node concept="3cqZAl" id="rY" role="3clF45">
        <uo k="s:originTrace" v="n:5068928393908488134" />
      </node>
      <node concept="3clFbS" id="rZ" role="3clF47">
        <uo k="s:originTrace" v="n:5068928393908488134" />
        <node concept="XkiVB" id="s1" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5068928393908488134" />
          <node concept="1BaE9c" id="s2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SelectPayload$Hf" />
            <uo k="s:originTrace" v="n:5068928393908488134" />
            <node concept="2YIFZM" id="s3" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5068928393908488134" />
              <node concept="1adDum" id="s4" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
              <node concept="1adDum" id="s5" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
              <node concept="1adDum" id="s6" role="37wK5m">
                <property role="1adDun" value="0x4658738496c93a82L" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
              <node concept="Xl_RD" id="s7" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.SelectPayload" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="s0" role="1B3o_S">
        <uo k="s:originTrace" v="n:5068928393908488134" />
      </node>
    </node>
    <node concept="2tJIrI" id="rW" role="jymVt">
      <uo k="s:originTrace" v="n:5068928393908488134" />
    </node>
    <node concept="3clFb_" id="rX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedReferences" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:5068928393908488134" />
      <node concept="3Tmbuc" id="s8" role="1B3o_S">
        <uo k="s:originTrace" v="n:5068928393908488134" />
      </node>
      <node concept="3uibUv" id="s9" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:5068928393908488134" />
        <node concept="3uibUv" id="sc" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          <uo k="s:originTrace" v="n:5068928393908488134" />
        </node>
        <node concept="3uibUv" id="sd" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5068928393908488134" />
        </node>
      </node>
      <node concept="3clFbS" id="sa" role="3clF47">
        <uo k="s:originTrace" v="n:5068928393908488134" />
        <node concept="3cpWs8" id="se" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908488134" />
          <node concept="3cpWsn" id="si" role="3cpWs9">
            <property role="TrG5h" value="d0" />
            <uo k="s:originTrace" v="n:5068928393908488134" />
            <node concept="3uibUv" id="sj" role="1tU5fm">
              <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:5068928393908488134" />
            </node>
            <node concept="2ShNRf" id="sk" role="33vP2m">
              <uo k="s:originTrace" v="n:5068928393908488134" />
              <node concept="YeOm9" id="sl" role="2ShVmc">
                <uo k="s:originTrace" v="n:5068928393908488134" />
                <node concept="1Y3b0j" id="sm" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5068928393908488134" />
                  <node concept="1BaE9c" id="sn" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="payload$ZT3H" />
                    <uo k="s:originTrace" v="n:5068928393908488134" />
                    <node concept="2YIFZM" id="st" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:5068928393908488134" />
                      <node concept="1adDum" id="su" role="37wK5m">
                        <property role="1adDun" value="0x10eda99958984cdeL" />
                        <uo k="s:originTrace" v="n:5068928393908488134" />
                      </node>
                      <node concept="1adDum" id="sv" role="37wK5m">
                        <property role="1adDun" value="0x9416196c5eca1268L" />
                        <uo k="s:originTrace" v="n:5068928393908488134" />
                      </node>
                      <node concept="1adDum" id="sw" role="37wK5m">
                        <property role="1adDun" value="0x4658738496c93a82L" />
                        <uo k="s:originTrace" v="n:5068928393908488134" />
                      </node>
                      <node concept="1adDum" id="sx" role="37wK5m">
                        <property role="1adDun" value="0x4658738496c93a91L" />
                        <uo k="s:originTrace" v="n:5068928393908488134" />
                      </node>
                      <node concept="Xl_RD" id="sy" role="37wK5m">
                        <property role="Xl_RC" value="payload" />
                        <uo k="s:originTrace" v="n:5068928393908488134" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="so" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5068928393908488134" />
                  </node>
                  <node concept="Xjq3P" id="sp" role="37wK5m">
                    <uo k="s:originTrace" v="n:5068928393908488134" />
                  </node>
                  <node concept="3clFbT" id="sq" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:5068928393908488134" />
                  </node>
                  <node concept="3clFbT" id="sr" role="37wK5m">
                    <uo k="s:originTrace" v="n:5068928393908488134" />
                  </node>
                  <node concept="3clFb_" id="ss" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:5068928393908488134" />
                    <node concept="3Tm1VV" id="sz" role="1B3o_S">
                      <uo k="s:originTrace" v="n:5068928393908488134" />
                    </node>
                    <node concept="3uibUv" id="s$" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:5068928393908488134" />
                    </node>
                    <node concept="2AHcQZ" id="s_" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:5068928393908488134" />
                    </node>
                    <node concept="3clFbS" id="sA" role="3clF47">
                      <uo k="s:originTrace" v="n:5068928393908488134" />
                      <node concept="3cpWs6" id="sC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5068928393908488134" />
                        <node concept="2ShNRf" id="sD" role="3cqZAk">
                          <uo k="s:originTrace" v="n:5068928393908488180" />
                          <node concept="YeOm9" id="sE" role="2ShVmc">
                            <uo k="s:originTrace" v="n:5068928393908488180" />
                            <node concept="1Y3b0j" id="sF" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                              <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                              <uo k="s:originTrace" v="n:5068928393908488180" />
                              <node concept="3Tm1VV" id="sG" role="1B3o_S">
                                <uo k="s:originTrace" v="n:5068928393908488180" />
                              </node>
                              <node concept="3clFb_" id="sH" role="jymVt">
                                <property role="TrG5h" value="getSearchScopeValidatorNode" />
                                <uo k="s:originTrace" v="n:5068928393908488180" />
                                <node concept="3Tm1VV" id="sJ" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                </node>
                                <node concept="3uibUv" id="sK" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                </node>
                                <node concept="3clFbS" id="sL" role="3clF47">
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                  <node concept="3cpWs6" id="sN" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:5068928393908488180" />
                                    <node concept="2ShNRf" id="sO" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:5068928393908488180" />
                                      <node concept="1pGfFk" id="sP" role="2ShVmc">
                                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                        <uo k="s:originTrace" v="n:5068928393908488180" />
                                        <node concept="Xl_RD" id="sQ" role="37wK5m">
                                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                                          <uo k="s:originTrace" v="n:5068928393908488180" />
                                        </node>
                                        <node concept="Xl_RD" id="sR" role="37wK5m">
                                          <property role="Xl_RC" value="5068928393908488180" />
                                          <uo k="s:originTrace" v="n:5068928393908488180" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="sM" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="sI" role="jymVt">
                                <property role="TrG5h" value="createScope" />
                                <uo k="s:originTrace" v="n:5068928393908488180" />
                                <node concept="3Tm1VV" id="sS" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                </node>
                                <node concept="3uibUv" id="sT" role="3clF45">
                                  <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                </node>
                                <node concept="37vLTG" id="sU" role="3clF46">
                                  <property role="TrG5h" value="_context" />
                                  <property role="3TUv4t" value="true" />
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                  <node concept="3uibUv" id="sX" role="1tU5fm">
                                    <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                    <uo k="s:originTrace" v="n:5068928393908488180" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="sV" role="3clF47">
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                  <node concept="3cpWs8" id="sY" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:1229499084496821644" />
                                    <node concept="3cpWsn" id="t0" role="3cpWs9">
                                      <property role="3TUv4t" value="true" />
                                      <property role="TrG5h" value="payloads" />
                                      <uo k="s:originTrace" v="n:1229499084496821647" />
                                      <node concept="A3Dl8" id="t1" role="1tU5fm">
                                        <uo k="s:originTrace" v="n:1229499084496821648" />
                                        <node concept="3Tqbb2" id="t3" role="A3Ik2">
                                          <ref role="ehGHo" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                                          <uo k="s:originTrace" v="n:1229499084496821649" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="t2" role="33vP2m">
                                        <uo k="s:originTrace" v="n:1229499084496821650" />
                                        <node concept="2OqwBi" id="t4" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:1229499084496821651" />
                                          <node concept="2Xjw5R" id="t6" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:1229499084496821652" />
                                            <node concept="1xMEDy" id="t8" role="1xVPHs">
                                              <uo k="s:originTrace" v="n:1229499084496821653" />
                                              <node concept="chp4Y" id="t9" role="ri$Ld">
                                                <ref role="cht4Q" to="o1mc:66sUT0$4BdB" resolve="AbstractBehavior" />
                                                <uo k="s:originTrace" v="n:1229499084496821654" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="1DoJHT" id="t7" role="2Oq$k0">
                                            <property role="1Dpdpm" value="getContextNode" />
                                            <uo k="s:originTrace" v="n:1229499084496821655" />
                                            <node concept="3uibUv" id="ta" role="1Ez5kq">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="37vLTw" id="tb" role="1EMhIo">
                                              <ref role="3cqZAo" node="sU" resolve="_context" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2Rf3mk" id="t5" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:1229499084496821656" />
                                          <node concept="1xMEDy" id="tc" role="1xVPHs">
                                            <uo k="s:originTrace" v="n:1229499084496821657" />
                                            <node concept="chp4Y" id="td" role="ri$Ld">
                                              <ref role="cht4Q" to="o1mc:25QEYlOdAq8" resolve="CreatePayload" />
                                              <uo k="s:originTrace" v="n:1229499084496821658" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="sZ" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:1229499084496823280" />
                                    <node concept="2YIFZM" id="te" role="3clFbG">
                                      <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                                      <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                      <uo k="s:originTrace" v="n:1229499084496823497" />
                                      <node concept="37vLTw" id="tf" role="37wK5m">
                                        <ref role="3cqZAo" node="t0" resolve="payloads" />
                                        <uo k="s:originTrace" v="n:1229499084496823677" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="sW" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:5068928393908488180" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="sB" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:5068928393908488134" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="sf" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908488134" />
          <node concept="3cpWsn" id="tg" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:5068928393908488134" />
            <node concept="3uibUv" id="th" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:5068928393908488134" />
              <node concept="3uibUv" id="tj" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
              <node concept="3uibUv" id="tk" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
            </node>
            <node concept="2ShNRf" id="ti" role="33vP2m">
              <uo k="s:originTrace" v="n:5068928393908488134" />
              <node concept="1pGfFk" id="tl" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
                <node concept="3uibUv" id="tm" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                  <uo k="s:originTrace" v="n:5068928393908488134" />
                </node>
                <node concept="3uibUv" id="tn" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5068928393908488134" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sg" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908488134" />
          <node concept="2OqwBi" id="to" role="3clFbG">
            <uo k="s:originTrace" v="n:5068928393908488134" />
            <node concept="37vLTw" id="tp" role="2Oq$k0">
              <ref role="3cqZAo" node="tg" resolve="references" />
              <uo k="s:originTrace" v="n:5068928393908488134" />
            </node>
            <node concept="liA8E" id="tq" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:5068928393908488134" />
              <node concept="2OqwBi" id="tr" role="37wK5m">
                <uo k="s:originTrace" v="n:5068928393908488134" />
                <node concept="37vLTw" id="tt" role="2Oq$k0">
                  <ref role="3cqZAo" node="si" resolve="d0" />
                  <uo k="s:originTrace" v="n:5068928393908488134" />
                </node>
                <node concept="liA8E" id="tu" role="2OqNvi">
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:5068928393908488134" />
                </node>
              </node>
              <node concept="37vLTw" id="ts" role="37wK5m">
                <ref role="3cqZAo" node="si" resolve="d0" />
                <uo k="s:originTrace" v="n:5068928393908488134" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="sh" role="3cqZAp">
          <uo k="s:originTrace" v="n:5068928393908488134" />
          <node concept="37vLTw" id="tv" role="3clFbG">
            <ref role="3cqZAo" node="tg" resolve="references" />
            <uo k="s:originTrace" v="n:5068928393908488134" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:5068928393908488134" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="tw">
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="SendMessage_Constraints" />
    <uo k="s:originTrace" v="n:5358399129733327942" />
    <node concept="3Tm1VV" id="tx" role="1B3o_S">
      <uo k="s:originTrace" v="n:5358399129733327942" />
    </node>
    <node concept="3uibUv" id="ty" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5358399129733327942" />
    </node>
    <node concept="3clFbW" id="tz" role="jymVt">
      <uo k="s:originTrace" v="n:5358399129733327942" />
      <node concept="3cqZAl" id="tC" role="3clF45">
        <uo k="s:originTrace" v="n:5358399129733327942" />
      </node>
      <node concept="3clFbS" id="tD" role="3clF47">
        <uo k="s:originTrace" v="n:5358399129733327942" />
        <node concept="XkiVB" id="tF" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5358399129733327942" />
          <node concept="1BaE9c" id="tG" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SendMessage$$2" />
            <uo k="s:originTrace" v="n:5358399129733327942" />
            <node concept="2YIFZM" id="tH" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5358399129733327942" />
              <node concept="1adDum" id="tI" role="37wK5m">
                <property role="1adDun" value="0x10eda99958984cdeL" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
              <node concept="1adDum" id="tJ" role="37wK5m">
                <property role="1adDun" value="0x9416196c5eca1268L" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
              <node concept="1adDum" id="tK" role="37wK5m">
                <property role="1adDun" value="0x35a5eccbf2f26df2L" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
              <node concept="Xl_RD" id="tL" role="37wK5m">
                <property role="Xl_RC" value="ActorLanguage.structure.SendMessage" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tE" role="1B3o_S">
        <uo k="s:originTrace" v="n:5358399129733327942" />
      </node>
    </node>
    <node concept="2tJIrI" id="t$" role="jymVt">
      <uo k="s:originTrace" v="n:5358399129733327942" />
    </node>
    <node concept="3clFb_" id="t_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSpecifiedReferences" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:5358399129733327942" />
      <node concept="3Tmbuc" id="tM" role="1B3o_S">
        <uo k="s:originTrace" v="n:5358399129733327942" />
      </node>
      <node concept="3uibUv" id="tN" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <uo k="s:originTrace" v="n:5358399129733327942" />
        <node concept="3uibUv" id="tQ" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          <uo k="s:originTrace" v="n:5358399129733327942" />
        </node>
        <node concept="3uibUv" id="tR" role="11_B2D">
          <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5358399129733327942" />
        </node>
      </node>
      <node concept="3clFbS" id="tO" role="3clF47">
        <uo k="s:originTrace" v="n:5358399129733327942" />
        <node concept="3cpWs8" id="tS" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129733327942" />
          <node concept="3cpWsn" id="tW" role="3cpWs9">
            <property role="TrG5h" value="d0" />
            <uo k="s:originTrace" v="n:5358399129733327942" />
            <node concept="3uibUv" id="tX" role="1tU5fm">
              <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
              <uo k="s:originTrace" v="n:5358399129733327942" />
            </node>
            <node concept="2ShNRf" id="tY" role="33vP2m">
              <uo k="s:originTrace" v="n:5358399129733327942" />
              <node concept="YeOm9" id="tZ" role="2ShVmc">
                <uo k="s:originTrace" v="n:5358399129733327942" />
                <node concept="1Y3b0j" id="u0" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5358399129733327942" />
                  <node concept="1BaE9c" id="u1" role="37wK5m">
                    <property role="1ouuDV" value="LINKS" />
                    <property role="1BaxDp" value="message$4GHG" />
                    <uo k="s:originTrace" v="n:5358399129733327942" />
                    <node concept="2YIFZM" id="u7" role="1Bazha">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <uo k="s:originTrace" v="n:5358399129733327942" />
                      <node concept="1adDum" id="u8" role="37wK5m">
                        <property role="1adDun" value="0x10eda99958984cdeL" />
                        <uo k="s:originTrace" v="n:5358399129733327942" />
                      </node>
                      <node concept="1adDum" id="u9" role="37wK5m">
                        <property role="1adDun" value="0x9416196c5eca1268L" />
                        <uo k="s:originTrace" v="n:5358399129733327942" />
                      </node>
                      <node concept="1adDum" id="ua" role="37wK5m">
                        <property role="1adDun" value="0x35a5eccbf2f26df2L" />
                        <uo k="s:originTrace" v="n:5358399129733327942" />
                      </node>
                      <node concept="1adDum" id="ub" role="37wK5m">
                        <property role="1adDun" value="0x35a5eccbf2f26df5L" />
                        <uo k="s:originTrace" v="n:5358399129733327942" />
                      </node>
                      <node concept="Xl_RD" id="uc" role="37wK5m">
                        <property role="Xl_RC" value="message" />
                        <uo k="s:originTrace" v="n:5358399129733327942" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="u2" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5358399129733327942" />
                  </node>
                  <node concept="Xjq3P" id="u3" role="37wK5m">
                    <uo k="s:originTrace" v="n:5358399129733327942" />
                  </node>
                  <node concept="3clFbT" id="u4" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <uo k="s:originTrace" v="n:5358399129733327942" />
                  </node>
                  <node concept="3clFbT" id="u5" role="37wK5m">
                    <uo k="s:originTrace" v="n:5358399129733327942" />
                  </node>
                  <node concept="3clFb_" id="u6" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getScopeProvider" />
                    <property role="DiZV1" value="false" />
                    <uo k="s:originTrace" v="n:5358399129733327942" />
                    <node concept="3Tm1VV" id="ud" role="1B3o_S">
                      <uo k="s:originTrace" v="n:5358399129733327942" />
                    </node>
                    <node concept="3uibUv" id="ue" role="3clF45">
                      <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      <uo k="s:originTrace" v="n:5358399129733327942" />
                    </node>
                    <node concept="2AHcQZ" id="uf" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      <uo k="s:originTrace" v="n:5358399129733327942" />
                    </node>
                    <node concept="3clFbS" id="ug" role="3clF47">
                      <uo k="s:originTrace" v="n:5358399129733327942" />
                      <node concept="3cpWs6" id="ui" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5358399129733327942" />
                        <node concept="2ShNRf" id="uj" role="3cqZAk">
                          <uo k="s:originTrace" v="n:5358399129734217910" />
                          <node concept="YeOm9" id="uk" role="2ShVmc">
                            <uo k="s:originTrace" v="n:5358399129734217910" />
                            <node concept="1Y3b0j" id="ul" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                              <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                              <uo k="s:originTrace" v="n:5358399129734217910" />
                              <node concept="3Tm1VV" id="um" role="1B3o_S">
                                <uo k="s:originTrace" v="n:5358399129734217910" />
                              </node>
                              <node concept="3clFb_" id="un" role="jymVt">
                                <property role="TrG5h" value="getSearchScopeValidatorNode" />
                                <uo k="s:originTrace" v="n:5358399129734217910" />
                                <node concept="3Tm1VV" id="up" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                </node>
                                <node concept="3uibUv" id="uq" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                </node>
                                <node concept="3clFbS" id="ur" role="3clF47">
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                  <node concept="3cpWs6" id="ut" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:5358399129734217910" />
                                    <node concept="2ShNRf" id="uu" role="3cqZAk">
                                      <uo k="s:originTrace" v="n:5358399129734217910" />
                                      <node concept="1pGfFk" id="uv" role="2ShVmc">
                                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                        <uo k="s:originTrace" v="n:5358399129734217910" />
                                        <node concept="Xl_RD" id="uw" role="37wK5m">
                                          <property role="Xl_RC" value="r:ae140228-36a4-4270-a859-e66d990ac219(ActorLanguage.constraints)" />
                                          <uo k="s:originTrace" v="n:5358399129734217910" />
                                        </node>
                                        <node concept="Xl_RD" id="ux" role="37wK5m">
                                          <property role="Xl_RC" value="5358399129734217910" />
                                          <uo k="s:originTrace" v="n:5358399129734217910" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="us" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                </node>
                              </node>
                              <node concept="3clFb_" id="uo" role="jymVt">
                                <property role="TrG5h" value="createScope" />
                                <uo k="s:originTrace" v="n:5358399129734217910" />
                                <node concept="3Tm1VV" id="uy" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                </node>
                                <node concept="3uibUv" id="uz" role="3clF45">
                                  <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                </node>
                                <node concept="37vLTG" id="u$" role="3clF46">
                                  <property role="TrG5h" value="_context" />
                                  <property role="3TUv4t" value="true" />
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                  <node concept="3uibUv" id="uB" role="1tU5fm">
                                    <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                                    <uo k="s:originTrace" v="n:5358399129734217910" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="u_" role="3clF47">
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                  <node concept="3clFbH" id="uC" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:3269545992600577599" />
                                  </node>
                                  <node concept="3cpWs8" id="uD" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:3269545992599742774" />
                                    <node concept="3cpWsn" id="uI" role="3cpWs9">
                                      <property role="TrG5h" value="messages" />
                                      <uo k="s:originTrace" v="n:3269545992599742777" />
                                      <node concept="_YKpA" id="uJ" role="1tU5fm">
                                        <uo k="s:originTrace" v="n:3269545992599742770" />
                                        <node concept="3Tqbb2" id="uL" role="_ZDj9">
                                          <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                          <uo k="s:originTrace" v="n:3269545992599743757" />
                                        </node>
                                      </node>
                                      <node concept="2ShNRf" id="uK" role="33vP2m">
                                        <uo k="s:originTrace" v="n:3269545992599745006" />
                                        <node concept="Tc6Ow" id="uM" role="2ShVmc">
                                          <uo k="s:originTrace" v="n:3269545992599745002" />
                                          <node concept="3Tqbb2" id="uN" role="HW$YZ">
                                            <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                            <uo k="s:originTrace" v="n:3269545992599745003" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="uE" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:3269545992599500320" />
                                  </node>
                                  <node concept="2Gpval" id="uF" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:3269545992599500774" />
                                    <node concept="2GrKxI" id="uO" role="2Gsz3X">
                                      <property role="TrG5h" value="message" />
                                      <uo k="s:originTrace" v="n:3269545992599500776" />
                                    </node>
                                    <node concept="2OqwBi" id="uP" role="2GsD0m">
                                      <uo k="s:originTrace" v="n:3269545992599505106" />
                                      <node concept="2OqwBi" id="uR" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:3269545992599502339" />
                                        <node concept="1DoJHT" id="uT" role="2Oq$k0">
                                          <property role="1Dpdpm" value="getReferenceNode" />
                                          <uo k="s:originTrace" v="n:3269545992599501575" />
                                          <node concept="3uibUv" id="uV" role="1Ez5kq">
                                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                          </node>
                                          <node concept="37vLTw" id="uW" role="1EMhIo">
                                            <ref role="3cqZAo" node="u$" resolve="_context" />
                                          </node>
                                        </node>
                                        <node concept="2Xjw5R" id="uU" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:3269545992599504018" />
                                          <node concept="1xMEDy" id="uX" role="1xVPHs">
                                            <uo k="s:originTrace" v="n:3269545992599504020" />
                                            <node concept="chp4Y" id="uY" role="ri$Ld">
                                              <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                              <uo k="s:originTrace" v="n:3269545992599504268" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2Rf3mk" id="uS" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:3269545992599507072" />
                                        <node concept="1xMEDy" id="uZ" role="1xVPHs">
                                          <uo k="s:originTrace" v="n:3269545992599507074" />
                                          <node concept="chp4Y" id="v0" role="ri$Ld">
                                            <ref role="cht4Q" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
                                            <uo k="s:originTrace" v="n:3269545992599507310" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="uQ" role="2LFqv$">
                                      <uo k="s:originTrace" v="n:3269545992599500780" />
                                      <node concept="3clFbJ" id="v1" role="3cqZAp">
                                        <uo k="s:originTrace" v="n:2823449341852711517" />
                                        <node concept="3clFbS" id="v2" role="3clFbx">
                                          <uo k="s:originTrace" v="n:2823449341852711519" />
                                          <node concept="3cpWs8" id="v4" role="3cqZAp">
                                            <uo k="s:originTrace" v="n:2823449341853459757" />
                                            <node concept="3cpWsn" id="v6" role="3cpWs9">
                                              <property role="TrG5h" value="sender" />
                                              <property role="3TUv4t" value="true" />
                                              <uo k="s:originTrace" v="n:2823449341853459760" />
                                              <node concept="3Tqbb2" id="v7" role="1tU5fm">
                                                <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                                <uo k="s:originTrace" v="n:2823449341853459755" />
                                              </node>
                                              <node concept="2OqwBi" id="v8" role="33vP2m">
                                                <uo k="s:originTrace" v="n:2823449341853462526" />
                                                <node concept="Xjq3P" id="v9" role="2Oq$k0">
                                                  <ref role="1HBi2w" node="tw" resolve="SendMessage_Constraints" />
                                                  <uo k="s:originTrace" v="n:2823449341853462529" />
                                                </node>
                                                <node concept="liA8E" id="va" role="2OqNvi">
                                                  <ref role="37wK5l" node="tA" resolve="_additional_getSender" />
                                                  <uo k="s:originTrace" v="n:2823449341853462531" />
                                                  <node concept="2GrUjf" id="vb" role="37wK5m">
                                                    <ref role="2Gs0qQ" node="uO" resolve="message" />
                                                    <uo k="s:originTrace" v="n:2823449341853465471" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbJ" id="v5" role="3cqZAp">
                                            <uo k="s:originTrace" v="n:3269545992600062250" />
                                            <node concept="3clFbS" id="vc" role="3clFbx">
                                              <uo k="s:originTrace" v="n:3269545992600062252" />
                                              <node concept="3clFbF" id="ve" role="3cqZAp">
                                                <uo k="s:originTrace" v="n:3269545992600073592" />
                                                <node concept="2OqwBi" id="vf" role="3clFbG">
                                                  <uo k="s:originTrace" v="n:3269545992600084573" />
                                                  <node concept="37vLTw" id="vg" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="uI" resolve="messages" />
                                                    <uo k="s:originTrace" v="n:3269545992600073590" />
                                                  </node>
                                                  <node concept="TSZUe" id="vh" role="2OqNvi">
                                                    <uo k="s:originTrace" v="n:3269545992600106900" />
                                                    <node concept="2GrUjf" id="vi" role="25WWJ7">
                                                      <ref role="2Gs0qQ" node="uO" resolve="message" />
                                                      <uo k="s:originTrace" v="n:3269545992600107320" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbC" id="vd" role="3clFbw">
                                              <uo k="s:originTrace" v="n:3269545992600067073" />
                                              <node concept="2OqwBi" id="vj" role="3uHU7w">
                                                <uo k="s:originTrace" v="n:3269545992600070442" />
                                                <node concept="1DoJHT" id="vl" role="2Oq$k0">
                                                  <property role="1Dpdpm" value="getReferenceNode" />
                                                  <uo k="s:originTrace" v="n:3269545992600067824" />
                                                  <node concept="3uibUv" id="vn" role="1Ez5kq">
                                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                  </node>
                                                  <node concept="37vLTw" id="vo" role="1EMhIo">
                                                    <ref role="3cqZAo" node="u$" resolve="_context" />
                                                  </node>
                                                </node>
                                                <node concept="2Xjw5R" id="vm" role="2OqNvi">
                                                  <uo k="s:originTrace" v="n:3269545992600072410" />
                                                  <node concept="1xMEDy" id="vp" role="1xVPHs">
                                                    <uo k="s:originTrace" v="n:3269545992600072412" />
                                                    <node concept="chp4Y" id="vq" role="ri$Ld">
                                                      <ref role="cht4Q" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                                                      <uo k="s:originTrace" v="n:3269545992600073121" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="vk" role="3uHU7B">
                                                <ref role="3cqZAo" node="v6" resolve="sender" />
                                                <uo k="s:originTrace" v="n:3269545992600065255" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1Wc70l" id="v3" role="3clFbw">
                                          <uo k="s:originTrace" v="n:2823449341853499769" />
                                          <node concept="2OqwBi" id="vr" role="3uHU7B">
                                            <uo k="s:originTrace" v="n:2823449341852716635" />
                                            <node concept="2OqwBi" id="vt" role="2Oq$k0">
                                              <uo k="s:originTrace" v="n:2823449341852713368" />
                                              <node concept="2GrUjf" id="vv" role="2Oq$k0">
                                                <ref role="2Gs0qQ" node="uO" resolve="message" />
                                                <uo k="s:originTrace" v="n:2823449341852711996" />
                                              </node>
                                              <node concept="3TrEf2" id="vw" role="2OqNvi">
                                                <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
                                                <uo k="s:originTrace" v="n:2823449341852715085" />
                                              </node>
                                            </node>
                                            <node concept="3x8VRR" id="vu" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:2823449341852719180" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="vs" role="3uHU7w">
                                            <uo k="s:originTrace" v="n:2823449341853515092" />
                                            <node concept="2OqwBi" id="vx" role="2Oq$k0">
                                              <uo k="s:originTrace" v="n:2823449341853509894" />
                                              <node concept="Xjq3P" id="vz" role="2Oq$k0">
                                                <ref role="1HBi2w" node="tw" resolve="SendMessage_Constraints" />
                                                <uo k="s:originTrace" v="n:2823449341853509126" />
                                              </node>
                                              <node concept="liA8E" id="v$" role="2OqNvi">
                                                <ref role="37wK5l" node="tB" resolve="_additional_getReceiver" />
                                                <uo k="s:originTrace" v="n:2823449341853511238" />
                                                <node concept="2GrUjf" id="v_" role="37wK5m">
                                                  <ref role="2Gs0qQ" node="uO" resolve="message" />
                                                  <uo k="s:originTrace" v="n:2823449341853511871" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3x8VRR" id="vy" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:2823449341853517320" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="uG" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:3269545992599500352" />
                                  </node>
                                  <node concept="3clFbF" id="uH" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:3269545992599497965" />
                                    <node concept="2YIFZM" id="vA" role="3clFbG">
                                      <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                                      <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                      <uo k="s:originTrace" v="n:3269545992599499135" />
                                      <node concept="2OqwBi" id="vB" role="37wK5m">
                                        <uo k="s:originTrace" v="n:3269545992599832765" />
                                        <node concept="37vLTw" id="vC" role="2Oq$k0">
                                          <ref role="3cqZAo" node="uI" resolve="messages" />
                                          <uo k="s:originTrace" v="n:3269545992599499294" />
                                        </node>
                                        <node concept="ANE8D" id="vD" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:3269545992599842546" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="uA" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:5358399129734217910" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="uh" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:5358399129733327942" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129733327942" />
          <node concept="3cpWsn" id="vE" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <uo k="s:originTrace" v="n:5358399129733327942" />
            <node concept="3uibUv" id="vF" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <uo k="s:originTrace" v="n:5358399129733327942" />
              <node concept="3uibUv" id="vH" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
              <node concept="3uibUv" id="vI" role="11_B2D">
                <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
            </node>
            <node concept="2ShNRf" id="vG" role="33vP2m">
              <uo k="s:originTrace" v="n:5358399129733327942" />
              <node concept="1pGfFk" id="vJ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
                <node concept="3uibUv" id="vK" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                  <uo k="s:originTrace" v="n:5358399129733327942" />
                </node>
                <node concept="3uibUv" id="vL" role="1pMfVU">
                  <ref role="3uigEE" to="ze1j:~ReferenceConstraintsDescriptor" resolve="ReferenceConstraintsDescriptor" />
                  <uo k="s:originTrace" v="n:5358399129733327942" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129733327942" />
          <node concept="2OqwBi" id="vM" role="3clFbG">
            <uo k="s:originTrace" v="n:5358399129733327942" />
            <node concept="37vLTw" id="vN" role="2Oq$k0">
              <ref role="3cqZAo" node="vE" resolve="references" />
              <uo k="s:originTrace" v="n:5358399129733327942" />
            </node>
            <node concept="liA8E" id="vO" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <uo k="s:originTrace" v="n:5358399129733327942" />
              <node concept="2OqwBi" id="vP" role="37wK5m">
                <uo k="s:originTrace" v="n:5358399129733327942" />
                <node concept="37vLTw" id="vR" role="2Oq$k0">
                  <ref role="3cqZAo" node="tW" resolve="d0" />
                  <uo k="s:originTrace" v="n:5358399129733327942" />
                </node>
                <node concept="liA8E" id="vS" role="2OqNvi">
                  <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.getReference()" resolve="getReference" />
                  <uo k="s:originTrace" v="n:5358399129733327942" />
                </node>
              </node>
              <node concept="37vLTw" id="vQ" role="37wK5m">
                <ref role="3cqZAo" node="tW" resolve="d0" />
                <uo k="s:originTrace" v="n:5358399129733327942" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5358399129733327942" />
          <node concept="37vLTw" id="vT" role="3clFbG">
            <ref role="3cqZAo" node="vE" resolve="references" />
            <uo k="s:originTrace" v="n:5358399129733327942" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="tP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:5358399129733327942" />
      </node>
    </node>
    <node concept="3clFb_" id="tA" role="jymVt">
      <property role="TrG5h" value="_additional_getSender" />
      <uo k="s:originTrace" v="n:2823449341853453121" />
      <node concept="3Tqbb2" id="vU" role="3clF45">
        <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
        <uo k="s:originTrace" v="n:2823449341853453668" />
      </node>
      <node concept="3Tm6S6" id="vV" role="1B3o_S">
        <uo k="s:originTrace" v="n:2823449341853457106" />
      </node>
      <node concept="3clFbS" id="vW" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341853453123" />
        <node concept="3cpWs8" id="vY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3269545992600038595" />
          <node concept="3cpWsn" id="w2" role="3cpWs9">
            <property role="TrG5h" value="sender" />
            <uo k="s:originTrace" v="n:3269545992600038598" />
            <node concept="3Tqbb2" id="w3" role="1tU5fm">
              <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
              <uo k="s:originTrace" v="n:3269545992600038593" />
            </node>
            <node concept="2ShNRf" id="w4" role="33vP2m">
              <uo k="s:originTrace" v="n:3269545992600039760" />
              <node concept="3zrR0B" id="w5" role="2ShVmc">
                <uo k="s:originTrace" v="n:3269545992600039758" />
                <node concept="3Tqbb2" id="w6" role="3zrR0E">
                  <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                  <uo k="s:originTrace" v="n:3269545992600039759" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="vZ" role="3cqZAp">
          <ref role="JncvD" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
          <uo k="s:originTrace" v="n:3269545992600031135" />
          <node concept="2OqwBi" id="w7" role="JncvB">
            <uo k="s:originTrace" v="n:3269545992600032991" />
            <node concept="37vLTw" id="wa" role="2Oq$k0">
              <ref role="3cqZAo" node="vX" resolve="message" />
              <uo k="s:originTrace" v="n:2823449341853457361" />
            </node>
            <node concept="3TrEf2" id="wb" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
              <uo k="s:originTrace" v="n:3269545992600036880" />
            </node>
          </node>
          <node concept="3clFbS" id="w8" role="Jncv$">
            <uo k="s:originTrace" v="n:3269545992600031137" />
          </node>
          <node concept="JncvC" id="w9" role="JncvA">
            <property role="TrG5h" value="envelope" />
            <uo k="s:originTrace" v="n:3269545992600031138" />
            <node concept="2jxLKc" id="wc" role="1tU5fm">
              <uo k="s:originTrace" v="n:3269545992600031139" />
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="w0" role="3cqZAp">
          <ref role="JncvD" to="o1mc:Buyr4_JQa3" resolve="SelectEnvelope" />
          <uo k="s:originTrace" v="n:3269545992600047011" />
          <node concept="2OqwBi" id="wd" role="JncvB">
            <uo k="s:originTrace" v="n:3269545992600048451" />
            <node concept="37vLTw" id="wg" role="2Oq$k0">
              <ref role="3cqZAo" node="vX" resolve="message" />
              <uo k="s:originTrace" v="n:2823449341853459221" />
            </node>
            <node concept="3TrEf2" id="wh" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
              <uo k="s:originTrace" v="n:3269545992600052560" />
            </node>
          </node>
          <node concept="3clFbS" id="we" role="Jncv$">
            <uo k="s:originTrace" v="n:3269545992600047015" />
          </node>
          <node concept="JncvC" id="wf" role="JncvA">
            <property role="TrG5h" value="envelope" />
            <uo k="s:originTrace" v="n:3269545992600047017" />
            <node concept="2jxLKc" id="wi" role="1tU5fm">
              <uo k="s:originTrace" v="n:3269545992600047018" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="w1" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341853457216" />
          <node concept="37vLTw" id="wj" role="3cqZAk">
            <ref role="3cqZAo" node="w2" resolve="sender" />
            <uo k="s:originTrace" v="n:2823449341853457312" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="vX" role="3clF46">
        <property role="TrG5h" value="message" />
        <uo k="s:originTrace" v="n:2823449341853453856" />
        <node concept="3Tqbb2" id="wk" role="1tU5fm">
          <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
          <uo k="s:originTrace" v="n:2823449341853453855" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="tB" role="jymVt">
      <property role="TrG5h" value="_additional_getReceiver" />
      <uo k="s:originTrace" v="n:2823449341853470483" />
      <node concept="3Tqbb2" id="wl" role="3clF45">
        <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
        <uo k="s:originTrace" v="n:2823449341853471115" />
      </node>
      <node concept="3Tm6S6" id="wm" role="1B3o_S">
        <uo k="s:originTrace" v="n:2823449341853470486" />
      </node>
      <node concept="3clFbS" id="wn" role="3clF47">
        <uo k="s:originTrace" v="n:2823449341853470485" />
        <node concept="3cpWs8" id="wp" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341853447354" />
          <node concept="3cpWsn" id="wt" role="3cpWs9">
            <property role="TrG5h" value="receiver" />
            <uo k="s:originTrace" v="n:2823449341853447357" />
            <node concept="3Tqbb2" id="wu" role="1tU5fm">
              <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
              <uo k="s:originTrace" v="n:2823449341853447352" />
            </node>
            <node concept="2ShNRf" id="wv" role="33vP2m">
              <uo k="s:originTrace" v="n:2823449341853449589" />
              <node concept="3zrR0B" id="ww" role="2ShVmc">
                <uo k="s:originTrace" v="n:2823449341853449587" />
                <node concept="3Tqbb2" id="wx" role="3zrR0E">
                  <ref role="ehGHo" to="o1mc:3m_VcJMWzc8" resolve="AbstractActor" />
                  <uo k="s:originTrace" v="n:2823449341853449588" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="wq" role="3cqZAp">
          <ref role="JncvD" to="o1mc:25QEYlOdAq7" resolve="CreateEnvelope" />
          <uo k="s:originTrace" v="n:2823449341853474375" />
          <node concept="2OqwBi" id="wy" role="JncvB">
            <uo k="s:originTrace" v="n:2823449341853475007" />
            <node concept="37vLTw" id="w_" role="2Oq$k0">
              <ref role="3cqZAo" node="wo" resolve="message" />
              <uo k="s:originTrace" v="n:2823449341853474422" />
            </node>
            <node concept="3TrEf2" id="wA" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
              <uo k="s:originTrace" v="n:2823449341853476092" />
            </node>
          </node>
          <node concept="3clFbS" id="wz" role="Jncv$">
            <uo k="s:originTrace" v="n:2823449341853474379" />
          </node>
          <node concept="JncvC" id="w$" role="JncvA">
            <property role="TrG5h" value="envelope" />
            <uo k="s:originTrace" v="n:2823449341853474381" />
            <node concept="2jxLKc" id="wB" role="1tU5fm">
              <uo k="s:originTrace" v="n:2823449341853474382" />
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="wr" role="3cqZAp">
          <ref role="JncvD" to="o1mc:Buyr4_JQa3" resolve="SelectEnvelope" />
          <uo k="s:originTrace" v="n:2823449341853480435" />
          <node concept="2OqwBi" id="wC" role="JncvB">
            <uo k="s:originTrace" v="n:2823449341853481080" />
            <node concept="37vLTw" id="wF" role="2Oq$k0">
              <ref role="3cqZAo" node="wo" resolve="message" />
              <uo k="s:originTrace" v="n:2823449341853480495" />
            </node>
            <node concept="3TrEf2" id="wG" role="2OqNvi">
              <ref role="3Tt5mk" to="o1mc:2PvKG7Dpg1i" resolve="envelope" />
              <uo k="s:originTrace" v="n:2823449341853482202" />
            </node>
          </node>
          <node concept="3clFbS" id="wD" role="Jncv$">
            <uo k="s:originTrace" v="n:2823449341853480439" />
          </node>
          <node concept="JncvC" id="wE" role="JncvA">
            <property role="TrG5h" value="envelope" />
            <uo k="s:originTrace" v="n:2823449341853480441" />
            <node concept="2jxLKc" id="wH" role="1tU5fm">
              <uo k="s:originTrace" v="n:2823449341853480442" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ws" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823449341853488911" />
          <node concept="37vLTw" id="wI" role="3cqZAk">
            <ref role="3cqZAo" node="wt" resolve="receiver" />
            <uo k="s:originTrace" v="n:2823449341853488999" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="wo" role="3clF46">
        <property role="TrG5h" value="message" />
        <uo k="s:originTrace" v="n:2823449341853471259" />
        <node concept="3Tqbb2" id="wJ" role="1tU5fm">
          <ref role="ehGHo" to="o1mc:3m_VcJMWzdL" resolve="CreateMessage" />
          <uo k="s:originTrace" v="n:2823449341853471258" />
        </node>
      </node>
    </node>
  </node>
</model>

