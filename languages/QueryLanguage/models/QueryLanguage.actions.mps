<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b053dcf2-8574-41a3-bf8c-40491dc6b2df(QueryLanguage.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p6im" ref="r:e2175f5d-85fc-4bdd-8ae1-8b72b7f266cc(QueryLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
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
</model>

