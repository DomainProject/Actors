<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f76a71f-8ff3-4fc1-ba13-01a6d60b4afe(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
    <devkit ref="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  </languages>
  <imports />
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="1411682935492097494" name="ActorLanguage.structure.ReceptionistPolicy" flags="ng" index="2iUZJK" />
      <concept id="1411682935490806610" name="ActorLanguage.structure.GetNeighborsFromReceptionist" flags="ng" index="2iZ$PO">
        <child id="1411682935492097502" name="policy" index="2iUZJS" />
        <child id="13109696840883591" name="actorReferences" index="BvGUO" />
      </concept>
      <concept id="3715044905897659561" name="ActorLanguage.structure.SendMessageToNeighbors" flags="ng" index="2nav41">
        <property id="3715044905898602550" name="priority" index="2neSQu" />
        <reference id="3715044905897659564" name="referenceList" index="2nav44" />
        <child id="3715044905900233180" name="payload" index="2ngaLO" />
      </concept>
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="4619656042768923827" name="ActorLanguage.structure.ActorReferenceList" flags="ng" index="2_DyK2" />
      <concept id="6946180687069863913" name="ActorLanguage.structure.ExternalFunctionPrototype" flags="ng" index="I7Tlx">
        <property id="6946180687069863938" name="header" index="I7UEa" />
        <child id="6946180687069863915" name="prototype" index="I7Tlz" />
      </concept>
      <concept id="6946180687074189095" name="ActorLanguage.structure.EmptyLine" flags="ng" index="IQpmJ" />
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="8453059353961860195" name="types" index="1fvW3h" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
      </concept>
      <concept id="3352821068295505926" name="ActorLanguage.structure.ExternalType" flags="ng" index="1dH9jT">
        <property id="3352821068296763923" name="header" index="1dKqrG" />
        <child id="3352821068296763924" name="declaration" index="1dKqrF" />
      </concept>
      <concept id="8453059353960860303" name="ActorLanguage.structure.CustomType" flags="ng" index="1frwoX" />
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="7051067309802826947" name="ActorLanguage.structure.ExternalFunction" flags="ng" index="1hWc2v" />
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <child id="3865756215866352723" name="function" index="37ngyo" />
      </concept>
    </language>
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" name="com.mbeddr.core.statements">
      <concept id="6275792049641600983" name="com.mbeddr.core.statements.structure.IfStatement" flags="ng" index="c0U19">
        <child id="6275792049641600984" name="condition" index="c0U16" />
        <child id="6275792049641600985" name="thenPart" index="c0U17" />
      </concept>
      <concept id="7763322639126652757" name="com.mbeddr.core.statements.structure.ITypeContainingType" flags="ngI" index="2umbIr">
        <child id="7763322639126652758" name="baseType" index="2umbIo" />
      </concept>
      <concept id="4185783222026475238" name="com.mbeddr.core.statements.structure.LocalVariableDeclaration" flags="ng" index="3XIRlf">
        <child id="4185783222026502647" name="init" index="3XIe9u" />
      </concept>
      <concept id="4185783222026475861" name="com.mbeddr.core.statements.structure.StatementList" flags="ng" index="3XIRFW">
        <child id="4185783222026475862" name="statements" index="3XIRFZ" />
      </concept>
      <concept id="4185783222026464515" name="com.mbeddr.core.statements.structure.Statement" flags="ng" index="3XISUE" />
      <concept id="2093108837558113914" name="com.mbeddr.core.statements.structure.LocalVarRef" flags="ng" index="3ZVu4v">
        <reference id="2093108837558124071" name="var" index="3ZVs_2" />
      </concept>
    </language>
    <language id="3bf5377a-e904-4ded-9754-5a516023bfaa" name="com.mbeddr.core.pointers">
      <concept id="5308710777891643206" name="com.mbeddr.core.pointers.structure.NullExpression" flags="ng" index="Ea8Gl" />
      <concept id="279446265608459824" name="com.mbeddr.core.pointers.structure.PointerType" flags="ng" index="3wxxNl" />
    </language>
    <language id="efda956e-491e-4f00-ba14-36af2f213ecf" name="com.mbeddr.core.udt">
      <concept id="6116558314501347863" name="com.mbeddr.core.udt.structure.TypeDefType" flags="ng" index="rcJHQ">
        <reference id="6116558314501347864" name="typeDef" index="rcJHT" />
      </concept>
      <concept id="6394819151180597807" name="com.mbeddr.core.udt.structure.StructDeclaration" flags="ng" index="1sgJKc" />
      <concept id="6394819151180597816" name="com.mbeddr.core.udt.structure.StructType" flags="ng" index="1sgJKr">
        <reference id="6394819151180597817" name="struct" index="1sgJKq" />
      </concept>
    </language>
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" name="com.mbeddr.core.modules">
      <concept id="8967919205527146149" name="com.mbeddr.core.modules.structure.ReturnStatement" flags="ng" index="2BFjQ_" />
      <concept id="8105003328814797298" name="com.mbeddr.core.modules.structure.IFunctionLike" flags="ngI" index="2H9T1B">
        <child id="5708867820623310661" name="arguments" index="1UOdpc" />
      </concept>
      <concept id="7713191144372389655" name="com.mbeddr.core.modules.structure.ITypeDef" flags="ngI" index="2I2SlH">
        <child id="6116558314501347862" name="original" index="rcJHR" />
      </concept>
      <concept id="6437088627575724000" name="com.mbeddr.core.modules.structure.FunctionPrototype" flags="ng" index="N3Fnw" />
      <concept id="6437088627575724001" name="com.mbeddr.core.modules.structure.Function" flags="ng" index="N3Fnx">
        <child id="4185783222026475860" name="body" index="3XIRFX" />
      </concept>
      <concept id="7892328519581704407" name="com.mbeddr.core.modules.structure.Argument" flags="ng" index="19RgSI" />
      <concept id="5950410542643524492" name="com.mbeddr.core.modules.structure.FunctionCall" flags="ng" index="3O_q_g">
        <reference id="5950410542643524493" name="function" index="3O_q_h" />
        <child id="5950410542643524495" name="actuals" index="3O_q_j" />
      </concept>
      <concept id="2093108837558505658" name="com.mbeddr.core.modules.structure.ArgumentRef" flags="ng" index="3ZUYvv">
        <reference id="2093108837558505659" name="arg" index="3ZUYvu" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="8463282783691618456" name="com.mbeddr.core.expressions.structure.UnsignedInt64tType" flags="ng" index="26Vqp1" />
      <concept id="3005510381523579442" name="com.mbeddr.core.expressions.structure.UnaryExpression" flags="ng" index="2aKSnQ">
        <child id="7254843406768839760" name="expression" index="1_9fRO" />
      </concept>
      <concept id="8864856114140038681" name="com.mbeddr.core.expressions.structure.DoubleType" flags="ng" index="2fgwQN" />
      <concept id="5763383285156533447" name="com.mbeddr.core.expressions.structure.ParensExpression" flags="ng" index="2BPB98" />
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ngI" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="5924821888882196543" name="com.mbeddr.core.expressions.structure.ExpressionList" flags="ng" index="2Ysn8y">
        <child id="5924821888882211457" name="expressions" index="2Yskys" />
      </concept>
      <concept id="7892328519581699353" name="com.mbeddr.core.expressions.structure.VoidType" flags="ng" index="19Rifw" />
      <concept id="6610873504380029780" name="com.mbeddr.core.expressions.structure.CastExpression" flags="ng" index="1S8S4T">
        <child id="6610873504380029790" name="targetType" index="1S8S4N" />
        <child id="6610873504380029782" name="expr" index="1S8S4V" />
      </concept>
      <concept id="8860443239512129322" name="com.mbeddr.core.expressions.structure.EqualsExpression" flags="ng" index="3TlM44" />
      <concept id="8860443239512128052" name="com.mbeddr.core.expressions.structure.BinaryExpression" flags="ng" index="3TlMgq">
        <child id="8860443239512128064" name="left" index="3TlMhI" />
        <child id="8860443239512128065" name="right" index="3TlMhJ" />
      </concept>
    </language>
  </registry>
  <node concept="37lXYX" id="61_MCxe_awW">
    <property role="TrG5h" value="Script" />
    <node concept="1lj4MQ" id="4uIaRgsne0d" role="2QtU1L">
      <node concept="N3Fnx" id="4uIaRgsne0f" role="37ngyo">
        <node concept="19Rifw" id="4uIaRgsne0g" role="2C2TGm" />
        <node concept="3XIRFW" id="4uIaRgsne0h" role="3XIRFX">
          <node concept="3XISUE" id="4uIaRgsne0i" role="3XIRFZ" />
        </node>
      </node>
    </node>
    <node concept="2QtU1Q" id="61_MCxe_awX" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="61_MCxe_awY" role="2QtU1V" />
    </node>
    <node concept="1frwoX" id="61_MCxeEREx" role="1fvW3h">
      <property role="TrG5h" value="simtime_t" />
      <node concept="2fgwQN" id="61_MCxeEREC" role="rcJHR" />
    </node>
    <node concept="1frwoX" id="61_MCxeERET" role="1fvW3h">
      <property role="TrG5h" value="lp_id_t" />
      <node concept="26Vqp1" id="61_MCxeERF0" role="rcJHR" />
    </node>
    <node concept="IQpmJ" id="2U7BfXzls5W" role="1fvW3h" />
    <node concept="1dH9jT" id="2U7BfXzqxdg" role="1fvW3h">
      <property role="TrG5h" value="GroupsLinkedList" />
      <property role="1dKqrG" value="pseudosql" />
      <node concept="1sgJKc" id="2U7BfXzqxdi" role="1dKqrF">
        <property role="TrG5h" value="GroupsLinkedList" />
      </node>
    </node>
    <node concept="1dH9jT" id="2U7BfXzqxdl" role="1fvW3h">
      <property role="TrG5h" value="RowsLinkedList" />
      <property role="1dKqrG" value="pseudosql" />
      <node concept="1sgJKc" id="2U7BfXzqxdn" role="1dKqrF">
        <property role="TrG5h" value="RowsLinkedList" />
      </node>
    </node>
    <node concept="1dH9jT" id="2U7BfXzuscg" role="1fvW3h">
      <property role="TrG5h" value="RowsMessage" />
      <property role="1dKqrG" value="pseudosql" />
      <node concept="1sgJKc" id="2U7BfXzusci" role="1dKqrF">
        <property role="TrG5h" value="RowsMessage" />
      </node>
    </node>
    <node concept="1dH9jT" id="2U7BfXzuscl" role="1fvW3h">
      <property role="TrG5h" value="GroupsMessage" />
      <property role="1dKqrG" value="pseudosql" />
      <node concept="1sgJKc" id="2U7BfXzuscn" role="1dKqrF">
        <property role="TrG5h" value="GroupsMessage" />
      </node>
    </node>
    <node concept="1dH9jT" id="2U7BfXzusc$" role="1fvW3h">
      <property role="TrG5h" value="WindowData" />
      <property role="1dKqrG" value="pseudosql" />
      <node concept="1sgJKc" id="2U7BfXzuscA" role="1dKqrF">
        <property role="TrG5h" value="WindowData" />
      </node>
    </node>
    <node concept="I7Tlx" id="2U7BfXzusc7" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="2U7BfXzusc8" role="I7Tlz">
        <property role="TrG5h" value="ExecuteWindow" />
        <node concept="3wxxNl" id="2U7BfXzBPb8" role="2C2TGm">
          <node concept="1sgJKr" id="2U7BfXzBPb0" role="2umbIo">
            <ref role="1sgJKq" node="2U7BfXzqxdn" resolve="RowsLinkedList" />
          </node>
        </node>
        <node concept="19RgSI" id="2U7BfXzPBZ3" role="1UOdpc">
          <property role="TrG5h" value="msg" />
          <node concept="3wxxNl" id="2U7BfXzPBZJ" role="2C2TGm">
            <node concept="1sgJKr" id="2U7BfXzPBZ2" role="2umbIo">
              <ref role="1sgJKq" node="2U7BfXzusci" resolve="RowsMessage" />
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="2U7BfXzPC3Q" role="1UOdpc">
          <property role="TrG5h" value="data" />
          <node concept="3wxxNl" id="2U7BfXzPC4z" role="2C2TGm">
            <node concept="1sgJKr" id="2U7BfXzPC3P" role="2umbIo">
              <ref role="1sgJKq" node="2U7BfXzuscA" resolve="WindowData" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="2U7BfXzVg3T" role="1hWdPE" />
    <node concept="1hWc2v" id="2U7BfXzUYqG" role="1hWdPE">
      <property role="TrG5h" value="window" />
      <node concept="19Rifw" id="2U7BfXzUYRN" role="2C2TGm" />
      <node concept="3XIRFW" id="2U7BfXzUYqI" role="3XIRFX">
        <node concept="3XIRlf" id="2U7BfXzUYQ5" role="3XIRFZ">
          <property role="TrG5h" value="result" />
          <node concept="3wxxNl" id="2U7BfXzUYQC" role="2C2TGm">
            <node concept="1sgJKr" id="2U7BfXzUYQ4" role="2umbIo">
              <ref role="1sgJKq" node="2U7BfXzqxdn" resolve="RowsLinkedList" />
            </node>
          </node>
          <node concept="3O_q_g" id="2U7BfXzUYSu" role="3XIe9u">
            <ref role="3O_q_h" node="2U7BfXzusc8" resolve="ExecuteWindow" />
            <node concept="1S8S4T" id="2U7BfXzUYSX" role="3O_q_j">
              <node concept="2Ysn8y" id="2U7BfXzUYWS" role="1S8S4V">
                <node concept="2BPB98" id="2U7BfXzUYSY" role="2Yskys">
                  <node concept="2Ysn8y" id="2U7BfXzUYVb" role="1_9fRO">
                    <node concept="3ZUYvv" id="2U7BfXzUYUY" role="2Yskys">
                      <ref role="3ZUYvu" node="2U7BfXzUZlT" resolve="msg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3wxxNl" id="2U7BfXzUYU2" role="1S8S4N">
                <node concept="1sgJKr" id="2U7BfXzUYTw" role="2umbIo">
                  <ref role="1sgJKq" node="2U7BfXzusci" resolve="RowsMessage" />
                </node>
              </node>
            </node>
            <node concept="1S8S4T" id="2U7BfXzUZyL" role="3O_q_j">
              <node concept="2BPB98" id="2U7BfXzUZyM" role="1S8S4V">
                <node concept="3ZUYvv" id="2U7BfXzUZDP" role="1_9fRO">
                  <ref role="3ZUYvu" node="2U7BfXzV6BM" resolve="data" />
                </node>
              </node>
              <node concept="3wxxNl" id="2U7BfXzUZBg" role="1S8S4N">
                <node concept="1sgJKr" id="2U7BfXzUZ_2" role="2umbIo">
                  <ref role="1sgJKq" node="2U7BfXzuscA" resolve="WindowData" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="c0U19" id="2U7BfXzUZIA" role="3XIRFZ">
          <node concept="3XIRFW" id="2U7BfXzUZIB" role="c0U17">
            <node concept="2BFjQ_" id="2U7BfXzV04n" role="3XIRFZ" />
          </node>
          <node concept="3TlM44" id="2U7BfXzUZL1" role="c0U16">
            <node concept="Ea8Gl" id="2U7BfXzUZNQ" role="3TlMhJ" />
            <node concept="3ZVu4v" id="2U7BfXzUZJo" role="3TlMhI">
              <ref role="3ZVs_2" node="2U7BfXzUYQ5" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2iZ$PO" id="7uEn6tx$gLK" role="3XIRFZ">
          <node concept="2iUZJK" id="7uEn6tx$gLM" role="2iUZJS" />
          <node concept="2_DyK2" id="7uEn6tx$gLO" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="7uEn6txMkgN" role="3XIRFZ">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="7uEn6tx$gLO" resolve="refs" />
          <node concept="3g$k$6" id="7uEn6txMkgP" role="2ngaLO">
            <ref role="3g$k$l" node="2U7BfXzUYQ5" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="2U7BfXzUYuW" role="1UOdpc">
        <property role="TrG5h" value="me" />
        <node concept="rcJHQ" id="2U7BfXzUYuV" role="2C2TGm">
          <ref role="rcJHT" node="61_MCxeERET" resolve="lp_id_t" />
        </node>
      </node>
      <node concept="19RgSI" id="2U7BfXzUY$T" role="1UOdpc">
        <property role="TrG5h" value="now" />
        <node concept="rcJHQ" id="2U7BfXzUY$R" role="2C2TGm">
          <ref role="rcJHT" node="61_MCxeEREx" resolve="simtime_t" />
        </node>
      </node>
      <node concept="19RgSI" id="2U7BfXzUZlT" role="1UOdpc">
        <property role="TrG5h" value="msg" />
        <node concept="3wxxNl" id="2U7BfXzV6_x" role="2C2TGm">
          <node concept="19Rifw" id="2U7BfXzV6_7" role="2umbIo" />
        </node>
      </node>
      <node concept="19RgSI" id="2U7BfXzV6BM" role="1UOdpc">
        <property role="TrG5h" value="data" />
        <node concept="3wxxNl" id="2U7BfXzV6Cg" role="2C2TGm">
          <node concept="19Rifw" id="2U7BfXzV6C8" role="2umbIo" />
        </node>
      </node>
    </node>
  </node>
</model>

