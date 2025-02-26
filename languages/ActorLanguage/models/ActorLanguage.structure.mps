<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="c4fa" ref="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" implicit="true" />
    <import index="x27k" ref="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" implicit="true" />
    <import index="clbe" ref="r:61d840b4-12c1-49ea-b142-b2a1550a9b15(com.mbeddr.core.udt.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  </registry>
  <node concept="1TIwiD" id="3m_VcJMWzd$">
    <property role="EcuMT" value="3865756215865914212" />
    <property role="TrG5h" value="CreateActor" />
    <property role="3GE5qa" value="actor" />
    <property role="34LRSv" value="create_actor" />
    <property role="R4oN_" value="create new actor" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyj" id="5Q93FfG0WVT" role="1TKVEi">
      <property role="IQ2ns" value="6739934483258265337" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="messageQueue" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6F9Ho3O8bVn" resolve="MessageQueue" />
    </node>
    <node concept="PrWs8" id="5Q93FfG29w4" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="1enjyq1lUQ8" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeXpnd" resolve="ICreateActor" />
    </node>
    <node concept="1TJgyi" id="1enjyq1kiKO" role="1TKVEl">
      <property role="IQ2nx" value="1411682935489244212" />
      <property role="TrG5h" value="address" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4be3MWTKrBc" role="1TKVEl">
      <property role="IQ2nx" value="4813801747212515788" />
      <property role="TrG5h" value="fetchPolicy" />
      <ref role="AX2Wp" node="66sUT0$7o_Q" resolve="FetchPolicy" />
    </node>
    <node concept="1TJgyj" id="1enjyq1kmLM" role="1TKVEi">
      <property role="IQ2ns" value="1411682935489260658" />
      <property role="20kJfa" value="behavior" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOeItj" resolve="CreateBehavior" />
    </node>
    <node concept="1TJgyj" id="5VO4ZzQfhHA" role="1TKVEi">
      <property role="IQ2ns" value="6842115693886643046" />
      <property role="20kJfa" value="initializer" />
      <ref role="20lvS9" node="3y5SEGa3lZ" resolve="Initializer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMWzdL">
    <property role="EcuMT" value="3865756215865914225" />
    <property role="TrG5h" value="CreateMessage" />
    <property role="3GE5qa" value="message" />
    <property role="34LRSv" value="create_message" />
    <property role="R4oN_" value="create new message" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyj" id="Buyr4_DLlL" role="1TKVEi">
      <property role="IQ2ns" value="711157185105040753" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="payload" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1enjyq1kxmg" resolve="Payload" />
    </node>
    <node concept="1TJgyj" id="2PvKG7Dpg1i" role="1TKVEi">
      <property role="IQ2ns" value="3269545992594456658" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="envelope" />
      <ref role="20lvS9" node="1enjyq1krxl" resolve="Envelope" />
    </node>
    <node concept="PrWs8" id="3y5SEGa8Es" role="PzmwI">
      <ref role="PrY4T" node="3y5SEGa8Ep" resolve="InitializerAction" />
    </node>
    <node concept="PrWs8" id="67qr5KJTZhI" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMWzdQ">
    <property role="EcuMT" value="3865756215865914230" />
    <property role="TrG5h" value="ActorScript" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Q93FfFZEV2" role="1TKVEi">
      <property role="IQ2ns" value="6739934483257929410" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="behaviors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61_MCxeRMCz" resolve="IBehavior" />
    </node>
    <node concept="1TJgyj" id="5Q93FfFZMil" role="1TKVEi">
      <property role="IQ2ns" value="6739934483257959573" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="receptionist" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5Q93FfFZEV5" resolve="Receptionist" />
    </node>
    <node concept="1TJgyj" id="3m_VcJMWzdR" role="1TKVEi">
      <property role="IQ2ns" value="3865756215865914231" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actorCreation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61_MCxeXpnd" resolve="ICreateActor" />
    </node>
    <node concept="1TJgyj" id="2oGQ1bfTGMt" role="1TKVEi">
      <property role="IQ2ns" value="2750811047725550749" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="topology" />
      <ref role="20lvS9" node="2oGQ1bfTn$Q" resolve="ActorsGraph" />
    </node>
    <node concept="1TJgyj" id="3y5SEGabRb" role="1TKVEi">
      <property role="IQ2ns" value="63639229097885131" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initializers" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3y5SEGa3lZ" resolve="Initializer" />
    </node>
    <node concept="1TJgyj" id="67qr5KKaF4Q" role="1TKVEi">
      <property role="IQ2ns" value="7051067309802828086" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="externalFunctions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="61_MCxeuyOz" resolve="IExternalFunction" />
    </node>
    <node concept="1TJgyj" id="7lfjb8Uc8Lz" role="1TKVEi">
      <property role="IQ2ns" value="8453059353961860195" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="types" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7lfjb8U8kEf" resolve="CustomType" />
    </node>
    <node concept="PrWs8" id="3m_VcJMWAw4" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMWARM">
    <property role="EcuMT" value="3865756215865929202" />
    <property role="TrG5h" value="SendMessage" />
    <property role="34LRSv" value="send_message" />
    <property role="3GE5qa" value="message" />
    <property role="R4oN_" value="send message" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyj" id="3m_VcJMWARP" role="1TKVEi">
      <property role="IQ2ns" value="3865756215865929205" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzdL" resolve="CreateMessage" />
    </node>
    <node concept="PrWs8" id="3y5SEGa8Eu" role="PzmwI">
      <ref role="PrY4T" node="3y5SEGa8Ep" resolve="InitializerAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="25QEYlOdAq7">
    <property role="EcuMT" value="2411303652489062023" />
    <property role="TrG5h" value="CreateEnvelope" />
    <property role="3GE5qa" value="envelope" />
    <property role="34LRSv" value="create_envelope" />
    <property role="R4oN_" value="create message envelope" />
    <ref role="1TJDcQ" node="1enjyq1krxl" resolve="Envelope" />
    <node concept="1TJgyj" id="25QEYlOdAq9" role="1TKVEi">
      <property role="IQ2ns" value="2411303652489062025" />
      <property role="20kJfa" value="sender" />
      <ref role="20lvS9" node="I$NcBvGnh" resolve="ActorReference" />
    </node>
    <node concept="1TJgyj" id="25QEYlOdAqb" role="1TKVEi">
      <property role="IQ2ns" value="2411303652489062027" />
      <property role="20kJfa" value="receiver" />
      <ref role="20lvS9" node="I$NcBvGnh" resolve="ActorReference" />
    </node>
    <node concept="PrWs8" id="25QEYlOdAsi" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6F9Ho3OqddR" role="1TKVEl">
      <property role="IQ2nx" value="7694881003800154999" />
      <property role="TrG5h" value="priority" />
      <ref role="AX2Wp" to="tpee:gc$lTUB" resolve="_FPNumber_String" />
    </node>
  </node>
  <node concept="1TIwiD" id="25QEYlOdAq8">
    <property role="EcuMT" value="2411303652489062024" />
    <property role="TrG5h" value="CreatePayload" />
    <property role="3GE5qa" value="payload" />
    <property role="34LRSv" value="create_payload" />
    <property role="R4oN_" value="create message payload" />
    <ref role="1TJDcQ" node="1enjyq1kxmg" resolve="Payload" />
    <node concept="1TJgyj" id="5YFcNFooLR8" role="1TKVEi">
      <property role="IQ2ns" value="6893659982452170184" />
      <property role="20kJfa" value="type" />
      <ref role="20lvS9" node="7lfjb8U8kEf" resolve="CustomType" />
    </node>
    <node concept="PrWs8" id="25QEYlOdAsg" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="3QReeeiRi5S" role="1TKVEi">
      <property role="IQ2ns" value="4447085707124351352" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="strings" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3QReeeiTcTh" resolve="StringBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="25QEYlOeItj">
    <property role="EcuMT" value="2411303652489357139" />
    <property role="TrG5h" value="CreateBehavior" />
    <property role="3GE5qa" value="behavior" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3m_VcJMYehj" role="1TKVEi">
      <property role="IQ2ns" value="3865756215866352723" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="c4fa:3CmSUB7FmO3" resolve="Statement" />
    </node>
    <node concept="1TJgyj" id="5dAUsbpt5Px" role="1TKVEi">
      <property role="IQ2ns" value="6009747775853714785" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="become" />
      <ref role="20lvS9" node="5dAUsbpsTbf" resolve="Become" />
    </node>
    <node concept="1TJgyj" id="5VO4ZzPZMLk" role="1TKVEi">
      <property role="IQ2ns" value="6842115693882584148" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="receivedMessage" />
      <ref role="20lvS9" node="3m_VcJMWzdL" resolve="CreateMessage" />
    </node>
    <node concept="PrWs8" id="25QEYlOfjrw" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="67qr5KJMFS4" role="PzmwI">
      <ref role="PrY4T" node="67qr5KJM_rR" resolve="StatementConstraint" />
    </node>
    <node concept="PrWs8" id="61_MCxeRMC_" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeRMCz" resolve="IBehavior" />
    </node>
    <node concept="1TJgyi" id="5VO4ZzPVO6h" role="1TKVEl">
      <property role="IQ2nx" value="6842115693881541009" />
      <property role="TrG5h" value="receivedMessageName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="66sUT0$7o_Q">
    <property role="3F6X1D" value="7033755722359605622" />
    <property role="TrG5h" value="FetchPolicy" />
    <property role="3GE5qa" value="fetch" />
    <node concept="25R33" id="66sUT0$7o_R" role="25R1y">
      <property role="3tVfz5" value="7033755722359605623" />
      <property role="TrG5h" value="FIFO" />
    </node>
    <node concept="25R33" id="66sUT0$7o_S" role="25R1y">
      <property role="3tVfz5" value="7033755722359605624" />
      <property role="TrG5h" value="HIGHEST_PRIORITY" />
    </node>
    <node concept="25R33" id="3aQNPNd64Wc" role="25R1y">
      <property role="3tVfz5" value="3654336145142599436" />
      <property role="TrG5h" value="NOOP" />
    </node>
  </node>
  <node concept="1TIwiD" id="Buyr4_JQa3">
    <property role="EcuMT" value="711157185106633347" />
    <property role="3GE5qa" value="envelope" />
    <property role="TrG5h" value="SelectEnvelope" />
    <ref role="1TJDcQ" node="1enjyq1krxl" resolve="Envelope" />
    <node concept="1TJgyj" id="Buyr4_JQa4" role="1TKVEi">
      <property role="IQ2ns" value="711157185106633348" />
      <property role="20kJfa" value="envelope" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOdAq7" resolve="CreateEnvelope" />
    </node>
  </node>
  <node concept="1TIwiD" id="4posSimMjE2">
    <property role="EcuMT" value="5068928393908140674" />
    <property role="3GE5qa" value="payload" />
    <property role="TrG5h" value="SelectPayload" />
    <ref role="1TJDcQ" node="1enjyq1kxmg" resolve="Payload" />
    <node concept="1TJgyj" id="4posSimMjEh" role="1TKVEi">
      <property role="IQ2ns" value="5068928393908140689" />
      <property role="20kJfa" value="payload" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOdAq8" resolve="CreatePayload" />
    </node>
  </node>
  <node concept="1TIwiD" id="6F9Ho3O8bVn">
    <property role="EcuMT" value="7694881003795431127" />
    <property role="TrG5h" value="MessageQueue" />
    <property role="3GE5qa" value="messageQueue" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6F9Ho3O8bVv" role="1TKVEi">
      <property role="IQ2ns" value="7694881003795431135" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="messages" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3m_VcJMWzdL" resolve="CreateMessage" />
    </node>
    <node concept="PrWs8" id="6F9Ho3O8KI4" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6F9Ho3O8bVs">
    <property role="EcuMT" value="7694881003795431132" />
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="MessageRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6F9Ho3O8bVt" role="1TKVEi">
      <property role="IQ2ns" value="7694881003795431133" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzdL" resolve="CreateMessage" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Q93FfFZEV5">
    <property role="EcuMT" value="6739934483257929413" />
    <property role="3GE5qa" value="receptionist" />
    <property role="TrG5h" value="Receptionist" />
    <property role="34LRSv" value="create_receptionist" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5Q93FfFZEV6" role="1TKVEi">
      <property role="IQ2ns" value="6739934483257929414" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="behavior" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="tpee:fzclF8l" resolve="Statement" />
    </node>
    <node concept="1TJgyj" id="5Q93FfFZEV8" role="1TKVEi">
      <property role="IQ2ns" value="6739934483257929416" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="messageQueue" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6F9Ho3O8bVn" resolve="MessageQueue" />
    </node>
    <node concept="1TJgyj" id="1enjyq1vbo8" role="1TKVEi">
      <property role="IQ2ns" value="1411682935492097544" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="policy" />
      <ref role="20lvS9" node="1enjyq1vbnm" resolve="ReceptionistPolicy" />
    </node>
    <node concept="1TJgyi" id="1enjyq1kqlA" role="1TKVEl">
      <property role="IQ2nx" value="1411682935489275238" />
      <property role="TrG5h" value="address" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="1enjyq1kqoP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5Q93FfG0Dg$">
    <property role="EcuMT" value="6739934483258184740" />
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="CreateActors" />
    <property role="34LRSv" value="create_actors" />
    <property role="R4oN_" value="create group of actors with the same behavior" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyi" id="5Q93FfG0Dh3" role="1TKVEl">
      <property role="IQ2nx" value="6739934483258184771" />
      <property role="TrG5h" value="number" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="5Q93FfG0Dh5" role="1TKVEl">
      <property role="IQ2nx" value="6739934483258184773" />
      <property role="TrG5h" value="baseName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4be3MWTKrDt" role="1TKVEl">
      <property role="IQ2nx" value="4813801747212515933" />
      <property role="TrG5h" value="fetchPolicy" />
      <ref role="AX2Wp" node="66sUT0$7o_Q" resolve="FetchPolicy" />
    </node>
    <node concept="1TJgyj" id="1enjyq1koxf" role="1TKVEi">
      <property role="IQ2ns" value="1411682935489267791" />
      <property role="20kJfa" value="behavior" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOeItj" resolve="CreateBehavior" />
    </node>
    <node concept="1TJgyj" id="5VO4ZzQfhJ1" role="1TKVEi">
      <property role="IQ2ns" value="6842115693886643137" />
      <property role="20kJfa" value="initializer" />
      <ref role="20lvS9" node="3y5SEGa3lZ" resolve="Initializer" />
    </node>
    <node concept="PrWs8" id="1enjyq1lUQc" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeXpnd" resolve="ICreateActor" />
    </node>
    <node concept="1TJgyj" id="I$NcBCQo8" role="1TKVEi">
      <property role="IQ2ns" value="13109696846325256" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3m_VcJMWzd$" resolve="CreateActor" />
    </node>
  </node>
  <node concept="1TIwiD" id="1enjyq1kiq4">
    <property role="EcuMT" value="1411682935489242756" />
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="ActorAction" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="c4fa:3CmSUB7FmO3" resolve="Statement" />
  </node>
  <node concept="1TIwiD" id="1enjyq1krxl">
    <property role="EcuMT" value="1411682935489280085" />
    <property role="3GE5qa" value="envelope" />
    <property role="TrG5h" value="Envelope" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="PrWs8" id="3y5SEGa8Ey" role="PzmwI">
      <ref role="PrY4T" node="3y5SEGa8Ep" resolve="InitializerAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="1enjyq1kxmg">
    <property role="EcuMT" value="1411682935489303952" />
    <property role="3GE5qa" value="payload" />
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="Payload" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="PrWs8" id="3y5SEGa8Ew" role="PzmwI">
      <ref role="PrY4T" node="3y5SEGa8Ep" resolve="InitializerAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="1enjyq1qgdi">
    <property role="EcuMT" value="1411682935490806610" />
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="GetActorsFromReceptionist" />
    <property role="34LRSv" value="get_actors" />
    <property role="R4oN_" value="get list of references to linked actors from the receptionist" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyj" id="1enjyq1vbnu" role="1TKVEi">
      <property role="IQ2ns" value="1411682935492097502" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="policy" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1enjyq1vbnm" resolve="ReceptionistPolicy" />
    </node>
    <node concept="1TJgyj" id="I$NcBk5Q7" role="1TKVEi">
      <property role="IQ2ns" value="13109696840883591" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actorReferences" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="40skb7_IBMN" resolve="ActorReferenceList" />
    </node>
  </node>
  <node concept="25R3W" id="1enjyq1qgdj">
    <property role="3F6X1D" value="1411682935490806611" />
    <property role="3GE5qa" value="receptionist.receptionistPolicy" />
    <property role="TrG5h" value="ReceptionistPolicyEnum" />
    <node concept="25R33" id="1enjyq1qgdk" role="25R1y">
      <property role="3tVfz5" value="1411682935490806612" />
      <property role="TrG5h" value="RANDOM" />
    </node>
    <node concept="25R33" id="2oGQ1bfXVEv" role="25R1y">
      <property role="3tVfz5" value="2750811047726660255" />
      <property role="TrG5h" value="TOPOLOGY" />
    </node>
  </node>
  <node concept="1TIwiD" id="1enjyq1vbnm">
    <property role="EcuMT" value="1411682935492097494" />
    <property role="3GE5qa" value="receptionist.receptionistPolicy" />
    <property role="TrG5h" value="ReceptionistPolicy" />
    <property role="34LRSv" value="receptionist_policy" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyi" id="1enjyq1vbnn" role="1TKVEl">
      <property role="IQ2nx" value="1411682935492097495" />
      <property role="TrG5h" value="policy" />
      <ref role="AX2Wp" node="1enjyq1qgdj" resolve="ReceptionistPolicyEnum" />
    </node>
  </node>
  <node concept="1TIwiD" id="1enjyq1DTn_">
    <property role="EcuMT" value="1411682935494907365" />
    <property role="3GE5qa" value="receptionist" />
    <property role="TrG5h" value="SwitchPolicy" />
    <ref role="1TJDcQ" to="tpee:gVKaCLE" resolve="SwitchStatement" />
  </node>
  <node concept="1TIwiD" id="1enjyq1PHOk">
    <property role="EcuMT" value="1411682935498005780" />
    <property role="3GE5qa" value="receptionist" />
    <property role="TrG5h" value="RandomActor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="I$NcBfmhW">
    <property role="EcuMT" value="13109696839640188" />
    <property role="3GE5qa" value="receptionist" />
    <property role="TrG5h" value="ReturnActorReference" />
    <property role="34LRSv" value="return_actor_reference" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="I$NcBgYhf" role="1TKVEi">
      <property role="IQ2ns" value="13109696840066127" />
      <property role="20kJfa" value="actorReference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="I$NcBvGnh" resolve="ActorReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="I$NcBonc3">
    <property role="EcuMT" value="13109696842003203" />
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="CreateActorReference" />
    <property role="34LRSv" value="create_actor_reference" />
    <property role="R4oN_" value="create reference to existing actor" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyj" id="I$NcBvGpk" role="1TKVEi">
      <property role="IQ2ns" value="13109696843925076" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actorReference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="I$NcBvGnh" resolve="ActorReference" />
    </node>
    <node concept="1TJgyj" id="I$NcB$KmZ" role="1TKVEi">
      <property role="IQ2ns" value="13109696845252031" />
      <property role="20kJfa" value="actor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzd$" resolve="CreateActor" />
    </node>
    <node concept="1TJgyi" id="3y5SEGuKIb" role="1TKVEl">
      <property role="IQ2nx" value="63639229103278987" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="3y5SEGuKId" role="PzmwI">
      <ref role="PrY4T" node="3y5SEGa8Ep" resolve="InitializerAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="I$NcBvGnh">
    <property role="EcuMT" value="13109696843924945" />
    <property role="3GE5qa" value="actor.actorReference" />
    <property role="TrG5h" value="ActorReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="I$NcBvGni" role="1TKVEi">
      <property role="IQ2ns" value="13109696843924946" />
      <property role="20kJfa" value="actor" />
      <ref role="20lvS9" node="3m_VcJMWzd$" resolve="CreateActor" />
    </node>
    <node concept="PrWs8" id="I$NcBvGoK" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2oGQ1bfTn$Q">
    <property role="EcuMT" value="2750811047725463862" />
    <property role="TrG5h" value="ActorsGraph" />
    <property role="3GE5qa" value="topology" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6GNNap0lEGQ" role="1TKVEi">
      <property role="IQ2ns" value="7724742800286591798" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6GNNap0lEG7" resolve="ActorBoxesList" />
    </node>
    <node concept="1TJgyj" id="2oGQ1bfTn_W" role="1TKVEi">
      <property role="IQ2ns" value="2750811047725463932" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="links" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2oGQ1bfTn$S" resolve="ActorLink" />
    </node>
  </node>
  <node concept="1TIwiD" id="2oGQ1bfTn$R">
    <property role="EcuMT" value="2750811047725463863" />
    <property role="3GE5qa" value="topology" />
    <property role="TrG5h" value="ActorBox" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2oGQ1bfTn$T" role="1TKVEi">
      <property role="IQ2ns" value="2750811047725463865" />
      <property role="20kJfa" value="actor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzd$" resolve="CreateActor" />
    </node>
  </node>
  <node concept="1TIwiD" id="2oGQ1bfTn$S">
    <property role="EcuMT" value="2750811047725463864" />
    <property role="3GE5qa" value="topology" />
    <property role="TrG5h" value="ActorLink" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2oGQ1bfTn_O" role="1TKVEi">
      <property role="IQ2ns" value="2750811047725463924" />
      <property role="20kJfa" value="actorFrom" />
      <ref role="20lvS9" node="2oGQ1bfTn$R" resolve="ActorBox" />
    </node>
    <node concept="1TJgyj" id="2oGQ1bfTn_Q" role="1TKVEi">
      <property role="IQ2ns" value="2750811047725463926" />
      <property role="20kJfa" value="actorTo" />
      <ref role="20lvS9" node="2oGQ1bfTn$R" resolve="ActorBox" />
    </node>
    <node concept="PrWs8" id="yznZkh5Het" role="PzmwI">
      <ref role="PrY4T" node="yznZkh5Heq" resolve="Link" />
    </node>
    <node concept="1TJgyj" id="7uuypCHURKp" role="1TKVEi">
      <property role="IQ2ns" value="8619478032122084377" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="data" />
      <ref role="20lvS9" node="3QReeeiTcTh" resolve="StringBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QReeeiTcTh">
    <property role="EcuMT" value="4447085707124854353" />
    <property role="3GE5qa" value="payload" />
    <property role="TrG5h" value="StringBody" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3QReeeiTcTi" role="1TKVEl">
      <property role="IQ2nx" value="4447085707124854354" />
      <property role="TrG5h" value="body" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="40skb7_IBMN">
    <property role="EcuMT" value="4619656042768923827" />
    <property role="3GE5qa" value="actor.actorReference" />
    <property role="TrG5h" value="ActorReferenceList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="40skb7_IBN5" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="40skb7_QZlB">
    <property role="EcuMT" value="4619656042771117415" />
    <property role="3GE5qa" value="statement" />
    <property role="TrG5h" value="ForEachActorReferenceStatement" />
    <property role="34LRSv" value="for each actor reference" />
    <property role="R4oN_" value="iterate on a list of actor references" />
    <ref role="1TJDcQ" to="c4fa:3CmSUB7FmO3" resolve="Statement" />
    <node concept="1TJgyj" id="40skb7_QZlC" role="1TKVEi">
      <property role="IQ2ns" value="4619656042771117416" />
      <property role="20kJfa" value="actorReferenceList" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="40skb7_IBMN" resolve="ActorReferenceList" />
    </node>
    <node concept="1TJgyj" id="40skb7_VFOl" role="1TKVEi">
      <property role="IQ2ns" value="4619656042772348181" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actorReference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="I$NcBvGnh" resolve="ActorReference" />
    </node>
    <node concept="1TJgyj" id="61_MCxfgEF8" role="1TKVEi">
      <property role="IQ2ns" value="6946180687082990280" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="c4fa:3CmSUB7Fp_l" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="5dAUsbpsTbf">
    <property role="EcuMT" value="6009747775853662927" />
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="Become" />
    <property role="34LRSv" value="become" />
    <property role="R4oN_" value="select next behavior" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5dAUsbpsYvC" role="1TKVEi">
      <property role="IQ2ns" value="6009747775853684712" />
      <property role="20kJfa" value="newBehavior" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOeItj" resolve="CreateBehavior" />
    </node>
  </node>
  <node concept="1TIwiD" id="3y5SEGa3lZ">
    <property role="EcuMT" value="63639229097850239" />
    <property role="TrG5h" value="Initializer" />
    <property role="3GE5qa" value="initializer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3y5SEGa8E$" role="1TKVEi">
      <property role="IQ2ns" value="63639229097872036" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1enjyq1kiq4" resolve="ActorAction" />
    </node>
    <node concept="PrWs8" id="5VO4ZzQfgQ6" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="3y5SEGa8Ep">
    <property role="EcuMT" value="63639229097872025" />
    <property role="3GE5qa" value="initializer" />
    <property role="TrG5h" value="InitializerAction" />
  </node>
  <node concept="PlHQZ" id="67qr5KJM_rR">
    <property role="EcuMT" value="7051067309796513527" />
    <property role="3GE5qa" value="statement" />
    <property role="TrG5h" value="StatementConstraint" />
  </node>
  <node concept="1TIwiD" id="67qr5KKaEN3">
    <property role="EcuMT" value="7051067309802826947" />
    <property role="TrG5h" value="ExternalFunction" />
    <property role="3GE5qa" value="externalFunction" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="61_MCxeu_Zk" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeuyOz" resolve="IExternalFunction" />
    </node>
    <node concept="1TJgyj" id="61_MCxeu_Zl" role="1TKVEi">
      <property role="IQ2ns" value="6946180687069863893" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="function" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="x27k:5_l8w1EmTvx" resolve="Function" />
    </node>
  </node>
  <node concept="1TIwiD" id="5VO4ZzQ7TK4">
    <property role="EcuMT" value="6842115693884709892" />
    <property role="3GE5qa" value="fetch" />
    <property role="TrG5h" value="ChangeFetchPolicy" />
    <property role="34LRSv" value="change_fetch_policy" />
    <property role="R4oN_" value="change fetching policy for the actor executing this behavior" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyi" id="5VO4ZzQ7TK5" role="1TKVEl">
      <property role="IQ2nx" value="6842115693884709893" />
      <property role="TrG5h" value="newPolicy" />
      <ref role="AX2Wp" node="66sUT0$7o_Q" resolve="FetchPolicy" />
    </node>
  </node>
  <node concept="1TIwiD" id="6GNNap0lEG7">
    <property role="EcuMT" value="7724742800286591751" />
    <property role="3GE5qa" value="topology" />
    <property role="TrG5h" value="ActorBoxesList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6GNNap0lEG8" role="1TKVEi">
      <property role="IQ2ns" value="7724742800286591752" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actorBoxes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2oGQ1bfTn$R" resolve="ActorBox" />
    </node>
  </node>
  <node concept="1TIwiD" id="6GNNap1by2_">
    <property role="EcuMT" value="7724742800300712101" />
    <property role="3GE5qa" value="topology" />
    <property role="TrG5h" value="ActorLinksList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6GNNap1by2C" role="1TKVEi">
      <property role="IQ2ns" value="7724742800300712104" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="links" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="yznZkh5Heq" resolve="Link" />
    </node>
    <node concept="PrWs8" id="yznZkh5Her" role="PzmwI">
      <ref role="PrY4T" node="yznZkh5Heq" resolve="Link" />
    </node>
  </node>
  <node concept="PlHQZ" id="yznZkh5Heq">
    <property role="EcuMT" value="622446679665595290" />
    <property role="3GE5qa" value="topology" />
    <property role="TrG5h" value="Link" />
  </node>
  <node concept="1TIwiD" id="3eevqy$DSMD">
    <property role="EcuMT" value="3715044905897659561" />
    <property role="3GE5qa" value="message" />
    <property role="TrG5h" value="SendMessageToActors" />
    <property role="34LRSv" value="send message to group of actors" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyj" id="3eevqy$DSMG" role="1TKVEi">
      <property role="IQ2ns" value="3715044905897659564" />
      <property role="20kJfa" value="referenceList" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="40skb7_IBMN" resolve="ActorReferenceList" />
    </node>
    <node concept="1TJgyi" id="3eevqy$Hv0Q" role="1TKVEl">
      <property role="IQ2nx" value="3715044905898602550" />
      <property role="TrG5h" value="priority" />
      <ref role="AX2Wp" to="tpee:gc$lTUB" resolve="_FPNumber_String" />
    </node>
    <node concept="1TJgyj" id="3eevqy$NH7s" role="1TKVEi">
      <property role="IQ2ns" value="3715044905900233180" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="payload" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4posSimMjE2" resolve="SelectPayload" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lfjb8U8kEf">
    <property role="EcuMT" value="8453059353960860303" />
    <property role="3GE5qa" value="payload" />
    <property role="TrG5h" value="CustomType" />
    <ref role="1TJDcQ" to="clbe:5jyom5fO9Ch" resolve="TypeDef" />
  </node>
  <node concept="1TIwiD" id="74ISy0fnwrW">
    <property role="EcuMT" value="8155704602539198204" />
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="Window" />
    <property role="34LRSv" value="window" />
    <property role="R4oN_" value="store messages and send them when window is full" />
    <ref role="1TJDcQ" node="1enjyq1kiq4" resolve="ActorAction" />
    <node concept="1TJgyi" id="74ISy0fn_Ko" role="1TKVEl">
      <property role="IQ2nx" value="8155704602539219992" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="74ISy0fn_Km" resolve="WindowType" />
    </node>
    <node concept="1TJgyi" id="74ISy0fn_Kq" role="1TKVEl">
      <property role="IQ2nx" value="8155704602539219994" />
      <property role="TrG5h" value="size" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="25R3W" id="74ISy0fn_Km">
    <property role="3F6X1D" value="8155704602539219990" />
    <property role="3GE5qa" value="actions" />
    <property role="TrG5h" value="WindowType" />
    <ref role="1H5jkz" node="74ISy0fn_Kn" resolve="TUMBLING" />
    <node concept="25R33" id="74ISy0fn_Kn" role="25R1y">
      <property role="3tVfz5" value="8155704602539219991" />
      <property role="TrG5h" value="TUMBLING" />
    </node>
  </node>
  <node concept="PlHQZ" id="61_MCxeuyOz">
    <property role="EcuMT" value="6946180687069850915" />
    <property role="3GE5qa" value="externalFunction" />
    <property role="TrG5h" value="IExternalFunction" />
  </node>
  <node concept="1TIwiD" id="61_MCxeu_ZD">
    <property role="EcuMT" value="6946180687069863913" />
    <property role="3GE5qa" value="externalFunction" />
    <property role="TrG5h" value="ExternalFunctionPrototype" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="61_MCxeu_ZF" role="1TKVEi">
      <property role="IQ2ns" value="6946180687069863915" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="prototype" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="x27k:5_l8w1EmTvw" resolve="FunctionPrototype" />
    </node>
    <node concept="PrWs8" id="61_MCxeu_ZE" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeuyOz" resolve="IExternalFunction" />
    </node>
    <node concept="1TJgyi" id="61_MCxeuA02" role="1TKVEl">
      <property role="IQ2nx" value="6946180687069863938" />
      <property role="TrG5h" value="header" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="61_MCxeJ5WB">
    <property role="EcuMT" value="6946180687074189095" />
    <property role="TrG5h" value="EmptyLine" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="61_MCxeJ8VO" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeuyOz" resolve="IExternalFunction" />
    </node>
    <node concept="PrWs8" id="61_MCxeRMCB" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeRMCz" resolve="IBehavior" />
    </node>
    <node concept="PrWs8" id="61_MCxeXpnz" role="PzmwI">
      <ref role="PrY4T" node="61_MCxeXpnd" resolve="ICreateActor" />
    </node>
  </node>
  <node concept="PlHQZ" id="61_MCxeRMCz">
    <property role="EcuMT" value="6946180687076469283" />
    <property role="3GE5qa" value="behavior" />
    <property role="TrG5h" value="IBehavior" />
  </node>
  <node concept="PlHQZ" id="61_MCxeXpnd">
    <property role="EcuMT" value="6946180687077938637" />
    <property role="3GE5qa" value="actor" />
    <property role="TrG5h" value="ICreateActor" />
  </node>
</model>

