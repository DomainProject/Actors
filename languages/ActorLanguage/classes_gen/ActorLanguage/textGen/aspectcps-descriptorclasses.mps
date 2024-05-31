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
    <import index="356a" ref="r:3b7ed80f-6cfd-45bc-b051-2f66c620dd27(jetbrains.mps.lang.traceable.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="if8w" ref="r:95397225-9080-48bc-b1aa-0ce7c4f3d2ce(jetbrains.mps.lang.traceable.behavior)" />
    <import index="yfwt" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.rt(MPS.TextGen/)" />
    <import index="tpcf" ref="r:00000000-0000-4000-0000-011c89590293(jetbrains.mps.lang.structure.generator_new.baseLanguage@generator)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
          </node>
        </node>
        <node concept="3clFbF" id="z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1441253086551328386" />
          <node concept="2OqwBi" id="3l" role="3clFbG">
            <uo k="s:originTrace" v="n:1441253086551328386" />
            <node concept="37vLTw" id="3m" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:1441253086551328386" />
            </node>
            <node concept="liA8E" id="3n" role="2OqNvi">
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
          <node concept="2OqwBi" id="3o" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202276" />
            <node concept="37vLTw" id="3p" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
            </node>
            <node concept="liA8E" id="3q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202276" />
          <node concept="2OqwBi" id="3r" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202276" />
            <node concept="37vLTw" id="3s" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
            </node>
            <node concept="liA8E" id="3t" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673202276" />
              <node concept="Xl_RD" id="3u" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_init(&amp;map_mutex, NULL);" />
                <uo k="s:originTrace" v="n:5785115222673202276" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202353" />
          <node concept="2OqwBi" id="3v" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202353" />
            <node concept="37vLTw" id="3w" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202353" />
            </node>
            <node concept="liA8E" id="3x" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673202353" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673202409" />
          <node concept="2OqwBi" id="3y" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673202409" />
            <node concept="37vLTw" id="3z" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673202409" />
            </node>
            <node concept="liA8E" id="3$" role="2OqNvi">
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
          <node concept="2OqwBi" id="3_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="3A" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="3B" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="F" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="3C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="3D" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="3E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
              <node concept="Xl_RD" id="3F" role="37wK5m">
                <property role="Xl_RC" value="map_item *map = malloc(sizeof(map_item)*SIZE);" />
                <uo k="s:originTrace" v="n:3204091364825311359" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="G" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312873" />
          <node concept="2OqwBi" id="3G" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312873" />
            <node concept="37vLTw" id="3H" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
            <node concept="liA8E" id="3I" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="3J" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="3K" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="3L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="I" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="3M" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="3N" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="3O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
              <node concept="Xl_RD" id="3P" role="37wK5m">
                <property role="Xl_RC" value="if (!map) {" />
                <uo k="s:originTrace" v="n:3204091364825326996" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825327053" />
          <node concept="2OqwBi" id="3Q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825327053" />
            <node concept="37vLTw" id="3R" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
            <node concept="liA8E" id="3S" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="3T" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="3U" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="3W" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="3Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="3Z" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="3X" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="3V" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="40" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="41" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="42" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="43" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="44" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="45" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
              <node concept="Xl_RD" id="46" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;malloc&quot;);" />
                <uo k="s:originTrace" v="n:3204091364825334588" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334757" />
          <node concept="2OqwBi" id="47" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334757" />
            <node concept="37vLTw" id="48" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
            <node concept="liA8E" id="49" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="4a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="4b" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="4c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="4d" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="4e" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="4f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
              <node concept="Xl_RD" id="4g" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364825334891" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334948" />
          <node concept="2OqwBi" id="4h" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334948" />
            <node concept="37vLTw" id="4i" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
            <node concept="liA8E" id="4j" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="4k" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="4l" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="4n" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="4p" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="4q" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="4o" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="4m" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="S" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="4r" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="4s" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="4t" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="4u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="4v" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="4w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
              <node concept="Xl_RD" id="4x" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825342497" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342574" />
          <node concept="2OqwBi" id="4y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342574" />
            <node concept="37vLTw" id="4z" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
            <node concept="liA8E" id="4$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342630" />
          <node concept="2OqwBi" id="4_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342630" />
            <node concept="37vLTw" id="4A" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
            <node concept="liA8E" id="4B" role="2OqNvi">
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
          <node concept="2OqwBi" id="4C" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674028520" />
            <node concept="37vLTw" id="4D" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
            </node>
            <node concept="liA8E" id="4E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674028520" />
          <node concept="2OqwBi" id="4F" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674028520" />
            <node concept="37vLTw" id="4G" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
            </node>
            <node concept="liA8E" id="4H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222674028520" />
              <node concept="Xl_RD" id="4I" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; SIZE; ++i) {" />
                <uo k="s:originTrace" v="n:5785115222674028520" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674028577" />
          <node concept="2OqwBi" id="4J" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674028577" />
            <node concept="37vLTw" id="4K" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674028577" />
            </node>
            <node concept="liA8E" id="4L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222674028577" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674037512" />
          <node concept="2OqwBi" id="4M" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674037512" />
            <node concept="2OqwBi" id="4N" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222674037512" />
              <node concept="2OqwBi" id="4P" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222674037512" />
                <node concept="37vLTw" id="4R" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
                <node concept="liA8E" id="4S" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
              </node>
              <node concept="liA8E" id="4Q" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222674037512" />
              </node>
            </node>
            <node concept="liA8E" id="4O" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222674037512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674038936" />
          <node concept="2OqwBi" id="4T" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674038936" />
            <node concept="37vLTw" id="4U" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
            </node>
            <node concept="liA8E" id="4V" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674038936" />
          <node concept="2OqwBi" id="4W" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674038936" />
            <node concept="37vLTw" id="4X" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
            </node>
            <node concept="liA8E" id="4Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222674038936" />
              <node concept="Xl_RD" id="4Z" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_init(&amp;map[i].mutex, NULL);" />
                <uo k="s:originTrace" v="n:5785115222674038936" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674039014" />
          <node concept="2OqwBi" id="50" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674039014" />
            <node concept="37vLTw" id="51" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674039014" />
            </node>
            <node concept="liA8E" id="52" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222674039014" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674037512" />
          <node concept="2OqwBi" id="53" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674037512" />
            <node concept="2OqwBi" id="54" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222674037512" />
              <node concept="2OqwBi" id="56" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222674037512" />
                <node concept="37vLTw" id="58" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
                <node concept="liA8E" id="59" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222674037512" />
                </node>
              </node>
              <node concept="liA8E" id="57" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222674037512" />
              </node>
            </node>
            <node concept="liA8E" id="55" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222674037512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674041843" />
          <node concept="2OqwBi" id="5a" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674041843" />
            <node concept="37vLTw" id="5b" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
            </node>
            <node concept="liA8E" id="5c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674041843" />
          <node concept="2OqwBi" id="5d" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674041843" />
            <node concept="37vLTw" id="5e" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
            </node>
            <node concept="liA8E" id="5f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222674041843" />
              <node concept="Xl_RD" id="5g" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222674041843" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222674041943" />
          <node concept="2OqwBi" id="5h" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222674041943" />
            <node concept="37vLTw" id="5i" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222674041943" />
            </node>
            <node concept="liA8E" id="5j" role="2OqNvi">
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
          <node concept="2GrKxI" id="5k" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:5785115222671146702" />
          </node>
          <node concept="2OqwBi" id="5l" role="2GsD0m">
            <uo k="s:originTrace" v="n:5785115222671148377" />
            <node concept="2OqwBi" id="5n" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222671147836" />
              <node concept="37vLTw" id="5p" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="5q" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5o" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:5785115222671149591" />
            </node>
          </node>
          <node concept="3clFbS" id="5m" role="2LFqv$">
            <uo k="s:originTrace" v="n:5785115222671146706" />
          </node>
        </node>
        <node concept="3clFbH" id="1a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311387" />
        </node>
        <node concept="3clFbF" id="1b" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222672467900" />
          <node concept="2OqwBi" id="5r" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222672467900" />
            <node concept="37vLTw" id="5s" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222672467900" />
            </node>
            <node concept="liA8E" id="5t" role="2OqNvi">
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
          <node concept="2OqwBi" id="5u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="5v" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="5w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="5x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="5y" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="5z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
              <node concept="Xl_RD" id="5$" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825540062" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540208" />
          <node concept="2OqwBi" id="5_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540208" />
            <node concept="37vLTw" id="5A" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
            <node concept="liA8E" id="5B" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="5C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="5D" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="5F" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="5H" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="5I" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="5G" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="5E" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="5J" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="5K" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="5L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="5M" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="5N" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="5O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
              <node concept="Xl_RD" id="5P" role="37wK5m">
                <property role="Xl_RC" value="pthread_join(threads[i], NULL);" />
                <uo k="s:originTrace" v="n:3204091364825550168" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550222" />
          <node concept="2OqwBi" id="5Q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550222" />
            <node concept="37vLTw" id="5R" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
            <node concept="liA8E" id="5S" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="5T" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="5U" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="5W" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="5Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="5Z" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="5X" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="5V" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="60" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="61" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="62" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="63" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="64" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="65" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
              <node concept="Xl_RD" id="66" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825569047" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569124" />
          <node concept="2OqwBi" id="67" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569124" />
            <node concept="37vLTw" id="68" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
            <node concept="liA8E" id="69" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569180" />
          <node concept="2OqwBi" id="6a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569180" />
            <node concept="37vLTw" id="6b" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
            <node concept="liA8E" id="6c" role="2OqNvi">
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
          <node concept="2OqwBi" id="6d" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673191711" />
            <node concept="37vLTw" id="6e" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
            </node>
            <node concept="liA8E" id="6f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1r" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673191711" />
          <node concept="2OqwBi" id="6g" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673191711" />
            <node concept="37vLTw" id="6h" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
            </node>
            <node concept="liA8E" id="6i" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673191711" />
              <node concept="Xl_RD" id="6j" role="37wK5m">
                <property role="Xl_RC" value="free(map);" />
                <uo k="s:originTrace" v="n:5785115222673191711" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1s" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673191834" />
          <node concept="2OqwBi" id="6k" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673191834" />
            <node concept="37vLTw" id="6l" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673191834" />
            </node>
            <node concept="liA8E" id="6m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673191834" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1t" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="6n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="6o" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="6p" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1u" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="6q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="6r" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="6s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
              <node concept="Xl_RD" id="6t" role="37wK5m">
                <property role="Xl_RC" value="return 0;" />
                <uo k="s:originTrace" v="n:3204091364825571490" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825573885" />
          <node concept="2OqwBi" id="6u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825573885" />
            <node concept="37vLTw" id="6v" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
            <node concept="liA8E" id="6w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1w" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="6x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="6y" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="6$" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="6A" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="6B" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="6_" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="6z" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1x" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825583909" />
          <node concept="2OqwBi" id="6C" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825583909" />
            <node concept="37vLTw" id="6D" role="2Oq$k0">
              <ref role="3cqZAo" node="1y" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
            </node>
            <node concept="liA8E" id="6E" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
              <node concept="Xl_RD" id="6F" role="37wK5m">
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
        <node concept="3uibUv" id="6G" role="1tU5fm">
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
  <node concept="312cEu" id="6H">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="CreateActor_TextGen" />
    <property role="3GE5qa" value="actor" />
    <uo k="s:originTrace" v="n:3204091364823173251" />
    <node concept="3Tm1VV" id="6I" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3uibUv" id="6J" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3clFb_" id="6K" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
      <node concept="3cqZAl" id="6L" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3Tm1VV" id="6M" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3clFbS" id="6N" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3cpWs8" id="6Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173251" />
          <node concept="3cpWsn" id="72" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="3uibUv" id="73" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
            <node concept="2ShNRf" id="74" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823173251" />
              <node concept="1pGfFk" id="75" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823173251" />
                <node concept="37vLTw" id="76" role="37wK5m">
                  <ref role="3cqZAo" node="6O" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823173251" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173251" />
          <node concept="2OqwBi" id="77" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="37vLTw" id="78" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
            <node concept="liA8E" id="79" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.createPositionInfo()" resolve="createPositionInfo" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6S" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105394426" />
        </node>
        <node concept="3clFbF" id="6T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173308" />
          <node concept="2OqwBi" id="7a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173308" />
            <node concept="37vLTw" id="7b" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
            </node>
            <node concept="liA8E" id="7c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
              <node concept="Xl_RD" id="7d" role="37wK5m">
                <property role="Xl_RC" value="void *" />
                <uo k="s:originTrace" v="n:3204091364823173308" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173477" />
          <node concept="2OqwBi" id="7e" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173477" />
            <node concept="37vLTw" id="7f" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
            </node>
            <node concept="liA8E" id="7g" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
              <node concept="2OqwBi" id="7h" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364823173986" />
                <node concept="2OqwBi" id="7i" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364823173513" />
                  <node concept="37vLTw" id="7k" role="2Oq$k0">
                    <ref role="3cqZAo" node="6O" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="7l" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7j" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364823181405" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181644" />
          <node concept="2OqwBi" id="7m" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181644" />
            <node concept="37vLTw" id="7n" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
            </node>
            <node concept="liA8E" id="7o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
              <node concept="Xl_RD" id="7p" role="37wK5m">
                <property role="Xl_RC" value="(void *arg) {" />
                <uo k="s:originTrace" v="n:3204091364823181644" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181871" />
          <node concept="2OqwBi" id="7q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181871" />
            <node concept="37vLTw" id="7r" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
            <node concept="liA8E" id="7s" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6X" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="7t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="7u" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="7v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="7w" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="7x" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="7y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
              <node concept="Xl_RD" id="7z" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364823191220" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612579" />
          <node concept="2OqwBi" id="7$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612579" />
            <node concept="37vLTw" id="7_" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
            <node concept="liA8E" id="7A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612635" />
          <node concept="2OqwBi" id="7B" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612635" />
            <node concept="37vLTw" id="7C" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
            <node concept="liA8E" id="7D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="71" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173251" />
          <node concept="3clFbS" id="7E" role="3clFbx">
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="3clFbF" id="7G" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364823173251" />
              <node concept="2OqwBi" id="7H" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364823173251" />
                <node concept="37vLTw" id="7I" role="2Oq$k0">
                  <ref role="3cqZAo" node="72" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364823173251" />
                </node>
                <node concept="liA8E" id="7J" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.fillPositionInfo(java.lang.String)" resolve="fillPositionInfo" />
                  <uo k="s:originTrace" v="n:3204091364823173251" />
                  <node concept="2OqwBi" id="7K" role="37wK5m">
                    <uo k="s:originTrace" v="n:3204091364823173251" />
                    <node concept="1PxgMI" id="7L" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364823173251" />
                      <node concept="2OqwBi" id="7N" role="1m5AlR">
                        <uo k="s:originTrace" v="n:3204091364823173251" />
                        <node concept="37vLTw" id="7P" role="2Oq$k0">
                          <ref role="3cqZAo" node="6O" resolve="ctx" />
                          <uo k="s:originTrace" v="n:3204091364823173251" />
                        </node>
                        <node concept="liA8E" id="7Q" role="2OqNvi">
                          <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                          <uo k="s:originTrace" v="n:3204091364823173251" />
                        </node>
                      </node>
                      <node concept="chp4Y" id="7O" role="3oSUPX">
                        <ref role="cht4Q" to="356a:4pl5GY7LKmz" resolve="TraceableConcept" />
                        <uo k="s:originTrace" v="n:3204091364823173251" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="7M" role="2OqNvi">
                      <ref role="37wK5l" to="if8w:4pl5GY7LKmH" resolve="getTraceableProperty" />
                      <uo k="s:originTrace" v="n:3204091364823173251" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7F" role="3clFbw">
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="37vLTw" id="7R" role="2Oq$k0">
              <ref role="3cqZAo" node="72" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
            <node concept="liA8E" id="7S" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.needPositions()" resolve="needPositions" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6O" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3uibUv" id="7T" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823173251" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7U">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="CreateBehavior_TextGen" />
    <property role="3GE5qa" value="behavior" />
    <uo k="s:originTrace" v="n:711157185105398139" />
    <node concept="3Tm1VV" id="7V" role="1B3o_S">
      <uo k="s:originTrace" v="n:711157185105398139" />
    </node>
    <node concept="3uibUv" id="7W" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:711157185105398139" />
    </node>
    <node concept="3clFb_" id="7X" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:711157185105398139" />
      <node concept="3cqZAl" id="7Y" role="3clF45">
        <uo k="s:originTrace" v="n:711157185105398139" />
      </node>
      <node concept="3Tm1VV" id="7Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:711157185105398139" />
      </node>
      <node concept="3clFbS" id="80" role="3clF47">
        <uo k="s:originTrace" v="n:711157185105398139" />
        <node concept="3cpWs8" id="83" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105398139" />
          <node concept="3cpWsn" id="85" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:711157185105398139" />
            <node concept="3uibUv" id="86" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:711157185105398139" />
            </node>
            <node concept="2ShNRf" id="87" role="33vP2m">
              <uo k="s:originTrace" v="n:711157185105398139" />
              <node concept="1pGfFk" id="88" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:711157185105398139" />
                <node concept="37vLTw" id="89" role="37wK5m">
                  <ref role="3cqZAo" node="81" resolve="ctx" />
                  <uo k="s:originTrace" v="n:711157185105398139" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="84" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105398168" />
          <node concept="2GrKxI" id="8a" role="2Gsz3X">
            <property role="TrG5h" value="action" />
            <uo k="s:originTrace" v="n:711157185105398169" />
          </node>
          <node concept="2OqwBi" id="8b" role="2GsD0m">
            <uo k="s:originTrace" v="n:711157185105398885" />
            <node concept="2OqwBi" id="8d" role="2Oq$k0">
              <uo k="s:originTrace" v="n:711157185105398302" />
              <node concept="37vLTw" id="8f" role="2Oq$k0">
                <ref role="3cqZAo" node="81" resolve="ctx" />
              </node>
              <node concept="liA8E" id="8g" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="8e" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
              <uo k="s:originTrace" v="n:711157185105400296" />
            </node>
          </node>
          <node concept="3clFbS" id="8c" role="2LFqv$">
            <uo k="s:originTrace" v="n:711157185105398171" />
            <node concept="3clFbF" id="8h" role="3cqZAp">
              <uo k="s:originTrace" v="n:711157185105400614" />
              <node concept="2OqwBi" id="8i" role="3clFbG">
                <uo k="s:originTrace" v="n:711157185105400614" />
                <node concept="37vLTw" id="8j" role="2Oq$k0">
                  <ref role="3cqZAo" node="85" resolve="tgs" />
                  <uo k="s:originTrace" v="n:711157185105400614" />
                </node>
                <node concept="liA8E" id="8k" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:711157185105400614" />
                  <node concept="2GrUjf" id="8l" role="37wK5m">
                    <ref role="2Gs0qQ" node="8a" resolve="action" />
                    <uo k="s:originTrace" v="n:711157185105400649" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="81" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:711157185105398139" />
        <node concept="3uibUv" id="8m" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:711157185105398139" />
        </node>
      </node>
      <node concept="2AHcQZ" id="82" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:711157185105398139" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8n">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="CreateMessage_TextGen" />
    <property role="3GE5qa" value="message" />
    <uo k="s:originTrace" v="n:3204091364824420186" />
    <node concept="3Tm1VV" id="8o" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3uibUv" id="8p" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3clFb_" id="8q" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
      <node concept="3cqZAl" id="8r" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3Tm1VV" id="8s" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3clFbS" id="8t" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3cpWs8" id="8w" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420186" />
          <node concept="3cpWsn" id="8A" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="3uibUv" id="8B" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
            <node concept="2ShNRf" id="8C" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364824420186" />
              <node concept="1pGfFk" id="8D" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364824420186" />
                <node concept="37vLTw" id="8E" role="37wK5m">
                  <ref role="3cqZAo" node="8u" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824420186" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8x" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420186" />
          <node concept="2OqwBi" id="8F" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="37vLTw" id="8G" role="2Oq$k0">
              <ref role="3cqZAo" node="8A" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
            <node concept="liA8E" id="8H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.createPositionInfo()" resolve="createPositionInfo" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="8I" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="8J" role="2Oq$k0">
              <ref role="3cqZAo" node="8A" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="8K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="8L" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="8M" role="2Oq$k0">
              <ref role="3cqZAo" node="8A" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="8N" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
              <node concept="Xl_RD" id="8O" role="37wK5m">
                <property role="Xl_RC" value="// message to send" />
                <uo k="s:originTrace" v="n:3204091364824896554" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896654" />
          <node concept="2OqwBi" id="8P" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896654" />
            <node concept="37vLTw" id="8Q" role="2Oq$k0">
              <ref role="3cqZAo" node="8A" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
            <node concept="liA8E" id="8R" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="8_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420186" />
          <node concept="3clFbS" id="8S" role="3clFbx">
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="3clFbF" id="8U" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364824420186" />
              <node concept="2OqwBi" id="8V" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364824420186" />
                <node concept="37vLTw" id="8W" role="2Oq$k0">
                  <ref role="3cqZAo" node="8A" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364824420186" />
                </node>
                <node concept="liA8E" id="8X" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.fillPositionInfo(java.lang.String)" resolve="fillPositionInfo" />
                  <uo k="s:originTrace" v="n:3204091364824420186" />
                  <node concept="2OqwBi" id="8Y" role="37wK5m">
                    <uo k="s:originTrace" v="n:3204091364824420186" />
                    <node concept="1PxgMI" id="8Z" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364824420186" />
                      <node concept="2OqwBi" id="91" role="1m5AlR">
                        <uo k="s:originTrace" v="n:3204091364824420186" />
                        <node concept="37vLTw" id="93" role="2Oq$k0">
                          <ref role="3cqZAo" node="8u" resolve="ctx" />
                          <uo k="s:originTrace" v="n:3204091364824420186" />
                        </node>
                        <node concept="liA8E" id="94" role="2OqNvi">
                          <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                          <uo k="s:originTrace" v="n:3204091364824420186" />
                        </node>
                      </node>
                      <node concept="chp4Y" id="92" role="3oSUPX">
                        <ref role="cht4Q" to="356a:4pl5GY7LKmz" resolve="TraceableConcept" />
                        <uo k="s:originTrace" v="n:3204091364824420186" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="90" role="2OqNvi">
                      <ref role="37wK5l" to="if8w:4pl5GY7LKmH" resolve="getTraceableProperty" />
                      <uo k="s:originTrace" v="n:3204091364824420186" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="8T" role="3clFbw">
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="37vLTw" id="95" role="2Oq$k0">
              <ref role="3cqZAo" node="8A" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
            <node concept="liA8E" id="96" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.needPositions()" resolve="needPositions" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="8u" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3uibUv" id="97" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364824420186" />
        </node>
      </node>
      <node concept="2AHcQZ" id="8v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="98">
    <node concept="39e2AJ" id="99" role="39e2AI">
      <property role="39e3Y2" value="GetExtension" />
      <node concept="39e2AG" id="9e" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="9f" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="9h" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="9g" role="39e2AY">
          <ref role="39e2AS" node="nN" resolve="getFileExtension_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="9a" role="39e2AI">
      <property role="39e3Y2" value="GetFilename" />
      <node concept="39e2AG" id="9i" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="9j" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="9l" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="9k" role="39e2AY">
          <ref role="39e2AS" node="nM" resolve="getFileName_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="9b" role="39e2AI">
      <property role="39e3Y2" value="LanguageUtilityClass" />
      <node concept="39e2AG" id="9m" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1Vca2fl" resolve="Initialization" />
        <node concept="385nmt" id="9n" role="385vvn">
          <property role="385vuF" value="Initialization" />
          <node concept="3u3nmq" id="9p" role="385v07">
            <property role="3u3nmv" value="3204091364822754261" />
          </node>
        </node>
        <node concept="39e2AT" id="9o" role="39e2AY">
          <ref role="39e2AS" node="9O" resolve="Initialization" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="9c" role="39e2AI">
      <property role="39e3Y2" value="TextGenClass" />
      <node concept="39e2AG" id="9q" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="9w" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="9y" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="9x" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ActorScript_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="9r" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcbCy3" resolve="CreateActor_TextGen" />
        <node concept="385nmt" id="9z" role="385vvn">
          <property role="385vuF" value="CreateActor_TextGen" />
          <node concept="3u3nmq" id="9_" role="385v07">
            <property role="3u3nmv" value="3204091364823173251" />
          </node>
        </node>
        <node concept="39e2AT" id="9$" role="39e2AY">
          <ref role="39e2AS" node="6H" resolve="CreateActor_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="9s" role="39e3Y0">
        <ref role="39e2AK" to="haeo:Buyr4_F8_V" resolve="CreateBehavior_TextGen" />
        <node concept="385nmt" id="9A" role="385vvn">
          <property role="385vuF" value="CreateBehavior_TextGen" />
          <node concept="3u3nmq" id="9C" role="385v07">
            <property role="3u3nmv" value="711157185105398139" />
          </node>
        </node>
        <node concept="39e2AT" id="9B" role="39e2AY">
          <ref role="39e2AS" node="7U" resolve="CreateBehavior_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="9t" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcgoXq" resolve="CreateMessage_TextGen" />
        <node concept="385nmt" id="9D" role="385vvn">
          <property role="385vuF" value="CreateMessage_TextGen" />
          <node concept="3u3nmq" id="9F" role="385v07">
            <property role="3u3nmv" value="3204091364824420186" />
          </node>
        </node>
        <node concept="39e2AT" id="9E" role="39e2AY">
          <ref role="39e2AS" node="8n" resolve="CreateMessage_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="9u" role="39e3Y0">
        <ref role="39e2AK" to="haeo:Buyr4_FAxG" resolve="SelectBehavior_TextGen" />
        <node concept="385nmt" id="9G" role="385vvn">
          <property role="385vuF" value="SelectBehavior_TextGen" />
          <node concept="3u3nmq" id="9I" role="385v07">
            <property role="3u3nmv" value="711157185105520748" />
          </node>
        </node>
        <node concept="39e2AT" id="9H" role="39e2AY">
          <ref role="39e2AS" node="jS" resolve="SelectBehavior_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="9v" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VceMmW" resolve="SendMessage_TextGen" />
        <node concept="385nmt" id="9J" role="385vvn">
          <property role="385vuF" value="SendMessage_TextGen" />
          <node concept="3u3nmq" id="9L" role="385v07">
            <property role="3u3nmv" value="3204091364823999932" />
          </node>
        </node>
        <node concept="39e2AT" id="9K" role="39e2AY">
          <ref role="39e2AS" node="kh" resolve="SendMessage_TextGen" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="9d" role="39e2AI">
      <property role="39e3Y2" value="TextGenAspectDescriptorCons" />
      <node concept="39e2AG" id="9M" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="9N" role="39e2AY">
          <ref role="39e2AS" node="nF" resolve="TextGenAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9O">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="Initialization" />
    <uo k="s:originTrace" v="n:3204091364822754261" />
    <node concept="3Tm1VV" id="9P" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364822754261" />
    </node>
    <node concept="2YIFZL" id="9Q" role="jymVt">
      <property role="TrG5h" value="init" />
      <uo k="s:originTrace" v="n:3204091364822754261" />
      <node concept="3cqZAl" id="9R" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3Tm1VV" id="9S" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3clFbS" id="9T" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3cpWs8" id="9V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754261" />
          <node concept="3cpWsn" id="ca" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364822754261" />
            <node concept="3uibUv" id="cb" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364822754261" />
            </node>
            <node concept="2ShNRf" id="cc" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364822754261" />
              <node concept="1pGfFk" id="cd" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364822754261" />
                <node concept="37vLTw" id="ce" role="37wK5m">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822754261" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754369" />
          <node concept="2OqwBi" id="cf" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754369" />
            <node concept="37vLTw" id="cg" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
            </node>
            <node concept="liA8E" id="ch" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
              <node concept="Xl_RD" id="ci" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdio.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754369" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9X" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882556" />
          <node concept="2OqwBi" id="cj" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882556" />
            <node concept="37vLTw" id="ck" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
            <node concept="liA8E" id="cl" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754506" />
          <node concept="2OqwBi" id="cm" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754506" />
            <node concept="37vLTw" id="cn" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
            </node>
            <node concept="liA8E" id="co" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
              <node concept="Xl_RD" id="cp" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdlib.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754506" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882601" />
          <node concept="2OqwBi" id="cq" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882601" />
            <node concept="37vLTw" id="cr" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
            <node concept="liA8E" id="cs" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754555" />
          <node concept="2OqwBi" id="ct" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754555" />
            <node concept="37vLTw" id="cu" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
            </node>
            <node concept="liA8E" id="cv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
              <node concept="Xl_RD" id="cw" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;pthread.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754555" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882645" />
          <node concept="2OqwBi" id="cx" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882645" />
            <node concept="37vLTw" id="cy" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
            <node concept="liA8E" id="cz" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754594" />
          <node concept="2OqwBi" id="c$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754594" />
            <node concept="37vLTw" id="c_" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
            </node>
            <node concept="liA8E" id="cA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
              <node concept="Xl_RD" id="cB" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;unistd.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754594" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882689" />
          <node concept="2OqwBi" id="cC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882689" />
            <node concept="37vLTw" id="cD" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
            <node concept="liA8E" id="cE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754655" />
          <node concept="2OqwBi" id="cF" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754655" />
            <node concept="37vLTw" id="cG" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
            </node>
            <node concept="liA8E" id="cH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
              <node concept="Xl_RD" id="cI" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;string.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754655" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a5" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882714" />
          <node concept="2OqwBi" id="cJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882714" />
            <node concept="37vLTw" id="cK" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
            <node concept="liA8E" id="cL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a6" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882863" />
          <node concept="2OqwBi" id="cM" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882863" />
            <node concept="37vLTw" id="cN" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
            <node concept="liA8E" id="cO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a7" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754823" />
          <node concept="2OqwBi" id="cP" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754823" />
            <node concept="37vLTw" id="cQ" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
            </node>
            <node concept="liA8E" id="cR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
              <node concept="Xl_RD" id="cS" role="37wK5m">
                <property role="Xl_RC" value="#define SIZE 100" />
                <uo k="s:originTrace" v="n:3204091364822754823" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882758" />
          <node concept="2OqwBi" id="cT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882758" />
            <node concept="37vLTw" id="cU" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
            <node concept="liA8E" id="cV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754917" />
          <node concept="2OqwBi" id="cW" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754917" />
            <node concept="37vLTw" id="cX" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
            </node>
            <node concept="liA8E" id="cY" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
              <node concept="Xl_RD" id="cZ" role="37wK5m">
                <property role="Xl_RC" value="#define BUFFER_SIZE 1024" />
                <uo k="s:originTrace" v="n:3204091364822754917" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aa" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882783" />
          <node concept="2OqwBi" id="d0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882783" />
            <node concept="37vLTw" id="d1" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
            <node concept="liA8E" id="d2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ab" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882943" />
          <node concept="2OqwBi" id="d3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882943" />
            <node concept="37vLTw" id="d4" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
            <node concept="liA8E" id="d5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ac" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755293" />
          <node concept="2OqwBi" id="d6" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755293" />
            <node concept="37vLTw" id="d7" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
            </node>
            <node concept="liA8E" id="d8" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
              <node concept="Xl_RD" id="d9" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364822755293" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ad" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882986" />
          <node concept="2OqwBi" id="da" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882986" />
            <node concept="37vLTw" id="db" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
            <node concept="liA8E" id="dc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ae" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="dd" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="de" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="dg" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="di" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="dj" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="dh" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="df" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="af" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="dk" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="dl" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="dm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ag" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="dn" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="do" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="dp" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
              <node concept="Xl_RD" id="dq" role="37wK5m">
                <property role="Xl_RC" value="int address;" />
                <uo k="s:originTrace" v="n:3204091364822755431" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ah" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883011" />
          <node concept="2OqwBi" id="dr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883011" />
            <node concept="37vLTw" id="ds" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
            <node concept="liA8E" id="dt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ai" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="du" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="dv" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="dw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aj" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="dx" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="dy" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="dz" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
              <node concept="Xl_RD" id="d$" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364822755512" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ak" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883036" />
          <node concept="2OqwBi" id="d_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883036" />
            <node concept="37vLTw" id="dA" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
            <node concept="liA8E" id="dB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="al" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198789" />
          <node concept="2OqwBi" id="dC" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198789" />
            <node concept="37vLTw" id="dD" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
            <node concept="liA8E" id="dE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="am" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198789" />
          <node concept="2OqwBi" id="dF" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198789" />
            <node concept="37vLTw" id="dG" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
            </node>
            <node concept="liA8E" id="dH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301198789" />
              <node concept="Xl_RD" id="dI" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_t mutex;" />
                <uo k="s:originTrace" v="n:5167209971301198789" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="an" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301198833" />
          <node concept="2OqwBi" id="dJ" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301198833" />
            <node concept="37vLTw" id="dK" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301198833" />
            </node>
            <node concept="liA8E" id="dL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301198833" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ao" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="dM" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="dN" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="dP" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="dR" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="dS" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="dQ" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="dO" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ap" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755564" />
          <node concept="2OqwBi" id="dT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755564" />
            <node concept="37vLTw" id="dU" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
            </node>
            <node concept="liA8E" id="dV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
              <node concept="Xl_RD" id="dW" role="37wK5m">
                <property role="Xl_RC" value="} map_item;" />
                <uo k="s:originTrace" v="n:3204091364822755564" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124161" />
          <node concept="2OqwBi" id="dX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124161" />
            <node concept="37vLTw" id="dY" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
            <node concept="liA8E" id="dZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ar" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124169" />
          <node concept="2OqwBi" id="e0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124169" />
            <node concept="37vLTw" id="e1" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
            <node concept="liA8E" id="e2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="as" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025775" />
        </node>
        <node concept="3clFbF" id="at" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025955" />
          <node concept="2OqwBi" id="e3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823025955" />
            <node concept="37vLTw" id="e4" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
            </node>
            <node concept="liA8E" id="e5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
              <node concept="Xl_RD" id="e6" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364823025955" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="au" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124116" />
          <node concept="2OqwBi" id="e7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124116" />
            <node concept="37vLTw" id="e8" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
            <node concept="liA8E" id="e9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="av" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="ea" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="eb" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="ed" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="ef" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="eg" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="ee" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="ec" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="eh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="ei" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="ej" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ax" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="ek" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="el" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="em" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
              <node concept="Xl_RD" id="en" role="37wK5m">
                <property role="Xl_RC" value="map_item *map;" />
                <uo k="s:originTrace" v="n:3204091364823026094" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ay" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026235" />
          <node concept="2OqwBi" id="eo" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026235" />
            <node concept="37vLTw" id="ep" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
            <node concept="liA8E" id="eq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="az" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="er" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="es" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="et" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="eu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="ev" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="ew" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
              <node concept="Xl_RD" id="ex" role="37wK5m">
                <property role="Xl_RC" value="int read_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026283" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026390" />
          <node concept="2OqwBi" id="ey" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026390" />
            <node concept="37vLTw" id="ez" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
            <node concept="liA8E" id="e$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="e_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="eA" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="eB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="eC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="eD" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="eE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
              <node concept="Xl_RD" id="eF" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026442" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026591" />
          <node concept="2OqwBi" id="eG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026591" />
            <node concept="37vLTw" id="eH" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
            <node concept="liA8E" id="eI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="eJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="eK" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="eM" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="eO" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="eP" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="eN" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="eL" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027309" />
          <node concept="2OqwBi" id="eQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027309" />
            <node concept="37vLTw" id="eR" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
            </node>
            <node concept="liA8E" id="eS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
              <node concept="Xl_RD" id="eT" role="37wK5m">
                <property role="Xl_RC" value="} ThreadData;" />
                <uo k="s:originTrace" v="n:3204091364823027309" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027467" />
          <node concept="2OqwBi" id="eU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027467" />
            <node concept="37vLTw" id="eV" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
            <node concept="liA8E" id="eW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124367" />
          <node concept="2OqwBi" id="eX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124367" />
            <node concept="37vLTw" id="eY" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
            <node concept="liA8E" id="eZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670858499" />
        </node>
        <node concept="3clFbF" id="aI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673176353" />
          <node concept="2OqwBi" id="f0" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673176353" />
            <node concept="37vLTw" id="f1" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673176353" />
            </node>
            <node concept="liA8E" id="f2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673176353" />
              <node concept="Xl_RD" id="f3" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_t map_mutex;" />
                <uo k="s:originTrace" v="n:5785115222673176353" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673176400" />
          <node concept="2OqwBi" id="f4" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673176400" />
            <node concept="37vLTw" id="f5" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673176400" />
            </node>
            <node concept="liA8E" id="f6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673176400" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aK" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673176408" />
          <node concept="2OqwBi" id="f7" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673176408" />
            <node concept="37vLTw" id="f8" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673176408" />
            </node>
            <node concept="liA8E" id="f9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673176408" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aL" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175954" />
        </node>
        <node concept="3clFbF" id="aM" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670858852" />
          <node concept="2OqwBi" id="fa" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670858852" />
            <node concept="37vLTw" id="fb" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670858852" />
            </node>
            <node concept="liA8E" id="fc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670858852" />
              <node concept="Xl_RD" id="fd" role="37wK5m">
                <property role="Xl_RC" value="void create_thread(int address, map_item *map, void *(*start_routine) (void *), pthread_t *thread) {" />
                <uo k="s:originTrace" v="n:5785115222670858852" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aN" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670858896" />
          <node concept="2OqwBi" id="fe" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670858896" />
            <node concept="37vLTw" id="ff" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670858896" />
            </node>
            <node concept="liA8E" id="fg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670858896" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859028" />
          <node concept="2OqwBi" id="fh" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859028" />
            <node concept="2OqwBi" id="fi" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859028" />
              <node concept="2OqwBi" id="fk" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859028" />
                <node concept="37vLTw" id="fm" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
                <node concept="liA8E" id="fn" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
              </node>
              <node concept="liA8E" id="fl" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859028" />
              </node>
            </node>
            <node concept="liA8E" id="fj" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859028" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aP" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859266" />
          <node concept="2OqwBi" id="fo" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859266" />
            <node concept="37vLTw" id="fp" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
            </node>
            <node concept="liA8E" id="fq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859266" />
          <node concept="2OqwBi" id="fr" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859266" />
            <node concept="37vLTw" id="fs" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
            </node>
            <node concept="liA8E" id="ft" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859266" />
              <node concept="Xl_RD" id="fu" role="37wK5m">
                <property role="Xl_RC" value="ThreadData *thread_data = malloc(sizeof(ThreadData));" />
                <uo k="s:originTrace" v="n:5785115222670859266" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aR" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859291" />
          <node concept="2OqwBi" id="fv" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859291" />
            <node concept="37vLTw" id="fw" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859291" />
            </node>
            <node concept="liA8E" id="fx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859291" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aS" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172167" />
          <node concept="2OqwBi" id="fy" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172167" />
            <node concept="37vLTw" id="fz" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
            </node>
            <node concept="liA8E" id="f$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172167" />
          <node concept="2OqwBi" id="f_" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172167" />
            <node concept="37vLTw" id="fA" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
            </node>
            <node concept="liA8E" id="fB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172167" />
              <node concept="Xl_RD" id="fC" role="37wK5m">
                <property role="Xl_RC" value="if (!thread_data) {" />
                <uo k="s:originTrace" v="n:5785115222673172167" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172269" />
          <node concept="2OqwBi" id="fD" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172269" />
            <node concept="37vLTw" id="fE" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172269" />
            </node>
            <node concept="liA8E" id="fF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172269" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172356" />
          <node concept="2OqwBi" id="fG" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172356" />
            <node concept="2OqwBi" id="fH" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673172356" />
              <node concept="2OqwBi" id="fJ" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673172356" />
                <node concept="37vLTw" id="fL" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
                <node concept="liA8E" id="fM" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
              </node>
              <node concept="liA8E" id="fK" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673172356" />
              </node>
            </node>
            <node concept="liA8E" id="fI" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673172356" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aW" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172448" />
          <node concept="2OqwBi" id="fN" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172448" />
            <node concept="37vLTw" id="fO" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
            </node>
            <node concept="liA8E" id="fP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aX" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172448" />
          <node concept="2OqwBi" id="fQ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172448" />
            <node concept="37vLTw" id="fR" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
            </node>
            <node concept="liA8E" id="fS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172448" />
              <node concept="Xl_RD" id="fT" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;malloc&quot;);" />
                <uo k="s:originTrace" v="n:5785115222673172448" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172511" />
          <node concept="2OqwBi" id="fU" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172511" />
            <node concept="37vLTw" id="fV" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172511" />
            </node>
            <node concept="liA8E" id="fW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172511" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172584" />
          <node concept="2OqwBi" id="fX" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172584" />
            <node concept="37vLTw" id="fY" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
            </node>
            <node concept="liA8E" id="fZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b0" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172584" />
          <node concept="2OqwBi" id="g0" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172584" />
            <node concept="37vLTw" id="g1" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
            </node>
            <node concept="liA8E" id="g2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172584" />
              <node concept="Xl_RD" id="g3" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:5785115222673172584" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b1" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172647" />
          <node concept="2OqwBi" id="g4" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172647" />
            <node concept="37vLTw" id="g5" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172647" />
            </node>
            <node concept="liA8E" id="g6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172647" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b2" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172356" />
          <node concept="2OqwBi" id="g7" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172356" />
            <node concept="2OqwBi" id="g8" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673172356" />
              <node concept="2OqwBi" id="ga" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673172356" />
                <node concept="37vLTw" id="gc" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
                <node concept="liA8E" id="gd" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673172356" />
                </node>
              </node>
              <node concept="liA8E" id="gb" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673172356" />
              </node>
            </node>
            <node concept="liA8E" id="g9" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673172356" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b3" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172821" />
          <node concept="2OqwBi" id="ge" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172821" />
            <node concept="37vLTw" id="gf" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
            </node>
            <node concept="liA8E" id="gg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b4" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172821" />
          <node concept="2OqwBi" id="gh" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172821" />
            <node concept="37vLTw" id="gi" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
            </node>
            <node concept="liA8E" id="gj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673172821" />
              <node concept="Xl_RD" id="gk" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222673172821" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b5" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172868" />
          <node concept="2OqwBi" id="gl" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172868" />
            <node concept="37vLTw" id="gm" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172868" />
            </node>
            <node concept="liA8E" id="gn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172868" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b6" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172914" />
          <node concept="2OqwBi" id="go" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673172914" />
            <node concept="37vLTw" id="gp" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673172914" />
            </node>
            <node concept="liA8E" id="gq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673172914" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="b7" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673172938" />
        </node>
        <node concept="3clFbF" id="b8" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859455" />
          <node concept="2OqwBi" id="gr" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859455" />
            <node concept="37vLTw" id="gs" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
            </node>
            <node concept="liA8E" id="gt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b9" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859455" />
          <node concept="2OqwBi" id="gu" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859455" />
            <node concept="37vLTw" id="gv" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
            </node>
            <node concept="liA8E" id="gw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859455" />
              <node concept="Xl_RD" id="gx" role="37wK5m">
                <property role="Xl_RC" value="int pipe_fd[2];" />
                <uo k="s:originTrace" v="n:5785115222670859455" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ba" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859518" />
          <node concept="2OqwBi" id="gy" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859518" />
            <node concept="37vLTw" id="gz" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859518" />
            </node>
            <node concept="liA8E" id="g$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859518" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bb" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859572" />
          <node concept="2OqwBi" id="g_" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859572" />
            <node concept="37vLTw" id="gA" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859572" />
            </node>
            <node concept="liA8E" id="gB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859572" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bc" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859596" />
        </node>
        <node concept="3clFbF" id="bd" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859677" />
          <node concept="2OqwBi" id="gC" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859677" />
            <node concept="37vLTw" id="gD" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
            </node>
            <node concept="liA8E" id="gE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="be" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859677" />
          <node concept="2OqwBi" id="gF" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859677" />
            <node concept="37vLTw" id="gG" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
            </node>
            <node concept="liA8E" id="gH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859677" />
              <node concept="Xl_RD" id="gI" role="37wK5m">
                <property role="Xl_RC" value="if (pipe(pipe_fd)) {" />
                <uo k="s:originTrace" v="n:5785115222670859677" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bf" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859721" />
          <node concept="2OqwBi" id="gJ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859721" />
            <node concept="37vLTw" id="gK" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859721" />
            </node>
            <node concept="liA8E" id="gL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859721" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bg" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859777" />
          <node concept="2OqwBi" id="gM" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859777" />
            <node concept="2OqwBi" id="gN" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859777" />
              <node concept="2OqwBi" id="gP" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859777" />
                <node concept="37vLTw" id="gR" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
                <node concept="liA8E" id="gS" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
              </node>
              <node concept="liA8E" id="gQ" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859777" />
              </node>
            </node>
            <node concept="liA8E" id="gO" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859777" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bh" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859838" />
          <node concept="2OqwBi" id="gT" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859838" />
            <node concept="37vLTw" id="gU" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
            </node>
            <node concept="liA8E" id="gV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bi" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859838" />
          <node concept="2OqwBi" id="gW" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859838" />
            <node concept="37vLTw" id="gX" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
            </node>
            <node concept="liA8E" id="gY" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859838" />
              <node concept="Xl_RD" id="gZ" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pipe&quot;);" />
                <uo k="s:originTrace" v="n:5785115222670859838" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bj" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859882" />
          <node concept="2OqwBi" id="h0" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859882" />
            <node concept="37vLTw" id="h1" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859882" />
            </node>
            <node concept="liA8E" id="h2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670859882" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859955" />
          <node concept="2OqwBi" id="h3" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859955" />
            <node concept="37vLTw" id="h4" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
            </node>
            <node concept="liA8E" id="h5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bl" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859955" />
          <node concept="2OqwBi" id="h6" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859955" />
            <node concept="37vLTw" id="h7" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
            </node>
            <node concept="liA8E" id="h8" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670859955" />
              <node concept="Xl_RD" id="h9" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:5785115222670859955" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bm" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860002" />
          <node concept="2OqwBi" id="ha" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860002" />
            <node concept="37vLTw" id="hb" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860002" />
            </node>
            <node concept="liA8E" id="hc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860002" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bn" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859777" />
          <node concept="2OqwBi" id="hd" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859777" />
            <node concept="2OqwBi" id="he" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859777" />
              <node concept="2OqwBi" id="hg" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859777" />
                <node concept="37vLTw" id="hi" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
                <node concept="liA8E" id="hj" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859777" />
                </node>
              </node>
              <node concept="liA8E" id="hh" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859777" />
              </node>
            </node>
            <node concept="liA8E" id="hf" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859777" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bo" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860114" />
          <node concept="2OqwBi" id="hk" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860114" />
            <node concept="37vLTw" id="hl" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
            </node>
            <node concept="liA8E" id="hm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bp" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860114" />
          <node concept="2OqwBi" id="hn" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860114" />
            <node concept="37vLTw" id="ho" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
            </node>
            <node concept="liA8E" id="hp" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670860114" />
              <node concept="Xl_RD" id="hq" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222670860114" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bq" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860177" />
          <node concept="2OqwBi" id="hr" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860177" />
            <node concept="37vLTw" id="hs" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860177" />
            </node>
            <node concept="liA8E" id="ht" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860177" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="br" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860223" />
          <node concept="2OqwBi" id="hu" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860223" />
            <node concept="37vLTw" id="hv" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860223" />
            </node>
            <node concept="liA8E" id="hw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860223" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bs" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860303" />
        </node>
        <node concept="3clFbF" id="bt" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860413" />
          <node concept="2OqwBi" id="hx" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860413" />
            <node concept="37vLTw" id="hy" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
            </node>
            <node concept="liA8E" id="hz" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bu" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860413" />
          <node concept="2OqwBi" id="h$" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860413" />
            <node concept="37vLTw" id="h_" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
            </node>
            <node concept="liA8E" id="hA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670860413" />
              <node concept="Xl_RD" id="hB" role="37wK5m">
                <property role="Xl_RC" value="thread_data-&gt;read_fd = pipe_fd[0];" />
                <uo k="s:originTrace" v="n:5785115222670860413" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bv" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860476" />
          <node concept="2OqwBi" id="hC" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860476" />
            <node concept="37vLTw" id="hD" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860476" />
            </node>
            <node concept="liA8E" id="hE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860476" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bw" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860605" />
          <node concept="2OqwBi" id="hF" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860605" />
            <node concept="37vLTw" id="hG" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
            </node>
            <node concept="liA8E" id="hH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bx" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860605" />
          <node concept="2OqwBi" id="hI" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860605" />
            <node concept="37vLTw" id="hJ" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
            </node>
            <node concept="liA8E" id="hK" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670860605" />
              <node concept="Xl_RD" id="hL" role="37wK5m">
                <property role="Xl_RC" value="thread_data-&gt;write_fd = pipe_fd[1];" />
                <uo k="s:originTrace" v="n:5785115222670860605" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="by" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860652" />
          <node concept="2OqwBi" id="hM" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860652" />
            <node concept="37vLTw" id="hN" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860652" />
            </node>
            <node concept="liA8E" id="hO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860652" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bz" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860750" />
          <node concept="2OqwBi" id="hP" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670860750" />
            <node concept="37vLTw" id="hQ" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670860750" />
            </node>
            <node concept="liA8E" id="hR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670860750" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="b$" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670860774" />
        </node>
        <node concept="3clFbF" id="b_" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173650" />
          <node concept="2OqwBi" id="hS" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173650" />
            <node concept="37vLTw" id="hT" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
            </node>
            <node concept="liA8E" id="hU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bA" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173650" />
          <node concept="2OqwBi" id="hV" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173650" />
            <node concept="37vLTw" id="hW" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
            </node>
            <node concept="liA8E" id="hX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673173650" />
              <node concept="Xl_RD" id="hY" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_lock(&amp;map_mutex);" />
                <uo k="s:originTrace" v="n:5785115222673173650" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bB" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173698" />
          <node concept="2OqwBi" id="hZ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173698" />
            <node concept="37vLTw" id="i0" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173698" />
            </node>
            <node concept="liA8E" id="i1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673173698" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bC" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173884" />
          <node concept="2OqwBi" id="i2" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173884" />
            <node concept="37vLTw" id="i3" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
            </node>
            <node concept="liA8E" id="i4" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bD" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173884" />
          <node concept="2OqwBi" id="i5" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173884" />
            <node concept="37vLTw" id="i6" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
            </node>
            <node concept="liA8E" id="i7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673173884" />
              <node concept="Xl_RD" id="i8" role="37wK5m">
                <property role="Xl_RC" value="map[address].write_fd = pipe_fd[1];" />
                <uo k="s:originTrace" v="n:5785115222673173884" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bE" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173948" />
          <node concept="2OqwBi" id="i9" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673173948" />
            <node concept="37vLTw" id="ia" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673173948" />
            </node>
            <node concept="liA8E" id="ib" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673173948" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bF" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174141" />
          <node concept="2OqwBi" id="ic" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174141" />
            <node concept="37vLTw" id="id" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
            </node>
            <node concept="liA8E" id="ie" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174141" />
          <node concept="2OqwBi" id="if" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174141" />
            <node concept="37vLTw" id="ig" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
            </node>
            <node concept="liA8E" id="ih" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174141" />
              <node concept="Xl_RD" id="ii" role="37wK5m">
                <property role="Xl_RC" value="if (pthread_mutex_init(&amp;map[address].mutex, NULL) != 0) {" />
                <uo k="s:originTrace" v="n:5785115222673174141" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673762309" />
          <node concept="2OqwBi" id="ij" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673762309" />
            <node concept="37vLTw" id="ik" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673762309" />
            </node>
            <node concept="liA8E" id="il" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673762309" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174265" />
          <node concept="2OqwBi" id="im" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174265" />
            <node concept="2OqwBi" id="in" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673174265" />
              <node concept="2OqwBi" id="ip" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673174265" />
                <node concept="37vLTw" id="ir" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
                <node concept="liA8E" id="is" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
              </node>
              <node concept="liA8E" id="iq" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673174265" />
              </node>
            </node>
            <node concept="liA8E" id="io" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673174265" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174376" />
          <node concept="2OqwBi" id="it" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174376" />
            <node concept="37vLTw" id="iu" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
            </node>
            <node concept="liA8E" id="iv" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bK" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174376" />
          <node concept="2OqwBi" id="iw" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174376" />
            <node concept="37vLTw" id="ix" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
            </node>
            <node concept="liA8E" id="iy" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174376" />
              <node concept="Xl_RD" id="iz" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pthread_mutex_init&quot;);" />
                <uo k="s:originTrace" v="n:5785115222673174376" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bL" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174439" />
          <node concept="2OqwBi" id="i$" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174439" />
            <node concept="37vLTw" id="i_" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174439" />
            </node>
            <node concept="liA8E" id="iA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174439" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bM" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174511" />
          <node concept="2OqwBi" id="iB" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174511" />
            <node concept="37vLTw" id="iC" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
            </node>
            <node concept="liA8E" id="iD" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bN" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174511" />
          <node concept="2OqwBi" id="iE" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174511" />
            <node concept="37vLTw" id="iF" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
            </node>
            <node concept="liA8E" id="iG" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174511" />
              <node concept="Xl_RD" id="iH" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:5785115222673174511" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174688" />
          <node concept="2OqwBi" id="iI" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174688" />
            <node concept="37vLTw" id="iJ" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174688" />
            </node>
            <node concept="liA8E" id="iK" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bP" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174265" />
          <node concept="2OqwBi" id="iL" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174265" />
            <node concept="2OqwBi" id="iM" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222673174265" />
              <node concept="2OqwBi" id="iO" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222673174265" />
                <node concept="37vLTw" id="iQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
                <node concept="liA8E" id="iR" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222673174265" />
                </node>
              </node>
              <node concept="liA8E" id="iP" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222673174265" />
              </node>
            </node>
            <node concept="liA8E" id="iN" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222673174265" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174900" />
          <node concept="2OqwBi" id="iS" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174900" />
            <node concept="37vLTw" id="iT" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
            </node>
            <node concept="liA8E" id="iU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bR" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174900" />
          <node concept="2OqwBi" id="iV" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174900" />
            <node concept="37vLTw" id="iW" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
            </node>
            <node concept="liA8E" id="iX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673174900" />
              <node concept="Xl_RD" id="iY" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222673174900" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bS" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174947" />
          <node concept="2OqwBi" id="iZ" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174947" />
            <node concept="37vLTw" id="j0" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174947" />
            </node>
            <node concept="liA8E" id="j1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174947" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bT" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673174993" />
          <node concept="2OqwBi" id="j2" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673174993" />
            <node concept="37vLTw" id="j3" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673174993" />
            </node>
            <node concept="liA8E" id="j4" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673174993" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bU" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673173220" />
        </node>
        <node concept="3clFbF" id="bV" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861124" />
          <node concept="2OqwBi" id="j5" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861124" />
            <node concept="37vLTw" id="j6" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
            </node>
            <node concept="liA8E" id="j7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bW" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861124" />
          <node concept="2OqwBi" id="j8" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861124" />
            <node concept="37vLTw" id="j9" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
            </node>
            <node concept="liA8E" id="ja" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670861124" />
              <node concept="Xl_RD" id="jb" role="37wK5m">
                <property role="Xl_RC" value="thread_data-&gt;map = map;" />
                <uo k="s:originTrace" v="n:5785115222670861124" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bX" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861171" />
          <node concept="2OqwBi" id="jc" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861171" />
            <node concept="37vLTw" id="jd" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861171" />
            </node>
            <node concept="liA8E" id="je" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670861171" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175113" />
          <node concept="2OqwBi" id="jf" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175113" />
            <node concept="37vLTw" id="jg" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
            </node>
            <node concept="liA8E" id="jh" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175113" />
          <node concept="2OqwBi" id="ji" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175113" />
            <node concept="37vLTw" id="jj" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
            </node>
            <node concept="liA8E" id="jk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222673175113" />
              <node concept="Xl_RD" id="jl" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;map_mutex);" />
                <uo k="s:originTrace" v="n:5785115222673175113" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c0" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175654" />
          <node concept="2OqwBi" id="jm" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175654" />
            <node concept="37vLTw" id="jn" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175654" />
            </node>
            <node concept="liA8E" id="jo" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673175654" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c1" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175114" />
          <node concept="2OqwBi" id="jp" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222673175114" />
            <node concept="37vLTw" id="jq" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222673175114" />
            </node>
            <node concept="liA8E" id="jr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222673175114" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="c2" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222673175017" />
        </node>
        <node concept="3clFbF" id="c3" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861372" />
          <node concept="2OqwBi" id="js" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861372" />
            <node concept="37vLTw" id="jt" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
            </node>
            <node concept="liA8E" id="ju" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c4" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861372" />
          <node concept="2OqwBi" id="jv" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861372" />
            <node concept="37vLTw" id="jw" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
            </node>
            <node concept="liA8E" id="jx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670861372" />
              <node concept="Xl_RD" id="jy" role="37wK5m">
                <property role="Xl_RC" value="pthread_create(thread, NULL, start_routine, (void *)thread_data);" />
                <uo k="s:originTrace" v="n:5785115222670861372" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c5" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670861419" />
          <node concept="2OqwBi" id="jz" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670861419" />
            <node concept="37vLTw" id="j$" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670861419" />
            </node>
            <node concept="liA8E" id="j_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222670861419" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c6" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670859028" />
          <node concept="2OqwBi" id="jA" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670859028" />
            <node concept="2OqwBi" id="jB" role="2Oq$k0">
              <uo k="s:originTrace" v="n:5785115222670859028" />
              <node concept="2OqwBi" id="jD" role="2Oq$k0">
                <uo k="s:originTrace" v="n:5785115222670859028" />
                <node concept="37vLTw" id="jF" role="2Oq$k0">
                  <ref role="3cqZAo" node="9U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
                <node concept="liA8E" id="jG" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:5785115222670859028" />
                </node>
              </node>
              <node concept="liA8E" id="jE" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:5785115222670859028" />
              </node>
            </node>
            <node concept="liA8E" id="jC" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:5785115222670859028" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c7" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222670862186" />
          <node concept="2OqwBi" id="jH" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222670862186" />
            <node concept="37vLTw" id="jI" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222670862186" />
            </node>
            <node concept="liA8E" id="jJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5785115222670862186" />
              <node concept="Xl_RD" id="jK" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:5785115222670862186" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c8" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671349351" />
          <node concept="2OqwBi" id="jL" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222671349351" />
            <node concept="37vLTw" id="jM" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222671349351" />
            </node>
            <node concept="liA8E" id="jN" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222671349351" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c9" role="3cqZAp">
          <uo k="s:originTrace" v="n:5785115222671349397" />
          <node concept="2OqwBi" id="jO" role="3clFbG">
            <uo k="s:originTrace" v="n:5785115222671349397" />
            <node concept="37vLTw" id="jP" role="2Oq$k0">
              <ref role="3cqZAo" node="ca" resolve="tgs" />
              <uo k="s:originTrace" v="n:5785115222671349397" />
            </node>
            <node concept="liA8E" id="jQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5785115222671349397" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9U" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3uibUv" id="jR" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364822754261" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="jS">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SelectBehavior_TextGen" />
    <property role="3GE5qa" value="behavior" />
    <uo k="s:originTrace" v="n:711157185105520748" />
    <node concept="3Tm1VV" id="jT" role="1B3o_S">
      <uo k="s:originTrace" v="n:711157185105520748" />
    </node>
    <node concept="3uibUv" id="jU" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:711157185105520748" />
    </node>
    <node concept="3clFb_" id="jV" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:711157185105520748" />
      <node concept="3cqZAl" id="jW" role="3clF45">
        <uo k="s:originTrace" v="n:711157185105520748" />
      </node>
      <node concept="3Tm1VV" id="jX" role="1B3o_S">
        <uo k="s:originTrace" v="n:711157185105520748" />
      </node>
      <node concept="3clFbS" id="jY" role="3clF47">
        <uo k="s:originTrace" v="n:711157185105520748" />
        <node concept="3cpWs8" id="k1" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105520748" />
          <node concept="3cpWsn" id="k3" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:711157185105520748" />
            <node concept="3uibUv" id="k4" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:711157185105520748" />
            </node>
            <node concept="2ShNRf" id="k5" role="33vP2m">
              <uo k="s:originTrace" v="n:711157185105520748" />
              <node concept="1pGfFk" id="k6" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:711157185105520748" />
                <node concept="37vLTw" id="k7" role="37wK5m">
                  <ref role="3cqZAo" node="jZ" resolve="ctx" />
                  <uo k="s:originTrace" v="n:711157185105520748" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k2" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105520805" />
          <node concept="2OqwBi" id="k8" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105520805" />
            <node concept="37vLTw" id="k9" role="2Oq$k0">
              <ref role="3cqZAo" node="k3" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105520805" />
            </node>
            <node concept="liA8E" id="ka" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
              <uo k="s:originTrace" v="n:711157185105520805" />
              <node concept="2OqwBi" id="kb" role="37wK5m">
                <uo k="s:originTrace" v="n:711157185105521401" />
                <node concept="2OqwBi" id="kc" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:711157185105520840" />
                  <node concept="37vLTw" id="ke" role="2Oq$k0">
                    <ref role="3cqZAo" node="jZ" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="kf" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrEf2" id="kd" role="2OqNvi">
                  <ref role="3Tt5mk" to="o1mc:66sUT0$5L0_" resolve="behavior" />
                  <uo k="s:originTrace" v="n:711157185105522764" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="jZ" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:711157185105520748" />
        <node concept="3uibUv" id="kg" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:711157185105520748" />
        </node>
      </node>
      <node concept="2AHcQZ" id="k0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:711157185105520748" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="kh">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SendMessage_TextGen" />
    <property role="3GE5qa" value="message" />
    <uo k="s:originTrace" v="n:3204091364823999932" />
    <node concept="3Tm1VV" id="ki" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3uibUv" id="kj" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3clFb_" id="kk" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
      <node concept="3cqZAl" id="kl" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3Tm1VV" id="km" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3clFbS" id="kn" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3cpWs8" id="kq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999932" />
          <node concept="3cpWsn" id="l2" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="3uibUv" id="l3" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
            <node concept="2ShNRf" id="l4" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823999932" />
              <node concept="1pGfFk" id="l5" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823999932" />
                <node concept="37vLTw" id="l6" role="37wK5m">
                  <ref role="3cqZAo" node="ko" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823999932" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kr" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999932" />
          <node concept="2OqwBi" id="l7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="37vLTw" id="l8" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
            <node concept="liA8E" id="l9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.createPositionInfo()" resolve="createPositionInfo" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ks" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105235298" />
        </node>
        <node concept="3clFbF" id="kt" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105645994" />
          <node concept="2OqwBi" id="la" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105645994" />
            <node concept="37vLTw" id="lb" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105645994" />
            </node>
            <node concept="liA8E" id="lc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:711157185105645994" />
              <node concept="Xl_RD" id="ld" role="37wK5m">
                <property role="Xl_RC" value="tag:" />
                <uo k="s:originTrace" v="n:711157185105645994" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ku" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105235776" />
          <node concept="2OqwBi" id="le" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105235776" />
            <node concept="37vLTw" id="lf" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105235776" />
            </node>
            <node concept="liA8E" id="lg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:711157185105235776" />
              <node concept="2OqwBi" id="lh" role="37wK5m">
                <uo k="s:originTrace" v="n:711157185105238612" />
                <node concept="2OqwBi" id="li" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:711157185105236372" />
                  <node concept="2OqwBi" id="lk" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:711157185105235811" />
                    <node concept="37vLTw" id="lm" role="2Oq$k0">
                      <ref role="3cqZAo" node="ko" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="ln" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="ll" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:711157185105237883" />
                  </node>
                </node>
                <node concept="3TrcHB" id="lj" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:25QEYlOFf2e" resolve="tag" />
                  <uo k="s:originTrace" v="n:711157185105239489" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kv" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105766913" />
          <node concept="2OqwBi" id="lo" role="3clFbG">
            <uo k="s:originTrace" v="n:711157185105766913" />
            <node concept="37vLTw" id="lp" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:711157185105766913" />
            </node>
            <node concept="liA8E" id="lq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:711157185105766913" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="kw" role="3cqZAp">
          <uo k="s:originTrace" v="n:711157185105235356" />
        </node>
        <node concept="3clFbF" id="kx" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206780" />
          <node concept="2OqwBi" id="lr" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206780" />
            <node concept="37vLTw" id="ls" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
            <node concept="liA8E" id="lt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ky" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206780" />
          <node concept="2OqwBi" id="lu" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206780" />
            <node concept="37vLTw" id="lv" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
            </node>
            <node concept="liA8E" id="lw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301206780" />
              <node concept="Xl_RD" id="lx" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_lock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301206780" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kz" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301206991" />
          <node concept="2OqwBi" id="ly" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301206991" />
            <node concept="37vLTw" id="lz" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301206991" />
            </node>
            <node concept="liA8E" id="l$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301206991" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="l_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="lA" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="lB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="lC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="lD" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="lE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
              <node concept="Xl_RD" id="lF" role="37wK5m">
                <property role="Xl_RC" value="bytes_written = write(data-&gt;map[receiver_address].write_fd, " />
                <uo k="s:originTrace" v="n:3204091364823999990" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826098888" />
          <node concept="2OqwBi" id="lG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826098888" />
            <node concept="37vLTw" id="lH" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826098888" />
            </node>
            <node concept="liA8E" id="lI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826098888" />
              <node concept="2OqwBi" id="lJ" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364826100688" />
                <node concept="2OqwBi" id="lK" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364826099431" />
                  <node concept="2OqwBi" id="lM" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364826098992" />
                    <node concept="37vLTw" id="lO" role="2Oq$k0">
                      <ref role="3cqZAo" node="ko" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="lP" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="lN" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:3204091364826100018" />
                  </node>
                </node>
                <node concept="3TrcHB" id="lL" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364826101909" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826102095" />
          <node concept="2OqwBi" id="lQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826102095" />
            <node concept="37vLTw" id="lR" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826102095" />
            </node>
            <node concept="liA8E" id="lS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826102095" />
              <node concept="Xl_RD" id="lT" role="37wK5m">
                <property role="Xl_RC" value=", strlen(" />
                <uo k="s:originTrace" v="n:3204091364826102095" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826102815" />
          <node concept="2OqwBi" id="lU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826102815" />
            <node concept="37vLTw" id="lV" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826102815" />
            </node>
            <node concept="liA8E" id="lW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826102815" />
              <node concept="2OqwBi" id="lX" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364826103386" />
                <node concept="2OqwBi" id="lY" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364826102984" />
                  <node concept="2OqwBi" id="m0" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364826102955" />
                    <node concept="37vLTw" id="m2" role="2Oq$k0">
                      <ref role="3cqZAo" node="ko" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="m3" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="m1" role="2OqNvi">
                    <ref role="3Tt5mk" to="o1mc:3m_VcJMWARP" resolve="message" />
                    <uo k="s:originTrace" v="n:3204091364826103290" />
                  </node>
                </node>
                <node concept="3TrcHB" id="lZ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364826104656" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364826111513" />
          <node concept="2OqwBi" id="m4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364826111513" />
            <node concept="37vLTw" id="m5" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364826111513" />
            </node>
            <node concept="liA8E" id="m6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364826111513" />
              <node concept="Xl_RD" id="m7" role="37wK5m">
                <property role="Xl_RC" value="));" />
                <uo k="s:originTrace" v="n:3204091364826111513" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824005116" />
          <node concept="2OqwBi" id="m8" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824005116" />
            <node concept="37vLTw" id="m9" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
            <node concept="liA8E" id="ma" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="mb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="mc" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="md" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="me" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="mf" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="mg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
              <node concept="Xl_RD" id="mh" role="37wK5m">
                <property role="Xl_RC" value="if (bytes_written == -1) {" />
                <uo k="s:originTrace" v="n:3204091364824006418" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006475" />
          <node concept="2OqwBi" id="mi" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006475" />
            <node concept="37vLTw" id="mj" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
            <node concept="liA8E" id="mk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="ml" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="mm" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="mo" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="mq" role="2Oq$k0">
                  <ref role="3cqZAo" node="ko" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="mr" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="mp" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="mn" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="ms" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="mt" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="mu" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="mv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="mw" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="mx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
              <node concept="Xl_RD" id="my" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;write&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824007688" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657942" />
          <node concept="2OqwBi" id="mz" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657942" />
            <node concept="37vLTw" id="m$" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
            <node concept="liA8E" id="m_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kM" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207389" />
          <node concept="2OqwBi" id="mA" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207389" />
            <node concept="37vLTw" id="mB" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
            <node concept="liA8E" id="mC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kN" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207389" />
          <node concept="2OqwBi" id="mD" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207389" />
            <node concept="37vLTw" id="mE" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
            </node>
            <node concept="liA8E" id="mF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301207389" />
              <node concept="Xl_RD" id="mG" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301207389" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kO" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301207489" />
          <node concept="2OqwBi" id="mH" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301207489" />
            <node concept="37vLTw" id="mI" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301207489" />
            </node>
            <node concept="liA8E" id="mJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301207489" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kP" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="mK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="mL" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="mM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="mN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="mO" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="mP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
              <node concept="Xl_RD" id="mQ" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364824008569" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kR" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657997" />
          <node concept="2OqwBi" id="mR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657997" />
            <node concept="37vLTw" id="mS" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
            <node concept="liA8E" id="mT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kS" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="mU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="mV" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="mX" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="mZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="ko" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="n0" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="mY" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="mW" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kT" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="n1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="n2" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="n3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kU" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="n4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="n5" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="n6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
              <node concept="Xl_RD" id="n7" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364824008857" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kV" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824658052" />
          <node concept="2OqwBi" id="n8" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824658052" />
            <node concept="37vLTw" id="n9" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
            <node concept="liA8E" id="na" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kW" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215015" />
          <node concept="2OqwBi" id="nb" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215015" />
            <node concept="37vLTw" id="nc" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
            <node concept="liA8E" id="nd" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kX" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215015" />
          <node concept="2OqwBi" id="ne" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215015" />
            <node concept="37vLTw" id="nf" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
            </node>
            <node concept="liA8E" id="ng" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:5167209971301215015" />
              <node concept="Xl_RD" id="nh" role="37wK5m">
                <property role="Xl_RC" value="pthread_mutex_unlock(&amp;data-&gt;map[receiver_address].mutex);" />
                <uo k="s:originTrace" v="n:5167209971301215015" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kY" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215016" />
          <node concept="2OqwBi" id="ni" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215016" />
            <node concept="37vLTw" id="nj" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215016" />
            </node>
            <node concept="liA8E" id="nk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215016" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301215317" />
          <node concept="2OqwBi" id="nl" role="3clFbG">
            <uo k="s:originTrace" v="n:5167209971301215317" />
            <node concept="37vLTw" id="nm" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:5167209971301215317" />
            </node>
            <node concept="liA8E" id="nn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:5167209971301215317" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="l0" role="3cqZAp">
          <uo k="s:originTrace" v="n:5167209971301214679" />
        </node>
        <node concept="3clFbJ" id="l1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999932" />
          <node concept="3clFbS" id="no" role="3clFbx">
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="3clFbF" id="nq" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364823999932" />
              <node concept="2OqwBi" id="nr" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364823999932" />
                <node concept="37vLTw" id="ns" role="2Oq$k0">
                  <ref role="3cqZAo" node="l2" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364823999932" />
                </node>
                <node concept="liA8E" id="nt" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.fillPositionInfo(java.lang.String)" resolve="fillPositionInfo" />
                  <uo k="s:originTrace" v="n:3204091364823999932" />
                  <node concept="2OqwBi" id="nu" role="37wK5m">
                    <uo k="s:originTrace" v="n:3204091364823999932" />
                    <node concept="1PxgMI" id="nv" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364823999932" />
                      <node concept="2OqwBi" id="nx" role="1m5AlR">
                        <uo k="s:originTrace" v="n:3204091364823999932" />
                        <node concept="37vLTw" id="nz" role="2Oq$k0">
                          <ref role="3cqZAo" node="ko" resolve="ctx" />
                          <uo k="s:originTrace" v="n:3204091364823999932" />
                        </node>
                        <node concept="liA8E" id="n$" role="2OqNvi">
                          <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                          <uo k="s:originTrace" v="n:3204091364823999932" />
                        </node>
                      </node>
                      <node concept="chp4Y" id="ny" role="3oSUPX">
                        <ref role="cht4Q" to="356a:4pl5GY7LKmz" resolve="TraceableConcept" />
                        <uo k="s:originTrace" v="n:3204091364823999932" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="nw" role="2OqNvi">
                      <ref role="37wK5l" to="if8w:4pl5GY7LKmH" resolve="getTraceableProperty" />
                      <uo k="s:originTrace" v="n:3204091364823999932" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="np" role="3clFbw">
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="37vLTw" id="n_" role="2Oq$k0">
              <ref role="3cqZAo" node="l2" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
            <node concept="liA8E" id="nA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.needPositions()" resolve="needPositions" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ko" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3uibUv" id="nB" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823999932" />
        </node>
      </node>
      <node concept="2AHcQZ" id="kp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="nC">
    <property role="TrG5h" value="TextGenAspectDescriptor" />
    <node concept="312cEg" id="nD" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="nO" role="1B3o_S" />
      <node concept="2eloPW" id="nP" role="1tU5fm">
        <property role="2ely0U" value="ActorLanguage.structure.LanguageConceptSwitch" />
        <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
      </node>
      <node concept="2ShNRf" id="nQ" role="33vP2m">
        <node concept="xCZzO" id="nR" role="2ShVmc">
          <property role="xCZzQ" value="ActorLanguage.structure.LanguageConceptSwitch" />
          <node concept="3uibUv" id="nS" role="xCZzL">
            <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="nE" role="jymVt" />
    <node concept="3clFbW" id="nF" role="jymVt">
      <node concept="3cqZAl" id="nT" role="3clF45" />
      <node concept="3clFbS" id="nU" role="3clF47" />
      <node concept="3Tm1VV" id="nV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="nG" role="jymVt" />
    <node concept="3Tm1VV" id="nH" role="1B3o_S" />
    <node concept="3uibUv" id="nI" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenAspectBase" resolve="TextGenAspectBase" />
    </node>
    <node concept="3clFb_" id="nJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="nW" role="1B3o_S" />
      <node concept="3uibUv" id="nX" role="3clF45">
        <ref role="3uigEE" to="yfwt:~TextGenDescriptor" resolve="TextGenDescriptor" />
      </node>
      <node concept="37vLTG" id="nY" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="o2" role="1tU5fm" />
        <node concept="2AHcQZ" id="o3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="nZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="o0" role="3clF47">
        <node concept="3KaCP$" id="o4" role="3cqZAp">
          <node concept="2OqwBi" id="o6" role="3KbGdf">
            <node concept="37vLTw" id="od" role="2Oq$k0">
              <ref role="3cqZAo" node="nD" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="oe" role="2OqNvi">
              <ref role="37wK5l" to="tpcf:1OW7rNmnuDr" resolve="index" />
              <node concept="37vLTw" id="of" role="37wK5m">
                <ref role="3cqZAo" node="nY" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="o7" role="3KbHQx">
            <node concept="1n$iZg" id="og" role="3Kbmr1">
              <property role="1n_iUB" value="ActorScript" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="oh" role="3Kbo56">
              <node concept="3cpWs6" id="oi" role="3cqZAp">
                <node concept="2ShNRf" id="oj" role="3cqZAk">
                  <node concept="HV5vD" id="ok" role="2ShVmc">
                    <ref role="HV5vE" node="0" resolve="ActorScript_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="o8" role="3KbHQx">
            <node concept="1n$iZg" id="ol" role="3Kbmr1">
              <property role="1n_iUB" value="CreateActor" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="om" role="3Kbo56">
              <node concept="3cpWs6" id="on" role="3cqZAp">
                <node concept="2ShNRf" id="oo" role="3cqZAk">
                  <node concept="HV5vD" id="op" role="2ShVmc">
                    <ref role="HV5vE" node="6H" resolve="CreateActor_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="o9" role="3KbHQx">
            <node concept="1n$iZg" id="oq" role="3Kbmr1">
              <property role="1n_iUB" value="CreateBehavior" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="or" role="3Kbo56">
              <node concept="3cpWs6" id="os" role="3cqZAp">
                <node concept="2ShNRf" id="ot" role="3cqZAk">
                  <node concept="HV5vD" id="ou" role="2ShVmc">
                    <ref role="HV5vE" node="7U" resolve="CreateBehavior_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oa" role="3KbHQx">
            <node concept="1n$iZg" id="ov" role="3Kbmr1">
              <property role="1n_iUB" value="CreateMessage" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="ow" role="3Kbo56">
              <node concept="3cpWs6" id="ox" role="3cqZAp">
                <node concept="2ShNRf" id="oy" role="3cqZAk">
                  <node concept="HV5vD" id="oz" role="2ShVmc">
                    <ref role="HV5vE" node="8n" resolve="CreateMessage_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="ob" role="3KbHQx">
            <node concept="1n$iZg" id="o$" role="3Kbmr1">
              <property role="1n_iUB" value="SelectBehavior" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="o_" role="3Kbo56">
              <node concept="3cpWs6" id="oA" role="3cqZAp">
                <node concept="2ShNRf" id="oB" role="3cqZAk">
                  <node concept="HV5vD" id="oC" role="2ShVmc">
                    <ref role="HV5vE" node="jS" resolve="SelectBehavior_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="oc" role="3KbHQx">
            <node concept="1n$iZg" id="oD" role="3Kbmr1">
              <property role="1n_iUB" value="SendMessage" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="oE" role="3Kbo56">
              <node concept="3cpWs6" id="oF" role="3cqZAp">
                <node concept="2ShNRf" id="oG" role="3cqZAk">
                  <node concept="HV5vD" id="oH" role="2ShVmc">
                    <ref role="HV5vE" node="kh" resolve="SendMessage_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="o5" role="3cqZAp">
          <node concept="10Nm6u" id="oI" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="o1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="nK" role="jymVt" />
    <node concept="3clFb_" id="nL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="breakdownToUnits" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="oJ" role="1B3o_S" />
      <node concept="3cqZAl" id="oK" role="3clF45" />
      <node concept="37vLTG" id="oL" role="3clF46">
        <property role="TrG5h" value="outline" />
        <node concept="3uibUv" id="oO" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenModelOutline" resolve="TextGenModelOutline" />
        </node>
        <node concept="2AHcQZ" id="oP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="oM" role="3clF47">
        <node concept="1DcWWT" id="oQ" role="3cqZAp">
          <node concept="3clFbS" id="oR" role="2LFqv$">
            <node concept="3clFbJ" id="oU" role="3cqZAp">
              <node concept="3clFbS" id="oV" role="3clFbx">
                <node concept="3cpWs8" id="oX" role="3cqZAp">
                  <node concept="3cpWsn" id="p1" role="3cpWs9">
                    <property role="TrG5h" value="fname" />
                    <node concept="3uibUv" id="p2" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="p3" role="33vP2m">
                      <ref role="37wK5l" node="nM" resolve="getFileName_ActorScript" />
                      <node concept="37vLTw" id="p4" role="37wK5m">
                        <ref role="3cqZAo" node="oS" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="oY" role="3cqZAp">
                  <node concept="3cpWsn" id="p5" role="3cpWs9">
                    <property role="TrG5h" value="ext" />
                    <node concept="3uibUv" id="p6" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="p7" role="33vP2m">
                      <ref role="37wK5l" node="nN" resolve="getFileExtension_ActorScript" />
                      <node concept="37vLTw" id="p8" role="37wK5m">
                        <ref role="3cqZAo" node="oS" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="oZ" role="3cqZAp">
                  <node concept="2OqwBi" id="p9" role="3clFbG">
                    <node concept="37vLTw" id="pa" role="2Oq$k0">
                      <ref role="3cqZAo" node="oL" resolve="outline" />
                    </node>
                    <node concept="liA8E" id="pb" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenModelOutline.registerTextUnit(java.lang.String,java.lang.String,java.nio.charset.Charset,org.jetbrains.mps.openapi.model.SNode...)" resolve="registerTextUnit" />
                      <node concept="3K4zz7" id="pc" role="37wK5m">
                        <node concept="1eOMI4" id="pe" role="3K4GZi">
                          <node concept="3cpWs3" id="ph" role="1eOMHV">
                            <node concept="37vLTw" id="pi" role="3uHU7w">
                              <ref role="3cqZAo" node="p5" resolve="ext" />
                            </node>
                            <node concept="3cpWs3" id="pj" role="3uHU7B">
                              <node concept="37vLTw" id="pk" role="3uHU7B">
                                <ref role="3cqZAo" node="p1" resolve="fname" />
                              </node>
                              <node concept="1Xhbcc" id="pl" role="3uHU7w">
                                <property role="1XhdNS" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="pf" role="3K4E3e">
                          <ref role="3cqZAo" node="p1" resolve="fname" />
                        </node>
                        <node concept="3clFbC" id="pg" role="3K4Cdx">
                          <node concept="10Nm6u" id="pm" role="3uHU7w" />
                          <node concept="37vLTw" id="pn" role="3uHU7B">
                            <ref role="3cqZAo" node="p5" resolve="ext" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="pd" role="37wK5m">
                        <ref role="3cqZAo" node="oS" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="p0" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="oW" role="3clFbw">
                <node concept="2OqwBi" id="po" role="2Oq$k0">
                  <node concept="37vLTw" id="pq" role="2Oq$k0">
                    <ref role="3cqZAo" node="oS" resolve="root" />
                  </node>
                  <node concept="liA8E" id="pr" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="pp" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="35c_gC" id="ps" role="37wK5m">
                    <ref role="35c_gD" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="oS" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="pt" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="oT" role="1DdaDG">
            <node concept="2OqwBi" id="pu" role="2Oq$k0">
              <node concept="37vLTw" id="pw" role="2Oq$k0">
                <ref role="3cqZAo" node="oL" resolve="outline" />
              </node>
              <node concept="liA8E" id="px" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenModelOutline.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="pv" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="nM" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileName_ActorScript" />
      <node concept="3clFbS" id="py" role="3clF47">
        <node concept="3cpWs6" id="pA" role="3cqZAp">
          <node concept="2OqwBi" id="pB" role="3cqZAk">
            <node concept="37vLTw" id="pC" role="2Oq$k0">
              <ref role="3cqZAo" node="p_" resolve="node" />
            </node>
            <node concept="liA8E" id="pD" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="pz" role="1B3o_S" />
      <node concept="3uibUv" id="p$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="p_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="pE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="nN" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileExtension_ActorScript" />
      <node concept="3clFbS" id="pF" role="3clF47">
        <node concept="3clFbF" id="pJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3865756215866095114" />
          <node concept="Xl_RD" id="pK" role="3clFbG">
            <property role="Xl_RC" value="c" />
            <uo k="s:originTrace" v="n:3865756215866095113" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="pG" role="1B3o_S" />
      <node concept="3uibUv" id="pH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="pI" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="pL" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
</model>

