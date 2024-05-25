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
      <concept id="1229499084499598128" name="QueryLanguage.structure.Statement" flags="ng" index="Al3nn">
        <reference id="7087042522255881062" name="table" index="1Hv4z6" />
      </concept>
      <concept id="1229499084499783667" name="QueryLanguage.structure.Condition" flags="ng" index="AlK4k">
        <property id="1229499084499783750" name="operator" index="AlLUx" />
        <reference id="1229499084500534239" name="column" index="AgCOS" />
        <child id="7087042522255247528" name="value" index="1HhJc8" />
      </concept>
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <child id="1229499084500457466" name="columns" index="Agl$t" />
        <child id="1229499084499654445" name="where" index="AlhBa" />
      </concept>
      <concept id="7033755722359825275" name="QueryLanguage.structure.Where" flags="ng" index="15J0zF">
        <child id="1229499084499985332" name="condition" index="AmyPj" />
      </concept>
      <concept id="7087042522255225544" name="QueryLanguage.structure.InsertInto" flags="ng" index="1Hh$_C">
        <child id="7087042522255247523" name="values" index="1HhJc3" />
        <child id="7087042522255247413" name="columns" index="1HhJel" />
      </concept>
      <concept id="7087042522255247499" name="QueryLanguage.structure.Value" flags="ng" index="1HhJcF">
        <property id="7087042522255247502" name="value" index="1HhJcI" />
      </concept>
      <concept id="7087042522255689023" name="QueryLanguage.structure.Update" flags="ng" index="1HurUv">
        <child id="7087042522255689027" name="where" index="1HurVz" />
        <child id="7087042522255689031" name="columns" index="1HurVB" />
        <child id="7087042522255689035" name="values" index="1HurVF" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Al3kE" id="14g3IsRhdi_">
    <node concept="Al3n9" id="69qeU0fa3uX" role="Al3kR">
      <property role="TrG5h" value="Person" />
      <node concept="Al3nk" id="69qeU0fa3uZ" role="Al3mJ">
        <property role="TrG5h" value="age" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="69qeU0fa3v1" role="Al3mJ">
        <property role="TrG5h" value="name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
    </node>
    <node concept="1Hh$_C" id="69qeU0fa3v9" role="Al3kR">
      <ref role="1Hv4z6" node="69qeU0fa3uX" resolve="Person" />
      <node concept="Agl$j" id="69qeU0fa3vf" role="1HhJel">
        <ref role="Agl$i" node="69qeU0fa3uZ" resolve="age" />
      </node>
      <node concept="Agl$j" id="69qeU0fa3vh" role="1HhJel">
        <ref role="Agl$i" node="69qeU0fa3v1" resolve="name" />
      </node>
      <node concept="1HhJcF" id="69qeU0fa3vk" role="1HhJc3">
        <property role="1HhJcI" value="23" />
      </node>
      <node concept="1HhJcF" id="69qeU0fa3vm" role="1HhJc3">
        <property role="1HhJcI" value="Simone" />
      </node>
    </node>
    <node concept="15J0zD" id="69qeU0fay62" role="Al3kR">
      <ref role="1Hv4z6" node="69qeU0fa3uX" resolve="Person" />
      <node concept="15J0zF" id="69qeU0faKLI" role="AlhBa">
        <node concept="AlK4k" id="69qeU0faKLJ" role="AmyPj">
          <property role="AlLUx" value="14g3IsRhL0p/NOT_EQUAL" />
          <ref role="AgCOS" node="69qeU0fa3uZ" resolve="age" />
          <node concept="1HhJcF" id="69qeU0faKLK" role="1HhJc8">
            <property role="1HhJcI" value="23" />
          </node>
        </node>
      </node>
      <node concept="Agl$j" id="69qeU0fbeuU" role="Agl$t">
        <ref role="Agl$i" node="69qeU0fa3v1" resolve="name" />
      </node>
    </node>
    <node concept="1HurUv" id="69qeU0fbeuv" role="Al3kR">
      <ref role="1Hv4z6" node="69qeU0fa3uX" resolve="Person" />
      <node concept="15J0zF" id="69qeU0fbeux" role="1HurVz">
        <node concept="AlK4k" id="69qeU0fbeuz" role="AmyPj">
          <property role="AlLUx" value="14g3IsRhKZU/EQUALS" />
          <ref role="AgCOS" node="69qeU0fa3v1" resolve="name" />
          <node concept="1HhJcF" id="69qeU0fbeu_" role="1HhJc8">
            <property role="1HhJcI" value="&quot;Simone&quot;" />
          </node>
        </node>
      </node>
      <node concept="Agl$j" id="69qeU0fbeuS" role="1HurVB">
        <ref role="Agl$i" node="69qeU0fa3uZ" resolve="age" />
      </node>
      <node concept="1HhJcF" id="69qeU0fbeuW" role="1HurVF">
        <property role="1HhJcI" value="24" />
      </node>
    </node>
  </node>
</model>

