<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
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
  <node concept="1TIwiD" id="3m_VcJMWzc8">
    <property role="EcuMT" value="3865756215865914120" />
    <property role="TrG5h" value="AbstractActor" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="actor" />
    <ref role="1TJDcQ" node="3m_VcJMYehb" resolve="ActorAction" />
    <node concept="1TJgyi" id="3m_VcJMWzdw" role="1TKVEl">
      <property role="IQ2nx" value="3865756215865914208" />
      <property role="TrG5h" value="address" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="3m_VcJMWAw6" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMWzd$">
    <property role="EcuMT" value="3865756215865914212" />
    <property role="TrG5h" value="Actor" />
    <property role="3GE5qa" value="actor" />
    <property role="34LRSv" value="create_actor" />
    <ref role="1TJDcQ" node="3m_VcJMWzc8" resolve="AbstractActor" />
    <node concept="1TJgyj" id="25QEYlOeItB" role="1TKVEi">
      <property role="IQ2ns" value="2411303652489357159" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="behavior" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOeItj" resolve="Behavior" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMWzdL">
    <property role="EcuMT" value="3865756215865914225" />
    <property role="TrG5h" value="CreateMessage" />
    <property role="3GE5qa" value="message" />
    <property role="34LRSv" value="create_message" />
    <ref role="1TJDcQ" node="3m_VcJMYehb" resolve="ActorAction" />
    <node concept="PrWs8" id="25QEYlOdAyc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="25QEYlOFf2e" role="1TKVEl">
      <property role="IQ2nx" value="2411303652496830606" />
      <property role="TrG5h" value="tag" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="25QEYlOKFv6" role="1TKVEi">
      <property role="IQ2ns" value="2411303652498257862" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="payload" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOdAq8" resolve="Payload" />
    </node>
    <node concept="1TJgyj" id="25QEYlOKFva" role="1TKVEi">
      <property role="IQ2ns" value="2411303652498257866" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="envelope" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="25QEYlOdAq7" resolve="Envelope" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMWzdQ">
    <property role="EcuMT" value="3865756215865914230" />
    <property role="TrG5h" value="ActorScript" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="3m_VcJMWzdR" role="1TKVEi">
      <property role="IQ2ns" value="3865756215865914231" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3m_VcJMWzc8" resolve="AbstractActor" />
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
    <ref role="1TJDcQ" node="3m_VcJMYehb" resolve="ActorAction" />
    <node concept="1TJgyj" id="3m_VcJMWARP" role="1TKVEi">
      <property role="IQ2ns" value="3865756215865929205" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzdL" resolve="CreateMessage" />
    </node>
  </node>
  <node concept="1TIwiD" id="3m_VcJMYehb">
    <property role="EcuMT" value="3865756215866352715" />
    <property role="TrG5h" value="ActorAction" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="actions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="25QEYlOdAq7">
    <property role="EcuMT" value="2411303652489062023" />
    <property role="TrG5h" value="Envelope" />
    <property role="3GE5qa" value="message" />
    <property role="34LRSv" value="create_envelope" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="25QEYlOdAq9" role="1TKVEi">
      <property role="IQ2ns" value="2411303652489062025" />
      <property role="20kJfa" value="sender" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzc8" resolve="AbstractActor" />
    </node>
    <node concept="1TJgyj" id="25QEYlOdAqb" role="1TKVEi">
      <property role="IQ2ns" value="2411303652489062027" />
      <property role="20kJfa" value="receiver" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3m_VcJMWzc8" resolve="AbstractActor" />
    </node>
    <node concept="1TJgyi" id="25QEYlOdAqp" role="1TKVEl">
      <property role="IQ2nx" value="2411303652489062041" />
      <property role="TrG5h" value="priority" />
      <ref role="AX2Wp" node="25QEYlOdAqk" resolve="Priority" />
    </node>
    <node concept="PrWs8" id="25QEYlOdAsi" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="25QEYlOdAq8">
    <property role="EcuMT" value="2411303652489062024" />
    <property role="TrG5h" value="Payload" />
    <property role="3GE5qa" value="message" />
    <property role="34LRSv" value="create_payload" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="25QEYlOdAsg" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="25QEYlOdAyI" role="1TKVEl">
      <property role="IQ2nx" value="2411303652489062574" />
      <property role="TrG5h" value="body" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="25QEYlOdAqk">
    <property role="3F6X1D" value="2411303652489062036" />
    <property role="TrG5h" value="Priority" />
    <property role="3GE5qa" value="message" />
    <ref role="1H5jkz" node="25QEYlOdAqm" resolve="NORMAL" />
    <node concept="25R33" id="25QEYlOdAql" role="25R1y">
      <property role="3tVfz5" value="2411303652489062037" />
      <property role="TrG5h" value="HIGH" />
    </node>
    <node concept="25R33" id="25QEYlOdAqm" role="25R1y">
      <property role="3tVfz5" value="2411303652489062038" />
      <property role="TrG5h" value="NORMAL" />
    </node>
  </node>
  <node concept="1TIwiD" id="25QEYlOeItj">
    <property role="EcuMT" value="2411303652489357139" />
    <property role="TrG5h" value="Behavior" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="3m_VcJMYehj" role="1TKVEi">
      <property role="IQ2ns" value="3865756215866352723" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3m_VcJMYehb" resolve="ActorAction" />
    </node>
    <node concept="PrWs8" id="25QEYlOfjrw" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

