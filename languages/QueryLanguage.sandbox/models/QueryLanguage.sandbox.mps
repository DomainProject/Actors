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
      <concept id="2341611946572642014" name="QueryLanguage.structure.TableReference" flags="ng" index="2leIlQ">
        <reference id="2341611946572642015" name="tableRef" index="2leIlR" />
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
        <child id="817930103574645565" name="aggregateFunction" index="1LWTg_" />
      </concept>
      <concept id="1047910270175909651" name="QueryLanguage.structure.AllColumns" flags="ng" index="2WQRJ5" />
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <property id="8521615295528819822" name="tableAlias" index="1cLguo" />
        <child id="3100867722287388537" name="groupBy" index="21oAAU" />
        <child id="3100867722286851113" name="orderBy" index="21qpFE" />
        <child id="2341611946572650175" name="tables" index="2legkn" />
        <child id="1229499084499654445" name="where" index="AlhBa" />
        <child id="6736945802599629718" name="aggregateFunction" index="Avfcl" />
        <child id="1047910270176170764" name="cols" index="2WRRZq" />
        <child id="817930103574093953" name="aliasTable" index="1LY3Yp" />
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
        <node concept="1osJ5O" id="6eYilKnl7Wt" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0d/GREATER_EQUAL" />
          <node concept="1HhJcF" id="6eYilKnl7Wu" role="1osJ5a">
            <property role="1HhJcI" value="18" />
          </node>
          <node concept="Agl$j" id="6eYilKnl7Wv" role="1osJ57">
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
            <property role="1HhJcI" value="&quot;Italy&quot;" />
          </node>
          <node concept="Agl$j" id="6eYilKnl7Xo" role="1osJ57">
            <ref role="Agl$i" node="6eYilKnl7TR" resolve="country" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="6eYilKnl7Xs" role="21oAAU">
        <node concept="Agl$j" id="6eYilKnl7Xt" role="21oAAq">
          <ref role="Agl$i" node="5VF6QK6C0wQ" resolve="city" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="6eYilKnl7XW" role="21riY_">
      <node concept="2leIlQ" id="6eYilKnl7XY" role="2legkn">
        <ref role="2leIlR" node="5Q93FfFUJYh" resolve="Person" />
      </node>
      <node concept="Agl$j" id="6eYilKnl7Ys" role="2WRRZq">
        <ref role="Agl$i" node="5Q93FfFUJYj" resolve="name" />
      </node>
      <node concept="Avfch" id="6eYilKnl7Yu" role="Avfcl" />
      <node concept="15J0zF" id="6eYilKnl7Yw" role="AlhBa">
        <node concept="1osJ5R" id="6eYilKnl7Yy" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="6eYilKnl7YL" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
            <node concept="1HhJcF" id="6eYilKnl7YN" role="1osJ5a">
              <property role="1HhJcI" value="80.0" />
            </node>
            <node concept="Agl$j" id="6eYilKnl7YP" role="1osJ57">
              <ref role="Agl$i" node="5VF6QK6CGCd" resolve="weight" />
            </node>
          </node>
          <node concept="1osJ5O" id="6eYilKnl7YC" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhL0d/GREATER_EQUAL" />
            <node concept="1HhJcF" id="6eYilKnl7YE" role="1osJ5a">
              <property role="1HhJcI" value="1.8" />
            </node>
            <node concept="Agl$j" id="6eYilKnl7YG" role="1osJ57">
              <ref role="Agl$i" node="5VF6QK6CGC9" resolve="height" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Al3kE" id="HpRLxUoZRY">
    <node concept="Al3n9" id="HpRLxUoZRZ" role="21riY_">
      <property role="TrG5h" value="agent" />
      <node concept="Al3nk" id="HpRLxUurU0" role="1_7Ipx">
        <property role="TrG5h" value="id" />
        <property role="2l5wPj" value="agent.id" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="HpRLxUurUd" role="1_7Ipx">
        <property role="TrG5h" value="ts" />
        <property role="2l5wPj" value="agent.ts" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="HpRLxUoZS3" role="1_7Ipx">
        <property role="TrG5h" value="regionId" />
        <property role="2l5wPj" value="agent.regionId" />
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
        <property role="2l5wPj" value="agent.traveledDistance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="HpRLxUurU6" role="1_7Ipx">
        <property role="TrG5h" value="traveledTime" />
        <property role="2l5wPj" value="agent.traveledTime" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="HpRLxUurUO" role="21riY_">
      <property role="1cLguo" value="TraveledTimeTable" />
      <node concept="2leIlQ" id="HpRLxUurUQ" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="HpRLxUurVn" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurUd" resolve="ts" />
      </node>
      <node concept="Agl$j" id="HpRLxUurVs" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="id" />
      </node>
      <node concept="Agl$j" id="HpRLxUurV$" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU6" resolve="traveledTime" />
      </node>
      <node concept="15J0zF" id="HpRLxUurVD" role="AlhBa">
        <node concept="1osJ5O" id="HpRLxUurVF" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="HpRLxUurVG" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="HpRLxUurVH" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZSa" resolve="onRoadFlag" />
          </node>
        </node>
      </node>
      <node concept="21qpMi" id="HpRLxUurVL" role="21qpFE">
        <node concept="Agl$j" id="HpRLxUurVM" role="21oAwc">
          <ref role="Agl$i" node="HpRLxUurU6" resolve="traveledTime" />
        </node>
      </node>
      <node concept="Al3n9" id="HpRLxUE$DM" role="1LY3Yp">
        <property role="TrG5h" value="TraveledTimeTable" />
        <node concept="Al3nk" id="HpRLxUE$DN" role="1_7Ipx">
          <property role="TrG5h" value="ts" />
          <property role="2l5wPj" value="agent.ts" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="HpRLxUE$DO" role="1_7Ipx">
          <property role="TrG5h" value="id" />
          <property role="2l5wPj" value="agent.id" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="HpRLxUE$DP" role="1_7Ipx">
          <property role="TrG5h" value="traveledTime" />
          <property role="2l5wPj" value="agent.traveledTime" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="HpRLxUurWz" role="21riY_">
      <property role="1cLguo" value="TraveledDistanceTable" />
      <node concept="2leIlQ" id="HpRLxUurW_" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="HpRLxUurXh" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurUd" resolve="ts" />
      </node>
      <node concept="Agl$j" id="HpRLxUurXm" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="id" />
      </node>
      <node concept="Agl$j" id="HpRLxUurXu" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
      </node>
      <node concept="15J0zF" id="HpRLxUurXz" role="AlhBa">
        <node concept="1osJ5O" id="HpRLxUurX_" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="HpRLxUurXA" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="HpRLxUurXB" role="1osJ57">
            <ref role="Agl$i" node="HpRLxUoZSa" resolve="onRoadFlag" />
          </node>
        </node>
      </node>
      <node concept="21qpMi" id="HpRLxUurXF" role="21qpFE">
        <node concept="Agl$j" id="HpRLxUurXG" role="21oAwc">
          <ref role="Agl$i" node="HpRLxUoZS_" resolve="traveledDistance" />
        </node>
      </node>
      <node concept="Al3n9" id="HpRLxUE$GP" role="1LY3Yp">
        <property role="TrG5h" value="TraveledDistanceTable" />
        <node concept="Al3nk" id="HpRLxUE$GQ" role="1_7Ipx">
          <property role="TrG5h" value="ts" />
          <property role="2l5wPj" value="agent.ts" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="HpRLxUE$GR" role="1_7Ipx">
          <property role="TrG5h" value="id" />
          <property role="2l5wPj" value="agent.id" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="HpRLxUE$GS" role="1_7Ipx">
          <property role="TrG5h" value="traveledDistance" />
          <property role="2l5wPj" value="agent.traveledDistance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
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
  </node>
</model>

