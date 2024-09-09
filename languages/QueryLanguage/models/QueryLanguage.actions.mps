<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b053dcf2-8574-41a3-bf8c-40491dc6b2df(QueryLanguage.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="37WguZ" id="5L8KcULlVFV">
    <property role="3GE5qa" value="column" />
    <property role="TrG5h" value="SelectColumnFactory" />
    <node concept="37WvkG" id="5L8KcULlVFW" role="37WGs$">
      <ref role="37XkoT" to="p6im:UaVdqMkpsi" resolve="SelectColumn" />
      <node concept="37Y9Zx" id="5L8KcULlVFX" role="37ZfLb">
        <node concept="3clFbS" id="5L8KcULlVFY" role="2VODD2" />
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="5L8KcUM7pTd">
    <property role="3GE5qa" value="column" />
    <property role="TrG5h" value="ColumnRefFactory" />
    <node concept="37WvkG" id="5L8KcUM7pTe" role="37WGs$">
      <ref role="37XkoT" to="p6im:14g3IsRklvO" resolve="ColumnRef" />
      <node concept="37Y9Zx" id="5L8KcUM7pTf" role="37ZfLb">
        <node concept="3clFbS" id="5L8KcUM7pTg" role="2VODD2" />
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="52XYD79mOTU">
    <property role="TrG5h" value="ScriptFactory" />
    <node concept="37WvkG" id="52XYD79mOTV" role="37WGs$">
      <ref role="37XkoT" to="p6im:14g3IsRh3Jd" resolve="Script" />
      <node concept="37Y9Zx" id="52XYD79mOTW" role="37ZfLb">
        <node concept="3clFbS" id="52XYD79mOTX" role="2VODD2">
          <node concept="3cpWs8" id="52XYD79mS4X" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79mS50" role="3cpWs9">
              <property role="TrG5h" value="taxisTable" />
              <node concept="3Tqbb2" id="52XYD79mS4W" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
              </node>
              <node concept="2ShNRf" id="52XYD79mS7B" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79mS7_" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79mS7A" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GI" resolve="CreateTable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79va5G" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79vdac" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79vdq$" role="37vLTx">
                <property role="Xl_RC" value="Taxis" />
              </node>
              <node concept="2OqwBi" id="52XYD79vaqR" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79va5E" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3TrcHB" id="52XYD79vaCy" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="52XYD79of4e" role="3cqZAp" />
          <node concept="3cpWs8" id="52XYD79n2Fn" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2Fq" role="3cpWs9">
              <property role="TrG5h" value="column1" />
              <node concept="3Tqbb2" id="52XYD79n2Fl" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2Hh" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2Hf" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2Hg" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79n3hw" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nbZi" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79ncvr" role="37vLTx">
                <property role="Xl_RC" value="VendorID" />
              </node>
              <node concept="2OqwBi" id="52XYD79n3uB" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79n3hu" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Fq" resolve="column1" />
                </node>
                <node concept="3TrcHB" id="52XYD79n3Ed" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ncz9" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79ndot" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79negI" role="37vLTx">
                <node concept="1XH99k" id="52XYD79ndsc" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79neDR" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GU" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79ncKm" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79ncz7" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Fq" resolve="column1" />
                </node>
                <node concept="3TrcHB" id="52XYD79ncXR" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aCZRI" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD38B" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD39i" role="37vLTx">
                <property role="Xl_RC" value="Taxis.VendorID" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD0fw" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aCZRG" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Fq" resolve="column1" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD0Df" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2HK" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2HL" role="3cpWs9">
              <property role="TrG5h" value="column2" />
              <node concept="3Tqbb2" id="52XYD79n2HM" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2HN" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2HO" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2HP" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79neIj" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nijI" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79ni$6" role="37vLTx">
                <property role="Xl_RC" value="tpep_pickup_datetime" />
              </node>
              <node concept="2OqwBi" id="52XYD79neXK" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79neIh" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2HL" resolve="column2" />
                </node>
                <node concept="3TrcHB" id="52XYD79nfOm" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79niDy" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nj_4" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nkgj" role="37vLTx">
                <node concept="1XH99k" id="52XYD79njBi" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nkDs" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GZ" resolve="Date" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79niQX" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79niDw" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2HL" resolve="column2" />
                </node>
                <node concept="3TrcHB" id="52XYD79njhY" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD3Rt" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD3Ru" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD3Rv" role="37vLTx">
                <property role="Xl_RC" value="Taxis.tpep_pickup_datetime" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD3Rw" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD3Rx" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2HL" resolve="column2" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD3Ry" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2Iy" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2Iz" role="3cpWs9">
              <property role="TrG5h" value="column3" />
              <node concept="3Tqbb2" id="52XYD79n2I$" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2I_" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2IA" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2IB" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nkWk" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nkWl" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nkWm" role="37vLTx">
                <property role="Xl_RC" value="tpep_dropoff_datetime" />
              </node>
              <node concept="2OqwBi" id="52XYD79nkWn" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nkWo" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Iz" resolve="column3" />
                </node>
                <node concept="3TrcHB" id="52XYD79nkWp" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nliD" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nliE" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nliF" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nliG" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nliH" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GZ" resolve="Date" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nliI" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nliJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Iz" resolve="column3" />
                </node>
                <node concept="3TrcHB" id="52XYD79nliK" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD4MN" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD4MO" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD4MP" role="37vLTx">
                <property role="Xl_RC" value="Taxis.tpep_dropoff_datetime" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD4MQ" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD4MR" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Iz" resolve="column3" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD4MS" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2Jq" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2Jr" role="3cpWs9">
              <property role="TrG5h" value="column4" />
              <node concept="3Tqbb2" id="52XYD79n2Js" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2Jt" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2Ju" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2Jv" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nlGO" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nvdm" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nvtI" role="37vLTx">
                <property role="Xl_RC" value="passenger_count" />
              </node>
              <node concept="2OqwBi" id="52XYD79nlU_" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nlGM" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Jr" resolve="column4" />
                </node>
                <node concept="3TrcHB" id="52XYD79nm86" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nvxH" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nvxI" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nvxJ" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nvxK" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nvxL" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GU" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nvxM" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nvxN" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Jr" resolve="column4" />
                </node>
                <node concept="3TrcHB" id="52XYD79nvxO" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD5AC" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD5AD" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD5AE" role="37vLTx">
                <property role="Xl_RC" value="Taxis.passenger_count" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD5AF" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD5AG" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Jr" resolve="column4" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD5AH" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2JY" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2JZ" role="3cpWs9">
              <property role="TrG5h" value="column5" />
              <node concept="3Tqbb2" id="52XYD79n2K0" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2K1" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2K2" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2K3" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nvSv" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nvSw" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nvSx" role="37vLTx">
                <property role="Xl_RC" value="trip_distance" />
              </node>
              <node concept="2OqwBi" id="52XYD79nvSy" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nvSz" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2JZ" resolve="column5" />
                </node>
                <node concept="3TrcHB" id="52XYD79nvS$" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nwiv" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nx1b" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nww$" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nwit" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2JZ" resolve="column5" />
                </node>
                <node concept="3TrcHB" id="52XYD79nwI5" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nx4L" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nx4M" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nx4N" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD6x0" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD6x1" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD6x2" role="37vLTx">
                <property role="Xl_RC" value="Taxis.trip_distance" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD6x3" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD6x4" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2JZ" resolve="column5" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD6x5" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2KC" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2KD" role="3cpWs9">
              <property role="TrG5h" value="column6" />
              <node concept="3Tqbb2" id="52XYD79n2KE" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2KF" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2KG" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2KH" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nxzX" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79n$v3" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79n$vI" role="37vLTx">
                <property role="Xl_RC" value="RatecodeID" />
              </node>
              <node concept="2OqwBi" id="52XYD79nxMa" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nxzV" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2KD" resolve="column6" />
                </node>
                <node concept="3TrcHB" id="52XYD79nxZF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79n$QW" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79n$QX" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79n$QY" role="37vLTx">
                <node concept="1XH99k" id="52XYD79n$QZ" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79n$R0" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GU" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79n$R1" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79n$R2" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2KD" resolve="column6" />
                </node>
                <node concept="3TrcHB" id="52XYD79n$R3" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD7wo" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD7wp" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD7wq" role="37vLTx">
                <property role="Xl_RC" value="Taxis.RatecodeID" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD7wr" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD7ws" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2KD" resolve="column6" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD7wt" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2M6" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2M7" role="3cpWs9">
              <property role="TrG5h" value="column7" />
              <node concept="3Tqbb2" id="52XYD79n2M8" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2M9" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2Ma" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2Mb" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79n_5c" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nFUT" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nGr0" role="37vLTx">
                <property role="Xl_RC" value="PULocationID" />
              </node>
              <node concept="2OqwBi" id="52XYD79n_jn" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79n_5a" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2M7" resolve="column7" />
                </node>
                <node concept="3TrcHB" id="52XYD79n_uX" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nGtx" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nGty" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nGtz" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nGt$" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nGt_" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GU" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nGtA" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nGtB" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2M7" resolve="column7" />
                </node>
                <node concept="3TrcHB" id="52XYD79nGtC" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD8mG" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD8mH" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD8mI" role="37vLTx">
                <property role="Xl_RC" value="Taxis.PULocationID" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD8mJ" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD8mK" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2M7" resolve="column7" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD8mL" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2Nm" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2Nn" role="3cpWs9">
              <property role="TrG5h" value="column8" />
              <node concept="3Tqbb2" id="52XYD79n2No" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2Np" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2Nq" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2Nr" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nGNu" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nGNv" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nGNw" role="37vLTx">
                <property role="Xl_RC" value="DOLocationID" />
              </node>
              <node concept="2OqwBi" id="52XYD79nGNx" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nGNy" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Nn" resolve="column8" />
                </node>
                <node concept="3TrcHB" id="52XYD79nGNz" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nGT2" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nGT3" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nGT4" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nGT5" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nGT6" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GU" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nGT7" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nGT8" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Nn" resolve="column8" />
                </node>
                <node concept="3TrcHB" id="52XYD79nGT9" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aD9p6" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aD9p7" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aD9p8" role="37vLTx">
                <property role="Xl_RC" value="Taxis.DOLocationID" />
              </node>
              <node concept="2OqwBi" id="52XYD7aD9p9" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aD9pa" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Nn" resolve="column8" />
                </node>
                <node concept="3TrcHB" id="52XYD7aD9pb" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2OG" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2OH" role="3cpWs9">
              <property role="TrG5h" value="column9" />
              <node concept="3Tqbb2" id="52XYD79n2OI" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2OJ" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2OK" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2OL" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nHsa" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nN53" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nN_a" role="37vLTx">
                <property role="Xl_RC" value="payment_type" />
              </node>
              <node concept="2OqwBi" id="52XYD79nHF9" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nHs1" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2OH" resolve="column9" />
                </node>
                <node concept="3TrcHB" id="52XYD79nHSE" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nHbD" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nHbE" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nHbF" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nHbG" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nHbH" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3GU" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nHbI" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nHbJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2OH" resolve="column9" />
                </node>
                <node concept="3TrcHB" id="52XYD79nHbK" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDasR" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDasS" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDasT" role="37vLTx">
                <property role="Xl_RC" value="Taxis.payment_type" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDasU" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDasV" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2OH" resolve="column9" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDasW" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2Q8" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2Q9" role="3cpWs9">
              <property role="TrG5h" value="column10" />
              <node concept="3Tqbb2" id="52XYD79n2Qa" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2Qb" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2Qc" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2Qd" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nNFo" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nXeY" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79nXvo" role="37vLTx">
                <property role="Xl_RC" value="fare_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD79nNWv" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nNFm" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Q9" resolve="column10" />
                </node>
                <node concept="3TrcHB" id="52XYD79nOa0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nXM8" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79nXM9" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79nXMa" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nXMb" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Q9" resolve="column10" />
                </node>
                <node concept="3TrcHB" id="52XYD79nXMc" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79nXMd" role="37vLTx">
                <node concept="1XH99k" id="52XYD79nXMe" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79nXMf" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDbmO" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDbmP" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDbmQ" role="37vLTx">
                <property role="Xl_RC" value="Taxis.fare_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDbmR" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDbmS" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Q9" resolve="column10" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDbmT" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2RE" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2RF" role="3cpWs9">
              <property role="TrG5h" value="column11" />
              <node concept="3Tqbb2" id="52XYD79n2RG" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2RH" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2RI" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2RJ" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79nXYL" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o0UF" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o1qM" role="37vLTx">
                <property role="Xl_RC" value="extra" />
              </node>
              <node concept="2OqwBi" id="52XYD79nYe4" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79nXYJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2RF" resolve="column11" />
                </node>
                <node concept="3TrcHB" id="52XYD79nYr_" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o1XO" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o1XP" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o1XQ" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o1XR" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2RF" resolve="column11" />
                </node>
                <node concept="3TrcHB" id="52XYD79o1XS" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o1XT" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o1XU" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o1XV" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDcil" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDcim" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDcin" role="37vLTx">
                <property role="Xl_RC" value="Taxis.extra" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDcio" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDcip" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2RF" resolve="column11" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDciq" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2Ti" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2Tj" role="3cpWs9">
              <property role="TrG5h" value="column12" />
              <node concept="3Tqbb2" id="52XYD79n2Tk" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2Tl" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2Tm" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2Tn" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o2kA" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o2kB" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o2kC" role="37vLTx">
                <property role="Xl_RC" value="mta_tax" />
              </node>
              <node concept="2OqwBi" id="52XYD79o2kD" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o2kE" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Tj" resolve="column12" />
                </node>
                <node concept="3TrcHB" id="52XYD79o2kF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o2EL" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o2EM" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o2EN" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o2EO" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Tj" resolve="column12" />
                </node>
                <node concept="3TrcHB" id="52XYD79o2EP" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o2EQ" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o2ER" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o2ES" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDdkF" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDdkG" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDdkH" role="37vLTx">
                <property role="Xl_RC" value="Taxis.mta_tax" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDdkI" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDdkJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2Tj" resolve="column12" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDdkK" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2V0" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2V1" role="3cpWs9">
              <property role="TrG5h" value="column13" />
              <node concept="3Tqbb2" id="52XYD79n2V2" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2V3" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2V4" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2V5" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o3aS" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o3aT" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o3aU" role="37vLTx">
                <property role="Xl_RC" value="tip_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD79o3aV" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o3aW" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2V1" resolve="column13" />
                </node>
                <node concept="3TrcHB" id="52XYD79o3aX" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o2Me" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o2Mf" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o2Mg" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o2Mh" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2V1" resolve="column13" />
                </node>
                <node concept="3TrcHB" id="52XYD79o2Mi" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o2Mj" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o2Mk" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o2Ml" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDegd" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDege" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDegf" role="37vLTx">
                <property role="Xl_RC" value="Taxis.tip_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDegg" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDegh" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2V1" resolve="column13" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDegi" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2WO" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2WP" role="3cpWs9">
              <property role="TrG5h" value="column14" />
              <node concept="3Tqbb2" id="52XYD79n2WQ" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2WR" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2WS" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2WT" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o3KL" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o3KM" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o3KN" role="37vLTx">
                <property role="Xl_RC" value="tolls_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD79o3KO" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o3KP" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2WP" resolve="column14" />
                </node>
                <node concept="3TrcHB" id="52XYD79o3KQ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o3RD" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o3RE" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o3RF" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o3RG" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2WP" resolve="column14" />
                </node>
                <node concept="3TrcHB" id="52XYD79o3RH" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o3RI" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o3RJ" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o3RK" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDfha" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDfhb" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDfhc" role="37vLTx">
                <property role="Xl_RC" value="Taxis.tolls_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDfhd" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDfhe" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2WP" resolve="column14" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDfhf" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n2YI" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n2YJ" role="3cpWs9">
              <property role="TrG5h" value="column15" />
              <node concept="3Tqbb2" id="52XYD79n2YK" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n2YL" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n2YM" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n2YN" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o4rZ" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o4s0" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o4s1" role="37vLTx">
                <property role="Xl_RC" value="improvement_surcharge" />
              </node>
              <node concept="2OqwBi" id="52XYD79o4s2" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o4s3" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2YJ" resolve="column15" />
                </node>
                <node concept="3TrcHB" id="52XYD79o4s4" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o4z5" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o4z6" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o4z7" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o4z8" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2YJ" resolve="column15" />
                </node>
                <node concept="3TrcHB" id="52XYD79o4z9" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o4za" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o4zb" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o4zc" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDgfn" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDgfo" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDgfp" role="37vLTx">
                <property role="Xl_RC" value="Taxis.improvement_surcharge" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDgfq" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDgfr" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n2YJ" resolve="column15" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDgfs" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n30I" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n30J" role="3cpWs9">
              <property role="TrG5h" value="column16" />
              <node concept="3Tqbb2" id="52XYD79n30K" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n30L" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n30M" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n30N" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o5cP" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o5cQ" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o5cR" role="37vLTx">
                <property role="Xl_RC" value="total_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD79o5cS" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o5cT" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n30J" resolve="column16" />
                </node>
                <node concept="3TrcHB" id="52XYD79o5cU" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o4PB" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o4PC" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o4PD" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o4PE" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n30J" resolve="column16" />
                </node>
                <node concept="3TrcHB" id="52XYD79o4PF" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o4PG" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o4PH" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o4PI" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDhqo" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDhqp" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDhqq" role="37vLTx">
                <property role="Xl_RC" value="Taxis.total_amount" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDhqr" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDhqs" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n30J" resolve="column16" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDhqt" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n32O" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n32P" role="3cpWs9">
              <property role="TrG5h" value="column17" />
              <node concept="3Tqbb2" id="52XYD79n32Q" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n32R" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n32S" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n32T" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o5vA" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o5vB" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o5vC" role="37vLTx">
                <property role="Xl_RC" value="congestion_surcharge" />
              </node>
              <node concept="2OqwBi" id="52XYD79o5vD" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o5vE" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n32P" resolve="column17" />
                </node>
                <node concept="3TrcHB" id="52XYD79o5vF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o5QS" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o5QT" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o5QU" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o5QV" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n32P" resolve="column17" />
                </node>
                <node concept="3TrcHB" id="52XYD79o5QW" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o5QX" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o5QY" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o5QZ" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDipw" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDipx" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDipy" role="37vLTx">
                <property role="Xl_RC" value="Taxis.congestion_surcharge" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDipz" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDip$" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n32P" resolve="column17" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDip_" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="52XYD79n350" role="3cqZAp">
            <node concept="3cpWsn" id="52XYD79n351" role="3cpWs9">
              <property role="TrG5h" value="column18" />
              <node concept="3Tqbb2" id="52XYD79n352" role="1tU5fm">
                <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
              </node>
              <node concept="2ShNRf" id="52XYD79n353" role="33vP2m">
                <node concept="3zrR0B" id="52XYD79n354" role="2ShVmc">
                  <node concept="3Tqbb2" id="52XYD79n355" role="3zrR0E">
                    <ref role="ehGHo" to="p6im:14g3IsRh3GN" resolve="Column" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o6Ae" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o6Af" role="3clFbG">
              <node concept="Xl_RD" id="52XYD79o6Ag" role="37vLTx">
                <property role="Xl_RC" value="Airport_fee" />
              </node>
              <node concept="2OqwBi" id="52XYD79o6Ah" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o6Ai" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n351" resolve="column18" />
                </node>
                <node concept="3TrcHB" id="52XYD79o6Aj" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79o6ct" role="3cqZAp">
            <node concept="37vLTI" id="52XYD79o6cu" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79o6cv" role="37vLTJ">
                <node concept="37vLTw" id="52XYD79o6cw" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n351" resolve="column18" />
                </node>
                <node concept="3TrcHB" id="52XYD79o6cx" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:14g3IsRh3GR" resolve="type" />
                </node>
              </node>
              <node concept="2OqwBi" id="52XYD79o6cy" role="37vLTx">
                <node concept="1XH99k" id="52XYD79o6cz" role="2Oq$k0">
                  <ref role="1XH99l" to="p6im:14g3IsRh3GT" resolve="Type" />
                </node>
                <node concept="2ViDtV" id="52XYD79o6c$" role="2OqNvi">
                  <ref role="2ViDtZ" to="p6im:14g3IsRh3H3" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD7aDjwt" role="3cqZAp">
            <node concept="37vLTI" id="52XYD7aDjwu" role="3clFbG">
              <node concept="Xl_RD" id="52XYD7aDjwv" role="37vLTx">
                <property role="Xl_RC" value="Taxis.Airport_fee" />
              </node>
              <node concept="2OqwBi" id="52XYD7aDjww" role="37vLTJ">
                <node concept="37vLTw" id="52XYD7aDjwx" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79n351" resolve="column18" />
                </node>
                <node concept="3TrcHB" id="52XYD7aDjwy" role="2OqNvi">
                  <ref role="3TsBF5" to="p6im:21Z4UyPqhVV" resolve="fullName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="52XYD79oeLF" role="3cqZAp" />
          <node concept="3clFbF" id="52XYD79ofdF" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79oiDo" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79of_l" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ofdD" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ofN0" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" resolve="columns" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79onnE" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79onC5" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2Fq" resolve="column1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79osb3" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79osb4" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79osb5" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79osb6" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79osb7" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79osb8" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79osb9" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2HL" resolve="column2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79osmA" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79osmB" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79osmC" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79osmD" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79osmE" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79osmF" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79osmG" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2Iz" resolve="column3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ossM" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ossN" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ossO" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ossP" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ossQ" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79ossR" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79ossS" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2Jr" resolve="column4" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79osEN" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79osEO" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79osEP" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79osEQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79osER" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79osES" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79osET" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2JZ" resolve="column5" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79osPo" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79osPp" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79osPq" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79osPr" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79osPs" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79osPt" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79osPu" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2KD" resolve="column6" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ot08" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ot09" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ot0a" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ot0b" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ot0c" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79ot0d" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79ot0e" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2M7" resolve="column7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ot6K" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ot6L" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ot6M" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ot6N" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ot6O" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79ot6P" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79ot6Q" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2Nn" resolve="column8" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79otdv" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79otdw" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79otdx" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79otdy" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79otdz" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79otd$" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79otd_" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2OH" resolve="column9" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79otvY" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79otvZ" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79otw0" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79otw1" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79otw2" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79otw3" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79otw4" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2Q9" resolve="column10" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79otFq" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79otFr" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79otFs" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79otFt" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79otFu" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79otFv" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79otFw" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2RF" resolve="column11" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79otMu" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79otMv" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79otMw" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79otMx" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79otMy" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79otMz" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79otM$" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2Tj" resolve="column12" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79otTD" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79otTE" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79otTF" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79otTG" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79otTH" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79otTI" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79otTJ" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2V1" resolve="column13" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79oucO" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79oucP" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79oucQ" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79oucR" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79oucS" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79oucT" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79oucU" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2WP" resolve="column14" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ouoW" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ouoX" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ouoY" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ouoZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79oup0" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79oup1" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79oup2" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n2YJ" resolve="column15" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ou$J" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ou$K" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ou$L" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ou$M" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ou$N" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79ou$O" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79ou$P" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n30J" resolve="column16" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ouK7" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ouK8" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ouK9" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ouKa" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ouKb" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79ouKc" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79ouKd" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n32P" resolve="column17" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="52XYD79ouVQ" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79ouVR" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79ouVS" role="2Oq$k0">
                <node concept="37vLTw" id="52XYD79ouVT" role="2Oq$k0">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
                <node concept="3Tsc0h" id="52XYD79ouVU" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:7mg1zkgzI1k" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79ouVV" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79ouVW" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79n351" resolve="column18" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="52XYD79_ktc" role="3cqZAp" />
          <node concept="3clFbF" id="52XYD79_kIi" role="3cqZAp">
            <node concept="2OqwBi" id="52XYD79_nsy" role="3clFbG">
              <node concept="2OqwBi" id="52XYD79_l1d" role="2Oq$k0">
                <node concept="1r4Lsj" id="52XYD79_kIh" role="2Oq$k0" />
                <node concept="3Tsc0h" id="52XYD79_ldS" role="2OqNvi">
                  <ref role="3TtcxE" to="p6im:2G8vGeEpl5A" resolve="operations" />
                </node>
              </node>
              <node concept="TSZUe" id="52XYD79_r4J" role="2OqNvi">
                <node concept="37vLTw" id="52XYD79_r8r" role="25WWJ7">
                  <ref role="3cqZAo" node="52XYD79mS50" resolve="taxisTable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="52XYD79Fz4N" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
</model>

