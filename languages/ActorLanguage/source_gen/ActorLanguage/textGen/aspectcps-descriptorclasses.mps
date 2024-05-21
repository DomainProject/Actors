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
          <node concept="3cpWsn" id="1y" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3865756215866094073" />
            <node concept="3uibUv" id="1z" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3865756215866094073" />
            </node>
            <node concept="2ShNRf" id="1$" role="33vP2m">
              <uo k="s:originTrace" v="n:3865756215866094073" />
              <node concept="1pGfFk" id="1_" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3865756215866094073" />
                <node concept="37vLTw" id="1A" role="37wK5m">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3865756215866094073" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822790551" />
          <node concept="1niqFM" id="1B" role="3clFbG">
            <property role="1npL6y" value="init" />
            <property role="1npUBZ" value="ActorLanguage.textGen.Initialization" />
            <uo k="s:originTrace" v="n:3204091364822790551" />
            <node concept="3uibUv" id="1C" role="32Mpfj">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              <uo k="s:originTrace" v="n:3204091364822790551" />
            </node>
            <node concept="37vLTw" id="1D" role="2U24H$">
              <ref role="3cqZAo" node="7" resolve="ctx" />
              <uo k="s:originTrace" v="n:3204091364822790551" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671066180" />
        </node>
        <node concept="1DcWWT" id="c" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823307157" />
          <node concept="3clFbS" id="1E" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364823307157" />
            <node concept="3clFbF" id="1H" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364823307157" />
              <node concept="2OqwBi" id="1I" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364823307157" />
                <node concept="37vLTw" id="1J" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364823307157" />
                </node>
                <node concept="liA8E" id="1K" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:3204091364823307157" />
                  <node concept="37vLTw" id="1L" role="37wK5m">
                    <ref role="3cqZAo" node="1F" resolve="item" />
                    <uo k="s:originTrace" v="n:3204091364823307157" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1F" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:3204091364823307157" />
            <node concept="3Tqbb2" id="1M" role="1tU5fm">
              <uo k="s:originTrace" v="n:3204091364823307157" />
            </node>
          </node>
          <node concept="2OqwBi" id="1G" role="1DdaDG">
            <uo k="s:originTrace" v="n:3204091364823307201" />
            <node concept="2OqwBi" id="1N" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823307185" />
              <node concept="37vLTw" id="1P" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="1Q" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="1O" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:3204091364823307282" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078393" />
          <node concept="2OqwBi" id="1R" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078393" />
            <node concept="37vLTw" id="1S" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078393" />
            </node>
            <node concept="liA8E" id="1T" role="2OqNvi">
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
          <node concept="2OqwBi" id="1U" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825267327" />
            <node concept="37vLTw" id="1V" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825267327" />
            </node>
            <node concept="liA8E" id="1W" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825267327" />
              <node concept="Xl_RD" id="1X" role="37wK5m">
                <property role="Xl_RC" value="int main() {" />
                <uo k="s:originTrace" v="n:3204091364825267327" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825267857" />
          <node concept="2OqwBi" id="1Y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825267857" />
            <node concept="37vLTw" id="1Z" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825267857" />
            </node>
            <node concept="liA8E" id="20" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825267857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="21" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="22" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="24" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="26" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="27" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="25" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="23" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825224934" />
          <node concept="2OqwBi" id="28" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825224934" />
            <node concept="37vLTw" id="29" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
            <node concept="liA8E" id="2a" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825224934" />
          <node concept="2OqwBi" id="2b" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825224934" />
            <node concept="37vLTw" id="2c" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
            <node concept="liA8E" id="2d" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
              <node concept="Xl_RD" id="2e" role="37wK5m">
                <property role="Xl_RC" value="int num_threads = " />
                <uo k="s:originTrace" v="n:3204091364825224934" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078806" />
          <node concept="2OqwBi" id="2f" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078806" />
            <node concept="37vLTw" id="2g" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078806" />
            </node>
            <node concept="liA8E" id="2h" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825078806" />
              <node concept="2YIFZM" id="2i" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3204091364825102831" />
                <node concept="2OqwBi" id="2j" role="37wK5m">
                  <uo k="s:originTrace" v="n:3204091364825127637" />
                  <node concept="2OqwBi" id="2k" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364825115211" />
                    <node concept="2OqwBi" id="2m" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364825109732" />
                      <node concept="37vLTw" id="2o" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="2p" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2n" role="2OqNvi">
                      <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                      <uo k="s:originTrace" v="n:3204091364825116106" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2l" role="2OqNvi">
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
          <node concept="2OqwBi" id="2q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825239668" />
            <node concept="37vLTw" id="2r" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825239668" />
            </node>
            <node concept="liA8E" id="2s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825239668" />
              <node concept="Xl_RD" id="2t" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3204091364825239668" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825240473" />
          <node concept="2OqwBi" id="2u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825240473" />
            <node concept="37vLTw" id="2v" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825240473" />
            </node>
            <node concept="liA8E" id="2w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825240473" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078679" />
          <node concept="2OqwBi" id="2x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078679" />
            <node concept="37vLTw" id="2y" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
            <node concept="liA8E" id="2z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078679" />
          <node concept="2OqwBi" id="2$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078679" />
            <node concept="37vLTw" id="2_" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
            <node concept="liA8E" id="2A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
              <node concept="Xl_RD" id="2B" role="37wK5m">
                <property role="Xl_RC" value="pthread_t threads[num_threads];" />
                <uo k="s:originTrace" v="n:3204091364825078679" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825241436" />
          <node concept="2OqwBi" id="2C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825241436" />
            <node concept="37vLTw" id="2D" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825241436" />
            </node>
            <node concept="liA8E" id="2E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825241436" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551035248" />
          <node concept="2OqwBi" id="2F" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551035248" />
            <node concept="37vLTw" id="2G" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
            </node>
            <node concept="liA8E" id="2H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551035248" />
          <node concept="2OqwBi" id="2I" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551035248" />
            <node concept="37vLTw" id="2J" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
            </node>
            <node concept="liA8E" id="2K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086551035248" />
              <node concept="Xl_RD" id="2L" role="37wK5m">
                <property role="Xl_RC" value="int i;" />
                <uo k="s:originTrace" v="n:1441253086551035248" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551035328" />
          <node concept="2OqwBi" id="2M" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551035328" />
            <node concept="37vLTw" id="2N" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551035328" />
            </node>
            <node concept="liA8E" id="2O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551035328" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550881933" />
          <node concept="2OqwBi" id="2P" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550881933" />
            <node concept="37vLTw" id="2Q" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
            </node>
            <node concept="liA8E" id="2R" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="u" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550881933" />
          <node concept="2OqwBi" id="2S" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550881933" />
            <node concept="37vLTw" id="2T" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
            </node>
            <node concept="liA8E" id="2U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550881933" />
              <node concept="Xl_RD" id="2V" role="37wK5m">
                <property role="Xl_RC" value="int addresses[" />
                <uo k="s:originTrace" v="n:1441253086550881933" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550902812" />
          <node concept="2OqwBi" id="2W" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550902812" />
            <node concept="37vLTw" id="2X" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550902812" />
            </node>
            <node concept="liA8E" id="2Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550902812" />
              <node concept="2YIFZM" id="2Z" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:1441253086550902813" />
                <node concept="2OqwBi" id="30" role="37wK5m">
                  <uo k="s:originTrace" v="n:1441253086550902814" />
                  <node concept="2OqwBi" id="31" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1441253086550902815" />
                    <node concept="2OqwBi" id="33" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1441253086550902816" />
                      <node concept="37vLTw" id="35" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="36" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="34" role="2OqNvi">
                      <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                      <uo k="s:originTrace" v="n:1441253086550902817" />
                    </node>
                  </node>
                  <node concept="liA8E" id="32" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    <uo k="s:originTrace" v="n:1441253086550902818" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550910947" />
          <node concept="2OqwBi" id="37" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086550910947" />
            <node concept="37vLTw" id="38" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086550910947" />
            </node>
            <node concept="liA8E" id="39" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:1441253086550910947" />
              <node concept="Xl_RD" id="3a" role="37wK5m">
                <property role="Xl_RC" value="];" />
                <uo k="s:originTrace" v="n:1441253086550910947" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="x" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551018506" />
          <node concept="2OqwBi" id="3b" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551018506" />
            <node concept="37vLTw" id="3c" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551018506" />
            </node>
            <node concept="liA8E" id="3d" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551018506" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="y" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086550975919" />
          <node concept="2GrKxI" id="3e" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:1441253086550975921" />
          </node>
          <node concept="2OqwBi" id="3f" role="2GsD0m">
            <uo k="s:originTrace" v="n:1441253086550977965" />
            <node concept="2OqwBi" id="3h" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1441253086550977403" />
              <node concept="37vLTw" id="3j" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="3k" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="3i" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:1441253086550978735" />
            </node>
          </node>
          <node concept="3clFbS" id="3g" role="2LFqv$">
            <uo k="s:originTrace" v="n:1441253086550975925" />
            <node concept="3clFbF" id="3l" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550979003" />
              <node concept="2OqwBi" id="3s" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550979003" />
                <node concept="37vLTw" id="3t" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                </node>
                <node concept="liA8E" id="3u" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3m" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550979003" />
              <node concept="2OqwBi" id="3v" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550979003" />
                <node concept="37vLTw" id="3w" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                </node>
                <node concept="liA8E" id="3x" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550979003" />
                  <node concept="Xl_RD" id="3y" role="37wK5m">
                    <property role="Xl_RC" value="addresses[" />
                    <uo k="s:originTrace" v="n:1441253086550979003" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3n" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550979152" />
              <node concept="2OqwBi" id="3z" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550979152" />
                <node concept="37vLTw" id="3$" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550979152" />
                </node>
                <node concept="liA8E" id="3_" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550979152" />
                  <node concept="2YIFZM" id="3A" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:1441253086550987243" />
                    <node concept="2OqwBi" id="3B" role="37wK5m">
                      <uo k="s:originTrace" v="n:1441253086550988851" />
                      <node concept="2GrUjf" id="3C" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3e" resolve="actor" />
                        <uo k="s:originTrace" v="n:1441253086550987725" />
                      </node>
                      <node concept="2bSWHS" id="3D" role="2OqNvi">
                        <uo k="s:originTrace" v="n:1441253086550992253" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3o" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550993798" />
              <node concept="2OqwBi" id="3E" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550993798" />
                <node concept="37vLTw" id="3F" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550993798" />
                </node>
                <node concept="liA8E" id="3G" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550993798" />
                  <node concept="Xl_RD" id="3H" role="37wK5m">
                    <property role="Xl_RC" value="] = " />
                    <uo k="s:originTrace" v="n:1441253086550993798" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3p" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086550994284" />
              <node concept="2OqwBi" id="3I" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086550994284" />
                <node concept="37vLTw" id="3J" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086550994284" />
                </node>
                <node concept="liA8E" id="3K" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086550994284" />
                  <node concept="2YIFZM" id="3L" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:1441253086551002511" />
                    <node concept="2OqwBi" id="3M" role="37wK5m">
                      <uo k="s:originTrace" v="n:1441253086551004633" />
                      <node concept="2GrUjf" id="3N" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3e" resolve="actor" />
                        <uo k="s:originTrace" v="n:1441253086551003053" />
                      </node>
                      <node concept="3TrcHB" id="3O" role="2OqNvi">
                        <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                        <uo k="s:originTrace" v="n:1441253086551009151" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3q" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086551018898" />
              <node concept="2OqwBi" id="3P" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086551018898" />
                <node concept="37vLTw" id="3Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086551018898" />
                </node>
                <node concept="liA8E" id="3R" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:1441253086551018898" />
                  <node concept="Xl_RD" id="3S" role="37wK5m">
                    <property role="Xl_RC" value=";" />
                    <uo k="s:originTrace" v="n:1441253086551018898" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3r" role="3cqZAp">
              <uo k="s:originTrace" v="n:1441253086551019483" />
              <node concept="2OqwBi" id="3T" role="3clFbG">
                <uo k="s:originTrace" v="n:1441253086551019483" />
                <node concept="37vLTw" id="3U" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:1441253086551019483" />
                </node>
                <node concept="liA8E" id="3V" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                  <uo k="s:originTrace" v="n:1441253086551019483" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551328386" />
          <node concept="2OqwBi" id="3W" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551328386" />
            <node concept="37vLTw" id="3X" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551328386" />
            </node>
            <node concept="liA8E" id="3Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:1441253086551328386" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="$" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673191863" />
        </node>
        <node concept="3clFbF" id="_" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202276" />
          <node concept="2OqwBi" id="3Z" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202276" />
            <node concept="37vLTw" id="40" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
            </node>
            <node concept="liA8E" id="41" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202276" />
          <node concept="2OqwBi" id="42" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202276" />
            <node concept="37vLTw" id="43" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
            </node>
            <node concept="liA8E" id="44" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
              <node concept="Xl_RD" id="45" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_init(&amp;map_mutex, NULL);" />
                <uo k="s:originTrace" v="n:5785115222673202276" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202353" />
          <node concept="2OqwBi" id="46" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202353" />
            <node concept="37vLTw" id="47" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202353" />
            </node>
            <node concept="liA8E" id="48" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673202353" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202409" />
          <node concept="2OqwBi" id="49" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202409" />
            <node concept="37vLTw" id="4a" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202409" />
            </node>
            <node concept="liA8E" id="4b" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673202409" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="D" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671090613" />
        </node>
        <node concept="3clFbF" id="E" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="4c" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="4d" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="4e" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="F" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="4f" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="4g" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="4h" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
              <node concept="Xl_RD" id="4i" role="37wK5m">
                <property role="Xl_RC" value="map_item *map = malloc(sizeof(map_item)*SIZE);" />
                <uo k="s:originTrace" v="n:3204091364825311359" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="G" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312873" />
          <node concept="2OqwBi" id="4j" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312873" />
            <node concept="37vLTw" id="4k" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
            <node concept="liA8E" id="4l" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="4m" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="4n" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="4o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="I" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="4p" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="4q" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="4r" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
              <node concept="Xl_RD" id="4s" role="37wK5m">
                <property role="Xl_RC" value="if (!map) {" />
                <uo k="s:originTrace" v="n:3204091364825326996" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825327053" />
          <node concept="2OqwBi" id="4t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825327053" />
            <node concept="37vLTw" id="4u" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
            <node concept="liA8E" id="4v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="4w" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="4x" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="4z" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="4_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="4A" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="4$" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="4y" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="4B" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="4C" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="4D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="4E" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="4F" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="4G" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
              <node concept="Xl_RD" id="4H" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;malloc&quot;);" />
                <uo k="s:originTrace" v="n:3204091364825334588" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334757" />
          <node concept="2OqwBi" id="4I" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334757" />
            <node concept="37vLTw" id="4J" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
            <node concept="liA8E" id="4K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="4L" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="4M" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="4N" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="4O" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="4P" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="4Q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
              <node concept="Xl_RD" id="4R" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364825334891" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334948" />
          <node concept="2OqwBi" id="4S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334948" />
            <node concept="37vLTw" id="4T" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
            <node concept="liA8E" id="4U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="4V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="4W" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="4Y" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="50" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="51" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="4Z" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="4X" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="S" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="52" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="53" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="54" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="55" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="56" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="57" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
              <node concept="Xl_RD" id="58" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825342497" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342574" />
          <node concept="2OqwBi" id="59" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342574" />
            <node concept="37vLTw" id="5a" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
            <node concept="liA8E" id="5b" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342630" />
          <node concept="2OqwBi" id="5c" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342630" />
            <node concept="37vLTw" id="5d" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
            <node concept="liA8E" id="5e" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="W" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674025606" />
        </node>
        <node concept="3clFbF" id="X" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674028520" />
          <node concept="2OqwBi" id="5f" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674028520" />
            <node concept="37vLTw" id="5g" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
            </node>
            <node concept="liA8E" id="5h" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674028520" />
          <node concept="2OqwBi" id="5i" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674028520" />
            <node concept="37vLTw" id="5j" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
            </node>
            <node concept="liA8E" id="5k" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
              <node concept="Xl_RD" id="5l" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; SIZE; ++i) {" />
                <uo k="s:originTrace" v="n:5785115222674028520" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674028577" />
          <node concept="2OqwBi" id="5m" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674028577" />
            <node concept="37vLTw" id="5n" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674028577" />
            </node>
            <node concept="liA8E" id="5o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222674028577" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674037512" />
          <node concept="2OqwBi" id="5p" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674037512" />
            <node concept="2OqwBi" id="5q" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222674037512" />
              <node concept="2OqwBi" id="5s" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222674037512" />
                <node concept="37vLTw" id="5u" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
                <node concept="liA8E" id="5v" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
              </node>
              <node concept="liA8E" id="5t" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222674037512" />
              </node>
            </node>
            <node concept="liA8E" id="5r" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222674037512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674038936" />
          <node concept="2OqwBi" id="5w" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674038936" />
            <node concept="37vLTw" id="5x" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
            </node>
            <node concept="liA8E" id="5y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674038936" />
          <node concept="2OqwBi" id="5z" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674038936" />
            <node concept="37vLTw" id="5$" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
            </node>
            <node concept="liA8E" id="5_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
              <node concept="Xl_RD" id="5A" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_init(&amp;map[i].mutex, NULL);" />
                <uo k="s:originTrace" v="n:5785115222674038936" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674039014" />
          <node concept="2OqwBi" id="5B" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674039014" />
            <node concept="37vLTw" id="5C" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674039014" />
            </node>
            <node concept="liA8E" id="5D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222674039014" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674037512" />
          <node concept="2OqwBi" id="5E" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674037512" />
            <node concept="2OqwBi" id="5F" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222674037512" />
              <node concept="2OqwBi" id="5H" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222674037512" />
                <node concept="37vLTw" id="5J" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
                <node concept="liA8E" id="5K" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
              </node>
              <node concept="liA8E" id="5I" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222674037512" />
              </node>
            </node>
            <node concept="liA8E" id="5G" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222674037512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674041843" />
          <node concept="2OqwBi" id="5L" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674041843" />
            <node concept="37vLTw" id="5M" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
            </node>
            <node concept="liA8E" id="5N" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674041843" />
          <node concept="2OqwBi" id="5O" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674041843" />
            <node concept="37vLTw" id="5P" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
            </node>
            <node concept="liA8E" id="5Q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
              <node concept="Xl_RD" id="5R" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222674041843" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674041943" />
          <node concept="2OqwBi" id="5S" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674041943" />
            <node concept="37vLTw" id="5T" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674041943" />
            </node>
            <node concept="liA8E" id="5U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222674041943" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825291825" />
        </node>
        <node concept="2Gpval" id="19" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671146700" />
          <node concept="2GrKxI" id="5V" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:5785115222671146702" />
          </node>
          <node concept="2OqwBi" id="5W" role="2GsD0m">
            <uo k="s:originTrace" v="n:5785115222671148377" />
            <node concept="2OqwBi" id="5Y" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222671147836" />
              <node concept="37vLTw" id="60" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="61" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5Z" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:5785115222671149591" />
            </node>
          </node>
          <node concept="3clFbS" id="5X" role="2LFqv$">
            <uo k="s:originTrace" v="n:5785115222671146706" />
            <node concept="3clFbF" id="62" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671149860" />
              <node concept="2OqwBi" id="6b" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671149860" />
                <node concept="37vLTw" id="6c" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671149860" />
                </node>
                <node concept="liA8E" id="6d" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                  <uo k="s:originTrace" v="n:5785115222671149860" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="63" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671149860" />
              <node concept="2OqwBi" id="6e" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671149860" />
                <node concept="37vLTw" id="6f" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671149860" />
                </node>
                <node concept="liA8E" id="6g" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671149860" />
                  <node concept="Xl_RD" id="6h" role="37wK5m">
                    <property role="Xl_RC" value="create_thread(addresses[" />
                    <uo k="s:originTrace" v="n:5785115222671149860" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="64" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671150032" />
              <node concept="2OqwBi" id="6i" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671150032" />
                <node concept="37vLTw" id="6j" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671150032" />
                </node>
                <node concept="liA8E" id="6k" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671150032" />
                  <node concept="2YIFZM" id="6l" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:5785115222671167517" />
                    <node concept="2OqwBi" id="6m" role="37wK5m">
                      <uo k="s:originTrace" v="n:5785115222671170402" />
                      <node concept="2GrUjf" id="6n" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5V" resolve="actor" />
                        <uo k="s:originTrace" v="n:5785115222671168608" />
                      </node>
                      <node concept="2bSWHS" id="6o" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5785115222671180155" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="65" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671182407" />
              <node concept="2OqwBi" id="6p" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671182407" />
                <node concept="37vLTw" id="6q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671182407" />
                </node>
                <node concept="liA8E" id="6r" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671182407" />
                  <node concept="Xl_RD" id="6s" role="37wK5m">
                    <property role="Xl_RC" value="], map, " />
                    <uo k="s:originTrace" v="n:5785115222671182407" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="66" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671182898" />
              <node concept="2OqwBi" id="6t" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671182898" />
                <node concept="37vLTw" id="6u" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671182898" />
                </node>
                <node concept="liA8E" id="6v" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671182898" />
                  <node concept="2OqwBi" id="6w" role="37wK5m">
                    <uo k="s:originTrace" v="n:5785115222671183342" />
                    <node concept="2GrUjf" id="6x" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5V" resolve="actor" />
                      <uo k="s:originTrace" v="n:5785115222671183128" />
                    </node>
                    <node concept="3TrcHB" id="6y" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:5785115222671194187" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="67" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671194797" />
              <node concept="2OqwBi" id="6z" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671194797" />
                <node concept="37vLTw" id="6$" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671194797" />
                </node>
                <node concept="liA8E" id="6_" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671194797" />
                  <node concept="Xl_RD" id="6A" role="37wK5m">
                    <property role="Xl_RC" value=", &amp;threads[" />
                    <uo k="s:originTrace" v="n:5785115222671194797" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="68" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671203580" />
              <node concept="2OqwBi" id="6B" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671203580" />
                <node concept="37vLTw" id="6C" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671203580" />
                </node>
                <node concept="liA8E" id="6D" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671203580" />
                  <node concept="2YIFZM" id="6E" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:5785115222671204114" />
                    <node concept="2OqwBi" id="6F" role="37wK5m">
                      <uo k="s:originTrace" v="n:5785115222671206010" />
                      <node concept="2GrUjf" id="6G" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5V" resolve="actor" />
                        <uo k="s:originTrace" v="n:5785115222671204338" />
                      </node>
                      <node concept="2bSWHS" id="6H" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5785115222671209854" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="69" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222671211814" />
              <node concept="2OqwBi" id="6I" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222671211814" />
                <node concept="37vLTw" id="6J" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222671211814" />
                </node>
                <node concept="liA8E" id="6K" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:5785115222671211814" />
                  <node concept="Xl_RD" id="6L" role="37wK5m">
                    <property role="Xl_RC" value="]);" />
                    <uo k="s:originTrace" v="n:5785115222671211814" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6a" role="3cqZAp">
              <uo k="s:originTrace" v="n:5785115222672463591" />
              <node concept="2OqwBi" id="6M" role="3clFbG">
                <uo k="s:originTrace" v="n:5785115222672463591" />
                <node concept="37vLTw" id="6N" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y" resolve="tgs" />
                  <uo k="s:originTrace" v="n:5785115222672463591" />
                </node>
                <node concept="liA8E" id="6O" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                  <uo k="s:originTrace" v="n:5785115222672463591" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311387" />
        </node>
        <node concept="3clFbF" id="1b" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222672467900" />
          <node concept="2OqwBi" id="6P" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222672467900" />
            <node concept="37vLTw" id="6Q" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222672467900" />
            </node>
            <node concept="liA8E" id="6R" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222672467900" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1c" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222672463760" />
        </node>
        <node concept="3clFbF" id="1d" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="6S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="6T" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="6U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="6V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="6W" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="6X" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
              <node concept="Xl_RD" id="6Y" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825540062" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540208" />
          <node concept="2OqwBi" id="6Z" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540208" />
            <node concept="37vLTw" id="70" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
            <node concept="liA8E" id="71" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="72" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="73" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="75" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="77" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="78" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="76" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="74" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="79" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="7a" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="7b" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="7c" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="7d" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="7e" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
              <node concept="Xl_RD" id="7f" role="37wK5m">
                <property role="Xl_RC" value="pthread_join(threads[i], NULL);" />
                <uo k="s:originTrace" v="n:3204091364825550168" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550222" />
          <node concept="2OqwBi" id="7g" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550222" />
            <node concept="37vLTw" id="7h" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
            <node concept="liA8E" id="7i" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="7j" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="7k" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="7m" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="7o" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="7p" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="7n" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="7l" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="7q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="7r" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="7s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="7t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="7u" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="7v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
              <node concept="Xl_RD" id="7w" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825569047" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569124" />
          <node concept="2OqwBi" id="7x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569124" />
            <node concept="37vLTw" id="7y" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
            <node concept="liA8E" id="7z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569180" />
          <node concept="2OqwBi" id="7$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569180" />
            <node concept="37vLTw" id="7_" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
            <node concept="liA8E" id="7A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569209" />
        </node>
        <node concept="3clFbF" id="1q" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673191711" />
          <node concept="2OqwBi" id="7B" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673191711" />
            <node concept="37vLTw" id="7C" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
            </node>
            <node concept="liA8E" id="7D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1r" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673191711" />
          <node concept="2OqwBi" id="7E" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673191711" />
            <node concept="37vLTw" id="7F" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
            </node>
            <node concept="liA8E" id="7G" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
              <node concept="Xl_RD" id="7H" role="37wK5m">
                <property role="Xl_RC" value="free(map);" />
                <uo k="s:originTrace" v="n:5785115222673191711" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1s" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673191834" />
          <node concept="2OqwBi" id="7I" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673191834" />
            <node concept="37vLTw" id="7J" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673191834" />
            </node>
            <node concept="liA8E" id="7K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673191834" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1t" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="7L" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="7M" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="7N" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1u" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="7O" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="7P" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="7Q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
              <node concept="Xl_RD" id="7R" role="37wK5m">
                <property role="Xl_RC" value="return 0;" />
                <uo k="s:originTrace" v="n:3204091364825571490" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825573885" />
          <node concept="2OqwBi" id="7S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825573885" />
            <node concept="37vLTw" id="7T" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
            <node concept="liA8E" id="7U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1w" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="7V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="7W" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="7Y" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="80" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="81" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="7Z" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="7X" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1x" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825583909" />
          <node concept="2OqwBi" id="82" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825583909" />
            <node concept="37vLTw" id="83" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
            </node>
            <node concept="liA8E" id="84" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
              <node concept="Xl_RD" id="85" role="37wK5m">
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
        <node concept="3uibUv" id="86" role="1tU5fm">
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
  <node concept="312cEu" id="87">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Actor_TextGen" />
    <property role="3GE5qa" value="actor" />
    <uo k="s:originTrace" v="n:3204091364823173251" />
    <node concept="3Tm1VV" id="88" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3uibUv" id="89" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3clFb_" id="8a" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
      <node concept="3cqZAl" id="8b" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3Tm1VV" id="8c" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3clFbS" id="8d" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3cpWs8" id="8g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173251" />
          <node concept="3cpWsn" id="8r" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="3uibUv" id="8s" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
            <node concept="2ShNRf" id="8t" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823173251" />
              <node concept="1pGfFk" id="8u" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823173251" />
                <node concept="37vLTw" id="8v" role="37wK5m">
                  <ref role="3cqZAo" node="8e" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823173251" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8h" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105392208" />
          <node concept="2OqwBi" id="8w" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105392208" />
            <node concept="37vLTw" id="8x" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105392208" />
            </node>
            <node concept="liA8E" id="8y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
              <uo k="s:originTrace" v="n:711157185105392208" />
              <node concept="2OqwBi" id="8z" role="37wK5m">
                <uo k="s:originTrace" v="n:711157185105392847" />
                <node concept="2OqwBi" id="8$" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:711157185105392243" />
                  <node concept="37vLTw" id="8A" role="2Oq$k0">
                    <ref role="3cqZAo" node="8e" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="8B" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrEf2" id="8_" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:25QEYlOeItB" resolve="behavior" />
                  <uo k="s:originTrace" v="n:711157185105394141" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="8i" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105394426" />
        </node>
        <node concept="3clFbF" id="8j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173308" />
          <node concept="2OqwBi" id="8C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173308" />
            <node concept="37vLTw" id="8D" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
            </node>
            <node concept="liA8E" id="8E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
              <node concept="Xl_RD" id="8F" role="37wK5m">
                <property role="Xl_RC" value="void *" />
                <uo k="s:originTrace" v="n:3204091364823173308" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173477" />
          <node concept="2OqwBi" id="8G" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173477" />
            <node concept="37vLTw" id="8H" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
            </node>
            <node concept="liA8E" id="8I" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
              <node concept="2OqwBi" id="8J" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364823173986" />
                <node concept="2OqwBi" id="8K" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364823173513" />
                  <node concept="37vLTw" id="8M" role="2Oq$k0">
                    <ref role="3cqZAo" node="8e" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="8N" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="8L" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364823181405" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181644" />
          <node concept="2OqwBi" id="8O" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181644" />
            <node concept="37vLTw" id="8P" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
            </node>
            <node concept="liA8E" id="8Q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
              <node concept="Xl_RD" id="8R" role="37wK5m">
                <property role="Xl_RC" value="(void *arg) {" />
                <uo k="s:originTrace" v="n:3204091364823181644" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181871" />
          <node concept="2OqwBi" id="8S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181871" />
            <node concept="37vLTw" id="8T" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
            <node concept="liA8E" id="8U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="8V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="8W" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="8X" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="8Y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="8Z" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="90" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
              <node concept="Xl_RD" id="91" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364823191220" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612579" />
          <node concept="2OqwBi" id="92" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612579" />
            <node concept="37vLTw" id="93" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
            <node concept="liA8E" id="94" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612635" />
          <node concept="2OqwBi" id="95" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612635" />
            <node concept="37vLTw" id="96" role="2Oq$k0">
              <ref role="3cqZAo" node="8r" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
            <node concept="liA8E" id="97" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="8e" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3uibUv" id="98" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823173251" />
        </node>
      </node>
      <node concept="2AHcQZ" id="8f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="99">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="CreateBehavior_TextGen" />
    <property role="3GE5qa" value="behavior" />
    <uo k="s:originTrace" v="n:711157185105398139" />
    <node concept="3Tm1VV" id="9a" role="1B3o_S">
      <uo k="s:originTrace" v="n:711157185105398139" />
    </node>
    <node concept="3uibUv" id="9b" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:711157185105398139" />
    </node>
    <node concept="3clFb_" id="9c" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:711157185105398139" />
      <node concept="3cqZAl" id="9d" role="3clF45">
        <uo k="s:originTrace" v="n:711157185105398139" />
      </node>
      <node concept="3Tm1VV" id="9e" role="1B3o_S">
        <uo k="s:originTrace" v="n:711157185105398139" />
      </node>
      <node concept="3clFbS" id="9f" role="3clF47">
        <uo k="s:originTrace" v="n:711157185105398139" />
        <node concept="3cpWs8" id="9i" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105398139" />
          <node concept="3cpWsn" id="9k" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:711157185105398139" />
            <node concept="3uibUv" id="9l" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:711157185105398139" />
            </node>
            <node concept="2ShNRf" id="9m" role="33vP2m">
              <uo k="s:originTrace" v="n:711157185105398139" />
              <node concept="1pGfFk" id="9n" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:711157185105398139" />
                <node concept="37vLTw" id="9o" role="37wK5m">
                  <ref role="3cqZAo" node="9g" resolve="ctx" />
                  <uo k="s:originTrace" v="n:711157185105398139" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="9j" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105398168" />
          <node concept="2GrKxI" id="9p" role="2Gsz3X">
            <property role="TrG5h" value="action" />
            <uo k="s:originTrace" v="n:711157185105398169" />
          </node>
          <node concept="2OqwBi" id="9q" role="2GsD0m">
            <uo k="s:originTrace" v="n:711157185105398885" />
            <node concept="2OqwBi" id="9s" role="2Oq$k0">
              <uo k="s:originTrace" v="n:711157185105398302" />
              <node concept="37vLTw" id="9u" role="2Oq$k0">
                <ref role="3cqZAo" node="9g" resolve="ctx" />
              </node>
              <node concept="liA8E" id="9v" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="9t" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
              <uo k="s:originTrace" v="n:711157185105400296" />
            </node>
          </node>
          <node concept="3clFbS" id="9r" role="2LFqv$">
            <uo k="s:originTrace" v="n:711157185105398171" />
            <node concept="3clFbF" id="9w" role="3cqZAp">
              <uo k="s:originTrace" v="n:711157185105400614" />
              <node concept="2OqwBi" id="9x" role="3clFbG">
                <uo k="s:originTrace" v="n:711157185105400614" />
                <node concept="37vLTw" id="9y" role="2Oq$k0">
                  <ref role="3cqZAo" node="9k" resolve="tgs" />
                  <uo k="s:originTrace" v="n:711157185105400614" />
                </node>
                <node concept="liA8E" id="9z" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:711157185105400614" />
                  <node concept="2GrUjf" id="9$" role="37wK5m">
                    <ref role="2Gs0qQ" node="9p" resolve="action" />
                    <uo k="s:originTrace" v="n:711157185105400649" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9g" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:711157185105398139" />
        <node concept="3uibUv" id="9_" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:711157185105398139" />
        </node>
      </node>
      <node concept="2AHcQZ" id="9h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:711157185105398139" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9A">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="CreateMessage_TextGen" />
    <property role="3GE5qa" value="message" />
    <uo k="s:originTrace" v="n:3204091364824420186" />
    <node concept="3Tm1VV" id="9B" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3uibUv" id="9C" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3clFb_" id="9D" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
      <node concept="3cqZAl" id="9E" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3Tm1VV" id="9F" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3clFbS" id="9G" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3cpWs8" id="9J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420186" />
          <node concept="3cpWsn" id="9N" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="3uibUv" id="9O" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
            <node concept="2ShNRf" id="9P" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364824420186" />
              <node concept="1pGfFk" id="9Q" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364824420186" />
                <node concept="37vLTw" id="9R" role="37wK5m">
                  <ref role="3cqZAo" node="9H" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824420186" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="9S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="9T" role="2Oq$k0">
              <ref role="3cqZAo" node="9N" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="9U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="9V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="9W" role="2Oq$k0">
              <ref role="3cqZAo" node="9N" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="9X" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
              <node concept="Xl_RD" id="9Y" role="37wK5m">
                <property role="Xl_RC" value="// message to send" />
                <uo k="s:originTrace" v="n:3204091364824896554" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896654" />
          <node concept="2OqwBi" id="9Z" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896654" />
            <node concept="37vLTw" id="a0" role="2Oq$k0">
              <ref role="3cqZAo" node="9N" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
            <node concept="liA8E" id="a1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9H" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3uibUv" id="a2" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364824420186" />
        </node>
      </node>
      <node concept="2AHcQZ" id="9I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="a3">
    <node concept="39e2AJ" id="a4" role="39e2AI">
      <property role="39e3Y2" value="GetExtension" />
      <node concept="39e2AG" id="a9" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="aa" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="ac" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="ab" role="39e2AY">
          <ref role="39e2AS" node="oq" resolve="getFileExtension_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="a5" role="39e2AI">
      <property role="39e3Y2" value="GetFilename" />
      <node concept="39e2AG" id="ad" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="ae" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="ag" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="af" role="39e2AY">
          <ref role="39e2AS" node="op" resolve="getFileName_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="a6" role="39e2AI">
      <property role="39e3Y2" value="LanguageUtilityClass" />
      <node concept="39e2AG" id="ah" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1Vca2fl" resolve="Initialization" />
        <node concept="385nmt" id="ai" role="385vvn">
          <property role="385vuF" value="Initialization" />
          <node concept="3u3nmq" id="ak" role="385v07">
            <property role="3u3nmv" value="3204091364822754261" />
          </node>
        </node>
        <node concept="39e2AT" id="aj" role="39e2AY">
          <ref role="39e2AS" node="aJ" resolve="Initialization" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="a7" role="39e2AI">
      <property role="39e3Y2" value="TextGenClass" />
      <node concept="39e2AG" id="al" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="ar" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="at" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="as" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ActorScript_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="am" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcbCy3" resolve="Actor_TextGen" />
        <node concept="385nmt" id="au" role="385vvn">
          <property role="385vuF" value="Actor_TextGen" />
          <node concept="3u3nmq" id="aw" role="385v07">
            <property role="3u3nmv" value="3204091364823173251" />
          </node>
        </node>
        <node concept="39e2AT" id="av" role="39e2AY">
          <ref role="39e2AS" node="87" resolve="Actor_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="an" role="39e3Y0">
        <ref role="39e2AK" to="haeo:Buyr4_F8_V" resolve="CreateBehavior_TextGen" />
        <node concept="385nmt" id="ax" role="385vvn">
          <property role="385vuF" value="CreateBehavior_TextGen" />
          <node concept="3u3nmq" id="az" role="385v07">
            <property role="3u3nmv" value="711157185105398139" />
          </node>
        </node>
        <node concept="39e2AT" id="ay" role="39e2AY">
          <ref role="39e2AS" node="99" resolve="CreateBehavior_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="ao" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcgoXq" resolve="CreateMessage_TextGen" />
        <node concept="385nmt" id="a$" role="385vvn">
          <property role="385vuF" value="CreateMessage_TextGen" />
          <node concept="3u3nmq" id="aA" role="385v07">
            <property role="3u3nmv" value="3204091364824420186" />
          </node>
        </node>
        <node concept="39e2AT" id="a_" role="39e2AY">
          <ref role="39e2AS" node="9A" resolve="CreateMessage_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="ap" role="39e3Y0">
        <ref role="39e2AK" to="haeo:Buyr4_FAxG" resolve="SelectBehavior_TextGen" />
        <node concept="385nmt" id="aB" role="385vvn">
          <property role="385vuF" value="SelectBehavior_TextGen" />
          <node concept="3u3nmq" id="aD" role="385v07">
            <property role="3u3nmv" value="711157185105520748" />
          </node>
        </node>
        <node concept="39e2AT" id="aC" role="39e2AY">
          <ref role="39e2AS" node="kN" resolve="SelectBehavior_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="aq" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VceMmW" resolve="SendMessage_TextGen" />
        <node concept="385nmt" id="aE" role="385vvn">
          <property role="385vuF" value="SendMessage_TextGen" />
          <node concept="3u3nmq" id="aG" role="385v07">
            <property role="3u3nmv" value="3204091364823999932" />
          </node>
        </node>
        <node concept="39e2AT" id="aF" role="39e2AY">
          <ref role="39e2AS" node="lc" resolve="SendMessage_TextGen" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="a8" role="39e2AI">
      <property role="39e3Y2" value="TextGenAspectDescriptorCons" />
      <node concept="39e2AG" id="aH" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="aI" role="39e2AY">
          <ref role="39e2AS" node="oi" resolve="TextGenAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="aJ">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="Initialization" />
    <uo k="s:originTrace" v="n:3204091364822754261" />
    <node concept="3Tm1VV" id="aK" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364822754261" />
    </node>
    <node concept="2YIFZL" id="aL" role="jymVt">
      <property role="TrG5h" value="init" />
      <uo k="s:originTrace" v="n:3204091364822754261" />
      <node concept="3cqZAl" id="aM" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3Tm1VV" id="aN" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3clFbS" id="aO" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3cpWs8" id="aQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754261" />
          <node concept="3cpWsn" id="d5" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364822754261" />
            <node concept="3uibUv" id="d6" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364822754261" />
            </node>
            <node concept="2ShNRf" id="d7" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364822754261" />
              <node concept="1pGfFk" id="d8" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364822754261" />
                <node concept="37vLTw" id="d9" role="37wK5m">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822754261" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aR" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754369" />
          <node concept="2OqwBi" id="da" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754369" />
            <node concept="37vLTw" id="db" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
            </node>
            <node concept="liA8E" id="dc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
              <node concept="Xl_RD" id="dd" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdio.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754369" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aS" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882556" />
          <node concept="2OqwBi" id="de" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882556" />
            <node concept="37vLTw" id="df" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
            <node concept="liA8E" id="dg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aT" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754506" />
          <node concept="2OqwBi" id="dh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754506" />
            <node concept="37vLTw" id="di" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
            </node>
            <node concept="liA8E" id="dj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
              <node concept="Xl_RD" id="dk" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdlib.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754506" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882601" />
          <node concept="2OqwBi" id="dl" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882601" />
            <node concept="37vLTw" id="dm" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
            <node concept="liA8E" id="dn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aV" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754555" />
          <node concept="2OqwBi" id="do" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754555" />
            <node concept="37vLTw" id="dp" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
            </node>
            <node concept="liA8E" id="dq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
              <node concept="Xl_RD" id="dr" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;pthread.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754555" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aW" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882645" />
          <node concept="2OqwBi" id="ds" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882645" />
            <node concept="37vLTw" id="dt" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
            <node concept="liA8E" id="du" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aX" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754594" />
          <node concept="2OqwBi" id="dv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754594" />
            <node concept="37vLTw" id="dw" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
            </node>
            <node concept="liA8E" id="dx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
              <node concept="Xl_RD" id="dy" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;unistd.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754594" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882689" />
          <node concept="2OqwBi" id="dz" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882689" />
            <node concept="37vLTw" id="d$" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
            <node concept="liA8E" id="d_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754655" />
          <node concept="2OqwBi" id="dA" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754655" />
            <node concept="37vLTw" id="dB" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
            </node>
            <node concept="liA8E" id="dC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
              <node concept="Xl_RD" id="dD" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;string.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754655" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882714" />
          <node concept="2OqwBi" id="dE" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882714" />
            <node concept="37vLTw" id="dF" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
            <node concept="liA8E" id="dG" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882863" />
          <node concept="2OqwBi" id="dH" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882863" />
            <node concept="37vLTw" id="dI" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
            <node concept="liA8E" id="dJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754823" />
          <node concept="2OqwBi" id="dK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754823" />
            <node concept="37vLTw" id="dL" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
            </node>
            <node concept="liA8E" id="dM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
              <node concept="Xl_RD" id="dN" role="37wK5m">
                <property role="Xl_RC" value="#define SIZE 100" />
                <uo k="s:originTrace" v="n:3204091364822754823" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882758" />
          <node concept="2OqwBi" id="dO" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882758" />
            <node concept="37vLTw" id="dP" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
            <node concept="liA8E" id="dQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754917" />
          <node concept="2OqwBi" id="dR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754917" />
            <node concept="37vLTw" id="dS" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
            </node>
            <node concept="liA8E" id="dT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
              <node concept="Xl_RD" id="dU" role="37wK5m">
                <property role="Xl_RC" value="#define BUFFER_SIZE 1024" />
                <uo k="s:originTrace" v="n:3204091364822754917" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b5" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882783" />
          <node concept="2OqwBi" id="dV" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882783" />
            <node concept="37vLTw" id="dW" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
            <node concept="liA8E" id="dX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b6" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882943" />
          <node concept="2OqwBi" id="dY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882943" />
            <node concept="37vLTw" id="dZ" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
            <node concept="liA8E" id="e0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b7" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755293" />
          <node concept="2OqwBi" id="e1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755293" />
            <node concept="37vLTw" id="e2" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
            </node>
            <node concept="liA8E" id="e3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
              <node concept="Xl_RD" id="e4" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364822755293" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882986" />
          <node concept="2OqwBi" id="e5" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882986" />
            <node concept="37vLTw" id="e6" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
            <node concept="liA8E" id="e7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="e8" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="e9" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="eb" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="ed" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="ee" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="ec" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="ea" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ba" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="ef" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="eg" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="eh" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bb" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="ei" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="ej" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="ek" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
              <node concept="Xl_RD" id="el" role="37wK5m">
                <property role="Xl_RC" value="int address;" />
                <uo k="s:originTrace" v="n:3204091364822755431" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bc" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883011" />
          <node concept="2OqwBi" id="em" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883011" />
            <node concept="37vLTw" id="en" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
            <node concept="liA8E" id="eo" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bd" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="ep" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="eq" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="er" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="be" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="es" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="et" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="eu" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
              <node concept="Xl_RD" id="ev" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364822755512" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bf" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883036" />
          <node concept="2OqwBi" id="ew" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883036" />
            <node concept="37vLTw" id="ex" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
            <node concept="liA8E" id="ey" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bg" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198789" />
          <node concept="2OqwBi" id="ez" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198789" />
            <node concept="37vLTw" id="e$" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
            <node concept="liA8E" id="e_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bh" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198789" />
          <node concept="2OqwBi" id="eA" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198789" />
            <node concept="37vLTw" id="eB" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
            <node concept="liA8E" id="eC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
              <node concept="Xl_RD" id="eD" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_t mutex;" />
                <uo k="s:originTrace" v="n:5167209971301198789" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bi" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198833" />
          <node concept="2OqwBi" id="eE" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198833" />
            <node concept="37vLTw" id="eF" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198833" />
            </node>
            <node concept="liA8E" id="eG" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301198833" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bj" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="eH" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="eI" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="eK" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="eM" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="eN" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="eL" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="eJ" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755564" />
          <node concept="2OqwBi" id="eO" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755564" />
            <node concept="37vLTw" id="eP" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
            </node>
            <node concept="liA8E" id="eQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
              <node concept="Xl_RD" id="eR" role="37wK5m">
                <property role="Xl_RC" value="} map_item;" />
                <uo k="s:originTrace" v="n:3204091364822755564" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bl" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124161" />
          <node concept="2OqwBi" id="eS" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124161" />
            <node concept="37vLTw" id="eT" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
            <node concept="liA8E" id="eU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bm" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124169" />
          <node concept="2OqwBi" id="eV" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124169" />
            <node concept="37vLTw" id="eW" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
            <node concept="liA8E" id="eX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bn" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025775" />
        </node>
        <node concept="3clFbF" id="bo" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025955" />
          <node concept="2OqwBi" id="eY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823025955" />
            <node concept="37vLTw" id="eZ" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
            </node>
            <node concept="liA8E" id="f0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
              <node concept="Xl_RD" id="f1" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364823025955" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bp" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124116" />
          <node concept="2OqwBi" id="f2" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124116" />
            <node concept="37vLTw" id="f3" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
            <node concept="liA8E" id="f4" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="f5" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="f6" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="f8" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="fa" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="fb" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="f9" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="f7" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="br" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="fc" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="fd" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="fe" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bs" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="ff" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="fg" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="fh" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
              <node concept="Xl_RD" id="fi" role="37wK5m">
                <property role="Xl_RC" value="map_item *map;" />
                <uo k="s:originTrace" v="n:3204091364823026094" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bt" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026235" />
          <node concept="2OqwBi" id="fj" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026235" />
            <node concept="37vLTw" id="fk" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
            <node concept="liA8E" id="fl" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bu" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="fm" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="fn" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="fo" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bv" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="fp" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="fq" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="fr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
              <node concept="Xl_RD" id="fs" role="37wK5m">
                <property role="Xl_RC" value="int read_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026283" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026390" />
          <node concept="2OqwBi" id="ft" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026390" />
            <node concept="37vLTw" id="fu" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
            <node concept="liA8E" id="fv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bx" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="fw" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="fx" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="fy" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="by" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="fz" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="f$" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="f_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
              <node concept="Xl_RD" id="fA" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026442" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026591" />
          <node concept="2OqwBi" id="fB" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026591" />
            <node concept="37vLTw" id="fC" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
            <node concept="liA8E" id="fD" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="fE" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="fF" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="fH" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="fJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="fK" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="fI" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="fG" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027309" />
          <node concept="2OqwBi" id="fL" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027309" />
            <node concept="37vLTw" id="fM" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
            </node>
            <node concept="liA8E" id="fN" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
              <node concept="Xl_RD" id="fO" role="37wK5m">
                <property role="Xl_RC" value="} ThreadData;" />
                <uo k="s:originTrace" v="n:3204091364823027309" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027467" />
          <node concept="2OqwBi" id="fP" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027467" />
            <node concept="37vLTw" id="fQ" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
            <node concept="liA8E" id="fR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124367" />
          <node concept="2OqwBi" id="fS" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124367" />
            <node concept="37vLTw" id="fT" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
            <node concept="liA8E" id="fU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bC" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670858499" />
        </node>
        <node concept="3clFbF" id="bD" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673176353" />
          <node concept="2OqwBi" id="fV" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673176353" />
            <node concept="37vLTw" id="fW" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673176353" />
            </node>
            <node concept="liA8E" id="fX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673176353" />
              <node concept="Xl_RD" id="fY" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_t map_mutex;" />
                <uo k="s:originTrace" v="n:5785115222673176353" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bE" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673176400" />
          <node concept="2OqwBi" id="fZ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673176400" />
            <node concept="37vLTw" id="g0" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673176400" />
            </node>
            <node concept="liA8E" id="g1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673176400" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bF" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673176408" />
          <node concept="2OqwBi" id="g2" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673176408" />
            <node concept="37vLTw" id="g3" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673176408" />
            </node>
            <node concept="liA8E" id="g4" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673176408" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175954" />
        </node>
        <node concept="3clFbF" id="bH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670858852" />
          <node concept="2OqwBi" id="g5" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670858852" />
            <node concept="37vLTw" id="g6" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670858852" />
            </node>
            <node concept="liA8E" id="g7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670858852" />
              <node concept="Xl_RD" id="g8" role="37wK5m">
                <property role="Xl_RC" value="void create_thread(int address, map_item *map, void *(*start_routine) (void *), pthread_t *thread) {" />
                <uo k="s:originTrace" v="n:5785115222670858852" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670858896" />
          <node concept="2OqwBi" id="g9" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670858896" />
            <node concept="37vLTw" id="ga" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670858896" />
            </node>
            <node concept="liA8E" id="gb" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670858896" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859028" />
          <node concept="2OqwBi" id="gc" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859028" />
            <node concept="2OqwBi" id="gd" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859028" />
              <node concept="2OqwBi" id="gf" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859028" />
                <node concept="37vLTw" id="gh" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
                <node concept="liA8E" id="gi" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
              </node>
              <node concept="liA8E" id="gg" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859028" />
              </node>
            </node>
            <node concept="liA8E" id="ge" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859028" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bK" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859266" />
          <node concept="2OqwBi" id="gj" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859266" />
            <node concept="37vLTw" id="gk" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
            </node>
            <node concept="liA8E" id="gl" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bL" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859266" />
          <node concept="2OqwBi" id="gm" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859266" />
            <node concept="37vLTw" id="gn" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
            </node>
            <node concept="liA8E" id="go" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
              <node concept="Xl_RD" id="gp" role="37wK5m">
                <property role="Xl_RC" value="ThreadData *thread_data = malloc(sizeof(ThreadData));" />
                <uo k="s:originTrace" v="n:5785115222670859266" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bM" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859291" />
          <node concept="2OqwBi" id="gq" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859291" />
            <node concept="37vLTw" id="gr" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859291" />
            </node>
            <node concept="liA8E" id="gs" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859291" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bN" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172167" />
          <node concept="2OqwBi" id="gt" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172167" />
            <node concept="37vLTw" id="gu" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
            </node>
            <node concept="liA8E" id="gv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172167" />
          <node concept="2OqwBi" id="gw" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172167" />
            <node concept="37vLTw" id="gx" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
            </node>
            <node concept="liA8E" id="gy" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
              <node concept="Xl_RD" id="gz" role="37wK5m">
                <property role="Xl_RC" value="if (!thread_data) {" />
                <uo k="s:originTrace" v="n:5785115222673172167" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bP" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172269" />
          <node concept="2OqwBi" id="g$" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172269" />
            <node concept="37vLTw" id="g_" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172269" />
            </node>
            <node concept="liA8E" id="gA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172269" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172356" />
          <node concept="2OqwBi" id="gB" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172356" />
            <node concept="2OqwBi" id="gC" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673172356" />
              <node concept="2OqwBi" id="gE" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673172356" />
                <node concept="37vLTw" id="gG" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
                <node concept="liA8E" id="gH" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
              </node>
              <node concept="liA8E" id="gF" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673172356" />
              </node>
            </node>
            <node concept="liA8E" id="gD" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673172356" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bR" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172448" />
          <node concept="2OqwBi" id="gI" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172448" />
            <node concept="37vLTw" id="gJ" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
            </node>
            <node concept="liA8E" id="gK" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bS" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172448" />
          <node concept="2OqwBi" id="gL" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172448" />
            <node concept="37vLTw" id="gM" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
            </node>
            <node concept="liA8E" id="gN" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
              <node concept="Xl_RD" id="gO" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;malloc&quot;);" />
                <uo k="s:originTrace" v="n:5785115222673172448" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172511" />
          <node concept="2OqwBi" id="gP" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172511" />
            <node concept="37vLTw" id="gQ" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172511" />
            </node>
            <node concept="liA8E" id="gR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172511" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172584" />
          <node concept="2OqwBi" id="gS" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172584" />
            <node concept="37vLTw" id="gT" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
            </node>
            <node concept="liA8E" id="gU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172584" />
          <node concept="2OqwBi" id="gV" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172584" />
            <node concept="37vLTw" id="gW" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
            </node>
            <node concept="liA8E" id="gX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
              <node concept="Xl_RD" id="gY" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:5785115222673172584" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bW" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172647" />
          <node concept="2OqwBi" id="gZ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172647" />
            <node concept="37vLTw" id="h0" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172647" />
            </node>
            <node concept="liA8E" id="h1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172647" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bX" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172356" />
          <node concept="2OqwBi" id="h2" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172356" />
            <node concept="2OqwBi" id="h3" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673172356" />
              <node concept="2OqwBi" id="h5" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673172356" />
                <node concept="37vLTw" id="h7" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
                <node concept="liA8E" id="h8" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
              </node>
              <node concept="liA8E" id="h6" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673172356" />
              </node>
            </node>
            <node concept="liA8E" id="h4" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673172356" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172821" />
          <node concept="2OqwBi" id="h9" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172821" />
            <node concept="37vLTw" id="ha" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
            </node>
            <node concept="liA8E" id="hb" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172821" />
          <node concept="2OqwBi" id="hc" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172821" />
            <node concept="37vLTw" id="hd" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
            </node>
            <node concept="liA8E" id="he" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
              <node concept="Xl_RD" id="hf" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222673172821" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c0" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172868" />
          <node concept="2OqwBi" id="hg" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172868" />
            <node concept="37vLTw" id="hh" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172868" />
            </node>
            <node concept="liA8E" id="hi" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172868" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c1" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172914" />
          <node concept="2OqwBi" id="hj" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172914" />
            <node concept="37vLTw" id="hk" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172914" />
            </node>
            <node concept="liA8E" id="hl" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172914" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="c2" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172938" />
        </node>
        <node concept="3clFbF" id="c3" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859455" />
          <node concept="2OqwBi" id="hm" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859455" />
            <node concept="37vLTw" id="hn" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
            </node>
            <node concept="liA8E" id="ho" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c4" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859455" />
          <node concept="2OqwBi" id="hp" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859455" />
            <node concept="37vLTw" id="hq" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
            </node>
            <node concept="liA8E" id="hr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
              <node concept="Xl_RD" id="hs" role="37wK5m">
                <property role="Xl_RC" value="int pipe_fd[2];" />
                <uo k="s:originTrace" v="n:5785115222670859455" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c5" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859518" />
          <node concept="2OqwBi" id="ht" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859518" />
            <node concept="37vLTw" id="hu" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859518" />
            </node>
            <node concept="liA8E" id="hv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859518" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c6" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859572" />
          <node concept="2OqwBi" id="hw" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859572" />
            <node concept="37vLTw" id="hx" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859572" />
            </node>
            <node concept="liA8E" id="hy" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859572" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="c7" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859596" />
        </node>
        <node concept="3clFbF" id="c8" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859677" />
          <node concept="2OqwBi" id="hz" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859677" />
            <node concept="37vLTw" id="h$" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
            </node>
            <node concept="liA8E" id="h_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c9" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859677" />
          <node concept="2OqwBi" id="hA" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859677" />
            <node concept="37vLTw" id="hB" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
            </node>
            <node concept="liA8E" id="hC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
              <node concept="Xl_RD" id="hD" role="37wK5m">
                <property role="Xl_RC" value="if (pipe(pipe_fd)) {" />
                <uo k="s:originTrace" v="n:5785115222670859677" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ca" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859721" />
          <node concept="2OqwBi" id="hE" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859721" />
            <node concept="37vLTw" id="hF" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859721" />
            </node>
            <node concept="liA8E" id="hG" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859721" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cb" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859777" />
          <node concept="2OqwBi" id="hH" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859777" />
            <node concept="2OqwBi" id="hI" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859777" />
              <node concept="2OqwBi" id="hK" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859777" />
                <node concept="37vLTw" id="hM" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
                <node concept="liA8E" id="hN" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
              </node>
              <node concept="liA8E" id="hL" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859777" />
              </node>
            </node>
            <node concept="liA8E" id="hJ" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859777" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cc" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859838" />
          <node concept="2OqwBi" id="hO" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859838" />
            <node concept="37vLTw" id="hP" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
            </node>
            <node concept="liA8E" id="hQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cd" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859838" />
          <node concept="2OqwBi" id="hR" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859838" />
            <node concept="37vLTw" id="hS" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
            </node>
            <node concept="liA8E" id="hT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
              <node concept="Xl_RD" id="hU" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pipe&quot;);" />
                <uo k="s:originTrace" v="n:5785115222670859838" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ce" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859882" />
          <node concept="2OqwBi" id="hV" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859882" />
            <node concept="37vLTw" id="hW" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859882" />
            </node>
            <node concept="liA8E" id="hX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859882" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cf" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859955" />
          <node concept="2OqwBi" id="hY" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859955" />
            <node concept="37vLTw" id="hZ" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
            </node>
            <node concept="liA8E" id="i0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cg" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859955" />
          <node concept="2OqwBi" id="i1" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859955" />
            <node concept="37vLTw" id="i2" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
            </node>
            <node concept="liA8E" id="i3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
              <node concept="Xl_RD" id="i4" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:5785115222670859955" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ch" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860002" />
          <node concept="2OqwBi" id="i5" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860002" />
            <node concept="37vLTw" id="i6" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860002" />
            </node>
            <node concept="liA8E" id="i7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860002" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ci" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859777" />
          <node concept="2OqwBi" id="i8" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859777" />
            <node concept="2OqwBi" id="i9" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859777" />
              <node concept="2OqwBi" id="ib" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859777" />
                <node concept="37vLTw" id="id" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
                <node concept="liA8E" id="ie" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
              </node>
              <node concept="liA8E" id="ic" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859777" />
              </node>
            </node>
            <node concept="liA8E" id="ia" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859777" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cj" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860114" />
          <node concept="2OqwBi" id="if" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860114" />
            <node concept="37vLTw" id="ig" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
            </node>
            <node concept="liA8E" id="ih" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ck" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860114" />
          <node concept="2OqwBi" id="ii" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860114" />
            <node concept="37vLTw" id="ij" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
            </node>
            <node concept="liA8E" id="ik" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
              <node concept="Xl_RD" id="il" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222670860114" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cl" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860177" />
          <node concept="2OqwBi" id="im" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860177" />
            <node concept="37vLTw" id="in" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860177" />
            </node>
            <node concept="liA8E" id="io" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860177" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cm" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860223" />
          <node concept="2OqwBi" id="ip" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860223" />
            <node concept="37vLTw" id="iq" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860223" />
            </node>
            <node concept="liA8E" id="ir" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860223" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cn" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860303" />
        </node>
        <node concept="3clFbF" id="co" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860413" />
          <node concept="2OqwBi" id="is" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860413" />
            <node concept="37vLTw" id="it" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
            </node>
            <node concept="liA8E" id="iu" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cp" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860413" />
          <node concept="2OqwBi" id="iv" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860413" />
            <node concept="37vLTw" id="iw" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
            </node>
            <node concept="liA8E" id="ix" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
              <node concept="Xl_RD" id="iy" role="37wK5m">
                <property role="Xl_RC" value="thread_data-&gt;read_fd = pipe_fd[0];" />
                <uo k="s:originTrace" v="n:5785115222670860413" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cq" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860476" />
          <node concept="2OqwBi" id="iz" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860476" />
            <node concept="37vLTw" id="i$" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860476" />
            </node>
            <node concept="liA8E" id="i_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860476" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cr" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860605" />
          <node concept="2OqwBi" id="iA" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860605" />
            <node concept="37vLTw" id="iB" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
            </node>
            <node concept="liA8E" id="iC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cs" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860605" />
          <node concept="2OqwBi" id="iD" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860605" />
            <node concept="37vLTw" id="iE" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
            </node>
            <node concept="liA8E" id="iF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
              <node concept="Xl_RD" id="iG" role="37wK5m">
                <property role="Xl_RC" value="thread_data-&gt;write_fd = pipe_fd[1];" />
                <uo k="s:originTrace" v="n:5785115222670860605" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ct" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860652" />
          <node concept="2OqwBi" id="iH" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860652" />
            <node concept="37vLTw" id="iI" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860652" />
            </node>
            <node concept="liA8E" id="iJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860652" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cu" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860750" />
          <node concept="2OqwBi" id="iK" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860750" />
            <node concept="37vLTw" id="iL" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860750" />
            </node>
            <node concept="liA8E" id="iM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860750" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cv" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860774" />
        </node>
        <node concept="3clFbF" id="cw" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173650" />
          <node concept="2OqwBi" id="iN" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173650" />
            <node concept="37vLTw" id="iO" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
            </node>
            <node concept="liA8E" id="iP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cx" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173650" />
          <node concept="2OqwBi" id="iQ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173650" />
            <node concept="37vLTw" id="iR" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
            </node>
            <node concept="liA8E" id="iS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
              <node concept="Xl_RD" id="iT" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_lock(&amp;map_mutex);" />
                <uo k="s:originTrace" v="n:5785115222673173650" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cy" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173698" />
          <node concept="2OqwBi" id="iU" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173698" />
            <node concept="37vLTw" id="iV" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173698" />
            </node>
            <node concept="liA8E" id="iW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673173698" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cz" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173884" />
          <node concept="2OqwBi" id="iX" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173884" />
            <node concept="37vLTw" id="iY" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
            </node>
            <node concept="liA8E" id="iZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c$" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173884" />
          <node concept="2OqwBi" id="j0" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173884" />
            <node concept="37vLTw" id="j1" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
            </node>
            <node concept="liA8E" id="j2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
              <node concept="Xl_RD" id="j3" role="37wK5m">
                <property role="Xl_RC" value="map[address].write_fd = pipe_fd[1];" />
                <uo k="s:originTrace" v="n:5785115222673173884" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c_" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173948" />
          <node concept="2OqwBi" id="j4" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173948" />
            <node concept="37vLTw" id="j5" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173948" />
            </node>
            <node concept="liA8E" id="j6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673173948" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cA" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174141" />
          <node concept="2OqwBi" id="j7" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174141" />
            <node concept="37vLTw" id="j8" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
            </node>
            <node concept="liA8E" id="j9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cB" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174141" />
          <node concept="2OqwBi" id="ja" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174141" />
            <node concept="37vLTw" id="jb" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
            </node>
            <node concept="liA8E" id="jc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
              <node concept="Xl_RD" id="jd" role="37wK5m">
                <property role="Xl_RC" value="if (pthread_mutex_init(&amp;map[address].mutex, NULL) != 0) {" />
                <uo k="s:originTrace" v="n:5785115222673174141" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cC" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673762309" />
          <node concept="2OqwBi" id="je" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673762309" />
            <node concept="37vLTw" id="jf" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673762309" />
            </node>
            <node concept="liA8E" id="jg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673762309" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cD" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174265" />
          <node concept="2OqwBi" id="jh" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174265" />
            <node concept="2OqwBi" id="ji" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673174265" />
              <node concept="2OqwBi" id="jk" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673174265" />
                <node concept="37vLTw" id="jm" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
                <node concept="liA8E" id="jn" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
              </node>
              <node concept="liA8E" id="jl" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673174265" />
              </node>
            </node>
            <node concept="liA8E" id="jj" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673174265" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cE" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174376" />
          <node concept="2OqwBi" id="jo" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174376" />
            <node concept="37vLTw" id="jp" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
            </node>
            <node concept="liA8E" id="jq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cF" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174376" />
          <node concept="2OqwBi" id="jr" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174376" />
            <node concept="37vLTw" id="js" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
            </node>
            <node concept="liA8E" id="jt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
              <node concept="Xl_RD" id="ju" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pthread_mutex_init&quot;);" />
                <uo k="s:originTrace" v="n:5785115222673174376" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174439" />
          <node concept="2OqwBi" id="jv" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174439" />
            <node concept="37vLTw" id="jw" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174439" />
            </node>
            <node concept="liA8E" id="jx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174439" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174511" />
          <node concept="2OqwBi" id="jy" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174511" />
            <node concept="37vLTw" id="jz" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
            </node>
            <node concept="liA8E" id="j$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174511" />
          <node concept="2OqwBi" id="j_" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174511" />
            <node concept="37vLTw" id="jA" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
            </node>
            <node concept="liA8E" id="jB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
              <node concept="Xl_RD" id="jC" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:5785115222673174511" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174688" />
          <node concept="2OqwBi" id="jD" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174688" />
            <node concept="37vLTw" id="jE" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174688" />
            </node>
            <node concept="liA8E" id="jF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cK" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174265" />
          <node concept="2OqwBi" id="jG" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174265" />
            <node concept="2OqwBi" id="jH" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673174265" />
              <node concept="2OqwBi" id="jJ" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673174265" />
                <node concept="37vLTw" id="jL" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
                <node concept="liA8E" id="jM" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
              </node>
              <node concept="liA8E" id="jK" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673174265" />
              </node>
            </node>
            <node concept="liA8E" id="jI" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673174265" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cL" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174900" />
          <node concept="2OqwBi" id="jN" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174900" />
            <node concept="37vLTw" id="jO" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
            </node>
            <node concept="liA8E" id="jP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cM" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174900" />
          <node concept="2OqwBi" id="jQ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174900" />
            <node concept="37vLTw" id="jR" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
            </node>
            <node concept="liA8E" id="jS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
              <node concept="Xl_RD" id="jT" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222673174900" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cN" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174947" />
          <node concept="2OqwBi" id="jU" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174947" />
            <node concept="37vLTw" id="jV" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174947" />
            </node>
            <node concept="liA8E" id="jW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174947" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174993" />
          <node concept="2OqwBi" id="jX" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174993" />
            <node concept="37vLTw" id="jY" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174993" />
            </node>
            <node concept="liA8E" id="jZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174993" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cP" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173220" />
        </node>
        <node concept="3clFbF" id="cQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861124" />
          <node concept="2OqwBi" id="k0" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861124" />
            <node concept="37vLTw" id="k1" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
            </node>
            <node concept="liA8E" id="k2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cR" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861124" />
          <node concept="2OqwBi" id="k3" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861124" />
            <node concept="37vLTw" id="k4" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
            </node>
            <node concept="liA8E" id="k5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
              <node concept="Xl_RD" id="k6" role="37wK5m">
                <property role="Xl_RC" value="thread_data-&gt;map = map;" />
                <uo k="s:originTrace" v="n:5785115222670861124" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cS" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861171" />
          <node concept="2OqwBi" id="k7" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861171" />
            <node concept="37vLTw" id="k8" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861171" />
            </node>
            <node concept="liA8E" id="k9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670861171" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175113" />
          <node concept="2OqwBi" id="ka" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175113" />
            <node concept="37vLTw" id="kb" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
            </node>
            <node concept="liA8E" id="kc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175113" />
          <node concept="2OqwBi" id="kd" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175113" />
            <node concept="37vLTw" id="ke" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
            </node>
            <node concept="liA8E" id="kf" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
              <node concept="Xl_RD" id="kg" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;map_mutex);" />
                <uo k="s:originTrace" v="n:5785115222673175113" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175654" />
          <node concept="2OqwBi" id="kh" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175654" />
            <node concept="37vLTw" id="ki" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175654" />
            </node>
            <node concept="liA8E" id="kj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673175654" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cW" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175114" />
          <node concept="2OqwBi" id="kk" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175114" />
            <node concept="37vLTw" id="kl" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175114" />
            </node>
            <node concept="liA8E" id="km" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673175114" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cX" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175017" />
        </node>
        <node concept="3clFbF" id="cY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861372" />
          <node concept="2OqwBi" id="kn" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861372" />
            <node concept="37vLTw" id="ko" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
            </node>
            <node concept="liA8E" id="kp" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861372" />
          <node concept="2OqwBi" id="kq" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861372" />
            <node concept="37vLTw" id="kr" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
            </node>
            <node concept="liA8E" id="ks" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
              <node concept="Xl_RD" id="kt" role="37wK5m">
                <property role="Xl_RC" value="pthread_create(thread, NULL, start_routine, (void *)thread_data);" />
                <uo k="s:originTrace" v="n:5785115222670861372" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d0" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861419" />
          <node concept="2OqwBi" id="ku" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861419" />
            <node concept="37vLTw" id="kv" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861419" />
            </node>
            <node concept="liA8E" id="kw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670861419" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d1" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859028" />
          <node concept="2OqwBi" id="kx" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859028" />
            <node concept="2OqwBi" id="ky" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859028" />
              <node concept="2OqwBi" id="k$" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859028" />
                <node concept="37vLTw" id="kA" role="2Oq$k0">
                  <ref role="3cqZAo" node="aP" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
                <node concept="liA8E" id="kB" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
              </node>
              <node concept="liA8E" id="k_" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859028" />
              </node>
            </node>
            <node concept="liA8E" id="kz" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859028" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d2" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670862186" />
          <node concept="2OqwBi" id="kC" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670862186" />
            <node concept="37vLTw" id="kD" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670862186" />
            </node>
            <node concept="liA8E" id="kE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670862186" />
              <node concept="Xl_RD" id="kF" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222670862186" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d3" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671349351" />
          <node concept="2OqwBi" id="kG" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222671349351" />
            <node concept="37vLTw" id="kH" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222671349351" />
            </node>
            <node concept="liA8E" id="kI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222671349351" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d4" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671349397" />
          <node concept="2OqwBi" id="kJ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222671349397" />
            <node concept="37vLTw" id="kK" role="2Oq$k0">
              <ref role="3cqZAo" node="d5" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222671349397" />
            </node>
            <node concept="liA8E" id="kL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222671349397" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="aP" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3uibUv" id="kM" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364822754261" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="kN">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SelectBehavior_TextGen" />
    <property role="3GE5qa" value="behavior" />
    <uo k="s:originTrace" v="n:711157185105520748" />
    <node concept="3Tm1VV" id="kO" role="1B3o_S">
      <uo k="s:originTrace" v="n:711157185105520748" />
    </node>
    <node concept="3uibUv" id="kP" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:711157185105520748" />
    </node>
    <node concept="3clFb_" id="kQ" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:711157185105520748" />
      <node concept="3cqZAl" id="kR" role="3clF45">
        <uo k="s:originTrace" v="n:711157185105520748" />
      </node>
      <node concept="3Tm1VV" id="kS" role="1B3o_S">
        <uo k="s:originTrace" v="n:711157185105520748" />
      </node>
      <node concept="3clFbS" id="kT" role="3clF47">
        <uo k="s:originTrace" v="n:711157185105520748" />
        <node concept="3cpWs8" id="kW" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105520748" />
          <node concept="3cpWsn" id="kY" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:711157185105520748" />
            <node concept="3uibUv" id="kZ" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:711157185105520748" />
            </node>
            <node concept="2ShNRf" id="l0" role="33vP2m">
              <uo k="s:originTrace" v="n:711157185105520748" />
              <node concept="1pGfFk" id="l1" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:711157185105520748" />
                <node concept="37vLTw" id="l2" role="37wK5m">
                  <ref role="3cqZAo" node="kU" resolve="ctx" />
                  <uo k="s:originTrace" v="n:711157185105520748" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kX" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105520805" />
          <node concept="2OqwBi" id="l3" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105520805" />
            <node concept="37vLTw" id="l4" role="2Oq$k0">
              <ref role="3cqZAo" node="kY" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105520805" />
            </node>
            <node concept="liA8E" id="l5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
              <uo k="s:originTrace" v="n:711157185105520805" />
              <node concept="2OqwBi" id="l6" role="37wK5m">
                <uo k="s:originTrace" v="n:711157185105521401" />
                <node concept="2OqwBi" id="l7" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:711157185105520840" />
                  <node concept="37vLTw" id="l9" role="2Oq$k0">
                    <ref role="3cqZAo" node="kU" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="la" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrEf2" id="l8" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:66sUT0$5L0_" resolve="behavior" />
                  <uo k="s:originTrace" v="n:711157185105522764" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="kU" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:711157185105520748" />
        <node concept="3uibUv" id="lb" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:711157185105520748" />
        </node>
      </node>
      <node concept="2AHcQZ" id="kV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:711157185105520748" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="lc">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SendMessage_TextGen" />
    <property role="3GE5qa" value="message" />
    <uo k="s:originTrace" v="n:3204091364823999932" />
    <node concept="3Tm1VV" id="ld" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3uibUv" id="le" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3clFb_" id="lf" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
      <node concept="3cqZAl" id="lg" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3Tm1VV" id="lh" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3clFbS" id="li" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3cpWs8" id="ll" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999932" />
          <node concept="3cpWsn" id="lV" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="3uibUv" id="lW" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
            <node concept="2ShNRf" id="lX" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823999932" />
              <node concept="1pGfFk" id="lY" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823999932" />
                <node concept="37vLTw" id="lZ" role="37wK5m">
                  <ref role="3cqZAo" node="lj" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823999932" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lm" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105235298" />
        </node>
        <node concept="3clFbF" id="ln" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105645994" />
          <node concept="2OqwBi" id="m0" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105645994" />
            <node concept="37vLTw" id="m1" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105645994" />
            </node>
            <node concept="liA8E" id="m2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:711157185105645994" />
              <node concept="Xl_RD" id="m3" role="37wK5m">
                <property role="Xl_RC" value="tag:" />
                <uo k="s:originTrace" v="n:711157185105645994" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lo" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105235776" />
          <node concept="2OqwBi" id="m4" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105235776" />
            <node concept="37vLTw" id="m5" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105235776" />
            </node>
            <node concept="liA8E" id="m6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:711157185105235776" />
              <node concept="2OqwBi" id="m7" role="37wK5m">
                <uo k="s:originTrace" v="n:711157185105238612" />
                <node concept="2OqwBi" id="m8" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:711157185105236372" />
                  <node concept="2OqwBi" id="ma" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:711157185105235811" />
                    <node concept="37vLTw" id="mc" role="2Oq$k0">
                      <ref role="3cqZAo" node="lj" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="md" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="mb" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:711157185105237883" />
                  </node>
                </node>
                <node concept="3TrcHB" id="m9" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:25QEYlOFf2e" resolve="tag" />
                  <uo k="s:originTrace" v="n:711157185105239489" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lp" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105766913" />
          <node concept="2OqwBi" id="me" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105766913" />
            <node concept="37vLTw" id="mf" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105766913" />
            </node>
            <node concept="liA8E" id="mg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:711157185105766913" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lq" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105235356" />
        </node>
        <node concept="3clFbF" id="lr" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206780" />
          <node concept="2OqwBi" id="mh" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206780" />
            <node concept="37vLTw" id="mi" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
            <node concept="liA8E" id="mj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ls" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206780" />
          <node concept="2OqwBi" id="mk" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206780" />
            <node concept="37vLTw" id="ml" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
            <node concept="liA8E" id="mm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
              <node concept="Xl_RD" id="mn" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_lock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301206780" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lt" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206991" />
          <node concept="2OqwBi" id="mo" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206991" />
            <node concept="37vLTw" id="mp" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206991" />
            </node>
            <node concept="liA8E" id="mq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301206991" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lu" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="mr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="ms" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="mt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lv" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="mu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="mv" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="mw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
              <node concept="Xl_RD" id="mx" role="37wK5m">
                <property role="Xl_RC" value="bytes_written = write(data-&gt;map[receiver_address].write_fd, " />
                <uo k="s:originTrace" v="n:3204091364823999990" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826098888" />
          <node concept="2OqwBi" id="my" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826098888" />
            <node concept="37vLTw" id="mz" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826098888" />
            </node>
            <node concept="liA8E" id="m$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826098888" />
              <node concept="2OqwBi" id="m_" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364826100688" />
                <node concept="2OqwBi" id="mA" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364826099431" />
                  <node concept="2OqwBi" id="mC" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364826098992" />
                    <node concept="37vLTw" id="mE" role="2Oq$k0">
                      <ref role="3cqZAo" node="lj" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="mF" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="mD" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:3204091364826100018" />
                  </node>
                </node>
                <node concept="3TrcHB" id="mB" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364826101909" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lx" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826102095" />
          <node concept="2OqwBi" id="mG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826102095" />
            <node concept="37vLTw" id="mH" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826102095" />
            </node>
            <node concept="liA8E" id="mI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826102095" />
              <node concept="Xl_RD" id="mJ" role="37wK5m">
                <property role="Xl_RC" value=", strlen(" />
                <uo k="s:originTrace" v="n:3204091364826102095" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ly" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826102815" />
          <node concept="2OqwBi" id="mK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826102815" />
            <node concept="37vLTw" id="mL" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826102815" />
            </node>
            <node concept="liA8E" id="mM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826102815" />
              <node concept="2OqwBi" id="mN" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364826103386" />
                <node concept="2OqwBi" id="mO" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364826102984" />
                  <node concept="2OqwBi" id="mQ" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364826102955" />
                    <node concept="37vLTw" id="mS" role="2Oq$k0">
                      <ref role="3cqZAo" node="lj" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="mT" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="mR" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:3204091364826103290" />
                  </node>
                </node>
                <node concept="3TrcHB" id="mP" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364826104656" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826111513" />
          <node concept="2OqwBi" id="mU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826111513" />
            <node concept="37vLTw" id="mV" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826111513" />
            </node>
            <node concept="liA8E" id="mW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826111513" />
              <node concept="Xl_RD" id="mX" role="37wK5m">
                <property role="Xl_RC" value="));" />
                <uo k="s:originTrace" v="n:3204091364826111513" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="l$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824005116" />
          <node concept="2OqwBi" id="mY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824005116" />
            <node concept="37vLTw" id="mZ" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
            <node concept="liA8E" id="n0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="l_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="n1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="n2" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="n3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="n4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="n5" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="n6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
              <node concept="Xl_RD" id="n7" role="37wK5m">
                <property role="Xl_RC" value="if (bytes_written == -1) {" />
                <uo k="s:originTrace" v="n:3204091364824006418" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006475" />
          <node concept="2OqwBi" id="n8" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006475" />
            <node concept="37vLTw" id="n9" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
            <node concept="liA8E" id="na" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="nb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="nc" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="ne" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="ng" role="2Oq$k0">
                  <ref role="3cqZAo" node="lj" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="nh" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="nf" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="nd" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="ni" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="nj" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="nk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="nl" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="nm" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="nn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
              <node concept="Xl_RD" id="no" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;write&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824007688" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657942" />
          <node concept="2OqwBi" id="np" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657942" />
            <node concept="37vLTw" id="nq" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
            <node concept="liA8E" id="nr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207389" />
          <node concept="2OqwBi" id="ns" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207389" />
            <node concept="37vLTw" id="nt" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
            <node concept="liA8E" id="nu" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207389" />
          <node concept="2OqwBi" id="nv" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207389" />
            <node concept="37vLTw" id="nw" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
            <node concept="liA8E" id="nx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
              <node concept="Xl_RD" id="ny" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301207389" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207489" />
          <node concept="2OqwBi" id="nz" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207489" />
            <node concept="37vLTw" id="n$" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207489" />
            </node>
            <node concept="liA8E" id="n_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301207489" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="nA" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="nB" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="nC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="nD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="nE" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="nF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
              <node concept="Xl_RD" id="nG" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364824008569" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657997" />
          <node concept="2OqwBi" id="nH" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657997" />
            <node concept="37vLTw" id="nI" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
            <node concept="liA8E" id="nJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lM" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="nK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="nL" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="nN" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="nP" role="2Oq$k0">
                  <ref role="3cqZAo" node="lj" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="nQ" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="nO" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="nM" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lN" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="nR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="nS" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="nT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lO" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="nU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="nV" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="nW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
              <node concept="Xl_RD" id="nX" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364824008857" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lP" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824658052" />
          <node concept="2OqwBi" id="nY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824658052" />
            <node concept="37vLTw" id="nZ" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
            <node concept="liA8E" id="o0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215015" />
          <node concept="2OqwBi" id="o1" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215015" />
            <node concept="37vLTw" id="o2" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
            <node concept="liA8E" id="o3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lR" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215015" />
          <node concept="2OqwBi" id="o4" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215015" />
            <node concept="37vLTw" id="o5" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
            <node concept="liA8E" id="o6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
              <node concept="Xl_RD" id="o7" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301215015" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lS" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215016" />
          <node concept="2OqwBi" id="o8" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215016" />
            <node concept="37vLTw" id="o9" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215016" />
            </node>
            <node concept="liA8E" id="oa" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215016" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215317" />
          <node concept="2OqwBi" id="ob" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215317" />
            <node concept="37vLTw" id="oc" role="2Oq$k0">
              <ref role="3cqZAo" node="lV" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215317" />
            </node>
            <node concept="liA8E" id="od" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215317" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301214679" />
        </node>
      </node>
      <node concept="37vLTG" id="lj" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3uibUv" id="oe" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823999932" />
        </node>
      </node>
      <node concept="2AHcQZ" id="lk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="of">
    <property role="TrG5h" value="TextGenAspectDescriptor" />
    <node concept="312cEg" id="og" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="or" role="1B3o_S" />
      <node concept="2eloPW" id="os" role="1tU5fm">
        <property role="2ely0U" value="ActorLanguage.structure.LanguageConceptSwitch" />
        <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
      </node>
      <node concept="2ShNRf" id="ot" role="33vP2m">
        <node concept="xCZzO" id="ou" role="2ShVmc">
          <property role="xCZzQ" value="ActorLanguage.structure.LanguageConceptSwitch" />
          <node concept="3uibUv" id="ov" role="xCZzL">
            <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oh" role="jymVt" />
    <node concept="3clFbW" id="oi" role="jymVt">
      <node concept="3cqZAl" id="ow" role="3clF45" />
      <node concept="3clFbS" id="ox" role="3clF47" />
      <node concept="3Tm1VV" id="oy" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="oj" role="jymVt" />
    <node concept="3Tm1VV" id="ok" role="1B3o_S" />
    <node concept="3uibUv" id="ol" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenAspectBase" resolve="TextGenAspectBase" />
    </node>
    <node concept="3clFb_" id="om" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="oz" role="1B3o_S" />
      <node concept="3uibUv" id="o$" role="3clF45">
        <ref role="3uigEE" to="yfwt:~TextGenDescriptor" resolve="TextGenDescriptor" />
      </node>
      <node concept="37vLTG" id="o_" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="oD" role="1tU5fm" />
        <node concept="2AHcQZ" id="oE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="oA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="oB" role="3clF47">
        <node concept="3KaCP$" id="oF" role="3cqZAp">
          <node concept="2OqwBi" id="oH" role="3KbGdf">
            <node concept="37vLTw" id="oO" role="2Oq$k0">
              <ref role="3cqZAo" node="og" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="oP" role="2OqNvi">
              <ref role="37wK5l" to="tpcf:1OW7rNmnuDr" resolve="index" />
              <node concept="37vLTw" id="oQ" role="37wK5m">
                <ref role="3cqZAo" node="o_" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oI" role="3KbHQx">
            <node concept="1n$iZg" id="oR" role="3Kbmr1">
              <property role="1n_iUB" value="Actor" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="oS" role="3Kbo56">
              <node concept="3cpWs6" id="oT" role="3cqZAp">
                <node concept="2ShNRf" id="oU" role="3cqZAk">
                  <node concept="HV5vD" id="oV" role="2ShVmc">
                    <ref role="HV5vE" node="87" resolve="Actor_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oJ" role="3KbHQx">
            <node concept="1n$iZg" id="oW" role="3Kbmr1">
              <property role="1n_iUB" value="ActorScript" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="oX" role="3Kbo56">
              <node concept="3cpWs6" id="oY" role="3cqZAp">
                <node concept="2ShNRf" id="oZ" role="3cqZAk">
                  <node concept="HV5vD" id="p0" role="2ShVmc">
                    <ref role="HV5vE" node="0" resolve="ActorScript_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oK" role="3KbHQx">
            <node concept="1n$iZg" id="p1" role="3Kbmr1">
              <property role="1n_iUB" value="CreateBehavior" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="p2" role="3Kbo56">
              <node concept="3cpWs6" id="p3" role="3cqZAp">
                <node concept="2ShNRf" id="p4" role="3cqZAk">
                  <node concept="HV5vD" id="p5" role="2ShVmc">
                    <ref role="HV5vE" node="99" resolve="CreateBehavior_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oL" role="3KbHQx">
            <node concept="1n$iZg" id="p6" role="3Kbmr1">
              <property role="1n_iUB" value="CreateMessage" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="p7" role="3Kbo56">
              <node concept="3cpWs6" id="p8" role="3cqZAp">
                <node concept="2ShNRf" id="p9" role="3cqZAk">
                  <node concept="HV5vD" id="pa" role="2ShVmc">
                    <ref role="HV5vE" node="9A" resolve="CreateMessage_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oM" role="3KbHQx">
            <node concept="1n$iZg" id="pb" role="3Kbmr1">
              <property role="1n_iUB" value="SelectBehavior" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="pc" role="3Kbo56">
              <node concept="3cpWs6" id="pd" role="3cqZAp">
                <node concept="2ShNRf" id="pe" role="3cqZAk">
                  <node concept="HV5vD" id="pf" role="2ShVmc">
                    <ref role="HV5vE" node="kN" resolve="SelectBehavior_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oN" role="3KbHQx">
            <node concept="1n$iZg" id="pg" role="3Kbmr1">
              <property role="1n_iUB" value="SendMessage" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="ph" role="3Kbo56">
              <node concept="3cpWs6" id="pi" role="3cqZAp">
                <node concept="2ShNRf" id="pj" role="3cqZAk">
                  <node concept="HV5vD" id="pk" role="2ShVmc">
                    <ref role="HV5vE" node="lc" resolve="SendMessage_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="oG" role="3cqZAp">
          <node concept="10Nm6u" id="pl" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="oC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="on" role="jymVt" />
    <node concept="3clFb_" id="oo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="breakdownToUnits" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="pm" role="1B3o_S" />
      <node concept="3cqZAl" id="pn" role="3clF45" />
      <node concept="37vLTG" id="po" role="3clF46">
        <property role="TrG5h" value="outline" />
        <node concept="3uibUv" id="pr" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenModelOutline" resolve="TextGenModelOutline" />
        </node>
        <node concept="2AHcQZ" id="ps" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="pp" role="3clF47">
        <node concept="1DcWWT" id="pt" role="3cqZAp">
          <node concept="3clFbS" id="pu" role="2LFqv$">
            <node concept="3clFbJ" id="px" role="3cqZAp">
              <node concept="3clFbS" id="py" role="3clFbx">
                <node concept="3cpWs8" id="p$" role="3cqZAp">
                  <node concept="3cpWsn" id="pC" role="3cpWs9">
                    <property role="TrG5h" value="fname" />
                    <node concept="3uibUv" id="pD" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="pE" role="33vP2m">
                      <ref role="37wK5l" node="op" resolve="getFileName_ActorScript" />
                      <node concept="37vLTw" id="pF" role="37wK5m">
                        <ref role="3cqZAo" node="pv" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="p_" role="3cqZAp">
                  <node concept="3cpWsn" id="pG" role="3cpWs9">
                    <property role="TrG5h" value="ext" />
                    <node concept="3uibUv" id="pH" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="pI" role="33vP2m">
                      <ref role="37wK5l" node="oq" resolve="getFileExtension_ActorScript" />
                      <node concept="37vLTw" id="pJ" role="37wK5m">
                        <ref role="3cqZAo" node="pv" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="pA" role="3cqZAp">
                  <node concept="2OqwBi" id="pK" role="3clFbG">
                    <node concept="37vLTw" id="pL" role="2Oq$k0">
                      <ref role="3cqZAo" node="po" resolve="outline" />
                    </node>
                    <node concept="liA8E" id="pM" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenModelOutline.registerTextUnit(java.lang.String,java.lang.String,java.nio.charset.Charset,org.jetbrains.mps.openapi.model.SNode...)" resolve="registerTextUnit" />
                      <node concept="3K4zz7" id="pN" role="37wK5m">
                        <node concept="1eOMI4" id="pP" role="3K4GZi">
                          <node concept="3cpWs3" id="pS" role="1eOMHV">
                            <node concept="37vLTw" id="pT" role="3uHU7w">
                              <ref role="3cqZAo" node="pG" resolve="ext" />
                            </node>
                            <node concept="3cpWs3" id="pU" role="3uHU7B">
                              <node concept="37vLTw" id="pV" role="3uHU7B">
                                <ref role="3cqZAo" node="pC" resolve="fname" />
                              </node>
                              <node concept="1Xhbcc" id="pW" role="3uHU7w">
                                <property role="1XhdNS" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="pQ" role="3K4E3e">
                          <ref role="3cqZAo" node="pC" resolve="fname" />
                        </node>
                        <node concept="3clFbC" id="pR" role="3K4Cdx">
                          <node concept="10Nm6u" id="pX" role="3uHU7w" />
                          <node concept="37vLTw" id="pY" role="3uHU7B">
                            <ref role="3cqZAo" node="pG" resolve="ext" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="pO" role="37wK5m">
                        <ref role="3cqZAo" node="pv" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="pB" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="pz" role="3clFbw">
                <node concept="2OqwBi" id="pZ" role="2Oq$k0">
                  <node concept="37vLTw" id="q1" role="2Oq$k0">
                    <ref role="3cqZAo" node="pv" resolve="root" />
                  </node>
                  <node concept="liA8E" id="q2" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="q0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="35c_gC" id="q3" role="37wK5m">
                    <ref role="35c_gD" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="pv" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="q4" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="pw" role="1DdaDG">
            <node concept="2OqwBi" id="q5" role="2Oq$k0">
              <node concept="37vLTw" id="q7" role="2Oq$k0">
                <ref role="3cqZAo" node="po" resolve="outline" />
              </node>
              <node concept="liA8E" id="q8" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenModelOutline.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="q6" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="pq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="op" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileName_ActorScript" />
      <node concept="3clFbS" id="q9" role="3clF47">
        <node concept="3cpWs6" id="qd" role="3cqZAp">
          <node concept="2OqwBi" id="qe" role="3cqZAk">
            <node concept="37vLTw" id="qf" role="2Oq$k0">
              <ref role="3cqZAo" node="qc" resolve="node" />
            </node>
            <node concept="liA8E" id="qg" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="qa" role="1B3o_S" />
      <node concept="3uibUv" id="qb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="qc" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="qh" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="oq" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileExtension_ActorScript" />
      <node concept="3clFbS" id="qi" role="3clF47">
        <node concept="3clFbF" id="qm" role="3cqZAp">
          <uo k="s:originTrace" v="n:3865756215866095114" />
          <node concept="Xl_RD" id="qn" role="3clFbG">
            <property role="Xl_RC" value="c" />
            <uo k="s:originTrace" v="n:3865756215866095113" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="qj" role="1B3o_S" />
      <node concept="3uibUv" id="qk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="ql" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="qo" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
</model>

