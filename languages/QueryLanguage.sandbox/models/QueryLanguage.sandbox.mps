<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8cc8777b-46d3-45a2-9b32-ab88d05f313f(QueryLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage">
      <concept id="1229499084500457460" name="QueryLanguage.structure.ColumnRef" flags="ng" index="Agl$j">
        <reference id="1229499084500457461" name="column" index="Agl$i" />
      </concept>
      <concept id="1229499084499598285" name="QueryLanguage.structure.Script" flags="ng" index="Al3kE">
        <child id="1229499084499598288" name="queries" index="Al3kR" />
      </concept>
      <concept id="1229499084499598126" name="QueryLanguage.structure.CreateTable" flags="ng" index="Al3n9">
        <child id="1229499084499598152" name="columns" index="Al3mJ" />
      </concept>
      <concept id="1229499084499598131" name="QueryLanguage.structure.Column" flags="ng" index="Al3nk">
        <property id="1229499084499598135" name="type" index="Al3ng" />
      </concept>
      <concept id="1229499084499783667" name="QueryLanguage.structure.Condition" flags="ng" index="AlK4k">
        <property id="1229499084499783750" name="operator" index="AlLUx" />
        <property id="1229499084499783753" name="value" index="AlLUI" />
        <reference id="1229499084500534239" name="column" index="AgCOS" />
      </concept>
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <reference id="1229499084499654326" name="table" index="Alhxh" />
        <child id="1229499084500457466" name="columns" index="Agl$t" />
        <child id="1229499084499654445" name="where" index="AlhBa" />
      </concept>
      <concept id="7033755722359825275" name="QueryLanguage.structure.Where" flags="ng" index="15J0zF">
        <reference id="1229499084499928985" name="table" index="Amk_Y" />
        <child id="1229499084499985332" name="condition" index="AmyPj" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Al3kE" id="14g3IsRhdi_">
    <node concept="Al3n9" id="14g3IsRhhpH" role="Al3kR">
      <property role="TrG5h" value="Person" />
      <node concept="Al3nk" id="14g3IsRhhpJ" role="Al3mJ">
        <property role="TrG5h" value="name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="14g3IsRhhpL" role="Al3mJ">
        <property role="TrG5h" value="age" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="14g3IsRhhq2" role="Al3mJ">
        <property role="TrG5h" value="height" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="14g3IsRkCfd" role="Al3kR">
      <ref role="Alhxh" node="14g3IsRhhpH" resolve="Person" />
      <node concept="Agl$j" id="14g3IsRkCfk" role="Agl$t">
        <ref role="Agl$i" node="14g3IsRhhpL" resolve="age" />
      </node>
      <node concept="Agl$j" id="14g3IsRkCfm" role="Agl$t">
        <ref role="Agl$i" node="14g3IsRhhq2" resolve="height" />
      </node>
      <node concept="15J0zF" id="14g3IsRkCfp" role="AlhBa">
        <ref role="Amk_Y" node="14g3IsRhhpH" resolve="Person" />
        <node concept="AlK4k" id="14g3IsRkCfq" role="AmyPj">
          <property role="AlLUx" value="14g3IsRhL0p/NOT_EQUAL" />
          <property role="AlLUI" value="12" />
          <ref role="AgCOS" node="14g3IsRhhpL" resolve="age" />
        </node>
      </node>
    </node>
  </node>
</model>

