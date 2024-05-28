<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8cc8777b-46d3-45a2-9b32-ab88d05f313f(QueryLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage">
      <concept id="3100867722287388366" name="QueryLanguage.structure.GroupBy" flags="ng" index="21oAwd">
        <child id="3100867722287388505" name="columns" index="21oAAq" />
      </concept>
      <concept id="3100867722286850641" name="QueryLanguage.structure.OrderBy" flags="ng" index="21qpMi">
        <child id="3100867722287388367" name="columns" index="21oAwc" />
      </concept>
      <concept id="2582920951876730988" name="QueryLanguage.structure.ConditionSet" flags="ng" index="2onE27">
        <child id="2582920951876730989" name="conditions" index="2onE26" />
      </concept>
      <concept id="2582920951876036245" name="QueryLanguage.structure.ConditionsSequence" flags="ng" index="2oD4pY">
        <property id="2582920951876731059" name="conditionOperator" index="2onE1o" />
        <child id="2582920951876036281" name="conditions" index="2oD4pi" />
      </concept>
      <concept id="1229499084500457460" name="QueryLanguage.structure.ColumnRef" flags="ng" index="Agl$j">
        <reference id="1229499084500457461" name="column" index="Agl$i" />
      </concept>
      <concept id="1229499084499598285" name="QueryLanguage.structure.Script" flags="ng" index="Al3kE">
        <child id="3100867722287075686" name="operations" index="21riY_" />
      </concept>
      <concept id="1229499084499598126" name="QueryLanguage.structure.CreateTable" flags="ng" index="Al3n9">
        <child id="8471277724064735316" name="columns" index="1_7Ipx" />
      </concept>
      <concept id="1229499084499598131" name="QueryLanguage.structure.Column" flags="ng" index="Al3nk">
        <property id="1229499084499598135" name="type" index="Al3ng" />
      </concept>
      <concept id="1229499084499598128" name="QueryLanguage.structure.Statement" flags="ng" index="Al3nn">
        <reference id="7087042522255881062" name="table" index="1Hv4z6" />
        <child id="8471277724064440123" name="columns" index="1_6_$e" />
      </concept>
      <concept id="1229499084499783667" name="QueryLanguage.structure.Condition" flags="ng" index="AlK4k">
        <property id="1229499084499783750" name="operator" index="AlLUx" />
        <reference id="1229499084500534239" name="column" index="AgCOS" />
        <child id="7087042522255247528" name="value" index="1HhJc8" />
      </concept>
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <property id="8521615295528819822" name="tableAlias" index="1cLguo" />
        <child id="3100867722287388537" name="groupBy" index="21oAAU" />
        <child id="3100867722286851113" name="orderBy" index="21qpFE" />
        <child id="1229499084499654445" name="where" index="AlhBa" />
      </concept>
      <concept id="7033755722359825275" name="QueryLanguage.structure.Where" flags="ng" index="15J0zF">
        <child id="1229499084499985332" name="conditions" index="AmyPj" />
      </concept>
      <concept id="7087042522255225544" name="QueryLanguage.structure.InsertInto" flags="ng" index="1Hh$_C">
        <child id="7087042522255247523" name="values" index="1HhJc3" />
      </concept>
      <concept id="7087042522255247499" name="QueryLanguage.structure.Value" flags="ng" index="1HhJcF">
        <property id="7087042522255247502" name="value" index="1HhJcI" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Al3kE" id="2G8vGeEqNB2">
    <node concept="Al3n9" id="2G8vGeEqNB3" role="21riY_">
      <property role="TrG5h" value="Person" />
      <node concept="Al3nk" id="2G8vGeEqNB5" role="1_7Ipx">
        <property role="TrG5h" value="name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="2G8vGeEqNB7" role="1_7Ipx">
        <property role="TrG5h" value="age" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="2G8vGeEqNBa" role="1_7Ipx">
        <property role="TrG5h" value="birthDate" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
    </node>
    <node concept="Al3n9" id="2G8vGeEqNBk" role="21riY_">
      <property role="TrG5h" value="University" />
      <node concept="Al3nk" id="2G8vGeEqNBr" role="1_7Ipx">
        <property role="TrG5h" value="name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="2G8vGeEqNBt" role="1_7Ipx">
        <property role="TrG5h" value="city" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
    </node>
    <node concept="15J0zD" id="2G8vGeEqNBD" role="21riY_">
      <ref role="1Hv4z6" node="2G8vGeEqNB3" resolve="Person" />
      <node concept="Agl$j" id="2G8vGeEqNBP" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNB5" resolve="name" />
      </node>
      <node concept="21oAwd" id="2G8vGeEqNBX" role="21oAAU">
        <node concept="Agl$j" id="2G8vGeEqNBY" role="21oAAq">
          <ref role="Agl$i" node="2G8vGeEqNB5" resolve="name" />
        </node>
      </node>
      <node concept="21qpMi" id="2G8vGeEqNC1" role="21qpFE">
        <node concept="Agl$j" id="2G8vGeEqNC2" role="21oAwc">
          <ref role="Agl$i" node="2G8vGeEqNB7" resolve="age" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="2G8vGeErJq8" role="21riY_">
      <ref role="1Hv4z6" node="2G8vGeEqNB3" resolve="Person" />
      <node concept="Agl$j" id="2G8vGeErJqo" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNB7" resolve="age" />
      </node>
      <node concept="Agl$j" id="2G8vGeErJqq" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNBa" resolve="birthDate" />
      </node>
      <node concept="Agl$j" id="2G8vGeErJqt" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNB5" resolve="name" />
      </node>
      <node concept="15J0zF" id="7Umbw08Dc2M" role="AlhBa">
        <node concept="2onE27" id="7Umbw08Dc2O" role="AmyPj">
          <node concept="2oD4pY" id="7Umbw08Dc2W" role="2onE26">
            <property role="2onE1o" value="2fooeIVv2qs/OR" />
            <node concept="AlK4k" id="7Umbw08Dc2X" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhL0p/NOT_EQUAL" />
              <ref role="AgCOS" node="2G8vGeEqNB7" resolve="age" />
              <node concept="1HhJcF" id="7Umbw08Dc2Y" role="1HhJc8">
                <property role="1HhJcI" value="23" />
              </node>
            </node>
          </node>
          <node concept="2oD4pY" id="7Umbw08Dc32" role="2onE26">
            <node concept="AlK4k" id="7Umbw08Dc33" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhL0p/NOT_EQUAL" />
              <ref role="AgCOS" node="2G8vGeEqNBa" resolve="birthDate" />
              <node concept="1HhJcF" id="7Umbw08Dc34" role="1HhJc8">
                <property role="1HhJcI" value="2000/12/01" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Hh$_C" id="2fooeIVqlB9" role="21riY_">
      <ref role="1Hv4z6" node="2G8vGeEqNB3" resolve="Person" />
      <node concept="Agl$j" id="2fooeIVqlBt" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNB7" resolve="age" />
      </node>
      <node concept="Agl$j" id="2fooeIVqlBv" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNBa" resolve="birthDate" />
      </node>
      <node concept="1HhJcF" id="2fooeIVqlBC" role="1HhJc3">
        <property role="1HhJcI" value="23" />
      </node>
      <node concept="1HhJcF" id="2fooeIVqlBE" role="1HhJc3">
        <property role="1HhJcI" value="2000/12/01" />
      </node>
    </node>
    <node concept="15J0zD" id="7p2QZoUzieJ" role="21riY_">
      <property role="1cLguo" value="Person_alias" />
      <ref role="1Hv4z6" node="2G8vGeEqNB3" resolve="Person" />
      <node concept="Agl$j" id="7p2QZoUzifg" role="1_6_$e">
        <ref role="Agl$i" node="2G8vGeEqNB7" resolve="age" />
      </node>
    </node>
  </node>
</model>

