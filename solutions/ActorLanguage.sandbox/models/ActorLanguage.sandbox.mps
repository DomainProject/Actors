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
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="7724742800286591751" name="ActorLanguage.structure.ActorBoxesList" flags="ng" index="Fpmux">
        <child id="7724742800286591752" name="actorBoxes" index="FpmuI" />
      </concept>
      <concept id="6946180687069863913" name="ActorLanguage.structure.ExternalFunctionPrototype" flags="ng" index="I7Tlx">
        <property id="6946180687069863938" name="header" index="I7UEa" />
        <child id="6946180687069863915" name="prototype" index="I7Tlz" />
      </concept>
      <concept id="6946180687074189095" name="ActorLanguage.structure.EmptyLine" flags="ng" index="IQpmJ" />
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="1411682935489244212" name="address" index="2iLA8i" />
        <reference id="5165113600312232816" name="behavior" index="1sy604" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actorCreation" index="37lXYW" />
        <child id="847996140684016721" name="configuration" index="1bAXeI" />
        <child id="8453059353961860195" name="types" index="1fvW3h" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
        <child id="2257009365450236488" name="customEvents" index="1ldE17" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="847996140684016715" name="ActorLanguage.structure.GlobalVarDecl" flags="ng" index="1bAXeO" />
      <concept id="3352821068295505926" name="ActorLanguage.structure.ExternalType" flags="ng" index="1dH9jT">
        <property id="847996140726413083" name="header" index="198Gz$" />
        <child id="847996140726426405" name="structDeclaration" index="198zjq" />
      </concept>
      <concept id="2257009365450236486" name="ActorLanguage.structure.CustomEvent" flags="ng" index="1ldE19" />
      <concept id="2257009365450236498" name="ActorLanguage.structure.CustomEventHandler" flags="ng" index="1ldE1t">
        <reference id="2257009365450236499" name="event" index="1ldE1s" />
        <child id="2257009365450236523" name="function" index="1ldE1$" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH" />
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <property id="6842115693881541009" name="receivedMessageName" index="2F6P9D" />
        <child id="6842115693882584148" name="receivedMessage" index="2F2NYG" />
        <child id="3865756215866352723" name="function" index="37ngyo" />
        <child id="2257009365450236491" name="customEventsHandlers" index="1ldE14" />
        <child id="2257009365445288733" name="cleanupHandler" index="1liy4i" />
        <child id="2257009365445288732" name="initHandler" index="1liy4j" />
        <child id="5165113600285380371" name="messageArg" index="1u8EhB" />
      </concept>
      <concept id="2750811047725463862" name="ActorLanguage.structure.ActorsGraph" flags="ng" index="3DMq4$">
        <child id="7724742800286591798" name="actors" index="Fpmug" />
        <child id="2750811047725463932" name="links" index="3DMq5I" />
      </concept>
      <concept id="2750811047725463863" name="ActorLanguage.structure.ActorBox" flags="ng" index="3DMq4_">
        <reference id="2750811047725463865" name="actor" index="3DMq4F" />
      </concept>
      <concept id="2750811047725463864" name="ActorLanguage.structure.ActorLink" flags="ng" index="3DMq4E">
        <reference id="2750811047725463926" name="actorTo" index="3DMq5$" />
        <reference id="2750811047725463924" name="actorFrom" index="3DMq5A" />
      </concept>
    </language>
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" name="com.mbeddr.core.statements">
      <concept id="7763322639126652757" name="com.mbeddr.core.statements.structure.ITypeContainingType" flags="ngI" index="2umbIr">
        <child id="7763322639126652758" name="baseType" index="2umbIo" />
      </concept>
      <concept id="7254843406768833938" name="com.mbeddr.core.statements.structure.ExpressionStatement" flags="ng" index="1_9egQ">
        <child id="7254843406768833939" name="expr" index="1_9egR" />
      </concept>
      <concept id="4185783222026475238" name="com.mbeddr.core.statements.structure.LocalVariableDeclaration" flags="ng" index="3XIRlf">
        <child id="4185783222026502647" name="init" index="3XIe9u" />
      </concept>
      <concept id="4185783222026475861" name="com.mbeddr.core.statements.structure.StatementList" flags="ng" index="3XIRFW">
        <child id="4185783222026475862" name="statements" index="3XIRFZ" />
      </concept>
      <concept id="2093108837558113914" name="com.mbeddr.core.statements.structure.LocalVarRef" flags="ng" index="3ZVu4v">
        <reference id="2093108837558124071" name="var" index="3ZVs_2" />
      </concept>
    </language>
    <language id="3bf5377a-e904-4ded-9754-5a516023bfaa" name="com.mbeddr.core.pointers">
      <concept id="5308710777891643206" name="com.mbeddr.core.pointers.structure.NullExpression" flags="ng" index="Ea8Gl" />
      <concept id="279446265608459824" name="com.mbeddr.core.pointers.structure.PointerType" flags="ng" index="3wxxNl" />
    </language>
    <language id="efda956e-491e-4f00-ba14-36af2f213ecf" name="com.mbeddr.core.udt">
      <concept id="6394819151180597807" name="com.mbeddr.core.udt.structure.StructDeclaration" flags="ng" index="1sgJKc" />
      <concept id="6394819151180597816" name="com.mbeddr.core.udt.structure.StructType" flags="ng" index="1sgJKr">
        <reference id="6394819151180597817" name="struct" index="1sgJKq" />
      </concept>
    </language>
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" name="com.mbeddr.core.modules">
      <concept id="8105003328814797298" name="com.mbeddr.core.modules.structure.IFunctionLike" flags="ngI" index="2H9T1B">
        <child id="5708867820623310661" name="arguments" index="1UOdpc" />
      </concept>
      <concept id="6437088627575722813" name="com.mbeddr.core.modules.structure.Module" flags="ng" index="N3F4X">
        <child id="6437088627575722833" name="contents" index="N3F5h" />
      </concept>
      <concept id="6437088627575724000" name="com.mbeddr.core.modules.structure.FunctionPrototype" flags="ng" index="N3Fnw" />
      <concept id="6437088627575724001" name="com.mbeddr.core.modules.structure.Function" flags="ng" index="N3Fnx">
        <child id="4185783222026475860" name="body" index="3XIRFX" />
      </concept>
      <concept id="8934095934011938595" name="com.mbeddr.core.modules.structure.EmptyModuleContent" flags="ng" index="2NXPZ9" />
      <concept id="7892328519581704407" name="com.mbeddr.core.modules.structure.Argument" flags="ng" index="19RgSI" />
      <concept id="5950410542643524492" name="com.mbeddr.core.modules.structure.FunctionCall" flags="ng" index="3O_q_g">
        <reference id="5950410542643524493" name="function" index="3O_q_h" />
        <child id="5950410542643524495" name="actuals" index="3O_q_j" />
      </concept>
      <concept id="6610873504380335822" name="com.mbeddr.core.modules.structure.GlobalVariableDeclaration" flags="ng" index="1S7NMz">
        <child id="2771264470558526601" name="init" index="1cecVj" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="8463282783691618456" name="com.mbeddr.core.expressions.structure.UnsignedInt64tType" flags="ng" index="26Vqp1" />
      <concept id="8864856114140038681" name="com.mbeddr.core.expressions.structure.DoubleType" flags="ng" index="2fgwQN" />
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ngI" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="7892328519581699353" name="com.mbeddr.core.expressions.structure.VoidType" flags="ng" index="19Rifw" />
    </language>
  </registry>
  <node concept="37lXYX" id="1IMoxTthUGS">
    <property role="TrG5h" value="TestScript" />
    <node concept="2NXPZ9" id="1IMoxTthUGT" role="N3F5h">
      <property role="TrG5h" value="empty_1742205412886_5" />
    </node>
    <node concept="2QtU1Q" id="1IMoxTthUGU" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="1IMoxTthUGV" role="2QtU1V" />
    </node>
    <node concept="1ldE19" id="1IMoxTthUGW" role="1ldE17">
      <property role="TrG5h" value="TERMINATE" />
    </node>
    <node concept="I7Tlx" id="1IMoxTthUGX" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthUGY" role="I7Tlz">
        <property role="TrG5h" value="Projection" />
        <node concept="3wxxNl" id="1IMoxTthUIv" role="2C2TGm">
          <node concept="1sgJKr" id="1IMoxTthUIn" role="2umbIo">
            <ref role="1sgJKq" node="1IMoxTthUHn" resolve="RowsLinkedList" />
          </node>
        </node>
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthUJ6" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthUJ8" role="I7Tlz">
        <property role="TrG5h" value="ProcessList" />
        <node concept="19Rifw" id="1IMoxTthUJh" role="2C2TGm" />
        <node concept="19RgSI" id="1IMoxTthUW3" role="1UOdpc">
          <property role="TrG5h" value="list" />
          <node concept="3wxxNl" id="1IMoxTthUWg" role="2C2TGm">
            <node concept="1sgJKr" id="1IMoxTthUW2" role="2umbIo">
              <ref role="1sgJKq" node="1IMoxTthUHn" resolve="RowsLinkedList" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWh7" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWh9" role="I7Tlz">
        <property role="TrG5h" value="InitB1" />
        <node concept="19Rifw" id="1IMoxTthWhi" role="2C2TGm" />
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWl$" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWl_" role="I7Tlz">
        <property role="TrG5h" value="CleanupB1" />
        <node concept="19Rifw" id="1IMoxTthWlA" role="2C2TGm" />
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWp9" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWpa" role="I7Tlz">
        <property role="TrG5h" value="TerminateB1" />
        <node concept="19Rifw" id="1IMoxTthWpb" role="2C2TGm" />
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWhD" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWhF" role="I7Tlz">
        <property role="TrG5h" value="InitB2" />
        <node concept="19Rifw" id="1IMoxTthWhO" role="2C2TGm" />
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWlG" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWlH" role="I7Tlz">
        <property role="TrG5h" value="CleanupB2" />
        <node concept="19Rifw" id="1IMoxTthWlI" role="2C2TGm" />
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWph" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWpi" role="I7Tlz">
        <property role="TrG5h" value="TerminateB2" />
        <node concept="19Rifw" id="1IMoxTthWpj" role="2C2TGm" />
      </node>
    </node>
    <node concept="I7Tlx" id="1IMoxTthWi6" role="1hWdPE">
      <property role="I7UEa" value="pseudosql" />
      <node concept="N3Fnw" id="1IMoxTthWi8" role="I7Tlz">
        <property role="TrG5h" value="DoSomething" />
        <node concept="19Rifw" id="1IMoxTthWih" role="2C2TGm" />
      </node>
    </node>
    <node concept="1dH9jT" id="1IMoxTthUHm" role="1fvW3h">
      <property role="TrG5h" value="RowsLinkedList" />
      <property role="198Gz$" value="pseudosql" />
      <node concept="1sgJKc" id="1IMoxTthUHn" role="198zjq">
        <property role="TrG5h" value="RowsLinkedList" />
      </node>
    </node>
    <node concept="1dH9jT" id="1IMoxTthUWY" role="1fvW3h">
      <property role="TrG5h" value="Topology" />
      <property role="198Gz$" value="ROOT-Sim/topology" />
      <node concept="1sgJKc" id="1IMoxTthUX0" role="198zjq">
        <property role="TrG5h" value="Topology" />
      </node>
    </node>
    <node concept="1bAXeO" id="1IMoxTthUWP" role="1bAXeI">
      <property role="TrG5h" value="topology" />
      <node concept="3wxxNl" id="1IMoxTthUXb" role="2C2TGm">
        <node concept="1sgJKr" id="1IMoxTthUX2" role="2umbIo">
          <ref role="1sgJKq" node="1IMoxTthUX0" resolve="Topology" />
        </node>
      </node>
      <node concept="Ea8Gl" id="1IMoxTthUXF" role="1cecVj" />
    </node>
    <node concept="1lj4MQ" id="1IMoxTtlEYL" role="2QtU1L">
      <property role="TrG5h" value="b1" />
      <property role="2F6P9D" value="message" />
      <node concept="N3Fnx" id="1IMoxTtlEYN" role="37ngyo">
        <property role="TrG5h" value="b1Handler" />
        <node concept="19RgSI" id="1IMoxTtlF25" role="1UOdpc">
          <property role="TrG5h" value="message" />
          <node concept="3wxxNl" id="1IMoxTtlF26" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlF27" role="2umbIo" />
          </node>
        </node>
        <node concept="19Rifw" id="1IMoxTtlEYO" role="2C2TGm" />
        <node concept="3XIRFW" id="1IMoxTtlEYP" role="3XIRFX">
          <node concept="3XIRlf" id="1IMoxTtlFJ2" role="3XIRFZ">
            <property role="TrG5h" value="list" />
            <node concept="3wxxNl" id="1IMoxTtlFJd" role="2C2TGm">
              <node concept="1sgJKr" id="1IMoxTtlFJ1" role="2umbIo">
                <ref role="1sgJKq" node="1IMoxTthUHn" resolve="RowsLinkedList" />
              </node>
            </node>
            <node concept="3O_q_g" id="1IMoxTtlFJV" role="3XIe9u">
              <ref role="3O_q_h" node="1IMoxTthUGY" resolve="Projection" />
            </node>
          </node>
          <node concept="1_9egQ" id="1IMoxTtlG2X" role="3XIRFZ">
            <node concept="3O_q_g" id="1IMoxTtlG2V" role="1_9egR">
              <ref role="3O_q_h" node="1IMoxTthUJ8" resolve="ProcessList" />
              <node concept="3ZVu4v" id="1IMoxTtlG3b" role="3O_q_j">
                <ref role="3ZVs_2" node="1IMoxTtlFJ2" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZi" role="1UOdpc">
          <property role="TrG5h" value="state" />
          <node concept="3wxxNl" id="1IMoxTtlEZj" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEZk" role="2umbIo" />
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZl" role="1UOdpc">
          <property role="TrG5h" value="me" />
          <node concept="26Vqp1" id="1IMoxTtlEZm" role="2C2TGm" />
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZn" role="1UOdpc">
          <property role="TrG5h" value="now" />
          <node concept="2fgwQN" id="1IMoxTtlEZo" role="2C2TGm" />
        </node>
      </node>
      <node concept="N3Fnx" id="1IMoxTtlEYR" role="1liy4j">
        <property role="TrG5h" value="b1Init" />
        <node concept="19Rifw" id="1IMoxTtlEYS" role="2C2TGm" />
        <node concept="3XIRFW" id="1IMoxTtlEYT" role="3XIRFX">
          <node concept="1_9egQ" id="1IMoxTtlG6t" role="3XIRFZ">
            <node concept="3O_q_g" id="1IMoxTtlG6r" role="1_9egR">
              <ref role="3O_q_h" node="1IMoxTthWh9" resolve="InitB1" />
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZp" role="1UOdpc">
          <property role="TrG5h" value="state" />
          <node concept="3wxxNl" id="1IMoxTtlEZq" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEZr" role="2umbIo" />
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZs" role="1UOdpc">
          <property role="TrG5h" value="me" />
          <node concept="26Vqp1" id="1IMoxTtlEZt" role="2C2TGm" />
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZu" role="1UOdpc">
          <property role="TrG5h" value="now" />
          <node concept="2fgwQN" id="1IMoxTtlEZv" role="2C2TGm" />
        </node>
      </node>
      <node concept="N3Fnx" id="1IMoxTtlEYV" role="1liy4i">
        <property role="TrG5h" value="b1Cleanup" />
        <node concept="19Rifw" id="1IMoxTtlEYW" role="2C2TGm" />
        <node concept="3XIRFW" id="1IMoxTtlEYX" role="3XIRFX">
          <node concept="1_9egQ" id="1IMoxTtlG9y" role="3XIRFZ">
            <node concept="3O_q_g" id="1IMoxTtlG9w" role="1_9egR">
              <ref role="3O_q_h" node="1IMoxTthWl_" resolve="CleanupB1" />
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZw" role="1UOdpc">
          <property role="TrG5h" value="state" />
          <node concept="3wxxNl" id="1IMoxTtlEZx" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEZy" role="2umbIo" />
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZz" role="1UOdpc">
          <property role="TrG5h" value="me" />
          <node concept="26Vqp1" id="1IMoxTtlEZ$" role="2C2TGm" />
        </node>
        <node concept="19RgSI" id="1IMoxTtlEZ_" role="1UOdpc">
          <property role="TrG5h" value="now" />
          <node concept="2fgwQN" id="1IMoxTtlEZA" role="2C2TGm" />
        </node>
      </node>
      <node concept="1ldE1t" id="1IMoxTtlEYZ" role="1ldE14">
        <ref role="1ldE1s" node="1IMoxTthUGW" resolve="TERMINATE" />
        <node concept="N3Fnx" id="1IMoxTtlEZ0" role="1ldE1$">
          <property role="TrG5h" value="terminateHandler" />
          <node concept="19Rifw" id="1IMoxTtlEZ1" role="2C2TGm" />
          <node concept="3XIRFW" id="1IMoxTtlEZ2" role="3XIRFX">
            <node concept="1_9egQ" id="1IMoxTtlGcB" role="3XIRFZ">
              <node concept="3O_q_g" id="1IMoxTtlGc_" role="1_9egR">
                <ref role="3O_q_h" node="1IMoxTthWpa" resolve="TerminateB1" />
              </node>
            </node>
          </node>
          <node concept="19RgSI" id="1IMoxTtlEZ4" role="1UOdpc">
            <property role="TrG5h" value="me" />
            <node concept="26Vqp1" id="1IMoxTtlEZ7" role="2C2TGm" />
          </node>
          <node concept="19RgSI" id="1IMoxTtlEZ5" role="1UOdpc">
            <property role="TrG5h" value="now" />
            <node concept="2fgwQN" id="1IMoxTtlEZ8" role="2C2TGm" />
          </node>
          <node concept="19RgSI" id="1IMoxTtlEZ6" role="1UOdpc">
            <property role="TrG5h" value="state" />
            <node concept="3wxxNl" id="1IMoxTtlEZ9" role="2C2TGm">
              <node concept="19Rifw" id="1IMoxTtlEZa" role="2umbIo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37lXYU" id="1IMoxTtlF20" role="2F2NYG">
        <property role="TrG5h" value="message" />
        <node concept="1lgcPH" id="1IMoxTtlF21" role="GupN0">
          <property role="TrG5h" value="message.payload" />
        </node>
      </node>
      <node concept="19RgSI" id="1IMoxTtlF22" role="1u8EhB">
        <property role="TrG5h" value="m" />
        <node concept="3wxxNl" id="1IMoxTtlF23" role="2C2TGm">
          <node concept="19Rifw" id="1IMoxTtlF24" role="2umbIo" />
        </node>
      </node>
    </node>
    <node concept="IQpmJ" id="1IMoxTtlGcX" role="2QtU1L" />
    <node concept="IQpmJ" id="1IMoxTtlEDY" role="2QtU1L" />
    <node concept="1lj4MQ" id="1IMoxTtlEE0" role="2QtU1L">
      <property role="TrG5h" value="b2" />
      <property role="2F6P9D" value="message" />
      <node concept="N3Fnx" id="1IMoxTtlEE2" role="37ngyo">
        <property role="TrG5h" value="b2Handler" />
        <node concept="19RgSI" id="1IMoxTtlEHk" role="1UOdpc">
          <property role="TrG5h" value="message" />
          <node concept="3wxxNl" id="1IMoxTtlEHl" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEHm" role="2umbIo" />
          </node>
        </node>
        <node concept="19Rifw" id="1IMoxTtlEE3" role="2C2TGm" />
        <node concept="3XIRFW" id="1IMoxTtlEE4" role="3XIRFX">
          <node concept="1_9egQ" id="1IMoxTtlEKV" role="3XIRFZ">
            <node concept="3O_q_g" id="1IMoxTtlEKT" role="1_9egR">
              <ref role="3O_q_h" node="1IMoxTthWi8" resolve="DoSomething" />
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEx" role="1UOdpc">
          <property role="TrG5h" value="state" />
          <node concept="3wxxNl" id="1IMoxTtlEEy" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEEz" role="2umbIo" />
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEE$" role="1UOdpc">
          <property role="TrG5h" value="me" />
          <node concept="26Vqp1" id="1IMoxTtlEE_" role="2C2TGm" />
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEA" role="1UOdpc">
          <property role="TrG5h" value="now" />
          <node concept="2fgwQN" id="1IMoxTtlEEB" role="2C2TGm" />
        </node>
      </node>
      <node concept="N3Fnx" id="1IMoxTtlEE6" role="1liy4j">
        <property role="TrG5h" value="b2Init" />
        <node concept="19Rifw" id="1IMoxTtlEE7" role="2C2TGm" />
        <node concept="3XIRFW" id="1IMoxTtlEE8" role="3XIRFX">
          <node concept="1_9egQ" id="1IMoxTtlEO0" role="3XIRFZ">
            <node concept="3O_q_g" id="1IMoxTtlENY" role="1_9egR">
              <ref role="3O_q_h" node="1IMoxTthWhF" resolve="InitB2" />
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEC" role="1UOdpc">
          <property role="TrG5h" value="state" />
          <node concept="3wxxNl" id="1IMoxTtlEED" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEEE" role="2umbIo" />
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEF" role="1UOdpc">
          <property role="TrG5h" value="me" />
          <node concept="26Vqp1" id="1IMoxTtlEEG" role="2C2TGm" />
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEH" role="1UOdpc">
          <property role="TrG5h" value="now" />
          <node concept="2fgwQN" id="1IMoxTtlEEI" role="2C2TGm" />
        </node>
      </node>
      <node concept="N3Fnx" id="1IMoxTtlEEa" role="1liy4i">
        <property role="TrG5h" value="b2Cleanup" />
        <node concept="19Rifw" id="1IMoxTtlEEb" role="2C2TGm" />
        <node concept="3XIRFW" id="1IMoxTtlEEc" role="3XIRFX">
          <node concept="1_9egQ" id="1IMoxTtlER8" role="3XIRFZ">
            <node concept="3O_q_g" id="1IMoxTtlER6" role="1_9egR">
              <ref role="3O_q_h" node="1IMoxTthWlH" resolve="CleanupB2" />
            </node>
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEJ" role="1UOdpc">
          <property role="TrG5h" value="state" />
          <node concept="3wxxNl" id="1IMoxTtlEEK" role="2C2TGm">
            <node concept="19Rifw" id="1IMoxTtlEEL" role="2umbIo" />
          </node>
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEM" role="1UOdpc">
          <property role="TrG5h" value="me" />
          <node concept="26Vqp1" id="1IMoxTtlEEN" role="2C2TGm" />
        </node>
        <node concept="19RgSI" id="1IMoxTtlEEO" role="1UOdpc">
          <property role="TrG5h" value="now" />
          <node concept="2fgwQN" id="1IMoxTtlEEP" role="2C2TGm" />
        </node>
      </node>
      <node concept="1ldE1t" id="1IMoxTtlEEe" role="1ldE14">
        <ref role="1ldE1s" node="1IMoxTthUGW" resolve="TERMINATE" />
        <node concept="N3Fnx" id="1IMoxTtlEEf" role="1ldE1$">
          <property role="TrG5h" value="terminateHandler" />
          <node concept="19Rifw" id="1IMoxTtlEEg" role="2C2TGm" />
          <node concept="3XIRFW" id="1IMoxTtlEEh" role="3XIRFX">
            <node concept="1_9egQ" id="1IMoxTtlEX_" role="3XIRFZ">
              <node concept="3O_q_g" id="1IMoxTtlEXz" role="1_9egR">
                <ref role="3O_q_h" node="1IMoxTthWpi" resolve="TerminateB2" />
              </node>
            </node>
          </node>
          <node concept="19RgSI" id="1IMoxTtlEEj" role="1UOdpc">
            <property role="TrG5h" value="me" />
            <node concept="26Vqp1" id="1IMoxTtlEEm" role="2C2TGm" />
          </node>
          <node concept="19RgSI" id="1IMoxTtlEEk" role="1UOdpc">
            <property role="TrG5h" value="now" />
            <node concept="2fgwQN" id="1IMoxTtlEEn" role="2C2TGm" />
          </node>
          <node concept="19RgSI" id="1IMoxTtlEEl" role="1UOdpc">
            <property role="TrG5h" value="state" />
            <node concept="3wxxNl" id="1IMoxTtlEEo" role="2C2TGm">
              <node concept="19Rifw" id="1IMoxTtlEEp" role="2umbIo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37lXYU" id="1IMoxTtlEHf" role="2F2NYG">
        <property role="TrG5h" value="message" />
        <node concept="1lgcPH" id="1IMoxTtlEHg" role="GupN0">
          <property role="TrG5h" value="message.payload" />
        </node>
      </node>
      <node concept="19RgSI" id="1IMoxTtlEHh" role="1u8EhB">
        <property role="TrG5h" value="m" />
        <node concept="3wxxNl" id="1IMoxTtlEHi" role="2C2TGm">
          <node concept="19Rifw" id="1IMoxTtlEHj" role="2umbIo" />
        </node>
      </node>
    </node>
    <node concept="37lXYJ" id="1IMoxTtlGcY" role="37lXYW">
      <property role="2iLA8i" value="2" />
      <property role="TrG5h" value="actor1" />
      <ref role="1sy604" node="1IMoxTtlEYL" resolve="b1" />
      <node concept="2uUgHn" id="1IMoxTtlGcZ" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1IMoxTtlGd1" role="37lXYW">
      <property role="2iLA8i" value="4" />
      <property role="TrG5h" value="actor2" />
      <ref role="1sy604" node="1IMoxTtlEE0" resolve="b2" />
      <node concept="2uUgHn" id="1IMoxTtlGd3" role="2LyG1a" />
    </node>
    <node concept="3DMq4$" id="1IMoxTtlGd4" role="3DMxif">
      <node concept="Fpmux" id="1IMoxTtlGd5" role="Fpmug">
        <node concept="3DMq4_" id="1IMoxTtlGd6" role="FpmuI">
          <ref role="3DMq4F" node="1IMoxTtlGcY" resolve="actor1" />
        </node>
      </node>
      <node concept="Fpmux" id="1IMoxTtlGd7" role="Fpmug">
        <node concept="3DMq4_" id="1IMoxTtlGd8" role="FpmuI">
          <ref role="3DMq4F" node="1IMoxTtlGd1" resolve="actor2" />
        </node>
      </node>
      <node concept="3DMq4E" id="1IMoxTtlGd9" role="3DMq5I">
        <ref role="3DMq5A" node="1IMoxTtlGd6" />
        <ref role="3DMq5$" node="1IMoxTtlGd8" />
      </node>
    </node>
  </node>
</model>

