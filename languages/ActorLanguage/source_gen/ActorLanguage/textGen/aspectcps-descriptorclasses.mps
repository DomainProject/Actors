<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fe6a767(checkpoints/ActorLanguage.textGen@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="haeo" ref="r:5c12de31-eabc-4138-b711-95b52bc1fc4c(ActorLanguage.textGen)" />
    <import index="kpbf" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.impl(MPS.TextGen/)" />
    <import index="yfwt" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.rt(MPS.TextGen/)" />
    <import index="tpcf" ref="r:00000000-0000-4000-0000-011c89590293(jetbrains.mps.lang.structure.generator_new.baseLanguage@generator)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174914042989" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType" flags="in" index="2eloPW">
        <property id="1174914081067" name="fqClassName" index="2ely0U" />
      </concept>
      <concept id="1100832983841311024" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassCreator" flags="nn" index="xCZzO">
        <property id="1100832983841311026" name="fqClassName" index="xCZzQ" />
        <child id="1100832983841311029" name="type" index="xCZzL" />
      </concept>
      <concept id="1173990517731" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticMethodCall" flags="nn" index="1niqFM">
        <property id="1173992444083" name="methodName" index="1npL6y" />
        <property id="1173992483054" name="fqClassName" index="1npUBZ" />
        <child id="319021450862604085" name="actualArgument" index="2U24H$" />
        <child id="1175794062018" name="returnType" index="32Mpfj" />
      </concept>
      <concept id="1173995204289" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticFieldReference" flags="nn" index="1n$iZg">
        <property id="1173995448817" name="fqClassName" index="1n_ezw" />
        <property id="1173995466678" name="fieldName" index="1n_iUB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="ActorScript_TextGen" />
    <uo k="s:originTrace" v="n:3865756215866094073" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:3865756215866094073" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3865756215866094073" />
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3865756215866094073" />
      <node concept="3cqZAl" id="4" role="3clF45">
        <uo k="s:originTrace" v="n:3865756215866094073" />
      </node>
      <node concept="3Tm1VV" id="5" role="1B3o_S">
        <uo k="s:originTrace" v="n:3865756215866094073" />
      </node>
      <node concept="3clFbS" id="6" role="3clF47">
        <uo k="s:originTrace" v="n:3865756215866094073" />
        <node concept="3cpWs8" id="9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3865756215866094073" />
          <node concept="3cpWsn" id="21" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3865756215866094073" />
            <node concept="3uibUv" id="22" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3865756215866094073" />
            </node>
            <node concept="2ShNRf" id="23" role="33vP2m">
              <uo k="s:originTrace" v="n:3865756215866094073" />
              <node concept="1pGfFk" id="24" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3865756215866094073" />
                <node concept="37vLTw" id="25" role="37wK5m">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3865756215866094073" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822790551" />
          <node concept="1niqFM" id="26" role="3clFbG">
            <property role="1npL6y" value="init" />
            <property role="1npUBZ" value="ActorLanguage.textGen.Initialization" />
            <uo k="s:originTrace" v="n:3204091364822790551" />
            <node concept="3uibUv" id="27" role="32Mpfj">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              <uo k="s:originTrace" v="n:3204091364822790551" />
            </node>
            <node concept="37vLTw" id="28" role="2U24H$">
              <ref role="3cqZAo" node="7" resolve="ctx" />
              <uo k="s:originTrace" v="n:3204091364822790551" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823307157" />
          <node concept="3clFbS" id="29" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364823307157" />
            <node concept="3clFbF" id="2c" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364823307157" />
              <node concept="2OqwBi" id="2d" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364823307157" />
                <node concept="37vLTw" id="2e" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364823307157" />
                </node>
                <node concept="liA8E" id="2f" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:3204091364823307157" />
                  <node concept="37vLTw" id="2g" role="37wK5m">
                    <ref role="3cqZAo" node="2a" resolve="item" />
                    <uo k="s:originTrace" v="n:3204091364823307157" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2a" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:3204091364823307157" />
            <node concept="3Tqbb2" id="2h" role="1tU5fm">
              <uo k="s:originTrace" v="n:3204091364823307157" />
            </node>
          </node>
          <node concept="2OqwBi" id="2b" role="1DdaDG">
            <uo k="s:originTrace" v="n:3204091364823307201" />
            <node concept="2OqwBi" id="2i" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823307185" />
              <node concept="37vLTw" id="2k" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="2l" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="2j" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:3204091364823307282" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="c" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078298" />
        </node>
        <node concept="3clFbF" id="d" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078393" />
          <node concept="2OqwBi" id="2m" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078393" />
            <node concept="37vLTw" id="2n" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078393" />
            </node>
            <node concept="liA8E" id="2o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825078393" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="e" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078420" />
        </node>
        <node concept="3clFbF" id="f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825267327" />
          <node concept="2OqwBi" id="2p" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825267327" />
            <node concept="37vLTw" id="2q" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825267327" />
            </node>
            <node concept="liA8E" id="2r" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825267327" />
              <node concept="Xl_RD" id="2s" role="37wK5m">
                <property role="Xl_RC" value="int main() {" />
                <uo k="s:originTrace" v="n:3204091364825267327" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825267857" />
          <node concept="2OqwBi" id="2t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825267857" />
            <node concept="37vLTw" id="2u" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825267857" />
            </node>
            <node concept="liA8E" id="2v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825267857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="2w" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="2x" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="2z" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="2_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="2A" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="2$" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="2y" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825224934" />
          <node concept="2OqwBi" id="2B" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825224934" />
            <node concept="37vLTw" id="2C" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
            <node concept="liA8E" id="2D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825224934" />
          <node concept="2OqwBi" id="2E" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825224934" />
            <node concept="37vLTw" id="2F" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
            <node concept="liA8E" id="2G" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
              <node concept="Xl_RD" id="2H" role="37wK5m">
                <property role="Xl_RC" value="int num_threads = " />
                <uo k="s:originTrace" v="n:3204091364825224934" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078806" />
          <node concept="2OqwBi" id="2I" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078806" />
            <node concept="37vLTw" id="2J" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078806" />
            </node>
            <node concept="liA8E" id="2K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825078806" />
              <node concept="2YIFZM" id="2L" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3204091364825102831" />
                <node concept="2OqwBi" id="2M" role="37wK5m">
                  <uo k="s:originTrace" v="n:3204091364825127637" />
                  <node concept="2OqwBi" id="2N" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364825115211" />
                    <node concept="2OqwBi" id="2P" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364825109732" />
                      <node concept="37vLTw" id="2R" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="2S" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2Q" role="2OqNvi">
                      <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                      <uo k="s:originTrace" v="n:3204091364825116106" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2O" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    <uo k="s:originTrace" v="n:3204091364825161146" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825239668" />
          <node concept="2OqwBi" id="2T" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825239668" />
            <node concept="37vLTw" id="2U" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825239668" />
            </node>
            <node concept="liA8E" id="2V" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825239668" />
              <node concept="Xl_RD" id="2W" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3204091364825239668" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825240473" />
          <node concept="2OqwBi" id="2X" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825240473" />
            <node concept="37vLTw" id="2Y" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825240473" />
            </node>
            <node concept="liA8E" id="2Z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825240473" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078679" />
          <node concept="2OqwBi" id="30" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078679" />
            <node concept="37vLTw" id="31" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
            <node concept="liA8E" id="32" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078679" />
          <node concept="2OqwBi" id="33" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078679" />
            <node concept="37vLTw" id="34" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
            <node concept="liA8E" id="35" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
              <node concept="Xl_RD" id="36" role="37wK5m">
                <property role="Xl_RC" value="pthread_t threads[num_threads];" />
                <uo k="s:originTrace" v="n:3204091364825078679" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825241436" />
          <node concept="2OqwBi" id="37" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825241436" />
            <node concept="37vLTw" id="38" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825241436" />
            </node>
            <node concept="liA8E" id="39" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825241436" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825242920" />
          <node concept="2OqwBi" id="3a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825242920" />
            <node concept="37vLTw" id="3b" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
            </node>
            <node concept="liA8E" id="3c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825242920" />
          <node concept="2OqwBi" id="3d" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825242920" />
            <node concept="37vLTw" id="3e" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
            </node>
            <node concept="liA8E" id="3f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
              <node concept="Xl_RD" id="3g" role="37wK5m">
                <property role="Xl_RC" value="ThreadData threads_data[num_threads];" />
                <uo k="s:originTrace" v="n:3204091364825242920" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825243591" />
          <node concept="2OqwBi" id="3h" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825243591" />
            <node concept="37vLTw" id="3i" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825243591" />
            </node>
            <node concept="liA8E" id="3j" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825243591" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825244671" />
          <node concept="2OqwBi" id="3k" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825244671" />
            <node concept="37vLTw" id="3l" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
            </node>
            <node concept="liA8E" id="3m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="u" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825244671" />
          <node concept="2OqwBi" id="3n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825244671" />
            <node concept="37vLTw" id="3o" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
            </node>
            <node concept="liA8E" id="3p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
              <node concept="Xl_RD" id="3q" role="37wK5m">
                <property role="Xl_RC" value="int pipes_fd[num_threads][2];" />
                <uo k="s:originTrace" v="n:3204091364825244671" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825251944" />
          <node concept="2OqwBi" id="3r" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825251944" />
            <node concept="37vLTw" id="3s" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825251944" />
            </node>
            <node concept="liA8E" id="3t" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825251944" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551035248" />
          <node concept="2OqwBi" id="3u" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551035248" />
            <node concept="37vLTw" id="3v" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
            </node>
            <node concept="liA8E" id="3w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="x" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551035248" />
          <node concept="2OqwBi" id="3x" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551035248" />
            <node concept="37vLTw" id="3y" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
            </node>
            <node concept="liA8E" id="3z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
              <node concept="Xl_RD" id="3$" role="37wK5m">
                <property role="Xl_RC" value="int i;" />
                <uo k="s:originTrace" v="n:1441253086551035248" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="y" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551035328" />
          <node concept="2OqwBi" id="3_" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551035328" />
            <node concept="37vLTw" id="3A" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551035328" />
            </node>
            <node concept="liA8E" id="3B" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551035328" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550881933" />
          <node concept="2OqwBi" id="3C" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550881933" />
            <node concept="37vLTw" id="3D" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
            </node>
            <node concept="liA8E" id="3E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550881933" />
          <node concept="2OqwBi" id="3F" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550881933" />
            <node concept="37vLTw" id="3G" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
            </node>
            <node concept="liA8E" id="3H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
              <node concept="Xl_RD" id="3I" role="37wK5m">
                <property role="Xl_RC" value="int addresses[" />
                <uo k="s:originTrace" v="n:1441253086550881933" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550902812" />
          <node concept="2OqwBi" id="3J" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550902812" />
            <node concept="37vLTw" id="3K" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550902812" />
            </node>
            <node concept="liA8E" id="3L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550902812" />
              <node concept="2YIFZM" id="3M" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:1441253086550902813" />
                <node concept="2OqwBi" id="3N" role="37wK5m">
                  <uo k="s:originTrace" v="n:1441253086550902814" />
                  <node concept="2OqwBi" id="3O" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1441253086550902815" />
                    <node concept="2OqwBi" id="3Q" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1441253086550902816" />
                      <node concept="37vLTw" id="3S" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="3T" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="3R" role="2OqNvi">
                      <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                      <uo k="s:originTrace" v="n:1441253086550902817" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3P" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    <uo k="s:originTrace" v="n:1441253086550902818" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550910947" />
          <node concept="2OqwBi" id="3U" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550910947" />
            <node concept="37vLTw" id="3V" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550910947" />
            </node>
            <node concept="liA8E" id="3W" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550910947" />
              <node concept="Xl_RD" id="3X" role="37wK5m">
                <property role="Xl_RC" value="];" />
                <uo k="s:originTrace" v="n:1441253086550910947" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551018506" />
          <node concept="2OqwBi" id="3Y" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551018506" />
            <node concept="37vLTw" id="3Z" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551018506" />
            </node>
            <node concept="liA8E" id="40" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551018506" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="C" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550975919" />
          <node concept="2GrKxI" id="41" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:1441253086550975921" />
          </node>
          <node concept="2OqwBi" id="42" role="2GsD0m">
            <uo k="s:originTrace" v="n:1441253086550977965" />
            <node concept="2OqwBi" id="44" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086550977403" />
              <node concept="37vLTw" id="46" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="47" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="45" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:1441253086550978735" />
            </node>
          </node>
          <node concept="3clFbS" id="43" role="2LFqv$">
            <uo k="s:originTrace" v="n:1441253086550975925" />
            <node concept="3clFbF" id="48" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550979003" />
              <node concept="2OqwBi" id="4f" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550979003" />
                <node concept="37vLTw" id="4g" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                </node>
                <node concept="liA8E" id="4h" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="49" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550979003" />
              <node concept="2OqwBi" id="4i" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550979003" />
                <node concept="37vLTw" id="4j" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                </node>
                <node concept="liA8E" id="4k" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                  <node concept="Xl_RD" id="4l" role="37wK5m">
                    <property role="Xl_RC" value="addresses[" />
                    <uo k="s:originTrace" v="n:1441253086550979003" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4a" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550979152" />
              <node concept="2OqwBi" id="4m" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550979152" />
                <node concept="37vLTw" id="4n" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550979152" />
                </node>
                <node concept="liA8E" id="4o" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550979152" />
                  <node concept="2YIFZM" id="4p" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:1441253086550987243" />
                    <node concept="2OqwBi" id="4q" role="37wK5m">
                      <uo k="s:originTrace" v="n:1441253086550988851" />
                      <node concept="2GrUjf" id="4r" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="41" resolve="actor" />
                        <uo k="s:originTrace" v="n:1441253086550987725" />
                      </node>
                      <node concept="2bSWHS" id="4s" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1441253086550992253" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4b" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550993798" />
              <node concept="2OqwBi" id="4t" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550993798" />
                <node concept="37vLTw" id="4u" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550993798" />
                </node>
                <node concept="liA8E" id="4v" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550993798" />
                  <node concept="Xl_RD" id="4w" role="37wK5m">
                    <property role="Xl_RC" value="] = " />
                    <uo k="s:originTrace" v="n:1441253086550993798" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4c" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550994284" />
              <node concept="2OqwBi" id="4x" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550994284" />
                <node concept="37vLTw" id="4y" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550994284" />
                </node>
                <node concept="liA8E" id="4z" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550994284" />
                  <node concept="2YIFZM" id="4$" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:1441253086551002511" />
                    <node concept="2OqwBi" id="4_" role="37wK5m">
                      <uo k="s:originTrace" v="n:1441253086551004633" />
                      <node concept="2GrUjf" id="4A" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="41" resolve="actor" />
                        <uo k="s:originTrace" v="n:1441253086551003053" />
                      </node>
                      <node concept="3TrcHB" id="4B" role="2OqNvi">
                        <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                        <uo k="s:originTrace" v="n:1441253086551009151" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4d" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086551018898" />
              <node concept="2OqwBi" id="4C" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086551018898" />
                <node concept="37vLTw" id="4D" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086551018898" />
                </node>
                <node concept="liA8E" id="4E" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086551018898" />
                  <node concept="Xl_RD" id="4F" role="37wK5m">
                    <property role="Xl_RC" value=";" />
                    <uo k="s:originTrace" v="n:1441253086551018898" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4e" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086551019483" />
              <node concept="2OqwBi" id="4G" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086551019483" />
                <node concept="37vLTw" id="4H" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086551019483" />
                </node>
                <node concept="liA8E" id="4I" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                  <uo k="s:originTrace" v="n:1441253086551019483" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="D" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551328386" />
          <node concept="2OqwBi" id="4J" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551328386" />
            <node concept="37vLTw" id="4K" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551328386" />
            </node>
            <node concept="liA8E" id="4L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551328386" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="E" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825291825" />
        </node>
        <node concept="3clFbF" id="F" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825255353" />
          <node concept="2OqwBi" id="4M" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825255353" />
            <node concept="37vLTw" id="4N" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
            </node>
            <node concept="liA8E" id="4O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="G" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825255353" />
          <node concept="2OqwBi" id="4P" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825255353" />
            <node concept="37vLTw" id="4Q" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
            </node>
            <node concept="liA8E" id="4R" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
              <node concept="Xl_RD" id="4S" role="37wK5m">
                <property role="Xl_RC" value="for (i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825255353" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825255861" />
          <node concept="2OqwBi" id="4T" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825255861" />
            <node concept="37vLTw" id="4U" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825255861" />
            </node>
            <node concept="liA8E" id="4V" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825255861" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="I" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256527" />
          <node concept="2OqwBi" id="4W" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256527" />
            <node concept="2OqwBi" id="4X" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825256527" />
              <node concept="2OqwBi" id="4Z" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825256527" />
                <node concept="37vLTw" id="51" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
                <node concept="liA8E" id="52" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
              </node>
              <node concept="liA8E" id="50" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825256527" />
              </node>
            </node>
            <node concept="liA8E" id="4Y" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825256527" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256983" />
          <node concept="2OqwBi" id="53" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256983" />
            <node concept="37vLTw" id="54" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
            </node>
            <node concept="liA8E" id="55" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256983" />
          <node concept="2OqwBi" id="56" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256983" />
            <node concept="37vLTw" id="57" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
            </node>
            <node concept="liA8E" id="58" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
              <node concept="Xl_RD" id="59" role="37wK5m">
                <property role="Xl_RC" value="if (pipe(pipes_fd[i])) {" />
                <uo k="s:originTrace" v="n:3204091364825256983" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257060" />
          <node concept="2OqwBi" id="5a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257060" />
            <node concept="37vLTw" id="5b" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257060" />
            </node>
            <node concept="liA8E" id="5c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257060" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257138" />
          <node concept="2OqwBi" id="5d" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257138" />
            <node concept="2OqwBi" id="5e" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825257138" />
              <node concept="2OqwBi" id="5g" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825257138" />
                <node concept="37vLTw" id="5i" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
                <node concept="liA8E" id="5j" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
              </node>
              <node concept="liA8E" id="5h" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825257138" />
              </node>
            </node>
            <node concept="liA8E" id="5f" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825257138" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257196" />
          <node concept="2OqwBi" id="5k" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257196" />
            <node concept="37vLTw" id="5l" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
            </node>
            <node concept="liA8E" id="5m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257196" />
          <node concept="2OqwBi" id="5n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257196" />
            <node concept="37vLTw" id="5o" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
            </node>
            <node concept="liA8E" id="5p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
              <node concept="Xl_RD" id="5q" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pipe&quot;);" />
                <uo k="s:originTrace" v="n:3204091364825257196" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257250" />
          <node concept="2OqwBi" id="5r" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257250" />
            <node concept="37vLTw" id="5s" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257250" />
            </node>
            <node concept="liA8E" id="5t" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257250" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257361" />
          <node concept="2OqwBi" id="5u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257361" />
            <node concept="37vLTw" id="5v" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
            </node>
            <node concept="liA8E" id="5w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257361" />
          <node concept="2OqwBi" id="5x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257361" />
            <node concept="37vLTw" id="5y" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
            </node>
            <node concept="liA8E" id="5z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
              <node concept="Xl_RD" id="5$" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364825257361" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="S" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257438" />
          <node concept="2OqwBi" id="5_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257438" />
            <node concept="37vLTw" id="5A" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257438" />
            </node>
            <node concept="liA8E" id="5B" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257438" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257138" />
          <node concept="2OqwBi" id="5C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257138" />
            <node concept="2OqwBi" id="5D" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825257138" />
              <node concept="2OqwBi" id="5F" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825257138" />
                <node concept="37vLTw" id="5H" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
                <node concept="liA8E" id="5I" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
              </node>
              <node concept="liA8E" id="5G" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825257138" />
              </node>
            </node>
            <node concept="liA8E" id="5E" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825257138" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257612" />
          <node concept="2OqwBi" id="5J" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257612" />
            <node concept="37vLTw" id="5K" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
            </node>
            <node concept="liA8E" id="5L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257612" />
          <node concept="2OqwBi" id="5M" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257612" />
            <node concept="37vLTw" id="5N" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
            </node>
            <node concept="liA8E" id="5O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
              <node concept="Xl_RD" id="5P" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825257612" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257688" />
          <node concept="2OqwBi" id="5Q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257688" />
            <node concept="37vLTw" id="5R" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257688" />
            </node>
            <node concept="liA8E" id="5S" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="X" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257821" />
          <node concept="2OqwBi" id="5T" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257821" />
            <node concept="37vLTw" id="5U" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
            </node>
            <node concept="liA8E" id="5V" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257821" />
          <node concept="2OqwBi" id="5W" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257821" />
            <node concept="37vLTw" id="5X" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
            </node>
            <node concept="liA8E" id="5Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
              <node concept="Xl_RD" id="5Z" role="37wK5m">
                <property role="Xl_RC" value="threads_data[i].read_fd = pipes_fd[i][0];" />
                <uo k="s:originTrace" v="n:3204091364825257821" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257878" />
          <node concept="2OqwBi" id="60" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257878" />
            <node concept="37vLTw" id="61" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257878" />
            </node>
            <node concept="liA8E" id="62" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257878" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257994" />
          <node concept="2OqwBi" id="63" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257994" />
            <node concept="37vLTw" id="64" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
            </node>
            <node concept="liA8E" id="65" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257994" />
          <node concept="2OqwBi" id="66" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257994" />
            <node concept="37vLTw" id="67" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
            </node>
            <node concept="liA8E" id="68" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
              <node concept="Xl_RD" id="69" role="37wK5m">
                <property role="Xl_RC" value="threads_data[i].write_fd = pipes_fd[i][1];" />
                <uo k="s:originTrace" v="n:3204091364825257994" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825258051" />
          <node concept="2OqwBi" id="6a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825258051" />
            <node concept="37vLTw" id="6b" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825258051" />
            </node>
            <node concept="liA8E" id="6c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825258051" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256527" />
          <node concept="2OqwBi" id="6d" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256527" />
            <node concept="2OqwBi" id="6e" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825256527" />
              <node concept="2OqwBi" id="6g" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825256527" />
                <node concept="37vLTw" id="6i" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
                <node concept="liA8E" id="6j" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
              </node>
              <node concept="liA8E" id="6h" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825256527" />
              </node>
            </node>
            <node concept="liA8E" id="6f" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825256527" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825265617" />
          <node concept="2OqwBi" id="6k" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825265617" />
            <node concept="37vLTw" id="6l" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
            </node>
            <node concept="liA8E" id="6m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825265617" />
          <node concept="2OqwBi" id="6n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825265617" />
            <node concept="37vLTw" id="6o" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
            </node>
            <node concept="liA8E" id="6p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
              <node concept="Xl_RD" id="6q" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825265617" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312714" />
          <node concept="2OqwBi" id="6r" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312714" />
            <node concept="37vLTw" id="6s" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312714" />
            </node>
            <node concept="liA8E" id="6t" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312714" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312770" />
          <node concept="2OqwBi" id="6u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312770" />
            <node concept="37vLTw" id="6v" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312770" />
            </node>
            <node concept="liA8E" id="6w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312770" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825301603" />
        </node>
        <node concept="3clFbF" id="19" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="6x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="6y" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="6z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="6$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="6_" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="6A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
              <node concept="Xl_RD" id="6B" role="37wK5m">
                <property role="Xl_RC" value="map_item *map = malloc(sizeof(map_item)*SIZE);" />
                <uo k="s:originTrace" v="n:3204091364825311359" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1b" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312873" />
          <node concept="2OqwBi" id="6C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312873" />
            <node concept="37vLTw" id="6D" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
            <node concept="liA8E" id="6E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1c" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="6F" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="6G" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="6H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1d" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="6I" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="6J" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="6K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
              <node concept="Xl_RD" id="6L" role="37wK5m">
                <property role="Xl_RC" value="if (!map) {" />
                <uo k="s:originTrace" v="n:3204091364825326996" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825327053" />
          <node concept="2OqwBi" id="6M" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825327053" />
            <node concept="37vLTw" id="6N" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
            <node concept="liA8E" id="6O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="6P" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="6Q" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="6S" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="6U" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="6V" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="6T" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="6R" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="6W" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="6X" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="6Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="6Z" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="70" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="71" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
              <node concept="Xl_RD" id="72" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;malloc&quot;);" />
                <uo k="s:originTrace" v="n:3204091364825334588" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334757" />
          <node concept="2OqwBi" id="73" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334757" />
            <node concept="37vLTw" id="74" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
            <node concept="liA8E" id="75" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="76" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="77" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="78" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="79" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="7a" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="7b" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
              <node concept="Xl_RD" id="7c" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364825334891" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334948" />
          <node concept="2OqwBi" id="7d" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334948" />
            <node concept="37vLTw" id="7e" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
            <node concept="liA8E" id="7f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="7g" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="7h" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="7j" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="7l" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="7m" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="7k" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="7i" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="7n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="7o" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="7p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="7q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="7r" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="7s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
              <node concept="Xl_RD" id="7t" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825342497" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342574" />
          <node concept="2OqwBi" id="7u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342574" />
            <node concept="37vLTw" id="7v" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
            <node concept="liA8E" id="7w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342630" />
          <node concept="2OqwBi" id="7x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342630" />
            <node concept="37vLTw" id="7y" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
            <node concept="liA8E" id="7z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1r" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311387" />
        </node>
        <node concept="3clFbF" id="1s" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551054357" />
          <node concept="2OqwBi" id="7$" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551054357" />
            <node concept="37vLTw" id="7_" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551054357" />
            </node>
            <node concept="liA8E" id="7A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086551054357" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1t" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551054357" />
          <node concept="2OqwBi" id="7B" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551054357" />
            <node concept="37vLTw" id="7C" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551054357" />
            </node>
            <node concept="liA8E" id="7D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086551054357" />
              <node concept="Xl_RD" id="7E" role="37wK5m">
                <property role="Xl_RC" value="for (i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:1441253086551054357" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1u" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551054435" />
          <node concept="2OqwBi" id="7F" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551054435" />
            <node concept="37vLTw" id="7G" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551054435" />
            </node>
            <node concept="liA8E" id="7H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551054435" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1v" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551055879" />
          <node concept="2OqwBi" id="7I" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551055879" />
            <node concept="2OqwBi" id="7J" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086551055879" />
              <node concept="2OqwBi" id="7L" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1441253086551055879" />
                <node concept="37vLTw" id="7N" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:1441253086551055879" />
                </node>
                <node concept="liA8E" id="7O" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:1441253086551055879" />
                </node>
              </node>
              <node concept="liA8E" id="7M" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:1441253086551055879" />
              </node>
            </node>
            <node concept="liA8E" id="7K" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:1441253086551055879" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1w" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551057328" />
          <node concept="2OqwBi" id="7P" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551057328" />
            <node concept="37vLTw" id="7Q" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551057328" />
            </node>
            <node concept="liA8E" id="7R" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086551057328" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1x" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551057328" />
          <node concept="2OqwBi" id="7S" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551057328" />
            <node concept="37vLTw" id="7T" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551057328" />
            </node>
            <node concept="liA8E" id="7U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086551057328" />
              <node concept="Xl_RD" id="7V" role="37wK5m">
                <property role="Xl_RC" value="init_map_entry(map, addresses[i], pipes_fd[i][1]);" />
                <uo k="s:originTrace" v="n:1441253086551057328" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551057385" />
          <node concept="2OqwBi" id="7W" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551057385" />
            <node concept="37vLTw" id="7X" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551057385" />
            </node>
            <node concept="liA8E" id="7Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551057385" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551057473" />
          <node concept="2OqwBi" id="7Z" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551057473" />
            <node concept="37vLTw" id="80" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551057473" />
            </node>
            <node concept="liA8E" id="81" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086551057473" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1$" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551057473" />
          <node concept="2OqwBi" id="82" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551057473" />
            <node concept="37vLTw" id="83" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551057473" />
            </node>
            <node concept="liA8E" id="84" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086551057473" />
              <node concept="Xl_RD" id="85" role="37wK5m">
                <property role="Xl_RC" value="threads_data[i].map = map;" />
                <uo k="s:originTrace" v="n:1441253086551057473" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551057530" />
          <node concept="2OqwBi" id="86" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551057530" />
            <node concept="37vLTw" id="87" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551057530" />
            </node>
            <node concept="liA8E" id="88" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551057530" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1A" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551055879" />
          <node concept="2OqwBi" id="89" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551055879" />
            <node concept="2OqwBi" id="8a" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086551055879" />
              <node concept="2OqwBi" id="8c" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1441253086551055879" />
                <node concept="37vLTw" id="8e" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:1441253086551055879" />
                </node>
                <node concept="liA8E" id="8f" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:1441253086551055879" />
                </node>
              </node>
              <node concept="liA8E" id="8d" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:1441253086551055879" />
              </node>
            </node>
            <node concept="liA8E" id="8b" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:1441253086551055879" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1B" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551067334" />
          <node concept="2OqwBi" id="8g" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551067334" />
            <node concept="37vLTw" id="8h" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551067334" />
            </node>
            <node concept="liA8E" id="8i" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086551067334" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1C" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551067334" />
          <node concept="2OqwBi" id="8j" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551067334" />
            <node concept="37vLTw" id="8k" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551067334" />
            </node>
            <node concept="liA8E" id="8l" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086551067334" />
              <node concept="Xl_RD" id="8m" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:1441253086551067334" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1D" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551067411" />
          <node concept="2OqwBi" id="8n" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551067411" />
            <node concept="37vLTw" id="8o" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551067411" />
            </node>
            <node concept="liA8E" id="8p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551067411" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1E" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551067467" />
          <node concept="2OqwBi" id="8q" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551067467" />
            <node concept="37vLTw" id="8r" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551067467" />
            </node>
            <node concept="liA8E" id="8s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551067467" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1F" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825470121" />
        </node>
        <node concept="2Gpval" id="1G" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825470974" />
          <node concept="2GrKxI" id="8t" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:3204091364825470975" />
          </node>
          <node concept="2OqwBi" id="8u" role="2GsD0m">
            <uo k="s:originTrace" v="n:3204091364825470976" />
            <node concept="2OqwBi" id="8w" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825470977" />
              <node concept="37vLTw" id="8y" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="8z" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="8x" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:3204091364825470978" />
            </node>
          </node>
          <node concept="3clFbS" id="8v" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364825470979" />
            <node concept="3clFbF" id="8$" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825485451" />
              <node concept="2OqwBi" id="8H" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825485451" />
                <node concept="37vLTw" id="8I" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                </node>
                <node concept="liA8E" id="8J" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8_" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825485451" />
              <node concept="2OqwBi" id="8K" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825485451" />
                <node concept="37vLTw" id="8L" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                </node>
                <node concept="liA8E" id="8M" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                  <node concept="Xl_RD" id="8N" role="37wK5m">
                    <property role="Xl_RC" value="pthread_create(&amp;threads[" />
                    <uo k="s:originTrace" v="n:3204091364825485451" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8A" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825485916" />
              <node concept="2OqwBi" id="8O" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825485916" />
                <node concept="37vLTw" id="8P" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825485916" />
                </node>
                <node concept="liA8E" id="8Q" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825485916" />
                  <node concept="2YIFZM" id="8R" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:3204091364825492423" />
                    <node concept="2OqwBi" id="8S" role="37wK5m">
                      <uo k="s:originTrace" v="n:3204091364825493634" />
                      <node concept="2GrUjf" id="8T" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="8t" resolve="actor" />
                        <uo k="s:originTrace" v="n:3204091364825492683" />
                      </node>
                      <node concept="2bSWHS" id="8U" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3204091364825496760" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8B" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825498414" />
              <node concept="2OqwBi" id="8V" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825498414" />
                <node concept="37vLTw" id="8W" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825498414" />
                </node>
                <node concept="liA8E" id="8X" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825498414" />
                  <node concept="Xl_RD" id="8Y" role="37wK5m">
                    <property role="Xl_RC" value="], NULL, " />
                    <uo k="s:originTrace" v="n:3204091364825498414" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8C" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825498949" />
              <node concept="2OqwBi" id="8Z" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825498949" />
                <node concept="37vLTw" id="90" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825498949" />
                </node>
                <node concept="liA8E" id="91" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825498949" />
                  <node concept="2OqwBi" id="92" role="37wK5m">
                    <uo k="s:originTrace" v="n:3204091364825506285" />
                    <node concept="2GrUjf" id="93" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="8t" resolve="actor" />
                      <uo k="s:originTrace" v="n:3204091364825505685" />
                    </node>
                    <node concept="3TrcHB" id="94" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:3204091364825509022" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8D" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825510881" />
              <node concept="2OqwBi" id="95" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825510881" />
                <node concept="37vLTw" id="96" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825510881" />
                </node>
                <node concept="liA8E" id="97" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825510881" />
                  <node concept="Xl_RD" id="98" role="37wK5m">
                    <property role="Xl_RC" value=", (void *)&amp;threads_data[" />
                    <uo k="s:originTrace" v="n:3204091364825510881" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8E" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825518165" />
              <node concept="2OqwBi" id="99" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825518165" />
                <node concept="37vLTw" id="9a" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825518165" />
                </node>
                <node concept="liA8E" id="9b" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825518165" />
                  <node concept="2YIFZM" id="9c" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:3204091364825518166" />
                    <node concept="2OqwBi" id="9d" role="37wK5m">
                      <uo k="s:originTrace" v="n:3204091364825518167" />
                      <node concept="2GrUjf" id="9e" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="8t" resolve="actor" />
                        <uo k="s:originTrace" v="n:3204091364825518168" />
                      </node>
                      <node concept="2bSWHS" id="9f" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3204091364825518169" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8F" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825525192" />
              <node concept="2OqwBi" id="9g" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825525192" />
                <node concept="37vLTw" id="9h" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825525192" />
                </node>
                <node concept="liA8E" id="9i" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825525192" />
                  <node concept="Xl_RD" id="9j" role="37wK5m">
                    <property role="Xl_RC" value="]);" />
                    <uo k="s:originTrace" v="n:3204091364825525192" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="8G" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825526712" />
              <node concept="2OqwBi" id="9k" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825526712" />
                <node concept="37vLTw" id="9l" role="2Oq$k0">
                  <ref role="3cqZAo" node="21" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825526712" />
                </node>
                <node concept="liA8E" id="9m" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                  <uo k="s:originTrace" v="n:3204091364825526712" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825529124" />
          <node concept="2OqwBi" id="9n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825529124" />
            <node concept="37vLTw" id="9o" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825529124" />
            </node>
            <node concept="liA8E" id="9p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825529124" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1I" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825529151" />
        </node>
        <node concept="3clFbF" id="1J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="9q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="9r" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="9s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="9t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="9u" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="9v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
              <node concept="Xl_RD" id="9w" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825540062" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540208" />
          <node concept="2OqwBi" id="9x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540208" />
            <node concept="37vLTw" id="9y" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
            <node concept="liA8E" id="9z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="9$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="9_" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="9B" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="9D" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="9E" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="9C" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="9A" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="9F" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="9G" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="9H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="9I" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="9J" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="9K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
              <node concept="Xl_RD" id="9L" role="37wK5m">
                <property role="Xl_RC" value="pthread_join(threads[i], NULL);" />
                <uo k="s:originTrace" v="n:3204091364825550168" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550222" />
          <node concept="2OqwBi" id="9M" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550222" />
            <node concept="37vLTw" id="9N" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
            <node concept="liA8E" id="9O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="9P" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="9Q" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="9S" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="9U" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="9V" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="9T" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="9R" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="9W" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="9X" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="9Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1S" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="9Z" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="a0" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="a1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
              <node concept="Xl_RD" id="a2" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825569047" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569124" />
          <node concept="2OqwBi" id="a3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569124" />
            <node concept="37vLTw" id="a4" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
            <node concept="liA8E" id="a5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569180" />
          <node concept="2OqwBi" id="a6" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569180" />
            <node concept="37vLTw" id="a7" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
            <node concept="liA8E" id="a8" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569209" />
        </node>
        <node concept="3clFbF" id="1W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="a9" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="aa" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="ab" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1X" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="ac" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="ad" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="ae" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
              <node concept="Xl_RD" id="af" role="37wK5m">
                <property role="Xl_RC" value="return 0;" />
                <uo k="s:originTrace" v="n:3204091364825571490" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825573885" />
          <node concept="2OqwBi" id="ag" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825573885" />
            <node concept="37vLTw" id="ah" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
            <node concept="liA8E" id="ai" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="aj" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="ak" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="am" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="ao" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="ap" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="an" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="al" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825583909" />
          <node concept="2OqwBi" id="aq" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825583909" />
            <node concept="37vLTw" id="ar" role="2Oq$k0">
              <ref role="3cqZAo" node="21" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
            </node>
            <node concept="liA8E" id="as" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
              <node concept="Xl_RD" id="at" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825583909" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3865756215866094073" />
        <node concept="3uibUv" id="au" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3865756215866094073" />
        </node>
      </node>
      <node concept="2AHcQZ" id="8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3865756215866094073" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="av">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Actor_TextGen" />
    <property role="3GE5qa" value="actor" />
    <uo k="s:originTrace" v="n:3204091364823173251" />
    <node concept="3Tm1VV" id="aw" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3uibUv" id="ax" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3clFb_" id="ay" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
      <node concept="3cqZAl" id="az" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3Tm1VV" id="a$" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3clFbS" id="a_" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3cpWs8" id="aC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173251" />
          <node concept="3cpWsn" id="bL" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="3uibUv" id="bM" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
            <node concept="2ShNRf" id="bN" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823173251" />
              <node concept="1pGfFk" id="bO" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823173251" />
                <node concept="37vLTw" id="bP" role="37wK5m">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823173251" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173308" />
          <node concept="2OqwBi" id="bQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173308" />
            <node concept="37vLTw" id="bR" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
            </node>
            <node concept="liA8E" id="bS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
              <node concept="Xl_RD" id="bT" role="37wK5m">
                <property role="Xl_RC" value="void *" />
                <uo k="s:originTrace" v="n:3204091364823173308" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173477" />
          <node concept="2OqwBi" id="bU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173477" />
            <node concept="37vLTw" id="bV" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
            </node>
            <node concept="liA8E" id="bW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
              <node concept="2OqwBi" id="bX" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364823173986" />
                <node concept="2OqwBi" id="bY" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364823173513" />
                  <node concept="37vLTw" id="c0" role="2Oq$k0">
                    <ref role="3cqZAo" node="aA" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="c1" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="bZ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364823181405" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181644" />
          <node concept="2OqwBi" id="c2" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181644" />
            <node concept="37vLTw" id="c3" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
            </node>
            <node concept="liA8E" id="c4" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
              <node concept="Xl_RD" id="c5" role="37wK5m">
                <property role="Xl_RC" value="(void *arg) {" />
                <uo k="s:originTrace" v="n:3204091364823181644" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181871" />
          <node concept="2OqwBi" id="c6" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181871" />
            <node concept="37vLTw" id="c7" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
            <node concept="liA8E" id="c8" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182201" />
          <node concept="2OqwBi" id="c9" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182201" />
            <node concept="2OqwBi" id="ca" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823182201" />
              <node concept="2OqwBi" id="cc" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823182201" />
                <node concept="37vLTw" id="ce" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
                <node concept="liA8E" id="cf" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
              </node>
              <node concept="liA8E" id="cd" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823182201" />
              </node>
            </node>
            <node concept="liA8E" id="cb" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823182201" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182421" />
          <node concept="2OqwBi" id="cg" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182421" />
            <node concept="37vLTw" id="ch" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
            </node>
            <node concept="liA8E" id="ci" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182421" />
          <node concept="2OqwBi" id="cj" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182421" />
            <node concept="37vLTw" id="ck" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
            </node>
            <node concept="liA8E" id="cl" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
              <node concept="Xl_RD" id="cm" role="37wK5m">
                <property role="Xl_RC" value="ThreadData *data = (ThreadData *)arg;" />
                <uo k="s:originTrace" v="n:3204091364823182421" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182708" />
          <node concept="2OqwBi" id="cn" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182708" />
            <node concept="37vLTw" id="co" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823182708" />
            </node>
            <node concept="liA8E" id="cp" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823182708" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825769484" />
          <node concept="2OqwBi" id="cq" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825769484" />
            <node concept="37vLTw" id="cr" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825769484" />
            </node>
            <node concept="liA8E" id="cs" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825769484" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aM" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825769484" />
          <node concept="2OqwBi" id="ct" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825769484" />
            <node concept="37vLTw" id="cu" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825769484" />
            </node>
            <node concept="liA8E" id="cv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825769484" />
              <node concept="Xl_RD" id="cw" role="37wK5m">
                <property role="Xl_RC" value="int receiver_address;" />
                <uo k="s:originTrace" v="n:3204091364825769484" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aN" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825769630" />
          <node concept="2OqwBi" id="cx" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825769630" />
            <node concept="37vLTw" id="cy" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825769630" />
            </node>
            <node concept="liA8E" id="cz" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825769630" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aO" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826276063" />
          <node concept="2OqwBi" id="c$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826276063" />
            <node concept="37vLTw" id="c_" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826276063" />
            </node>
            <node concept="liA8E" id="cA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364826276063" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aP" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826276063" />
          <node concept="2OqwBi" id="cB" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826276063" />
            <node concept="37vLTw" id="cC" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826276063" />
            </node>
            <node concept="liA8E" id="cD" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826276063" />
              <node concept="Xl_RD" id="cE" role="37wK5m">
                <property role="Xl_RC" value="ssize_t bytes_read, bytes_written;" />
                <uo k="s:originTrace" v="n:3204091364826276063" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826276324" />
          <node concept="2OqwBi" id="cF" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826276324" />
            <node concept="37vLTw" id="cG" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826276324" />
            </node>
            <node concept="liA8E" id="cH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364826276324" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aR" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823407812" />
          <node concept="2OqwBi" id="cI" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823407812" />
            <node concept="37vLTw" id="cJ" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
            </node>
            <node concept="liA8E" id="cK" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aS" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823407812" />
          <node concept="2OqwBi" id="cL" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823407812" />
            <node concept="37vLTw" id="cM" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
            </node>
            <node concept="liA8E" id="cN" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
              <node concept="Xl_RD" id="cO" role="37wK5m">
                <property role="Xl_RC" value="char *actor_name = &quot;" />
                <uo k="s:originTrace" v="n:3204091364823407812" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aT" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823408004" />
          <node concept="2OqwBi" id="cP" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823408004" />
            <node concept="37vLTw" id="cQ" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823408004" />
            </node>
            <node concept="liA8E" id="cR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823408004" />
              <node concept="2OqwBi" id="cS" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364823408513" />
                <node concept="2OqwBi" id="cT" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364823408040" />
                  <node concept="37vLTw" id="cV" role="2Oq$k0">
                    <ref role="3cqZAo" node="aA" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="cW" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="cU" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364823409302" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823409408" />
          <node concept="2OqwBi" id="cX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823409408" />
            <node concept="37vLTw" id="cY" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823409408" />
            </node>
            <node concept="liA8E" id="cZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823409408" />
              <node concept="Xl_RD" id="d0" role="37wK5m">
                <property role="Xl_RC" value="&quot;;" />
                <uo k="s:originTrace" v="n:3204091364823409408" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aV" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823460411" />
          <node concept="2OqwBi" id="d1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823460411" />
            <node concept="37vLTw" id="d2" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823460411" />
            </node>
            <node concept="liA8E" id="d3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823460411" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aW" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823460658" />
          <node concept="2OqwBi" id="d4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823460658" />
            <node concept="37vLTw" id="d5" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823460658" />
            </node>
            <node concept="liA8E" id="d6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823460658" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aX" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824545437" />
        </node>
        <node concept="1DcWWT" id="aY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824060511" />
          <node concept="3clFbS" id="d7" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364824060511" />
            <node concept="3clFbF" id="da" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364824060511" />
              <node concept="2OqwBi" id="db" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364824060511" />
                <node concept="37vLTw" id="dc" role="2Oq$k0">
                  <ref role="3cqZAo" node="bL" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364824060511" />
                </node>
                <node concept="liA8E" id="dd" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:3204091364824060511" />
                  <node concept="37vLTw" id="de" role="37wK5m">
                    <ref role="3cqZAo" node="d8" resolve="item" />
                    <uo k="s:originTrace" v="n:3204091364824060511" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="d8" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:3204091364824060511" />
            <node concept="3Tqbb2" id="df" role="1tU5fm">
              <uo k="s:originTrace" v="n:3204091364824060511" />
            </node>
          </node>
          <node concept="2OqwBi" id="d9" role="1DdaDG">
            <uo k="s:originTrace" v="n:3204091364824060985" />
            <node concept="2OqwBi" id="dg" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824060541" />
              <node concept="37vLTw" id="di" role="2Oq$k0">
                <ref role="3cqZAo" node="aA" resolve="ctx" />
              </node>
              <node concept="liA8E" id="dj" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="dh" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
              <uo k="s:originTrace" v="n:3204091364824062394" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824032989" />
        </node>
        <node concept="3clFbF" id="b0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826360755" />
          <node concept="2OqwBi" id="dk" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826360755" />
            <node concept="37vLTw" id="dl" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826360755" />
            </node>
            <node concept="liA8E" id="dm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364826360755" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826360755" />
          <node concept="2OqwBi" id="dn" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826360755" />
            <node concept="37vLTw" id="do" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826360755" />
            </node>
            <node concept="liA8E" id="dp" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826360755" />
              <node concept="Xl_RD" id="dq" role="37wK5m">
                <property role="Xl_RC" value="while(1) {" />
                <uo k="s:originTrace" v="n:3204091364826360755" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826360947" />
          <node concept="2OqwBi" id="dr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826360947" />
            <node concept="37vLTw" id="ds" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826360947" />
            </node>
            <node concept="liA8E" id="dt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364826360947" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826361089" />
          <node concept="2OqwBi" id="du" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826361089" />
            <node concept="2OqwBi" id="dv" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364826361089" />
              <node concept="2OqwBi" id="dx" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364826361089" />
                <node concept="37vLTw" id="dz" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364826361089" />
                </node>
                <node concept="liA8E" id="d$" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364826361089" />
                </node>
              </node>
              <node concept="liA8E" id="dy" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364826361089" />
              </node>
            </node>
            <node concept="liA8E" id="dw" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364826361089" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183536" />
          <node concept="2OqwBi" id="d_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183536" />
            <node concept="37vLTw" id="dA" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
            </node>
            <node concept="liA8E" id="dB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b5" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183536" />
          <node concept="2OqwBi" id="dC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183536" />
            <node concept="37vLTw" id="dD" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
            </node>
            <node concept="liA8E" id="dE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
              <node concept="Xl_RD" id="dF" role="37wK5m">
                <property role="Xl_RC" value="char buffer[BUFFER_SIZE];" />
                <uo k="s:originTrace" v="n:3204091364823183536" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b6" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183613" />
          <node concept="2OqwBi" id="dG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183613" />
            <node concept="37vLTw" id="dH" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183613" />
            </node>
            <node concept="liA8E" id="dI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823183613" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b7" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183233" />
          <node concept="2OqwBi" id="dJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183233" />
            <node concept="37vLTw" id="dK" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
            </node>
            <node concept="liA8E" id="dL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183233" />
          <node concept="2OqwBi" id="dM" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183233" />
            <node concept="37vLTw" id="dN" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
            </node>
            <node concept="liA8E" id="dO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
              <node concept="Xl_RD" id="dP" role="37wK5m">
                <property role="Xl_RC" value="bytes_read = read(data-&gt;read_fd, buffer, BUFFER_SIZE);" />
                <uo k="s:originTrace" v="n:3204091364823183233" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183772" />
          <node concept="2OqwBi" id="dQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183772" />
            <node concept="37vLTw" id="dR" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183772" />
            </node>
            <node concept="liA8E" id="dS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823183772" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ba" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215888" />
          <node concept="2OqwBi" id="dT" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215888" />
            <node concept="37vLTw" id="dU" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215888" />
            </node>
            <node concept="liA8E" id="dV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301215888" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bb" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215888" />
          <node concept="2OqwBi" id="dW" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215888" />
            <node concept="37vLTw" id="dX" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215888" />
            </node>
            <node concept="liA8E" id="dY" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301215888" />
              <node concept="Xl_RD" id="dZ" role="37wK5m">
                <property role="Xl_RC" value="buffer[bytes_read] = 0x00;" />
                <uo k="s:originTrace" v="n:5167209971301215888" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bc" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215965" />
          <node concept="2OqwBi" id="e0" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215965" />
            <node concept="37vLTw" id="e1" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215965" />
            </node>
            <node concept="liA8E" id="e2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215965" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bd" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184165" />
          <node concept="2OqwBi" id="e3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184165" />
            <node concept="37vLTw" id="e4" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
            </node>
            <node concept="liA8E" id="e5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="be" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184165" />
          <node concept="2OqwBi" id="e6" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184165" />
            <node concept="37vLTw" id="e7" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
            </node>
            <node concept="liA8E" id="e8" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
              <node concept="Xl_RD" id="e9" role="37wK5m">
                <property role="Xl_RC" value="if (bytes_read &gt; 0) {" />
                <uo k="s:originTrace" v="n:3204091364823184165" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bf" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184242" />
          <node concept="2OqwBi" id="ea" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184242" />
            <node concept="37vLTw" id="eb" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184242" />
            </node>
            <node concept="liA8E" id="ec" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823184242" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bg" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184467" />
          <node concept="2OqwBi" id="ed" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184467" />
            <node concept="2OqwBi" id="ee" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823184467" />
              <node concept="2OqwBi" id="eg" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823184467" />
                <node concept="37vLTw" id="ei" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
                <node concept="liA8E" id="ej" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
              </node>
              <node concept="liA8E" id="eh" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823184467" />
              </node>
            </node>
            <node concept="liA8E" id="ef" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823184467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bh" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823409607" />
          <node concept="2OqwBi" id="ek" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823409607" />
            <node concept="37vLTw" id="el" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
            </node>
            <node concept="liA8E" id="em" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bi" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823409607" />
          <node concept="2OqwBi" id="en" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823409607" />
            <node concept="37vLTw" id="eo" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
            </node>
            <node concept="liA8E" id="ep" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
              <node concept="Xl_RD" id="eq" role="37wK5m">
                <property role="Xl_RC" value="printf(&quot;%s received message: %s&quot;, actor_name, buffer);" />
                <uo k="s:originTrace" v="n:3204091364823409607" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bj" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823186905" />
          <node concept="2OqwBi" id="er" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823186905" />
            <node concept="37vLTw" id="es" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823186905" />
            </node>
            <node concept="liA8E" id="et" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823186905" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299528" />
          <node concept="2OqwBi" id="eu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299528" />
            <node concept="37vLTw" id="ev" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
            </node>
            <node concept="liA8E" id="ew" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bl" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299528" />
          <node concept="2OqwBi" id="ex" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299528" />
            <node concept="37vLTw" id="ey" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
            </node>
            <node concept="liA8E" id="ez" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
              <node concept="Xl_RD" id="e$" role="37wK5m">
                <property role="Xl_RC" value="puts(&quot;&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824299528" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bm" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299666" />
          <node concept="2OqwBi" id="e_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299666" />
            <node concept="37vLTw" id="eA" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299666" />
            </node>
            <node concept="liA8E" id="eB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824299666" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bn" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184467" />
          <node concept="2OqwBi" id="eC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184467" />
            <node concept="2OqwBi" id="eD" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823184467" />
              <node concept="2OqwBi" id="eF" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823184467" />
                <node concept="37vLTw" id="eH" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
                <node concept="liA8E" id="eI" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
              </node>
              <node concept="liA8E" id="eG" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823184467" />
              </node>
            </node>
            <node concept="liA8E" id="eE" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823184467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bo" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823187415" />
          <node concept="2OqwBi" id="eJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823187415" />
            <node concept="37vLTw" id="eK" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
            </node>
            <node concept="liA8E" id="eL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bp" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823187415" />
          <node concept="2OqwBi" id="eM" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823187415" />
            <node concept="37vLTw" id="eN" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
            </node>
            <node concept="liA8E" id="eO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
              <node concept="Xl_RD" id="eP" role="37wK5m">
                <property role="Xl_RC" value="} else {" />
                <uo k="s:originTrace" v="n:3204091364823187415" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612469" />
          <node concept="2OqwBi" id="eQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612469" />
            <node concept="37vLTw" id="eR" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612469" />
            </node>
            <node concept="liA8E" id="eS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612469" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="br" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190643" />
          <node concept="2OqwBi" id="eT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190643" />
            <node concept="2OqwBi" id="eU" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823190643" />
              <node concept="2OqwBi" id="eW" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823190643" />
                <node concept="37vLTw" id="eY" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
                <node concept="liA8E" id="eZ" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
              </node>
              <node concept="liA8E" id="eX" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823190643" />
              </node>
            </node>
            <node concept="liA8E" id="eV" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823190643" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bs" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823189566" />
          <node concept="2OqwBi" id="f0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823189566" />
            <node concept="37vLTw" id="f1" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
            </node>
            <node concept="liA8E" id="f2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bt" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823189566" />
          <node concept="2OqwBi" id="f3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823189566" />
            <node concept="37vLTw" id="f4" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
            </node>
            <node concept="liA8E" id="f5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
              <node concept="Xl_RD" id="f6" role="37wK5m">
                <property role="Xl_RC" value="printf(&quot;%s: Error reading from pipe&quot;, actor_name);" />
                <uo k="s:originTrace" v="n:3204091364823189566" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bu" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823189793" />
          <node concept="2OqwBi" id="f7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823189793" />
            <node concept="37vLTw" id="f8" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823189793" />
            </node>
            <node concept="liA8E" id="f9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823189793" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bv" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299608" />
          <node concept="2OqwBi" id="fa" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299608" />
            <node concept="37vLTw" id="fb" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
            </node>
            <node concept="liA8E" id="fc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299608" />
          <node concept="2OqwBi" id="fd" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299608" />
            <node concept="37vLTw" id="fe" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
            </node>
            <node concept="liA8E" id="ff" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
              <node concept="Xl_RD" id="fg" role="37wK5m">
                <property role="Xl_RC" value="puts(&quot;&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824299608" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bx" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299721" />
          <node concept="2OqwBi" id="fh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299721" />
            <node concept="37vLTw" id="fi" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299721" />
            </node>
            <node concept="liA8E" id="fj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824299721" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="by" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190643" />
          <node concept="2OqwBi" id="fk" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190643" />
            <node concept="2OqwBi" id="fl" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823190643" />
              <node concept="2OqwBi" id="fn" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823190643" />
                <node concept="37vLTw" id="fp" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
                <node concept="liA8E" id="fq" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
              </node>
              <node concept="liA8E" id="fo" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823190643" />
              </node>
            </node>
            <node concept="liA8E" id="fm" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823190643" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190998" />
          <node concept="2OqwBi" id="fr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190998" />
            <node concept="37vLTw" id="fs" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
            </node>
            <node concept="liA8E" id="ft" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190998" />
          <node concept="2OqwBi" id="fu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190998" />
            <node concept="37vLTw" id="fv" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
            </node>
            <node concept="liA8E" id="fw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
              <node concept="Xl_RD" id="fx" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364823190998" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612524" />
          <node concept="2OqwBi" id="fy" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612524" />
            <node concept="37vLTw" id="fz" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612524" />
            </node>
            <node concept="liA8E" id="f$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612524" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826361089" />
          <node concept="2OqwBi" id="f_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826361089" />
            <node concept="2OqwBi" id="fA" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364826361089" />
              <node concept="2OqwBi" id="fC" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364826361089" />
                <node concept="37vLTw" id="fE" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364826361089" />
                </node>
                <node concept="liA8E" id="fF" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364826361089" />
                </node>
              </node>
              <node concept="liA8E" id="fD" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364826361089" />
              </node>
            </node>
            <node concept="liA8E" id="fB" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364826361089" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826362969" />
          <node concept="2OqwBi" id="fG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826362969" />
            <node concept="37vLTw" id="fH" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826362969" />
            </node>
            <node concept="liA8E" id="fI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364826362969" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826362969" />
          <node concept="2OqwBi" id="fJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826362969" />
            <node concept="37vLTw" id="fK" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826362969" />
            </node>
            <node concept="liA8E" id="fL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826362969" />
              <node concept="Xl_RD" id="fM" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364826362969" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826363026" />
          <node concept="2OqwBi" id="fN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826363026" />
            <node concept="37vLTw" id="fO" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826363026" />
            </node>
            <node concept="liA8E" id="fP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364826363026" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826363201" />
          <node concept="2OqwBi" id="fQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826363201" />
            <node concept="37vLTw" id="fR" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826363201" />
            </node>
            <node concept="liA8E" id="fS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364826363201" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826363054" />
        </node>
        <node concept="3clFbF" id="bG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182201" />
          <node concept="2OqwBi" id="fT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182201" />
            <node concept="2OqwBi" id="fU" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823182201" />
              <node concept="2OqwBi" id="fW" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823182201" />
                <node concept="37vLTw" id="fY" role="2Oq$k0">
                  <ref role="3cqZAo" node="aA" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
                <node concept="liA8E" id="fZ" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
              </node>
              <node concept="liA8E" id="fX" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823182201" />
              </node>
            </node>
            <node concept="liA8E" id="fV" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823182201" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="g0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="g1" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="g2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="g3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="g4" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="g5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
              <node concept="Xl_RD" id="g6" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364823191220" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612579" />
          <node concept="2OqwBi" id="g7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612579" />
            <node concept="37vLTw" id="g8" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
            <node concept="liA8E" id="g9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612635" />
          <node concept="2OqwBi" id="ga" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612635" />
            <node concept="37vLTw" id="gb" role="2Oq$k0">
              <ref role="3cqZAo" node="bL" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
            <node concept="liA8E" id="gc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="aA" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3uibUv" id="gd" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823173251" />
        </node>
      </node>
      <node concept="2AHcQZ" id="aB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="ge">
    <node concept="39e2AJ" id="gf" role="39e2AI">
      <property role="39e3Y2" value="GetExtension" />
      <node concept="39e2AG" id="gk" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="gl" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="gn" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="gm" role="39e2AY">
          <ref role="39e2AS" node="qY" resolve="getFileExtension_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gg" role="39e2AI">
      <property role="39e3Y2" value="GetFilename" />
      <node concept="39e2AG" id="go" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="gp" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="gr" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="gq" role="39e2AY">
          <ref role="39e2AS" node="qX" resolve="getFileName_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gh" role="39e2AI">
      <property role="39e3Y2" value="LanguageUtilityClass" />
      <node concept="39e2AG" id="gs" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1Vca2fl" resolve="Initialization" />
        <node concept="385nmt" id="gt" role="385vvn">
          <property role="385vuF" value="Initialization" />
          <node concept="3u3nmq" id="gv" role="385v07">
            <property role="3u3nmv" value="3204091364822754261" />
          </node>
        </node>
        <node concept="39e2AT" id="gu" role="39e2AY">
          <ref role="39e2AS" node="gM" resolve="Initialization" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gi" role="39e2AI">
      <property role="39e3Y2" value="TextGenClass" />
      <node concept="39e2AG" id="gw" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="g$" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="gA" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="g_" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ActorScript_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="gx" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcbCy3" resolve="Actor_TextGen" />
        <node concept="385nmt" id="gB" role="385vvn">
          <property role="385vuF" value="Actor_TextGen" />
          <node concept="3u3nmq" id="gD" role="385v07">
            <property role="3u3nmv" value="3204091364823173251" />
          </node>
        </node>
        <node concept="39e2AT" id="gC" role="39e2AY">
          <ref role="39e2AS" node="av" resolve="Actor_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="gy" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcgoXq" resolve="Message_TextGen" />
        <node concept="385nmt" id="gE" role="385vvn">
          <property role="385vuF" value="Message_TextGen" />
          <node concept="3u3nmq" id="gG" role="385v07">
            <property role="3u3nmv" value="3204091364824420186" />
          </node>
        </node>
        <node concept="39e2AT" id="gF" role="39e2AY">
          <ref role="39e2AS" node="mq" resolve="Message_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="gz" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VceMmW" resolve="SendMessage_TextGen" />
        <node concept="385nmt" id="gH" role="385vvn">
          <property role="385vuF" value="SendMessage_TextGen" />
          <node concept="3u3nmq" id="gJ" role="385v07">
            <property role="3u3nmv" value="3204091364823999932" />
          </node>
        </node>
        <node concept="39e2AT" id="gI" role="39e2AY">
          <ref role="39e2AS" node="n$" resolve="SendMessage_TextGen" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="gj" role="39e2AI">
      <property role="39e3Y2" value="TextGenAspectDescriptorCons" />
      <node concept="39e2AG" id="gK" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="gL" role="39e2AY">
          <ref role="39e2AS" node="qQ" resolve="TextGenAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="gM">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="Initialization" />
    <uo k="s:originTrace" v="n:3204091364822754261" />
    <node concept="3Tm1VV" id="gN" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364822754261" />
    </node>
    <node concept="2YIFZL" id="gO" role="jymVt">
      <property role="TrG5h" value="init" />
      <uo k="s:originTrace" v="n:3204091364822754261" />
      <node concept="3cqZAl" id="gP" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3Tm1VV" id="gQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3clFbS" id="gR" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3cpWs8" id="gT" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754261" />
          <node concept="3cpWsn" id="i4" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364822754261" />
            <node concept="3uibUv" id="i5" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364822754261" />
            </node>
            <node concept="2ShNRf" id="i6" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364822754261" />
              <node concept="1pGfFk" id="i7" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364822754261" />
                <node concept="37vLTw" id="i8" role="37wK5m">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822754261" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754369" />
          <node concept="2OqwBi" id="i9" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754369" />
            <node concept="37vLTw" id="ia" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
            </node>
            <node concept="liA8E" id="ib" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
              <node concept="Xl_RD" id="ic" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdio.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754369" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gV" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882556" />
          <node concept="2OqwBi" id="id" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882556" />
            <node concept="37vLTw" id="ie" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
            <node concept="liA8E" id="if" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gW" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754506" />
          <node concept="2OqwBi" id="ig" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754506" />
            <node concept="37vLTw" id="ih" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
            </node>
            <node concept="liA8E" id="ii" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
              <node concept="Xl_RD" id="ij" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdlib.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754506" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gX" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882601" />
          <node concept="2OqwBi" id="ik" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882601" />
            <node concept="37vLTw" id="il" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
            <node concept="liA8E" id="im" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754555" />
          <node concept="2OqwBi" id="in" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754555" />
            <node concept="37vLTw" id="io" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
            </node>
            <node concept="liA8E" id="ip" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
              <node concept="Xl_RD" id="iq" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;pthread.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754555" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="gZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882645" />
          <node concept="2OqwBi" id="ir" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882645" />
            <node concept="37vLTw" id="is" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
            <node concept="liA8E" id="it" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754594" />
          <node concept="2OqwBi" id="iu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754594" />
            <node concept="37vLTw" id="iv" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
            </node>
            <node concept="liA8E" id="iw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
              <node concept="Xl_RD" id="ix" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;unistd.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754594" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882689" />
          <node concept="2OqwBi" id="iy" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882689" />
            <node concept="37vLTw" id="iz" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
            <node concept="liA8E" id="i$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754655" />
          <node concept="2OqwBi" id="i_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754655" />
            <node concept="37vLTw" id="iA" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
            </node>
            <node concept="liA8E" id="iB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
              <node concept="Xl_RD" id="iC" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;string.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754655" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882714" />
          <node concept="2OqwBi" id="iD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882714" />
            <node concept="37vLTw" id="iE" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
            <node concept="liA8E" id="iF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882863" />
          <node concept="2OqwBi" id="iG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882863" />
            <node concept="37vLTw" id="iH" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
            <node concept="liA8E" id="iI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h5" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754823" />
          <node concept="2OqwBi" id="iJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754823" />
            <node concept="37vLTw" id="iK" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
            </node>
            <node concept="liA8E" id="iL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
              <node concept="Xl_RD" id="iM" role="37wK5m">
                <property role="Xl_RC" value="#define SIZE 100" />
                <uo k="s:originTrace" v="n:3204091364822754823" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h6" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882758" />
          <node concept="2OqwBi" id="iN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882758" />
            <node concept="37vLTw" id="iO" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
            <node concept="liA8E" id="iP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h7" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754917" />
          <node concept="2OqwBi" id="iQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754917" />
            <node concept="37vLTw" id="iR" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
            </node>
            <node concept="liA8E" id="iS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
              <node concept="Xl_RD" id="iT" role="37wK5m">
                <property role="Xl_RC" value="#define BUFFER_SIZE 1024" />
                <uo k="s:originTrace" v="n:3204091364822754917" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882783" />
          <node concept="2OqwBi" id="iU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882783" />
            <node concept="37vLTw" id="iV" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
            <node concept="liA8E" id="iW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882943" />
          <node concept="2OqwBi" id="iX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882943" />
            <node concept="37vLTw" id="iY" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
            <node concept="liA8E" id="iZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ha" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755293" />
          <node concept="2OqwBi" id="j0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755293" />
            <node concept="37vLTw" id="j1" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
            </node>
            <node concept="liA8E" id="j2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
              <node concept="Xl_RD" id="j3" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364822755293" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hb" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882986" />
          <node concept="2OqwBi" id="j4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882986" />
            <node concept="37vLTw" id="j5" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
            <node concept="liA8E" id="j6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hc" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="j7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="j8" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="ja" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="jc" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="jd" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="jb" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="j9" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hd" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="je" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="jf" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="jg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="he" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="jh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="ji" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="jj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
              <node concept="Xl_RD" id="jk" role="37wK5m">
                <property role="Xl_RC" value="int address;" />
                <uo k="s:originTrace" v="n:3204091364822755431" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hf" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883011" />
          <node concept="2OqwBi" id="jl" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883011" />
            <node concept="37vLTw" id="jm" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
            <node concept="liA8E" id="jn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hg" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="jo" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="jp" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="jq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hh" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="jr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="js" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="jt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
              <node concept="Xl_RD" id="ju" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364822755512" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hi" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883036" />
          <node concept="2OqwBi" id="jv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883036" />
            <node concept="37vLTw" id="jw" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
            <node concept="liA8E" id="jx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hj" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198789" />
          <node concept="2OqwBi" id="jy" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198789" />
            <node concept="37vLTw" id="jz" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
            <node concept="liA8E" id="j$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hk" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198789" />
          <node concept="2OqwBi" id="j_" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198789" />
            <node concept="37vLTw" id="jA" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
            <node concept="liA8E" id="jB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
              <node concept="Xl_RD" id="jC" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_t mutex;" />
                <uo k="s:originTrace" v="n:5167209971301198789" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hl" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198833" />
          <node concept="2OqwBi" id="jD" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198833" />
            <node concept="37vLTw" id="jE" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198833" />
            </node>
            <node concept="liA8E" id="jF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301198833" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hm" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="jG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="jH" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="jJ" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="jL" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="jM" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="jK" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="jI" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hn" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755564" />
          <node concept="2OqwBi" id="jN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755564" />
            <node concept="37vLTw" id="jO" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
            </node>
            <node concept="liA8E" id="jP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
              <node concept="Xl_RD" id="jQ" role="37wK5m">
                <property role="Xl_RC" value="} map_item;" />
                <uo k="s:originTrace" v="n:3204091364822755564" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ho" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124161" />
          <node concept="2OqwBi" id="jR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124161" />
            <node concept="37vLTw" id="jS" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
            <node concept="liA8E" id="jT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hp" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124169" />
          <node concept="2OqwBi" id="jU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124169" />
            <node concept="37vLTw" id="jV" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
            <node concept="liA8E" id="jW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="hq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025775" />
        </node>
        <node concept="3clFbF" id="hr" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025955" />
          <node concept="2OqwBi" id="jX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823025955" />
            <node concept="37vLTw" id="jY" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
            </node>
            <node concept="liA8E" id="jZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
              <node concept="Xl_RD" id="k0" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364823025955" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hs" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124116" />
          <node concept="2OqwBi" id="k1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124116" />
            <node concept="37vLTw" id="k2" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
            <node concept="liA8E" id="k3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ht" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="k4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="k5" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="k7" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="k9" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="ka" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="k8" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="k6" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hu" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="kb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="kc" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="kd" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hv" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="ke" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="kf" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="kg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
              <node concept="Xl_RD" id="kh" role="37wK5m">
                <property role="Xl_RC" value="map_item *map;" />
                <uo k="s:originTrace" v="n:3204091364823026094" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026235" />
          <node concept="2OqwBi" id="ki" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026235" />
            <node concept="37vLTw" id="kj" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
            <node concept="liA8E" id="kk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hx" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="kl" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="km" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="kn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hy" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="ko" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="kp" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="kq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
              <node concept="Xl_RD" id="kr" role="37wK5m">
                <property role="Xl_RC" value="int read_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026283" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026390" />
          <node concept="2OqwBi" id="ks" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026390" />
            <node concept="37vLTw" id="kt" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
            <node concept="liA8E" id="ku" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="kv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="kw" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="kx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="ky" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="kz" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="k$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
              <node concept="Xl_RD" id="k_" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026442" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026591" />
          <node concept="2OqwBi" id="kA" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026591" />
            <node concept="37vLTw" id="kB" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
            <node concept="liA8E" id="kC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="kD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="kE" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="kG" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="kI" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="kJ" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="kH" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="kF" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027309" />
          <node concept="2OqwBi" id="kK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027309" />
            <node concept="37vLTw" id="kL" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
            </node>
            <node concept="liA8E" id="kM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
              <node concept="Xl_RD" id="kN" role="37wK5m">
                <property role="Xl_RC" value="} ThreadData;" />
                <uo k="s:originTrace" v="n:3204091364823027309" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027467" />
          <node concept="2OqwBi" id="kO" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027467" />
            <node concept="37vLTw" id="kP" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
            <node concept="liA8E" id="kQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124367" />
          <node concept="2OqwBi" id="kR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124367" />
            <node concept="37vLTw" id="kS" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
            <node concept="liA8E" id="kT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="hF" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198903" />
        </node>
        <node concept="3clFbF" id="hG" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834097" />
          <node concept="2OqwBi" id="kU" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834097" />
            <node concept="37vLTw" id="kV" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834097" />
            </node>
            <node concept="liA8E" id="kW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550834097" />
              <node concept="Xl_RD" id="kX" role="37wK5m">
                <property role="Xl_RC" value="void init_map_entry(map_item *map, int index, int fd) {" />
                <uo k="s:originTrace" v="n:1441253086550834097" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834161" />
          <node concept="2OqwBi" id="kY" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834161" />
            <node concept="37vLTw" id="kZ" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834161" />
            </node>
            <node concept="liA8E" id="l0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550834161" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hI" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834268" />
          <node concept="2OqwBi" id="l1" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834268" />
            <node concept="2OqwBi" id="l2" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086550834268" />
              <node concept="2OqwBi" id="l4" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1441253086550834268" />
                <node concept="37vLTw" id="l6" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:1441253086550834268" />
                </node>
                <node concept="liA8E" id="l7" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:1441253086550834268" />
                </node>
              </node>
              <node concept="liA8E" id="l5" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:1441253086550834268" />
              </node>
            </node>
            <node concept="liA8E" id="l3" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:1441253086550834268" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834418" />
          <node concept="2OqwBi" id="l8" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834418" />
            <node concept="37vLTw" id="l9" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834418" />
            </node>
            <node concept="liA8E" id="la" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550834418" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hK" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834418" />
          <node concept="2OqwBi" id="lb" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834418" />
            <node concept="37vLTw" id="lc" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834418" />
            </node>
            <node concept="liA8E" id="ld" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550834418" />
              <node concept="Xl_RD" id="le" role="37wK5m">
                <property role="Xl_RC" value="map[index].write_fd = fd;" />
                <uo k="s:originTrace" v="n:1441253086550834418" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hL" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834462" />
          <node concept="2OqwBi" id="lf" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834462" />
            <node concept="37vLTw" id="lg" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834462" />
            </node>
            <node concept="liA8E" id="lh" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550834462" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hM" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834535" />
          <node concept="2OqwBi" id="li" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834535" />
            <node concept="37vLTw" id="lj" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834535" />
            </node>
            <node concept="liA8E" id="lk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550834535" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834535" />
          <node concept="2OqwBi" id="ll" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834535" />
            <node concept="37vLTw" id="lm" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834535" />
            </node>
            <node concept="liA8E" id="ln" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550834535" />
              <node concept="Xl_RD" id="lo" role="37wK5m">
                <property role="Xl_RC" value="if (pthread_mutex_init(&amp;map[index].mutex, NULL) != 0) {" />
                <uo k="s:originTrace" v="n:1441253086550834535" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hO" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834598" />
          <node concept="2OqwBi" id="lp" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834598" />
            <node concept="37vLTw" id="lq" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834598" />
            </node>
            <node concept="liA8E" id="lr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550834598" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hP" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834645" />
          <node concept="2OqwBi" id="ls" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834645" />
            <node concept="2OqwBi" id="lt" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086550834645" />
              <node concept="2OqwBi" id="lv" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1441253086550834645" />
                <node concept="37vLTw" id="lx" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:1441253086550834645" />
                </node>
                <node concept="liA8E" id="ly" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:1441253086550834645" />
                </node>
              </node>
              <node concept="liA8E" id="lw" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:1441253086550834645" />
              </node>
            </node>
            <node concept="liA8E" id="lu" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:1441253086550834645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834696" />
          <node concept="2OqwBi" id="lz" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834696" />
            <node concept="37vLTw" id="l$" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834696" />
            </node>
            <node concept="liA8E" id="l_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550834696" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hR" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834696" />
          <node concept="2OqwBi" id="lA" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834696" />
            <node concept="37vLTw" id="lB" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834696" />
            </node>
            <node concept="liA8E" id="lC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550834696" />
              <node concept="Xl_RD" id="lD" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pthread_mutex_init&quot;);" />
                <uo k="s:originTrace" v="n:1441253086550834696" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834780" />
          <node concept="2OqwBi" id="lE" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834780" />
            <node concept="37vLTw" id="lF" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834780" />
            </node>
            <node concept="liA8E" id="lG" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550834780" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hT" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834831" />
          <node concept="2OqwBi" id="lH" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834831" />
            <node concept="37vLTw" id="lI" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834831" />
            </node>
            <node concept="liA8E" id="lJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550834831" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hU" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834831" />
          <node concept="2OqwBi" id="lK" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834831" />
            <node concept="37vLTw" id="lL" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834831" />
            </node>
            <node concept="liA8E" id="lM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550834831" />
              <node concept="Xl_RD" id="lN" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:1441253086550834831" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hV" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834879" />
          <node concept="2OqwBi" id="lO" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834879" />
            <node concept="37vLTw" id="lP" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550834879" />
            </node>
            <node concept="liA8E" id="lQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550834879" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hW" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834645" />
          <node concept="2OqwBi" id="lR" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834645" />
            <node concept="2OqwBi" id="lS" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086550834645" />
              <node concept="2OqwBi" id="lU" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1441253086550834645" />
                <node concept="37vLTw" id="lW" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:1441253086550834645" />
                </node>
                <node concept="liA8E" id="lX" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:1441253086550834645" />
                </node>
              </node>
              <node concept="liA8E" id="lV" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:1441253086550834645" />
              </node>
            </node>
            <node concept="liA8E" id="lT" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:1441253086550834645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550835036" />
          <node concept="2OqwBi" id="lY" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550835036" />
            <node concept="37vLTw" id="lZ" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550835036" />
            </node>
            <node concept="liA8E" id="m0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550835036" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hY" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550835036" />
          <node concept="2OqwBi" id="m1" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550835036" />
            <node concept="37vLTw" id="m2" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550835036" />
            </node>
            <node concept="liA8E" id="m3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550835036" />
              <node concept="Xl_RD" id="m4" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:1441253086550835036" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550835099" />
          <node concept="2OqwBi" id="m5" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550835099" />
            <node concept="37vLTw" id="m6" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550835099" />
            </node>
            <node concept="liA8E" id="m7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550835099" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i0" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550834268" />
          <node concept="2OqwBi" id="m8" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550834268" />
            <node concept="2OqwBi" id="m9" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086550834268" />
              <node concept="2OqwBi" id="mb" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1441253086550834268" />
                <node concept="37vLTw" id="md" role="2Oq$k0">
                  <ref role="3cqZAo" node="gS" resolve="ctx" />
                  <uo k="s:originTrace" v="n:1441253086550834268" />
                </node>
                <node concept="liA8E" id="me" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:1441253086550834268" />
                </node>
              </node>
              <node concept="liA8E" id="mc" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:1441253086550834268" />
              </node>
            </node>
            <node concept="liA8E" id="ma" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:1441253086550834268" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i1" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550835336" />
          <node concept="2OqwBi" id="mf" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550835336" />
            <node concept="37vLTw" id="mg" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550835336" />
            </node>
            <node concept="liA8E" id="mh" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550835336" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i2" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550835336" />
          <node concept="2OqwBi" id="mi" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550835336" />
            <node concept="37vLTw" id="mj" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550835336" />
            </node>
            <node concept="liA8E" id="mk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550835336" />
              <node concept="Xl_RD" id="ml" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:1441253086550835336" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i3" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550835383" />
          <node concept="2OqwBi" id="mm" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550835383" />
            <node concept="37vLTw" id="mn" role="2Oq$k0">
              <ref role="3cqZAo" node="i4" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550835383" />
            </node>
            <node concept="liA8E" id="mo" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086550835383" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="gS" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3uibUv" id="mp" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364822754261" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="mq">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Message_TextGen" />
    <property role="3GE5qa" value="actions" />
    <uo k="s:originTrace" v="n:3204091364824420186" />
    <node concept="3Tm1VV" id="mr" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3uibUv" id="ms" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3clFb_" id="mt" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
      <node concept="3cqZAl" id="mu" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3Tm1VV" id="mv" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3clFbS" id="mw" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3cpWs8" id="mz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420186" />
          <node concept="3cpWsn" id="mJ" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="3uibUv" id="mK" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
            <node concept="2ShNRf" id="mL" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364824420186" />
              <node concept="1pGfFk" id="mM" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364824420186" />
                <node concept="37vLTw" id="mN" role="37wK5m">
                  <ref role="3cqZAo" node="mx" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824420186" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="m$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="mO" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="mP" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="mQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="m_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="mR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="mS" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="mT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
              <node concept="Xl_RD" id="mU" role="37wK5m">
                <property role="Xl_RC" value="// message to send" />
                <uo k="s:originTrace" v="n:3204091364824896554" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896654" />
          <node concept="2OqwBi" id="mV" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896654" />
            <node concept="37vLTw" id="mW" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
            <node concept="liA8E" id="mX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420243" />
          <node concept="2OqwBi" id="mY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420243" />
            <node concept="37vLTw" id="mZ" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
            </node>
            <node concept="liA8E" id="n0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420243" />
          <node concept="2OqwBi" id="n1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420243" />
            <node concept="37vLTw" id="n2" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
            </node>
            <node concept="liA8E" id="n3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
              <node concept="Xl_RD" id="n4" role="37wK5m">
                <property role="Xl_RC" value="char *" />
                <uo k="s:originTrace" v="n:3204091364824420243" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825767660" />
          <node concept="2OqwBi" id="n5" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825767660" />
            <node concept="37vLTw" id="n6" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825767660" />
            </node>
            <node concept="liA8E" id="n7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825767660" />
              <node concept="2OqwBi" id="n8" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364825768202" />
                <node concept="2OqwBi" id="n9" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364825767727" />
                  <node concept="37vLTw" id="nb" role="2Oq$k0">
                    <ref role="3cqZAo" node="mx" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="nc" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="na" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364825768881" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825769018" />
          <node concept="2OqwBi" id="nd" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825769018" />
            <node concept="37vLTw" id="ne" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825769018" />
            </node>
            <node concept="liA8E" id="nf" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825769018" />
              <node concept="Xl_RD" id="ng" role="37wK5m">
                <property role="Xl_RC" value="= &quot;" />
                <uo k="s:originTrace" v="n:3204091364825769018" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420366" />
          <node concept="2OqwBi" id="nh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420366" />
            <node concept="37vLTw" id="ni" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420366" />
            </node>
            <node concept="liA8E" id="nj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824420366" />
              <node concept="2OqwBi" id="nk" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364824420877" />
                <node concept="2OqwBi" id="nl" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364824420402" />
                  <node concept="37vLTw" id="nn" role="2Oq$k0">
                    <ref role="3cqZAo" node="mx" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="no" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="nm" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:3m_VcJMWzdM" resolve="text" />
                  <uo k="s:originTrace" v="n:3204091364824422291" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824422531" />
          <node concept="2OqwBi" id="np" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824422531" />
            <node concept="37vLTw" id="nq" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824422531" />
            </node>
            <node concept="liA8E" id="nr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824422531" />
              <node concept="Xl_RD" id="ns" role="37wK5m">
                <property role="Xl_RC" value="&quot;;" />
                <uo k="s:originTrace" v="n:3204091364824422531" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824422666" />
          <node concept="2OqwBi" id="nt" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824422666" />
            <node concept="37vLTw" id="nu" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824422666" />
            </node>
            <node concept="liA8E" id="nv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824422666" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896873" />
          <node concept="2OqwBi" id="nw" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896873" />
            <node concept="37vLTw" id="nx" role="2Oq$k0">
              <ref role="3cqZAo" node="mJ" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896873" />
            </node>
            <node concept="liA8E" id="ny" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824896873" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="mx" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3uibUv" id="nz" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364824420186" />
        </node>
      </node>
      <node concept="2AHcQZ" id="my" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="n$">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SendMessage_TextGen" />
    <property role="3GE5qa" value="actions" />
    <uo k="s:originTrace" v="n:3204091364823999932" />
    <node concept="3Tm1VV" id="n_" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3uibUv" id="nA" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3clFb_" id="nB" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
      <node concept="3cqZAl" id="nC" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3Tm1VV" id="nD" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3clFbS" id="nE" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3cpWs8" id="nH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999932" />
          <node concept="3cpWsn" id="ok" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="3uibUv" id="ol" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
            <node concept="2ShNRf" id="om" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823999932" />
              <node concept="1pGfFk" id="on" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823999932" />
                <node concept="37vLTw" id="oo" role="37wK5m">
                  <ref role="3cqZAo" node="nF" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823999932" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824249952" />
          <node concept="2OqwBi" id="op" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824249952" />
            <node concept="37vLTw" id="oq" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
            </node>
            <node concept="liA8E" id="or" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824249952" />
          <node concept="2OqwBi" id="os" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824249952" />
            <node concept="37vLTw" id="ot" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
            </node>
            <node concept="liA8E" id="ou" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
              <node concept="Xl_RD" id="ov" role="37wK5m">
                <property role="Xl_RC" value="receiver_address = " />
                <uo k="s:originTrace" v="n:3204091364824249952" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824270279" />
          <node concept="2OqwBi" id="ow" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824270279" />
            <node concept="37vLTw" id="ox" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824270279" />
            </node>
            <node concept="liA8E" id="oy" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824270279" />
              <node concept="2YIFZM" id="oz" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3204091364824750557" />
                <node concept="2OqwBi" id="o$" role="37wK5m">
                  <uo k="s:originTrace" v="n:3204091364824753109" />
                  <node concept="2OqwBi" id="o_" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364824751551" />
                    <node concept="2OqwBi" id="oB" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364824750718" />
                      <node concept="37vLTw" id="oD" role="2Oq$k0">
                        <ref role="3cqZAo" node="nF" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="oE" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="oC" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:3m_VcJMWARR" resolve="receiver" />
                      <uo k="s:originTrace" v="n:3204091364824752190" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="oA" role="2OqNvi">
                    <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                    <uo k="s:originTrace" v="n:3204091364824753880" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299122" />
          <node concept="2OqwBi" id="oF" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299122" />
            <node concept="37vLTw" id="oG" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299122" />
            </node>
            <node concept="liA8E" id="oH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824299122" />
              <node concept="Xl_RD" id="oI" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3204091364824299122" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nM" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299279" />
          <node concept="2OqwBi" id="oJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299279" />
            <node concept="37vLTw" id="oK" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299279" />
            </node>
            <node concept="liA8E" id="oL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824299279" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nN" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207193" />
          <node concept="2OqwBi" id="oM" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207193" />
            <node concept="37vLTw" id="oN" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207193" />
            </node>
            <node concept="liA8E" id="oO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301207193" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206780" />
          <node concept="2OqwBi" id="oP" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206780" />
            <node concept="37vLTw" id="oQ" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
            <node concept="liA8E" id="oR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nP" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206780" />
          <node concept="2OqwBi" id="oS" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206780" />
            <node concept="37vLTw" id="oT" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
            <node concept="liA8E" id="oU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
              <node concept="Xl_RD" id="oV" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_lock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301206780" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206991" />
          <node concept="2OqwBi" id="oW" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206991" />
            <node concept="37vLTw" id="oX" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206991" />
            </node>
            <node concept="liA8E" id="oY" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301206991" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nR" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="oZ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="p0" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="p1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nS" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="p2" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="p3" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="p4" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
              <node concept="Xl_RD" id="p5" role="37wK5m">
                <property role="Xl_RC" value="bytes_written = write(data-&gt;map[receiver_address].write_fd, " />
                <uo k="s:originTrace" v="n:3204091364823999990" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nT" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826098888" />
          <node concept="2OqwBi" id="p6" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826098888" />
            <node concept="37vLTw" id="p7" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826098888" />
            </node>
            <node concept="liA8E" id="p8" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826098888" />
              <node concept="2OqwBi" id="p9" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364826100688" />
                <node concept="2OqwBi" id="pa" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364826099431" />
                  <node concept="2OqwBi" id="pc" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364826098992" />
                    <node concept="37vLTw" id="pe" role="2Oq$k0">
                      <ref role="3cqZAo" node="nF" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="pf" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="pd" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:3204091364826100018" />
                  </node>
                </node>
                <node concept="3TrcHB" id="pb" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364826101909" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826102095" />
          <node concept="2OqwBi" id="pg" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826102095" />
            <node concept="37vLTw" id="ph" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826102095" />
            </node>
            <node concept="liA8E" id="pi" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826102095" />
              <node concept="Xl_RD" id="pj" role="37wK5m">
                <property role="Xl_RC" value=", strlen(" />
                <uo k="s:originTrace" v="n:3204091364826102095" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nV" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826102815" />
          <node concept="2OqwBi" id="pk" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826102815" />
            <node concept="37vLTw" id="pl" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826102815" />
            </node>
            <node concept="liA8E" id="pm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826102815" />
              <node concept="2OqwBi" id="pn" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364826103386" />
                <node concept="2OqwBi" id="po" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364826102984" />
                  <node concept="2OqwBi" id="pq" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364826102955" />
                    <node concept="37vLTw" id="ps" role="2Oq$k0">
                      <ref role="3cqZAo" node="nF" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="pt" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="pr" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:3204091364826103290" />
                  </node>
                </node>
                <node concept="3TrcHB" id="pp" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364826104656" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nW" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826111513" />
          <node concept="2OqwBi" id="pu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826111513" />
            <node concept="37vLTw" id="pv" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826111513" />
            </node>
            <node concept="liA8E" id="pw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826111513" />
              <node concept="Xl_RD" id="px" role="37wK5m">
                <property role="Xl_RC" value="));" />
                <uo k="s:originTrace" v="n:3204091364826111513" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nX" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824005116" />
          <node concept="2OqwBi" id="py" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824005116" />
            <node concept="37vLTw" id="pz" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
            <node concept="liA8E" id="p$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="p_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="pA" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="pB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="pC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="pD" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="pE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
              <node concept="Xl_RD" id="pF" role="37wK5m">
                <property role="Xl_RC" value="if (bytes_written == -1) {" />
                <uo k="s:originTrace" v="n:3204091364824006418" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006475" />
          <node concept="2OqwBi" id="pG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006475" />
            <node concept="37vLTw" id="pH" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
            <node concept="liA8E" id="pI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="pJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="pK" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="pM" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="pO" role="2Oq$k0">
                  <ref role="3cqZAo" node="nF" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="pP" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="pN" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="pL" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="pQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="pR" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="pS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="pT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="pU" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="pV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
              <node concept="Xl_RD" id="pW" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;write&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824007688" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657942" />
          <node concept="2OqwBi" id="pX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657942" />
            <node concept="37vLTw" id="pY" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
            <node concept="liA8E" id="pZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o5" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207389" />
          <node concept="2OqwBi" id="q0" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207389" />
            <node concept="37vLTw" id="q1" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
            <node concept="liA8E" id="q2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o6" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207389" />
          <node concept="2OqwBi" id="q3" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207389" />
            <node concept="37vLTw" id="q4" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
            <node concept="liA8E" id="q5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
              <node concept="Xl_RD" id="q6" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301207389" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o7" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207489" />
          <node concept="2OqwBi" id="q7" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207489" />
            <node concept="37vLTw" id="q8" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207489" />
            </node>
            <node concept="liA8E" id="q9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301207489" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="qa" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="qb" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="qc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="qd" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="qe" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="qf" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
              <node concept="Xl_RD" id="qg" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364824008569" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oa" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657997" />
          <node concept="2OqwBi" id="qh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657997" />
            <node concept="37vLTw" id="qi" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
            <node concept="liA8E" id="qj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ob" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="qk" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="ql" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="qn" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="qp" role="2Oq$k0">
                  <ref role="3cqZAo" node="nF" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="qq" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="qo" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="qm" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oc" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="qr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="qs" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="qt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="od" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="qu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="qv" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="qw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
              <node concept="Xl_RD" id="qx" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364824008857" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oe" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824658052" />
          <node concept="2OqwBi" id="qy" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824658052" />
            <node concept="37vLTw" id="qz" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
            <node concept="liA8E" id="q$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="of" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215015" />
          <node concept="2OqwBi" id="q_" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215015" />
            <node concept="37vLTw" id="qA" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
            <node concept="liA8E" id="qB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="og" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215015" />
          <node concept="2OqwBi" id="qC" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215015" />
            <node concept="37vLTw" id="qD" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
            <node concept="liA8E" id="qE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
              <node concept="Xl_RD" id="qF" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301215015" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oh" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215016" />
          <node concept="2OqwBi" id="qG" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215016" />
            <node concept="37vLTw" id="qH" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215016" />
            </node>
            <node concept="liA8E" id="qI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215016" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oi" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215317" />
          <node concept="2OqwBi" id="qJ" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215317" />
            <node concept="37vLTw" id="qK" role="2Oq$k0">
              <ref role="3cqZAo" node="ok" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215317" />
            </node>
            <node concept="liA8E" id="qL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215317" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oj" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301214679" />
        </node>
      </node>
      <node concept="37vLTG" id="nF" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3uibUv" id="qM" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823999932" />
        </node>
      </node>
      <node concept="2AHcQZ" id="nG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="qN">
    <property role="TrG5h" value="TextGenAspectDescriptor" />
    <node concept="312cEg" id="qO" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="qZ" role="1B3o_S" />
      <node concept="2eloPW" id="r0" role="1tU5fm">
        <property role="2ely0U" value="ActorLanguage.structure.LanguageConceptSwitch" />
        <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
      </node>
      <node concept="2ShNRf" id="r1" role="33vP2m">
        <node concept="xCZzO" id="r2" role="2ShVmc">
          <property role="xCZzQ" value="ActorLanguage.structure.LanguageConceptSwitch" />
          <node concept="3uibUv" id="r3" role="xCZzL">
            <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qP" role="jymVt" />
    <node concept="3clFbW" id="qQ" role="jymVt">
      <node concept="3cqZAl" id="r4" role="3clF45" />
      <node concept="3clFbS" id="r5" role="3clF47" />
      <node concept="3Tm1VV" id="r6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="qR" role="jymVt" />
    <node concept="3Tm1VV" id="qS" role="1B3o_S" />
    <node concept="3uibUv" id="qT" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenAspectBase" resolve="TextGenAspectBase" />
    </node>
    <node concept="3clFb_" id="qU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="r7" role="1B3o_S" />
      <node concept="3uibUv" id="r8" role="3clF45">
        <ref role="3uigEE" to="yfwt:~TextGenDescriptor" resolve="TextGenDescriptor" />
      </node>
      <node concept="37vLTG" id="r9" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="rd" role="1tU5fm" />
        <node concept="2AHcQZ" id="re" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="ra" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="rb" role="3clF47">
        <node concept="3KaCP$" id="rf" role="3cqZAp">
          <node concept="2OqwBi" id="rh" role="3KbGdf">
            <node concept="37vLTw" id="rm" role="2Oq$k0">
              <ref role="3cqZAo" node="qO" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="rn" role="2OqNvi">
              <ref role="37wK5l" to="tpcf:1OW7rNmnuDr" resolve="index" />
              <node concept="37vLTw" id="ro" role="37wK5m">
                <ref role="3cqZAo" node="r9" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="ri" role="3KbHQx">
            <node concept="1n$iZg" id="rp" role="3Kbmr1">
              <property role="1n_iUB" value="Actor" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="rq" role="3Kbo56">
              <node concept="3cpWs6" id="rr" role="3cqZAp">
                <node concept="2ShNRf" id="rs" role="3cqZAk">
                  <node concept="HV5vD" id="rt" role="2ShVmc">
                    <ref role="HV5vE" node="av" resolve="Actor_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="rj" role="3KbHQx">
            <node concept="1n$iZg" id="ru" role="3Kbmr1">
              <property role="1n_iUB" value="ActorScript" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="rv" role="3Kbo56">
              <node concept="3cpWs6" id="rw" role="3cqZAp">
                <node concept="2ShNRf" id="rx" role="3cqZAk">
                  <node concept="HV5vD" id="ry" role="2ShVmc">
                    <ref role="HV5vE" node="0" resolve="ActorScript_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="rk" role="3KbHQx">
            <node concept="1n$iZg" id="rz" role="3Kbmr1">
              <property role="1n_iUB" value="Message" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="r$" role="3Kbo56">
              <node concept="3cpWs6" id="r_" role="3cqZAp">
                <node concept="2ShNRf" id="rA" role="3cqZAk">
                  <node concept="HV5vD" id="rB" role="2ShVmc">
                    <ref role="HV5vE" node="mq" resolve="Message_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="rl" role="3KbHQx">
            <node concept="1n$iZg" id="rC" role="3Kbmr1">
              <property role="1n_iUB" value="SendMessage" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="rD" role="3Kbo56">
              <node concept="3cpWs6" id="rE" role="3cqZAp">
                <node concept="2ShNRf" id="rF" role="3cqZAk">
                  <node concept="HV5vD" id="rG" role="2ShVmc">
                    <ref role="HV5vE" node="n$" resolve="SendMessage_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="rg" role="3cqZAp">
          <node concept="10Nm6u" id="rH" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="rc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qV" role="jymVt" />
    <node concept="3clFb_" id="qW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="breakdownToUnits" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="rI" role="1B3o_S" />
      <node concept="3cqZAl" id="rJ" role="3clF45" />
      <node concept="37vLTG" id="rK" role="3clF46">
        <property role="TrG5h" value="outline" />
        <node concept="3uibUv" id="rN" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenModelOutline" resolve="TextGenModelOutline" />
        </node>
        <node concept="2AHcQZ" id="rO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="rL" role="3clF47">
        <node concept="1DcWWT" id="rP" role="3cqZAp">
          <node concept="3clFbS" id="rQ" role="2LFqv$">
            <node concept="3clFbJ" id="rT" role="3cqZAp">
              <node concept="3clFbS" id="rU" role="3clFbx">
                <node concept="3cpWs8" id="rW" role="3cqZAp">
                  <node concept="3cpWsn" id="s0" role="3cpWs9">
                    <property role="TrG5h" value="fname" />
                    <node concept="3uibUv" id="s1" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="s2" role="33vP2m">
                      <ref role="37wK5l" node="qX" resolve="getFileName_ActorScript" />
                      <node concept="37vLTw" id="s3" role="37wK5m">
                        <ref role="3cqZAo" node="rR" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="rX" role="3cqZAp">
                  <node concept="3cpWsn" id="s4" role="3cpWs9">
                    <property role="TrG5h" value="ext" />
                    <node concept="3uibUv" id="s5" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="s6" role="33vP2m">
                      <ref role="37wK5l" node="qY" resolve="getFileExtension_ActorScript" />
                      <node concept="37vLTw" id="s7" role="37wK5m">
                        <ref role="3cqZAo" node="rR" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="rY" role="3cqZAp">
                  <node concept="2OqwBi" id="s8" role="3clFbG">
                    <node concept="37vLTw" id="s9" role="2Oq$k0">
                      <ref role="3cqZAo" node="rK" resolve="outline" />
                    </node>
                    <node concept="liA8E" id="sa" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenModelOutline.registerTextUnit(java.lang.String,java.lang.String,java.nio.charset.Charset,org.jetbrains.mps.openapi.model.SNode...)" resolve="registerTextUnit" />
                      <node concept="3K4zz7" id="sb" role="37wK5m">
                        <node concept="1eOMI4" id="sd" role="3K4GZi">
                          <node concept="3cpWs3" id="sg" role="1eOMHV">
                            <node concept="37vLTw" id="sh" role="3uHU7w">
                              <ref role="3cqZAo" node="s4" resolve="ext" />
                            </node>
                            <node concept="3cpWs3" id="si" role="3uHU7B">
                              <node concept="37vLTw" id="sj" role="3uHU7B">
                                <ref role="3cqZAo" node="s0" resolve="fname" />
                              </node>
                              <node concept="1Xhbcc" id="sk" role="3uHU7w">
                                <property role="1XhdNS" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="se" role="3K4E3e">
                          <ref role="3cqZAo" node="s0" resolve="fname" />
                        </node>
                        <node concept="3clFbC" id="sf" role="3K4Cdx">
                          <node concept="10Nm6u" id="sl" role="3uHU7w" />
                          <node concept="37vLTw" id="sm" role="3uHU7B">
                            <ref role="3cqZAo" node="s4" resolve="ext" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="sc" role="37wK5m">
                        <ref role="3cqZAo" node="rR" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="rZ" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="rV" role="3clFbw">
                <node concept="2OqwBi" id="sn" role="2Oq$k0">
                  <node concept="37vLTw" id="sp" role="2Oq$k0">
                    <ref role="3cqZAo" node="rR" resolve="root" />
                  </node>
                  <node concept="liA8E" id="sq" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="so" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="35c_gC" id="sr" role="37wK5m">
                    <ref role="35c_gD" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="rR" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="ss" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="rS" role="1DdaDG">
            <node concept="2OqwBi" id="st" role="2Oq$k0">
              <node concept="37vLTw" id="sv" role="2Oq$k0">
                <ref role="3cqZAo" node="rK" resolve="outline" />
              </node>
              <node concept="liA8E" id="sw" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenModelOutline.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="su" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="rM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="qX" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileName_ActorScript" />
      <node concept="3clFbS" id="sx" role="3clF47">
        <node concept="3cpWs6" id="s_" role="3cqZAp">
          <node concept="2OqwBi" id="sA" role="3cqZAk">
            <node concept="37vLTw" id="sB" role="2Oq$k0">
              <ref role="3cqZAo" node="s$" resolve="node" />
            </node>
            <node concept="liA8E" id="sC" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="sy" role="1B3o_S" />
      <node concept="3uibUv" id="sz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="s$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="sD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="qY" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileExtension_ActorScript" />
      <node concept="3clFbS" id="sE" role="3clF47">
        <node concept="3clFbF" id="sI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3865756215866095114" />
          <node concept="Xl_RD" id="sJ" role="3clFbG">
            <property role="Xl_RC" value="c" />
            <uo k="s:originTrace" v="n:3865756215866095113" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="sF" role="1B3o_S" />
      <node concept="3uibUv" id="sG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="sH" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="sK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
</model>

