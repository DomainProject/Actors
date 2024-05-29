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
      <concept id="3100867722286999193" name="QueryLanguage.structure.Delete" flags="ng" index="21r5xq">
        <child id="3100867722286999195" name="where" index="21r5xo" />
      </concept>
      <concept id="2341611946572642014" name="QueryLanguage.structure.TableReference" flags="ng" index="2leIlQ">
        <reference id="2341611946572642015" name="tableRef" index="2leIlR" />
      </concept>
      <concept id="2582920951876730988" name="QueryLanguage.structure.ConditionSet" flags="ng" index="2onE27">
        <child id="2582920951876730989" name="conditions" index="2onE26" />
      </concept>
      <concept id="2582920951876036245" name="QueryLanguage.structure.ConditionsSequence" flags="ng" index="2oD4pY">
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
        <property id="2341611946574946043" name="fullName" index="2l5wPj" />
        <property id="1229499084499598135" name="type" index="Al3ng" />
      </concept>
      <concept id="1229499084499598128" name="QueryLanguage.structure.Statement" flags="ng" index="Al3nn">
        <reference id="2341611946572648006" name="table" index="2lehRI" />
        <child id="8471277724064440123" name="columns" index="1_6_$e" />
      </concept>
      <concept id="1229499084499783667" name="QueryLanguage.structure.Condition" flags="ng" index="AlK4k">
        <property id="1229499084499783750" name="operator" index="AlLUx" />
        <property id="2781118856799899169" name="conditionOperator" index="2Ba$FW" />
        <child id="2341611946580843107" name="column" index="2lJ0Bb" />
        <child id="7087042522255247528" name="value" index="1HhJc8" />
      </concept>
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <child id="3100867722287388537" name="groupBy" index="21oAAU" />
        <child id="3100867722286851113" name="orderBy" index="21qpFE" />
        <child id="2341611946572650175" name="tables" index="2legkn" />
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
      <concept id="7087042522255689023" name="QueryLanguage.structure.Update" flags="ng" index="1HurUv">
        <child id="7087042522255689027" name="where" index="1HurVz" />
        <child id="7087042522255689035" name="values" index="1HurVF" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Al3kE" id="2G8vGeEqNB2">
    <node concept="Al3n9" id="21Z4UyPrIo4" role="21riY_">
      <property role="TrG5h" value="Person" />
      <node concept="Al3nk" id="21Z4UyPrIo6" role="1_7Ipx">
        <property role="TrG5h" value="name" />
        <property role="2l5wPj" value="Person.name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="21Z4UyPrIo8" role="1_7Ipx">
        <property role="TrG5h" value="age" />
        <property role="2l5wPj" value="Person.age" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
    </node>
    <node concept="Al3n9" id="21Z4UyPrIog" role="21riY_">
      <property role="TrG5h" value="University" />
      <node concept="Al3nk" id="21Z4UyPrIom" role="1_7Ipx">
        <property role="TrG5h" value="name" />
        <property role="2l5wPj" value="University.name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="21Z4UyPrIoo" role="1_7Ipx">
        <property role="TrG5h" value="city" />
        <property role="2l5wPj" value="University.city" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
    </node>
    <node concept="1Hh$_C" id="21Z4UyPCVcR" role="21riY_">
      <ref role="2lehRI" node="21Z4UyPrIo4" resolve="Person" />
      <node concept="Agl$j" id="21Z4UyPCVd0" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
      </node>
      <node concept="Agl$j" id="21Z4UyPCVd2" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIo6" resolve="name" />
      </node>
      <node concept="1HhJcF" id="21Z4UyPCVd5" role="1HhJc3">
        <property role="1HhJcI" value="23" />
      </node>
      <node concept="1HhJcF" id="21Z4UyPCVd7" role="1HhJc3">
        <property role="1HhJcI" value="&quot;Simone&quot;" />
      </node>
    </node>
    <node concept="1Hh$_C" id="21Z4UyPCVdn" role="21riY_">
      <ref role="2lehRI" node="21Z4UyPrIog" resolve="University" />
      <node concept="Agl$j" id="21Z4UyPCVd_" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIom" resolve="name" />
      </node>
      <node concept="Agl$j" id="21Z4UyPCVdB" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIoo" resolve="city" />
      </node>
      <node concept="1HhJcF" id="21Z4UyPCVdE" role="1HhJc3">
        <property role="1HhJcI" value="&quot;Tor Vergata&quot;" />
      </node>
      <node concept="1HhJcF" id="21Z4UyPCVdG" role="1HhJc3">
        <property role="1HhJcI" value="&quot;Rome&quot;" />
      </node>
    </node>
    <node concept="15J0zD" id="21Z4UyPONSX" role="21riY_">
      <node concept="2leIlQ" id="21Z4UyPONSZ" role="2legkn">
        <ref role="2leIlR" node="21Z4UyPrIo4" resolve="Person" />
      </node>
      <node concept="Agl$j" id="21Z4UyPONTj" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
      </node>
      <node concept="15J0zF" id="21Z4UyPONTl" role="AlhBa">
        <node concept="2onE27" id="21Z4UyPONTn" role="AmyPj">
          <node concept="2oD4pY" id="21Z4UyPONTo" role="2onE26">
            <node concept="AlK4k" id="21Z4UyPONTp" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhKZU/EQUALS" />
              <node concept="1HhJcF" id="21Z4UyPONTq" role="1HhJc8">
                <property role="1HhJcI" value="&quot;Simone&quot;" />
              </node>
              <node concept="Agl$j" id="21Z4UyPONTr" role="2lJ0Bb">
                <ref role="Agl$i" node="21Z4UyPrIo6" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="21Z4UyPONTx" role="21oAAU">
        <node concept="Agl$j" id="21Z4UyPONTy" role="21oAAq">
          <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
        </node>
      </node>
      <node concept="21qpMi" id="21Z4UyPONT_" role="21qpFE">
        <node concept="Agl$j" id="21Z4UyPONTA" role="21oAwc">
          <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="21Z4UyPONUg" role="21riY_">
      <node concept="2leIlQ" id="21Z4UyPONUi" role="2legkn">
        <ref role="2leIlR" node="21Z4UyPrIo4" resolve="Person" />
      </node>
      <node concept="2leIlQ" id="21Z4UyPONUN" role="2legkn">
        <ref role="2leIlR" node="21Z4UyPrIog" resolve="University" />
      </node>
      <node concept="Agl$j" id="21Z4UyPONUQ" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIo6" resolve="name" />
      </node>
      <node concept="Agl$j" id="21Z4UyPONUS" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
      </node>
      <node concept="Agl$j" id="21Z4UyPONUV" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIom" resolve="name" />
      </node>
      <node concept="Agl$j" id="21Z4UyPONUZ" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIoo" resolve="city" />
      </node>
      <node concept="15J0zF" id="21Z4UyPONV4" role="AlhBa">
        <node concept="2onE27" id="21Z4UyPONV6" role="AmyPj">
          <node concept="2oD4pY" id="21Z4UyPONV7" role="2onE26">
            <node concept="AlK4k" id="21Z4UyPONV8" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhKZU/EQUALS" />
              <property role="2Ba$FW" value="2fooeIVv2qr/AND" />
              <node concept="1HhJcF" id="21Z4UyPONV9" role="1HhJc8">
                <property role="1HhJcI" value="&quot;Rome&quot;" />
              </node>
              <node concept="Agl$j" id="21Z4UyPONVa" role="2lJ0Bb">
                <ref role="Agl$i" node="21Z4UyPrIoo" resolve="city" />
              </node>
            </node>
            <node concept="AlK4k" id="21Z4UyPONVs" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhL08/LOWER" />
              <node concept="1HhJcF" id="21Z4UyPONVt" role="1HhJc8">
                <property role="1HhJcI" value="50" />
              </node>
              <node concept="Agl$j" id="21Z4UyPONVu" role="2lJ0Bb">
                <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="21qpMi" id="21Z4UyPONV_" role="21qpFE">
        <node concept="Agl$j" id="21Z4UyPONVA" role="21oAwc">
          <ref role="Agl$i" node="21Z4UyPrIom" resolve="name" />
        </node>
      </node>
    </node>
    <node concept="21r5xq" id="21Z4UyPPvyt" role="21riY_">
      <ref role="2lehRI" node="21Z4UyPrIo4" resolve="Person" />
      <node concept="15J0zF" id="21Z4UyPPv$1" role="21r5xo">
        <node concept="2onE27" id="21Z4UyPPv$3" role="AmyPj">
          <node concept="2oD4pY" id="21Z4UyPPv$4" role="2onE26">
            <node concept="AlK4k" id="21Z4UyPPv$5" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhL08/LOWER" />
              <node concept="1HhJcF" id="21Z4UyPPv$d" role="1HhJc8">
                <property role="1HhJcI" value="18" />
              </node>
              <node concept="Agl$j" id="21Z4UyPPv$7" role="2lJ0Bb">
                <ref role="Agl$i" node="21Z4UyPrIo8" resolve="age" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1HurUv" id="21Z4UyPPv$g" role="21riY_">
      <ref role="2lehRI" node="21Z4UyPrIog" resolve="University" />
      <node concept="15J0zF" id="21Z4UyPPv$i" role="1HurVz">
        <node concept="2onE27" id="21Z4UyPPv_g" role="AmyPj">
          <node concept="2oD4pY" id="21Z4UyPPv_h" role="2onE26">
            <node concept="AlK4k" id="21Z4UyPPv_i" role="2oD4pi">
              <property role="AlLUx" value="14g3IsRhKZU/EQUALS" />
              <node concept="1HhJcF" id="21Z4UyPPv_j" role="1HhJc8">
                <property role="1HhJcI" value="&quot;Tor Vergata&quot;" />
              </node>
              <node concept="Agl$j" id="21Z4UyPPv_k" role="2lJ0Bb">
                <ref role="Agl$i" node="21Z4UyPrIom" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Agl$j" id="21Z4UyPPv_c" role="1_6_$e">
        <ref role="Agl$i" node="21Z4UyPrIom" resolve="name" />
      </node>
      <node concept="1HhJcF" id="21Z4UyPPv_e" role="1HurVF">
        <property role="1HhJcI" value="&quot;Università di Roma Tor Vergata&quot;" />
      </node>
    </node>
  </node>
</model>

