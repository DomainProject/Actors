<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)">
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
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
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
  <node concept="1TIwiD" id="66sUT0$8edT">
    <property role="EcuMT" value="7033755722359825273" />
    <property role="TrG5h" value="Select" />
    <property role="3GE5qa" value="statements" />
    <property role="34LRSv" value="SELECT" />
    <ref role="1TJDcQ" node="14g3IsRh3GK" resolve="Statement" />
    <node concept="1TJgyj" id="14g3IsRhhsH" role="1TKVEi">
      <property role="IQ2ns" value="1229499084499654445" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="where" />
      <ref role="20lvS9" node="66sUT0$8edV" resolve="Where" />
    </node>
    <node concept="1TJgyj" id="14g3IsRklvU" role="1TKVEi">
      <property role="IQ2ns" value="1229499084500457466" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="columns" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="14g3IsRklvO" resolve="ColumnRef" />
    </node>
    <node concept="1TJgyj" id="14g3IsRhhqQ" role="1TKVEi">
      <property role="IQ2ns" value="1229499084499654326" />
      <property role="20kJfa" value="table" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="14g3IsRh3GI" resolve="CreateTable" />
    </node>
  </node>
  <node concept="1TIwiD" id="66sUT0$8edV">
    <property role="EcuMT" value="7033755722359825275" />
    <property role="TrG5h" value="Where" />
    <property role="3GE5qa" value="statements" />
    <property role="34LRSv" value="WHERE" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="14g3IsRikup" role="1TKVEi">
      <property role="IQ2ns" value="1229499084499928985" />
      <property role="20kJfa" value="table" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="14g3IsRh3GI" resolve="CreateTable" />
    </node>
    <node concept="1TJgyj" id="14g3IsRiyeO" role="1TKVEi">
      <property role="IQ2ns" value="1229499084499985332" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="14g3IsRhKZN" resolve="Condition" />
    </node>
  </node>
  <node concept="1TIwiD" id="14g3IsRh3GI">
    <property role="EcuMT" value="1229499084499598126" />
    <property role="TrG5h" value="CreateTable" />
    <property role="3GE5qa" value="statements" />
    <property role="34LRSv" value="CREATE TABLE" />
    <ref role="1TJDcQ" node="14g3IsRh3GK" resolve="Statement" />
    <node concept="1TJgyj" id="14g3IsRh3H8" role="1TKVEi">
      <property role="IQ2ns" value="1229499084499598152" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="columns" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="14g3IsRh3GN" resolve="Column" />
    </node>
    <node concept="PrWs8" id="14g3IsRh3Ha" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="14g3IsRh3GK">
    <property role="EcuMT" value="1229499084499598128" />
    <property role="TrG5h" value="Statement" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="14g3IsRh3GN">
    <property role="EcuMT" value="1229499084499598131" />
    <property role="TrG5h" value="Column" />
    <property role="3GE5qa" value="column" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="14g3IsRh3GO" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="14g3IsRh3GR" role="1TKVEl">
      <property role="IQ2nx" value="1229499084499598135" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="14g3IsRh3GT" resolve="Type" />
    </node>
  </node>
  <node concept="25R3W" id="14g3IsRh3GT">
    <property role="3F6X1D" value="1229499084499598137" />
    <property role="TrG5h" value="Type" />
    <node concept="25R33" id="14g3IsRh3GU" role="25R1y">
      <property role="3tVfz5" value="1229499084499598138" />
      <property role="TrG5h" value="Integer" />
    </node>
    <node concept="25R33" id="14g3IsRh3GV" role="25R1y">
      <property role="3tVfz5" value="1229499084499598139" />
      <property role="TrG5h" value="String" />
    </node>
    <node concept="25R33" id="14g3IsRh3GZ" role="25R1y">
      <property role="3tVfz5" value="1229499084499598143" />
      <property role="TrG5h" value="Date" />
    </node>
    <node concept="25R33" id="14g3IsRh3H3" role="25R1y">
      <property role="3tVfz5" value="1229499084499598147" />
      <property role="TrG5h" value="Float" />
    </node>
  </node>
  <node concept="1TIwiD" id="14g3IsRh3Jd">
    <property role="EcuMT" value="1229499084499598285" />
    <property role="TrG5h" value="Script" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="14g3IsRh3Jg" role="1TKVEi">
      <property role="IQ2ns" value="1229499084499598288" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="queries" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="14g3IsRh3GK" resolve="Statement" />
    </node>
  </node>
  <node concept="1TIwiD" id="14g3IsRhKZN">
    <property role="EcuMT" value="1229499084499783667" />
    <property role="TrG5h" value="Condition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="14g3IsRhL16" role="1TKVEl">
      <property role="IQ2nx" value="1229499084499783750" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" node="14g3IsRhKZT" resolve="Operator" />
    </node>
    <node concept="1TJgyi" id="14g3IsRhL19" role="1TKVEl">
      <property role="IQ2nx" value="1229499084499783753" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="14g3IsRkCfv" role="1TKVEi">
      <property role="IQ2ns" value="1229499084500534239" />
      <property role="20kJfa" value="column" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="14g3IsRh3GN" resolve="Column" />
    </node>
  </node>
  <node concept="25R3W" id="14g3IsRhKZT">
    <property role="3F6X1D" value="1229499084499783673" />
    <property role="TrG5h" value="Operator" />
    <node concept="25R33" id="14g3IsRhKZU" role="25R1y">
      <property role="3tVfz5" value="1229499084499783674" />
      <property role="TrG5h" value="EQUALS" />
      <property role="1L1pqM" value="=" />
    </node>
    <node concept="25R33" id="14g3IsRhKZW" role="25R1y">
      <property role="3tVfz5" value="1229499084499783676" />
      <property role="TrG5h" value="GREATER" />
      <property role="1L1pqM" value="&gt;" />
    </node>
    <node concept="25R33" id="14g3IsRhL08" role="25R1y">
      <property role="3tVfz5" value="1229499084499783688" />
      <property role="TrG5h" value="LOWER" />
      <property role="1L1pqM" value="&lt;" />
    </node>
    <node concept="25R33" id="14g3IsRhL0d" role="25R1y">
      <property role="3tVfz5" value="1229499084499783693" />
      <property role="TrG5h" value="GREATER_EQUAL" />
      <property role="1L1pqM" value="&gt;=" />
    </node>
    <node concept="25R33" id="14g3IsRhL0j" role="25R1y">
      <property role="3tVfz5" value="1229499084499783699" />
      <property role="TrG5h" value="LOWER_EQUAL" />
      <property role="1L1pqM" value="&lt;=" />
    </node>
    <node concept="25R33" id="14g3IsRhL0p" role="25R1y">
      <property role="3tVfz5" value="1229499084499783705" />
      <property role="TrG5h" value="NOT_EQUAL" />
      <property role="1L1pqM" value="!=" />
    </node>
    <node concept="25R33" id="14g3IsRhL0x" role="25R1y">
      <property role="3tVfz5" value="1229499084499783713" />
      <property role="TrG5h" value="BETWEEN" />
    </node>
    <node concept="25R33" id="14g3IsRhL0E" role="25R1y">
      <property role="3tVfz5" value="1229499084499783722" />
      <property role="TrG5h" value="LIKE" />
    </node>
    <node concept="25R33" id="14g3IsRhL0O" role="25R1y">
      <property role="3tVfz5" value="1229499084499783732" />
      <property role="TrG5h" value="IN" />
    </node>
  </node>
  <node concept="1TIwiD" id="14g3IsRklvO">
    <property role="EcuMT" value="1229499084500457460" />
    <property role="TrG5h" value="ColumnRef" />
    <property role="3GE5qa" value="column" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="14g3IsRklvP" role="1TKVEi">
      <property role="IQ2ns" value="1229499084500457461" />
      <property role="20kJfa" value="column" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="14g3IsRh3GN" resolve="Column" />
    </node>
  </node>
</model>

