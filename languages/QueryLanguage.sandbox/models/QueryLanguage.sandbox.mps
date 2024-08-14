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
      <concept id="7824142728409239622" name="QueryLanguage.structure.JoinCondition" flags="ng" index="ini0t">
        <child id="7824142728409239627" name="rightColumn" index="ini0g" />
        <child id="7824142728409239625" name="leftColumn" index="ini0i" />
      </concept>
      <concept id="2341611946572642014" name="QueryLanguage.structure.TableReference" flags="ng" index="2leIlQ">
        <reference id="2341611946572642015" name="tableRef" index="2leIlR" />
      </concept>
      <concept id="3500821905858947243" name="QueryLanguage.structure.Window" flags="ng" index="2odo9i">
        <property id="3500821905858947251" name="size" index="2odo9a" />
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
      <concept id="6736945802599629714" name="QueryLanguage.structure.Count" flags="ng" index="Avfch" />
      <concept id="6736945802599629716" name="QueryLanguage.structure.Average" flags="ng" index="Avfcn" />
      <concept id="1047910270175909650" name="QueryLanguage.structure.SelectColumn" flags="ngI" index="2WQRJ4">
        <child id="817930103574645565" name="aggregationFunction" index="1LWTg_" />
      </concept>
      <concept id="1047910270175909651" name="QueryLanguage.structure.AllColumns" flags="ng" index="2WQRJ5" />
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <property id="8521615295528819822" name="viewName" index="1cLguo" />
        <child id="3100867722287388537" name="groupBy" index="21oAAU" />
        <child id="3100867722286851113" name="orderBy" index="21qpFE" />
        <child id="7824142728409239666" name="joinCondition" index="ini0D" />
        <child id="2341611946572650175" name="tables" index="2legkn" />
        <child id="3500821905858947254" name="window" index="2odo9f" />
        <child id="1229499084499654445" name="where" index="AlhBa" />
        <child id="1047910270176170764" name="cols" index="2WRRZq" />
        <child id="817930103574093953" name="viewTable" index="1LY3Yp" />
      </concept>
      <concept id="7033755722359825275" name="QueryLanguage.structure.Where" flags="ng" index="15J0zF">
        <child id="1229499084499985332" name="condition" index="AmyPj" />
      </concept>
      <concept id="6839590609873398296" name="QueryLanguage.structure.SimpleCondition" flags="ng" index="1osJ5O">
        <property id="6839590609873398308" name="operator" index="1osJ58" />
        <child id="6839590609873398315" name="column" index="1osJ57" />
        <child id="6839590609873398310" name="value" index="1osJ5a" />
      </concept>
      <concept id="6839590609873398299" name="QueryLanguage.structure.MultipleCondition" flags="ng" index="1osJ5R">
        <property id="6839590609873398304" name="operator" index="1osJ5c" />
        <child id="6839590609873398349" name="conditionDx" index="1osJ4x" />
        <child id="6839590609873398361" name="conditionSx" index="1osJ4P" />
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
  <node concept="Al3kE" id="5Q93FfFUJYg">
    <property role="TrG5h" value="PersonUniversityScript" />
    <node concept="Al3n9" id="5Q93FfFUJYh" role="21riY_">
      <property role="TrG5h" value="Person" />
      <node concept="Al3nk" id="5Q93FfFUJYj" role="1_7Ipx">
        <property role="TrG5h" value="name" />
        <property role="2l5wPj" value="Person.name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="5Q93FfFUJYl" role="1_7Ipx">
        <property role="TrG5h" value="age" />
        <property role="2l5wPj" value="Person.age" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="5VF6QK6CGC9" role="1_7Ipx">
        <property role="TrG5h" value="height" />
        <property role="2l5wPj" value="Person.height" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="5VF6QK6CGCd" role="1_7Ipx">
        <property role="TrG5h" value="weight" />
        <property role="2l5wPj" value="Person.weight" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="Al3n9" id="5VF6QK6C0wF" role="21riY_">
      <property role="TrG5h" value="University" />
      <node concept="Al3nk" id="5VF6QK6C0wL" role="1_7Ipx">
        <property role="TrG5h" value="name" />
        <property role="2l5wPj" value="University.name" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="5VF6QK6C0wQ" role="1_7Ipx">
        <property role="TrG5h" value="city" />
        <property role="2l5wPj" value="University.city" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="6eYilKnl7TR" role="1_7Ipx">
        <property role="TrG5h" value="country" />
        <property role="2l5wPj" value="University.country" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
    </node>
    <node concept="15J0zD" id="6eYilKnl7Wa" role="21riY_">
      <node concept="2leIlQ" id="6eYilKnl7Wc" role="2legkn">
        <ref role="2leIlR" node="5Q93FfFUJYh" resolve="Person" />
      </node>
      <node concept="2WQRJ5" id="6eYilKnl7Wp" role="2WRRZq" />
      <node concept="15J0zF" id="6eYilKnl7Wr" role="AlhBa">
        <node concept="1osJ5O" id="3lH3Hb9pixM" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
          <node concept="1HhJcF" id="3lH3Hb9pixN" role="1osJ5a">
            <property role="1HhJcI" value="30" />
          </node>
          <node concept="Agl$j" id="3lH3Hb9pixO" role="1osJ57">
            <ref role="Agl$i" node="5Q93FfFUJYl" resolve="age" />
          </node>
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="6eYilKnl7WP" role="21riY_">
      <property role="1cLguo" value="University_alias" />
      <node concept="2leIlQ" id="6eYilKnl7WR" role="2legkn">
        <ref role="2leIlR" node="5VF6QK6C0wF" resolve="University" />
      </node>
      <node concept="Agl$j" id="6eYilKnl7Xb" role="2WRRZq">
        <ref role="Agl$i" node="5VF6QK6C0wL" resolve="name" />
      </node>
      <node concept="Agl$j" id="6eYilKnl7Xg" role="2WRRZq">
        <ref role="Agl$i" node="5VF6QK6C0wQ" resolve="city" />
      </node>
      <node concept="15J0zF" id="6eYilKnl7Xk" role="AlhBa">
        <node concept="1osJ5O" id="6eYilKnl7Xm" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="6eYilKnl7Xn" role="1osJ5a">
            <property role="1HhJcI" value="Italy" />
          </node>
          <node concept="Agl$j" id="6eYilKnl7Xo" role="1osJ57">
            <ref role="Agl$i" node="6eYilKnl7TR" resolve="country" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="32lqJACJw5M" role="21oAAU">
        <node concept="Agl$j" id="32lqJACJw5N" role="21oAAq">
          <ref role="Agl$i" node="5VF6QK6C0wQ" resolve="city" />
        </node>
      </node>
      <node concept="2odo9i" id="3F6HEtZw0Zx" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
    </node>
    <node concept="15J0zD" id="2TdJYs2VY0S" role="21riY_">
      <node concept="2leIlQ" id="2TdJYs2VY0U" role="2legkn">
        <ref role="2leIlR" node="5Q93FfFUJYh" resolve="Person" />
      </node>
      <node concept="15J0zF" id="2TdJYs2VY1O" role="AlhBa">
        <node concept="1osJ5R" id="2TdJYs2VY1Q" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="2TdJYs2VY25" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
            <node concept="1HhJcF" id="2TdJYs2VY27" role="1osJ5a">
              <property role="1HhJcI" value="80.0" />
            </node>
            <node concept="Agl$j" id="2TdJYs2VY29" role="1osJ57">
              <ref role="Agl$i" node="5VF6QK6CGCd" resolve="weight" />
            </node>
          </node>
          <node concept="1osJ5O" id="2TdJYs2VY1W" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhL0d/GREATER_EQUAL" />
            <node concept="1HhJcF" id="2TdJYs2VY1Y" role="1osJ5a">
              <property role="1HhJcI" value="1.8" />
            </node>
            <node concept="Agl$j" id="2TdJYs2VY20" role="1osJ57">
              <ref role="Agl$i" node="5VF6QK6CGC9" resolve="height" />
            </node>
          </node>
        </node>
      </node>
      <node concept="Agl$j" id="2TdJYs2VY2e" role="2WRRZq">
        <ref role="Agl$i" node="5Q93FfFUJYj" resolve="name" />
        <node concept="Avfch" id="2TdJYs2VY2g" role="1LWTg_" />
      </node>
      <node concept="2odo9i" id="3F6HEtZw0Zz" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
    </node>
    <node concept="15J0zD" id="6MkW5HYFxer" role="21riY_">
      <node concept="2leIlQ" id="6MkW5HYFxet" role="2legkn">
        <ref role="2leIlR" node="5Q93FfFUJYh" resolve="Person" />
      </node>
      <node concept="2leIlQ" id="6MkW5HYFxf7" role="2legkn">
        <ref role="2leIlR" node="5VF6QK6C0wF" resolve="University" />
      </node>
      <node concept="2WQRJ5" id="6MkW5HYFxfa" role="2WRRZq" />
      <node concept="15J0zF" id="6MkW5HYFxfc" role="AlhBa">
        <node concept="1osJ5R" id="6MkW5HYFxfe" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="6MkW5HYFxft" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
            <node concept="1HhJcF" id="6MkW5HYFxfv" role="1osJ5a">
              <property role="1HhJcI" value="&quot;Italy&quot;" />
            </node>
            <node concept="Agl$j" id="6MkW5HYFxfx" role="1osJ57">
              <ref role="Agl$i" node="6eYilKnl7TR" resolve="country" />
            </node>
          </node>
          <node concept="1osJ5R" id="3lH3Hb9pg33" role="1osJ4P">
            <property role="1osJ5c" value="2fooeIVv2qs/OR" />
            <node concept="1osJ5O" id="3lH3Hb9pg3j" role="1osJ4x">
              <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
              <node concept="1HhJcF" id="3lH3Hb9pg3l" role="1osJ5a">
                <property role="1HhJcI" value="100.0" />
              </node>
              <node concept="Agl$j" id="3lH3Hb9pg3n" role="1osJ57">
                <ref role="Agl$i" node="5VF6QK6CGCd" resolve="weight" />
              </node>
            </node>
            <node concept="1osJ5O" id="3lH3Hb9pg3a" role="1osJ4P">
              <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
              <node concept="1HhJcF" id="3lH3Hb9pg3c" role="1osJ5a">
                <property role="1HhJcI" value="30" />
              </node>
              <node concept="Agl$j" id="3lH3Hb9pg3e" role="1osJ57">
                <ref role="Agl$i" node="5Q93FfFUJYl" resolve="age" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ini0t" id="7uuypCIgwSI" role="ini0D">
        <node concept="Agl$j" id="7uuypCIgwSJ" role="ini0i">
          <ref role="Agl$i" node="5Q93FfFUJYl" resolve="age" />
        </node>
        <node concept="Agl$j" id="7uuypCIgwSK" role="ini0g">
          <ref role="Agl$i" node="6eYilKnl7TR" resolve="country" />
        </node>
      </node>
      <node concept="2odo9i" id="3F6HEtZw0Z_" role="2odo9f">
        <property role="2odo9a" value="20" />
      </node>
    </node>
    <node concept="15J0zD" id="2TdJYs306YE" role="21riY_">
      <node concept="2leIlQ" id="2TdJYs306YF" role="2legkn">
        <ref role="2leIlR" node="5Q93FfFUJYh" resolve="Person" />
      </node>
      <node concept="2leIlQ" id="2TdJYs306YG" role="2legkn">
        <ref role="2leIlR" node="5VF6QK6C0wF" resolve="University" />
      </node>
      <node concept="15J0zF" id="2TdJYs306YI" role="AlhBa">
        <node concept="1osJ5R" id="2TdJYs306YJ" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="2TdJYs306YK" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
            <node concept="1HhJcF" id="2TdJYs306YL" role="1osJ5a">
              <property role="1HhJcI" value="&quot;Italy&quot;" />
            </node>
            <node concept="Agl$j" id="2TdJYs306YM" role="1osJ57">
              <ref role="Agl$i" node="6eYilKnl7TR" resolve="country" />
            </node>
          </node>
          <node concept="1osJ5R" id="2TdJYs306YN" role="1osJ4P">
            <property role="1osJ5c" value="2fooeIVv2qs/OR" />
            <node concept="1osJ5O" id="2TdJYs306YO" role="1osJ4x">
              <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
              <node concept="1HhJcF" id="2TdJYs306YP" role="1osJ5a">
                <property role="1HhJcI" value="100.0" />
              </node>
              <node concept="Agl$j" id="2TdJYs306YQ" role="1osJ57">
                <ref role="Agl$i" node="5VF6QK6CGCd" resolve="weight" />
              </node>
            </node>
            <node concept="1osJ5O" id="2TdJYs306YR" role="1osJ4P">
              <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
              <node concept="1HhJcF" id="2TdJYs306YS" role="1osJ5a">
                <property role="1HhJcI" value="30" />
              </node>
              <node concept="Agl$j" id="2TdJYs306YT" role="1osJ57">
                <ref role="Agl$i" node="5Q93FfFUJYl" resolve="age" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Agl$j" id="2TdJYs30700" role="2WRRZq">
        <ref role="Agl$i" node="5Q93FfFUJYl" resolve="age" />
      </node>
      <node concept="ini0t" id="2TdJYs30702" role="ini0D">
        <node concept="Agl$j" id="2TdJYs30703" role="ini0i">
          <ref role="Agl$i" node="5Q93FfFUJYj" resolve="name" />
        </node>
        <node concept="Agl$j" id="2TdJYs30704" role="ini0g">
          <ref role="Agl$i" node="5VF6QK6C0wL" resolve="name" />
        </node>
      </node>
      <node concept="2odo9i" id="3F6HEtZw0ZB" role="2odo9f">
        <property role="2odo9a" value="20" />
      </node>
    </node>
  </node>
  <node concept="Al3kE" id="HpRLxUoZRY">
    <property role="TrG5h" value="AgentScript" />
    <node concept="Al3n9" id="HpRLxUoZRZ" role="21riY_">
      <property role="TrG5h" value="agent" />
      <node concept="Al3nk" id="HpRLxUurU0" role="1_7Ipx">
        <property role="TrG5h" value="id" />
        <property role="2l5wPj" value="agent_alias.id" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="HpRLxUurUd" role="1_7Ipx">
        <property role="TrG5h" value="ts" />
        <property role="2l5wPj" value="agent_alias.ts" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="HpRLxUoZS3" role="1_7Ipx">
        <property role="TrG5h" value="regionId" />
        <property role="2l5wPj" value="agent_alias.regionId" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="HpRLxUoZS6" role="1_7Ipx">
        <property role="TrG5h" value="speed" />
        <property role="2l5wPj" value="agent.speed" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="HpRLxUoZSa" role="1_7Ipx">
        <property role="TrG5h" value="onRoadFlag" />
        <property role="2l5wPj" value="agent.onRoadFlag" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="HpRLxUoZS_" role="1_7Ipx">
        <property role="TrG5h" value="traveledDistance" />
        <property role="2l5wPj" value="agent_alias.traveledDistance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="HpRLxUurU6" role="1_7Ipx">
        <property role="TrG5h" value="traveledTime" />
        <property role="2l5wPj" value="agent_alias.traveledTime" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="HpRLxUIQn9" role="21riY_">
      <node concept="2leIlQ" id="HpRLxUIQnb" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="HpRLxUIQnP" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurUd" resolve="ts" />
      </node>
      <node concept="Agl$j" id="HpRLxUIQnU" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS3" resolve="regionId" />
      </node>
      <node concept="Agl$j" id="HpRLxUIQo2" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS6" resolve="speed" />
        <node concept="Avfcn" id="HpRLxUIQo7" role="1LWTg_" />
      </node>
      <node concept="15J0zF" id="HpRLxUIQo9" role="AlhBa">
        <node concept="1osJ5O" id="HpRLxUIQob" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="HpRLxUIQoc" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="HpRLxUIQod" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZSa" resolve="onRoadFlag" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="HpRLxUIQoh" role="21oAAU">
        <node concept="Agl$j" id="HpRLxUIQoi" role="21oAAq">
          <ref role="Agl$i" node="HpRLxUoZS3" resolve="regionId" />
        </node>
      </node>
      <node concept="2odo9i" id="32lqJACUHzZ" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
    </node>
    <node concept="15J0zD" id="HpRLxUIQp9" role="21riY_">
      <node concept="2leIlQ" id="HpRLxUIQpb" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="HpRLxUIQq1" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurUd" resolve="ts" />
      </node>
      <node concept="2WQRJ5" id="HpRLxUIQq6" role="2WRRZq">
        <node concept="Avfch" id="HpRLxUIQqa" role="1LWTg_" />
      </node>
      <node concept="15J0zF" id="HpRLxUIQqc" role="AlhBa">
        <node concept="1osJ5O" id="HpRLxUIQqe" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="HpRLxUIQqk" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="HpRLxUIQqg" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZSa" resolve="onRoadFlag" />
          </node>
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="6MkW5HYMsVt" role="21riY_">
      <property role="1cLguo" value="TraveledTimeTable" />
      <node concept="2leIlQ" id="6MkW5HYMsVv" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMsW0" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurUd" resolve="ts" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMsW5" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="id" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMsWd" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU6" resolve="traveledTime" />
      </node>
      <node concept="15J0zF" id="6MkW5HYMsWi" role="AlhBa">
        <node concept="1osJ5O" id="6MkW5HYMsWk" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="6MkW5HYMsWl" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="6MkW5HYMsWm" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZSa" resolve="onRoadFlag" />
          </node>
        </node>
      </node>
      <node concept="21qpMi" id="6MkW5HYMsWq" role="21qpFE">
        <node concept="Agl$j" id="6MkW5HYMsWr" role="21oAwc">
          <ref role="Agl$i" node="HpRLxUurU6" resolve="traveledTime" />
        </node>
      </node>
      <node concept="Al3n9" id="6MkW5HYMsYo" role="1LY3Yp">
        <property role="TrG5h" value="TraveledTimeTable" />
        <node concept="Al3nk" id="6MkW5HYMsYp" role="1_7Ipx">
          <property role="TrG5h" value="ts" />
          <property role="2l5wPj" value="TraveledTimeTable.ts" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="6MkW5HYMsYq" role="1_7Ipx">
          <property role="TrG5h" value="id" />
          <property role="2l5wPj" value="TraveledTimeTable.id" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="6MkW5HYMsYr" role="1_7Ipx">
          <property role="TrG5h" value="traveledTime" />
          <property role="2l5wPj" value="TraveledTimeTable.traveledTime" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="6MkW5HYMsXc" role="21riY_">
      <property role="1cLguo" value="TraveledDistanceTable" />
      <node concept="2leIlQ" id="6MkW5HYMsXe" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMsXU" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurUd" resolve="ts" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMsXZ" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="id" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMsY7" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
      </node>
      <node concept="15J0zF" id="6MkW5HYMsYc" role="AlhBa">
        <node concept="1osJ5O" id="6MkW5HYMsYd" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="6MkW5HYMsYe" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="6MkW5HYMsYf" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZSa" resolve="onRoadFlag" />
          </node>
        </node>
      </node>
      <node concept="21qpMi" id="6MkW5HYMsYk" role="21qpFE">
        <node concept="Agl$j" id="6MkW5HYMsYl" role="21oAwc">
          <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
        </node>
      </node>
      <node concept="Al3n9" id="6MkW5HYMsYw" role="1LY3Yp">
        <property role="TrG5h" value="TraveledDistanceTable" />
        <node concept="Al3nk" id="6MkW5HYMsYx" role="1_7Ipx">
          <property role="TrG5h" value="ts" />
          <property role="2l5wPj" value="TraveledDistanceTable.ts" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="6MkW5HYMsYy" role="1_7Ipx">
          <property role="TrG5h" value="id" />
          <property role="2l5wPj" value="TraveledDistanceTable.id" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="6MkW5HYMsYz" role="1_7Ipx">
          <property role="TrG5h" value="traveledDistance" />
          <property role="2l5wPj" value="TraveledDistanceTable.traveledDistance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="5gn1UuTmg22" role="21riY_">
      <property role="1cLguo" value="SmallDistanceTable" />
      <node concept="2leIlQ" id="5gn1UuTmg24" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="15J0zF" id="5gn1UuTmg3H" role="AlhBa">
        <node concept="1osJ5O" id="5gn1UuTmg3J" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
          <node concept="1HhJcF" id="5gn1UuTmg3K" role="1osJ5a">
            <property role="1HhJcI" value="250.0" />
          </node>
          <node concept="Agl$j" id="5gn1UuTmg3L" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
          </node>
        </node>
      </node>
      <node concept="Agl$j" id="5gn1UuTmg3P" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="id" />
      </node>
      <node concept="Agl$j" id="5gn1UuTmg3U" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS3" resolve="regionId" />
      </node>
      <node concept="Agl$j" id="5gn1UuTmg42" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
      </node>
      <node concept="Al3n9" id="5gn1UuTsNwt" role="1LY3Yp">
        <property role="TrG5h" value="SmallDistanceTable" />
        <node concept="Al3nk" id="5gn1UuTsNwu" role="1_7Ipx">
          <property role="TrG5h" value="id" />
          <property role="2l5wPj" value="SmallDistanceTable.id" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="5gn1UuTsNwv" role="1_7Ipx">
          <property role="TrG5h" value="regionId" />
          <property role="2l5wPj" value="SmallDistanceTable.regionId" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="5gn1UuTsNww" role="1_7Ipx">
          <property role="TrG5h" value="traveledDistance" />
          <property role="2l5wPj" value="SmallDistanceTable.traveledDistance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="6MkW5HYMsZ_" role="21riY_">
      <node concept="2leIlQ" id="6MkW5HYMsZB" role="2legkn">
        <ref role="2leIlR" node="6MkW5HYMsYw" resolve="TraveledDistanceTable" />
      </node>
      <node concept="2leIlQ" id="6MkW5HYMt0A" role="2legkn">
        <ref role="2leIlR" node="6MkW5HYMsYo" resolve="TraveledTimeTable" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMt0D" role="2WRRZq">
        <ref role="Agl$i" node="6MkW5HYMsYy" resolve="id" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMt0I" role="2WRRZq">
        <ref role="Agl$i" node="6MkW5HYMsYx" resolve="ts" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMt0Q" role="2WRRZq">
        <ref role="Agl$i" node="6MkW5HYMsYq" resolve="id" />
      </node>
      <node concept="Agl$j" id="6MkW5HYMt10" role="2WRRZq">
        <ref role="Agl$i" node="6MkW5HYMsYp" resolve="ts" />
      </node>
      <node concept="ini0t" id="6MkW5HYOUrx" role="ini0D">
        <node concept="Agl$j" id="6MkW5HYOUry" role="ini0i">
          <ref role="Agl$i" node="6MkW5HYMsYx" resolve="ts" />
        </node>
        <node concept="Agl$j" id="6MkW5HYOUrz" role="ini0g">
          <ref role="Agl$i" node="6MkW5HYMsYp" resolve="ts" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="40agTEs_wCQ" role="21riY_">
      <node concept="2leIlQ" id="40agTEs_wCS" role="2legkn">
        <ref role="2leIlR" node="6MkW5HYMsYw" resolve="TraveledDistanceTable" />
      </node>
      <node concept="Agl$j" id="40agTEs_wE1" role="2WRRZq">
        <ref role="Agl$i" node="6MkW5HYMsYy" resolve="id" />
      </node>
      <node concept="Agl$j" id="40agTEs_wE6" role="2WRRZq">
        <ref role="Agl$i" node="6MkW5HYMsYx" resolve="ts" />
      </node>
      <node concept="15J0zF" id="40agTEs_wEa" role="AlhBa">
        <node concept="1osJ5O" id="40agTEs_wEc" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
          <node concept="1HhJcF" id="40agTEs_wEd" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="40agTEs_wEe" role="1osJ57">
            <ref role="Agl$i" node="6MkW5HYMsYy" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="40agTEs_wEi" role="21oAAU">
        <node concept="Agl$j" id="40agTEs_wEj" role="21oAAq">
          <ref role="Agl$i" node="6MkW5HYMsYz" resolve="traveledDistance" />
        </node>
      </node>
      <node concept="21qpMi" id="40agTEs_wEm" role="21qpFE">
        <node concept="Agl$j" id="40agTEs_wEn" role="21oAwc">
          <ref role="Agl$i" node="6MkW5HYMsYz" resolve="traveledDistance" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="40agTEs_wLA" role="21riY_">
      <node concept="2leIlQ" id="40agTEs_wMX" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="40agTEs_wMZ" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU6" resolve="traveledTime" />
      </node>
      <node concept="Agl$j" id="40agTEs_wN4" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
      </node>
      <node concept="15J0zF" id="40agTEs_wN8" role="AlhBa">
        <node concept="1osJ5O" id="40agTEs_wNa" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
          <node concept="1HhJcF" id="40agTEs_wNb" role="1osJ5a">
            <property role="1HhJcI" value="12" />
          </node>
          <node concept="Agl$j" id="40agTEs_wNc" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZS3" resolve="regionId" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="40agTEs_wNg" role="21oAAU">
        <node concept="Agl$j" id="40agTEs_wNh" role="21oAAq">
          <ref role="Agl$i" node="HpRLxUoZS6" resolve="speed" />
        </node>
      </node>
      <node concept="21qpMi" id="40agTEs_wNk" role="21qpFE">
        <node concept="Agl$j" id="40agTEs_wNl" role="21oAwc">
          <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="5gn1UuTsNuL" role="21riY_">
      <node concept="2leIlQ" id="5gn1UuTsNuN" role="2legkn">
        <ref role="2leIlR" node="5gn1UuTsNwt" resolve="SmallDistanceTable" />
      </node>
      <node concept="Agl$j" id="5gn1UuTsNw_" role="2WRRZq">
        <ref role="Agl$i" node="5gn1UuTsNwu" resolve="id" />
      </node>
      <node concept="15J0zF" id="5gn1UuTsNwB" role="AlhBa">
        <node concept="1osJ5O" id="5gn1UuTsNwD" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0d/GREATER_EQUAL" />
          <node concept="1HhJcF" id="5gn1UuTsNwE" role="1osJ5a">
            <property role="1HhJcI" value="100.0" />
          </node>
          <node concept="Agl$j" id="5gn1UuTsNwF" role="1osJ57">
            <ref role="Agl$i" node="5gn1UuTsNww" resolve="traveledDistance" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="5gn1UuTsNwJ" role="21oAAU">
        <node concept="Agl$j" id="5gn1UuTsNwK" role="21oAAq">
          <ref role="Agl$i" node="5gn1UuTsNwv" resolve="regionId" />
        </node>
      </node>
      <node concept="21qpMi" id="5gn1UuTsNwN" role="21qpFE">
        <node concept="Agl$j" id="5gn1UuTsNwO" role="21oAwc">
          <ref role="Agl$i" node="5gn1UuTsNww" resolve="traveledDistance" />
        </node>
      </node>
    </node>
  </node>
</model>

