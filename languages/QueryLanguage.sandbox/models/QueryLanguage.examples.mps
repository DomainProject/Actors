<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8cc8777b-46d3-45a2-9b32-ab88d05f313f(QueryLanguage.examples)">
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
      <concept id="6736945802599629712" name="QueryLanguage.structure.Max" flags="ng" index="Avfcj" />
      <concept id="6736945802599629716" name="QueryLanguage.structure.Average" flags="ng" index="Avfcn" />
      <concept id="1047910270175909650" name="QueryLanguage.structure.SelectColumn" flags="ngI" index="2WQRJ4">
        <child id="817930103574645565" name="aggregationFunction" index="1LWTg_" />
      </concept>
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
  <node concept="Al3kE" id="HpRLxUoZRY">
    <property role="TrG5h" value="AliasTablesJoins" />
    <node concept="Al3n9" id="HpRLxUoZRZ" role="21riY_">
      <property role="TrG5h" value="agent" />
      <node concept="Al3nk" id="HpRLxUurU0" role="1_7Ipx">
        <property role="TrG5h" value="VendorID" />
        <property role="2l5wPj" value="agent_alias.VendorID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o0" role="1_7Ipx">
        <property role="TrG5h" value="tpep_pickup_datetime" />
        <property role="2l5wPj" value="agent_alias.tpep_pickup_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o3" role="1_7Ipx">
        <property role="TrG5h" value="tpep_dropoff_datetime" />
        <property role="2l5wPj" value="agent_alias.tpep_dropoff_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o7" role="1_7Ipx">
        <property role="TrG5h" value="passenger_count" />
        <property role="2l5wPj" value="agent.passenger_count" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40oc" role="1_7Ipx">
        <property role="TrG5h" value="trip_distance" />
        <property role="2l5wPj" value="agent_alias.trip_distance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40ou" role="1_7Ipx">
        <property role="TrG5h" value="RatecodeID" />
        <property role="2l5wPj" value="agent_alias.RatecodeID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o_" role="1_7Ipx">
        <property role="TrG5h" value="store_and_fwd_flag" />
        <property role="2l5wPj" value="agent.store_and_fwd_flag" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40oH" role="1_7Ipx">
        <property role="TrG5h" value="PULocationID" />
        <property role="2l5wPj" value="agent.PULocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40oQ" role="1_7Ipx">
        <property role="TrG5h" value="DOLocationID" />
        <property role="2l5wPj" value="agent_alias.DOLocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40p0" role="1_7Ipx">
        <property role="TrG5h" value="payment_type" />
        <property role="2l5wPj" value="agent.payment_type" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40pb" role="1_7Ipx">
        <property role="TrG5h" value="fare_amount" />
        <property role="2l5wPj" value="agent.fare_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40pn" role="1_7Ipx">
        <property role="TrG5h" value="extra" />
        <property role="2l5wPj" value="agent_alias.extra" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40p$" role="1_7Ipx">
        <property role="TrG5h" value="mta_tax" />
        <property role="2l5wPj" value="agent.mta_tax" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40pM" role="1_7Ipx">
        <property role="TrG5h" value="tip_amount" />
        <property role="2l5wPj" value="agent.tip_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40q1" role="1_7Ipx">
        <property role="TrG5h" value="tolls_amount" />
        <property role="2l5wPj" value="agent.tolls_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40qh" role="1_7Ipx">
        <property role="TrG5h" value="improvement_surcharge" />
        <property role="2l5wPj" value="agent.improvement_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40qy" role="1_7Ipx">
        <property role="TrG5h" value="total_amount" />
        <property role="2l5wPj" value="agent.total_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40qO" role="1_7Ipx">
        <property role="TrG5h" value="congestion_surcharge" />
        <property role="2l5wPj" value="agent_alias.congestion_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40r7" role="1_7Ipx">
        <property role="TrG5h" value="Airport_fee" />
        <property role="2l5wPj" value="agent_alias.Airport_fee" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="4ExRIvVrCjj" role="21riY_">
      <property role="1cLguo" value="DistanceShortRides" />
      <node concept="2leIlQ" id="4ExRIvVrCjl" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrCjH" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrCjM" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40pn" resolve="extra" />
      </node>
      <node concept="15J0zF" id="4ExRIvVrCjQ" role="AlhBa">
        <node concept="1osJ5O" id="4ExRIvVrCjS" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
          <node concept="1HhJcF" id="4ExRIvVrCjT" role="1osJ5a">
            <property role="1HhJcI" value="5" />
          </node>
          <node concept="Agl$j" id="4ExRIvVrCjU" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40oc" resolve="trip_distance" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="4ExRIvVrCjY" role="1LY3Yp">
        <property role="TrG5h" value="DistanceShortRides" />
        <node concept="Al3nk" id="4ExRIvVrCjZ" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="DistanceShortRides.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="4ExRIvVrCk0" role="1_7Ipx">
          <property role="TrG5h" value="extra" />
          <property role="2l5wPj" value="DistanceShortRides.extra" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="4ExRIvVrCk_" role="21riY_">
      <property role="1cLguo" value="CongestionSurchargeAirportRides" />
      <node concept="2leIlQ" id="4ExRIvVrCkB" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrCla" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40qO" resolve="congestion_surcharge" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrClf" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="VendorID" />
      </node>
      <node concept="15J0zF" id="4ExRIvVrClj" role="AlhBa">
        <node concept="1osJ5O" id="4ExRIvVrCll" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
          <node concept="1HhJcF" id="4ExRIvVrClm" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="4ExRIvVrCln" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40r7" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="4ExRIvVrClr" role="1LY3Yp">
        <property role="TrG5h" value="CongestionSurchargeAirportRides" />
        <node concept="Al3nk" id="4ExRIvVrCls" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="2l5wPj" value="CongestionSurchargeAirportRides.congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="4ExRIvVrClt" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="CongestionSurchargeAirportRides.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="4ExRIvVrCmd" role="21riY_">
      <node concept="2leIlQ" id="4ExRIvVrCmf" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVrClr" resolve="CongestionSurchargeAirportRides" />
      </node>
      <node concept="2leIlQ" id="4ExRIvVrCn1" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVrCjY" resolve="DistanceShortRides" />
      </node>
      <node concept="ini0t" id="4ExRIvVrCn4" role="ini0D">
        <node concept="Agl$j" id="4ExRIvVrCn5" role="ini0i">
          <ref role="Agl$i" node="4ExRIvVrClt" resolve="VendorID" />
        </node>
        <node concept="Agl$j" id="4ExRIvVrCn6" role="ini0g">
          <ref role="Agl$i" node="4ExRIvVrCjZ" resolve="VendorID" />
        </node>
      </node>
      <node concept="Agl$j" id="4ExRIvVrCna" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVrClt" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrCnf" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVrCls" resolve="congestion_surcharge" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrCnn" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVrCk0" resolve="extra" />
      </node>
      <node concept="2odo9i" id="4ExRIvVrCns" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
    <node concept="15J0zD" id="4ExRIvVrI6f" role="21riY_">
      <property role="1cLguo" value="RatecodeIDExtra" />
      <node concept="2leIlQ" id="4ExRIvVrI6h" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrI79" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="4ExRIvVrI7e" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40ou" resolve="RatecodeID" />
      </node>
      <node concept="15J0zF" id="4ExRIvVrI7i" role="AlhBa">
        <node concept="1osJ5O" id="4ExRIvVrI7k" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
          <node concept="1HhJcF" id="4ExRIvVrI7l" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="4ExRIvVrI7m" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40pn" resolve="extra" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="4ExRIvVrI7q" role="1LY3Yp">
        <property role="TrG5h" value="RatecodeIDExtra" />
        <node concept="Al3nk" id="4ExRIvVrI7r" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="RatecodeIDExtra.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="4ExRIvVrI7s" role="1_7Ipx">
          <property role="TrG5h" value="RatecodeID" />
          <property role="2l5wPj" value="RatecodeIDExtra.RatecodeID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
      </node>
      <node concept="2odo9i" id="4ExRIvVrI7w" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
    <node concept="15J0zD" id="4ExRIvVz95m" role="21riY_">
      <node concept="2leIlQ" id="4ExRIvVz95o" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVrClr" resolve="CongestionSurchargeAirportRides" />
      </node>
      <node concept="2leIlQ" id="4ExRIvVz96s" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVrI7q" resolve="RatecodeIDExtra" />
      </node>
      <node concept="Agl$j" id="4ExRIvVz96v" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVrClt" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="4ExRIvVz96$" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVrI7s" resolve="RatecodeID" />
      </node>
      <node concept="Agl$j" id="4ExRIvVz96G" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVrCls" resolve="congestion_surcharge" />
      </node>
      <node concept="ini0t" id="4ExRIvVz9br" role="ini0D">
        <node concept="Agl$j" id="4ExRIvVz9bs" role="ini0i">
          <ref role="Agl$i" node="4ExRIvVrClt" resolve="VendorID" />
        </node>
        <node concept="Agl$j" id="4ExRIvVz9bt" role="ini0g">
          <ref role="Agl$i" node="4ExRIvVrI7r" resolve="VendorID" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Al3kE" id="4ExRIvVzk2q">
    <property role="TrG5h" value="SharedConditions" />
    <node concept="Al3n9" id="4ExRIvVzk2r" role="21riY_">
      <property role="TrG5h" value="agent" />
      <node concept="Al3nk" id="4ExRIvVzk2s" role="1_7Ipx">
        <property role="TrG5h" value="VendorID" />
        <property role="2l5wPj" value="agent_alias.VendorID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2t" role="1_7Ipx">
        <property role="TrG5h" value="tpep_pickup_datetime" />
        <property role="2l5wPj" value="agent_alias.tpep_pickup_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2u" role="1_7Ipx">
        <property role="TrG5h" value="tpep_dropoff_datetime" />
        <property role="2l5wPj" value="agent_alias.tpep_dropoff_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2v" role="1_7Ipx">
        <property role="TrG5h" value="passenger_count" />
        <property role="2l5wPj" value="agent.passenger_count" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2w" role="1_7Ipx">
        <property role="TrG5h" value="trip_distance" />
        <property role="2l5wPj" value="agent_alias.trip_distance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2x" role="1_7Ipx">
        <property role="TrG5h" value="RatecodeID" />
        <property role="2l5wPj" value="agent_alias.RatecodeID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2y" role="1_7Ipx">
        <property role="TrG5h" value="store_and_fwd_flag" />
        <property role="2l5wPj" value="agent.store_and_fwd_flag" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2z" role="1_7Ipx">
        <property role="TrG5h" value="PULocationID" />
        <property role="2l5wPj" value="agent.PULocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2$" role="1_7Ipx">
        <property role="TrG5h" value="DOLocationID" />
        <property role="2l5wPj" value="agent_alias.DOLocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2_" role="1_7Ipx">
        <property role="TrG5h" value="payment_type" />
        <property role="2l5wPj" value="agent.payment_type" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2A" role="1_7Ipx">
        <property role="TrG5h" value="fare_amount" />
        <property role="2l5wPj" value="agent.fare_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2B" role="1_7Ipx">
        <property role="TrG5h" value="extra" />
        <property role="2l5wPj" value="agent_alias.extra" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2C" role="1_7Ipx">
        <property role="TrG5h" value="mta_tax" />
        <property role="2l5wPj" value="agent.mta_tax" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2D" role="1_7Ipx">
        <property role="TrG5h" value="tip_amount" />
        <property role="2l5wPj" value="agent.tip_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2E" role="1_7Ipx">
        <property role="TrG5h" value="tolls_amount" />
        <property role="2l5wPj" value="agent.tolls_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2F" role="1_7Ipx">
        <property role="TrG5h" value="improvement_surcharge" />
        <property role="2l5wPj" value="agent.improvement_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2G" role="1_7Ipx">
        <property role="TrG5h" value="total_amount" />
        <property role="2l5wPj" value="agent.total_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2H" role="1_7Ipx">
        <property role="TrG5h" value="congestion_surcharge" />
        <property role="2l5wPj" value="agent_alias.congestion_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="4ExRIvVzk2I" role="1_7Ipx">
        <property role="TrG5h" value="Airport_fee" />
        <property role="2l5wPj" value="agent_alias.Airport_fee" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4Vp447w" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4Vp447y" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVzk2r" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp447U" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2I" resolve="Airport_fee" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp447Z" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2$" resolve="DOLocationID" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp4487" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2z" resolve="PULocationID" />
      </node>
      <node concept="15J0zF" id="3Gp_4Vp448c" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4Vp448q" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="3Gp_4Vp448r" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3Gp_4Vp448s" role="1osJ57">
            <ref role="Agl$i" node="4ExRIvVzk2I" resolve="Airport_fee" />
          </node>
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4Vp448Z" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4Vp4491" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVzk2r" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp449D" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2v" resolve="passenger_count" />
        <node concept="Avfcj" id="3Gp_4Vp44gI" role="1LWTg_" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp449y" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2H" resolve="congestion_surcharge" />
      </node>
      <node concept="15J0zF" id="3Gp_4Vp449$" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4Vp449P" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="3Gp_4Vp449Q" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3Gp_4Vp449R" role="1osJ57">
            <ref role="Agl$i" node="4ExRIvVzk2I" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="3Gp_4Vp449H" role="21oAAU">
        <node concept="Agl$j" id="3Gp_4Vp449I" role="21oAAq">
          <ref role="Agl$i" node="4ExRIvVzk2H" resolve="congestion_surcharge" />
        </node>
      </node>
      <node concept="21qpMi" id="3Gp_4Vp449L" role="21qpFE">
        <node concept="Agl$j" id="3Gp_4Vp449M" role="21oAwc">
          <ref role="Agl$i" node="4ExRIvVzk2v" resolve="passenger_count" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4Vp44aA" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4Vp44aC" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVzk2r" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp44bl" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2x" resolve="RatecodeID" />
      </node>
      <node concept="15J0zF" id="3Gp_4Vp44bn" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4Vp44bp" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="3Gp_4Vp44bq" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3Gp_4Vp44br" role="1osJ57">
            <ref role="Agl$i" node="4ExRIvVzk2I" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="21qpMi" id="3Gp_4Vp44bv" role="21qpFE">
        <node concept="Agl$j" id="3Gp_4Vp44bw" role="21oAwc">
          <ref role="Agl$i" node="4ExRIvVzk2x" resolve="RatecodeID" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4Vp44cn" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4Vp44cp" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVzk2r" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp44df" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2I" resolve="Airport_fee" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp44dk" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2u" resolve="tpep_dropoff_datetime" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp44ds" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2t" resolve="tpep_pickup_datetime" />
      </node>
      <node concept="15J0zF" id="3Gp_4Vp44dx" role="AlhBa">
        <node concept="1osJ5R" id="3Gp_4Vp44dz" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="3Gp_4Vp44dM" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
            <node concept="1HhJcF" id="3Gp_4Vp44dO" role="1osJ5a">
              <property role="1HhJcI" value="20" />
            </node>
            <node concept="Agl$j" id="3Gp_4Vp44dQ" role="1osJ57">
              <ref role="Agl$i" node="4ExRIvVzk2w" resolve="trip_distance" />
            </node>
          </node>
          <node concept="1osJ5O" id="3Gp_4Vp44dD" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
            <node concept="1HhJcF" id="3Gp_4Vp44dF" role="1osJ5a">
              <property role="1HhJcI" value="0" />
            </node>
            <node concept="Agl$j" id="3Gp_4Vp44dH" role="1osJ57">
              <ref role="Agl$i" node="4ExRIvVzk2v" resolve="passenger_count" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4Vp44eW" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4Vp44eY" role="2legkn">
        <ref role="2leIlR" node="4ExRIvVzk2r" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp44g1" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2$" resolve="DOLocationID" />
      </node>
      <node concept="Agl$j" id="3Gp_4Vp44g6" role="2WRRZq">
        <ref role="Agl$i" node="4ExRIvVzk2B" resolve="extra" />
        <node concept="Avfcn" id="3Gp_4Vp44gG" role="1LWTg_" />
      </node>
      <node concept="15J0zF" id="3Gp_4Vp44ga" role="AlhBa">
        <node concept="1osJ5R" id="3Gp_4Vp44gc" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="3Gp_4Vp44gr" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
            <node concept="1HhJcF" id="3Gp_4Vp44gt" role="1osJ5a">
              <property role="1HhJcI" value="20" />
            </node>
            <node concept="Agl$j" id="3Gp_4Vp44gv" role="1osJ57">
              <ref role="Agl$i" node="4ExRIvVzk2w" resolve="trip_distance" />
            </node>
          </node>
          <node concept="1osJ5O" id="3Gp_4Vp44gi" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
            <node concept="1HhJcF" id="3Gp_4Vp44gk" role="1osJ5a">
              <property role="1HhJcI" value="0" />
            </node>
            <node concept="Agl$j" id="3Gp_4Vp44gm" role="1osJ57">
              <ref role="Agl$i" node="4ExRIvVzk2v" resolve="passenger_count" />
            </node>
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="3Gp_4Vp44g$" role="21oAAU">
        <node concept="Agl$j" id="3Gp_4Vp44g_" role="21oAAq">
          <ref role="Agl$i" node="4ExRIvVzk2$" resolve="DOLocationID" />
        </node>
      </node>
      <node concept="21qpMi" id="3Gp_4Vp44gC" role="21qpFE">
        <node concept="Agl$j" id="3Gp_4Vp44gD" role="21oAwc">
          <ref role="Agl$i" node="4ExRIvVzk2B" resolve="extra" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Al3kE" id="3Gp_4VpaWow">
    <property role="TrG5h" value="Window" />
    <node concept="Al3n9" id="3Gp_4VpaWox" role="21riY_">
      <property role="TrG5h" value="agent" />
      <node concept="Al3nk" id="3Gp_4VpaWoy" role="1_7Ipx">
        <property role="TrG5h" value="VendorID" />
        <property role="2l5wPj" value="agent_alias.VendorID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoz" role="1_7Ipx">
        <property role="TrG5h" value="tpep_pickup_datetime" />
        <property role="2l5wPj" value="agent_alias.tpep_pickup_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWo$" role="1_7Ipx">
        <property role="TrG5h" value="tpep_dropoff_datetime" />
        <property role="2l5wPj" value="agent_alias.tpep_dropoff_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWo_" role="1_7Ipx">
        <property role="TrG5h" value="passenger_count" />
        <property role="2l5wPj" value="agent_alias.passenger_count" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoA" role="1_7Ipx">
        <property role="TrG5h" value="trip_distance" />
        <property role="2l5wPj" value="agent_alias.trip_distance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoB" role="1_7Ipx">
        <property role="TrG5h" value="RatecodeID" />
        <property role="2l5wPj" value="agent_alias.RatecodeID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoC" role="1_7Ipx">
        <property role="TrG5h" value="store_and_fwd_flag" />
        <property role="2l5wPj" value="agent.store_and_fwd_flag" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoD" role="1_7Ipx">
        <property role="TrG5h" value="PULocationID" />
        <property role="2l5wPj" value="agent.PULocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoE" role="1_7Ipx">
        <property role="TrG5h" value="DOLocationID" />
        <property role="2l5wPj" value="agent_alias.DOLocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoF" role="1_7Ipx">
        <property role="TrG5h" value="payment_type" />
        <property role="2l5wPj" value="agent.payment_type" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoG" role="1_7Ipx">
        <property role="TrG5h" value="fare_amount" />
        <property role="2l5wPj" value="agent.fare_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoH" role="1_7Ipx">
        <property role="TrG5h" value="extra" />
        <property role="2l5wPj" value="agent_alias.extra" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoI" role="1_7Ipx">
        <property role="TrG5h" value="mta_tax" />
        <property role="2l5wPj" value="agent.mta_tax" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoJ" role="1_7Ipx">
        <property role="TrG5h" value="tip_amount" />
        <property role="2l5wPj" value="agent.tip_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoK" role="1_7Ipx">
        <property role="TrG5h" value="tolls_amount" />
        <property role="2l5wPj" value="agent.tolls_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoL" role="1_7Ipx">
        <property role="TrG5h" value="improvement_surcharge" />
        <property role="2l5wPj" value="agent.improvement_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoM" role="1_7Ipx">
        <property role="TrG5h" value="total_amount" />
        <property role="2l5wPj" value="agent.total_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoN" role="1_7Ipx">
        <property role="TrG5h" value="congestion_surcharge" />
        <property role="2l5wPj" value="agent_alias.congestion_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3Gp_4VpaWoO" role="1_7Ipx">
        <property role="TrG5h" value="Airport_fee" />
        <property role="2l5wPj" value="agent_alias.Airport_fee" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4VpgV_x" role="21riY_">
      <property role="1cLguo" value="DistanceAirportRides" />
      <node concept="2leIlQ" id="3Gp_4VpgV_z" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpaWox" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpgV_V" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoy" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpgVA0" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoA" resolve="trip_distance" />
      </node>
      <node concept="15J0zF" id="3Gp_4VpgVA4" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4VpgVA6" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
          <node concept="1HhJcF" id="3Gp_4VpgVA7" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3Gp_4VpgVA8" role="1osJ57">
            <ref role="Agl$i" node="3Gp_4VpaWoO" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="3Gp_4VpgVAc" role="1LY3Yp">
        <property role="TrG5h" value="DistanceAirportRides" />
        <node concept="Al3nk" id="3Gp_4VpgVAd" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="DistanceAirportRides.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="3Gp_4VpgVAe" role="1_7Ipx">
          <property role="TrG5h" value="trip_distance" />
          <property role="2l5wPj" value="DistanceAirportRides.trip_distance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4VpgVAN" role="21riY_">
      <property role="1cLguo" value="PassengersAirportRides" />
      <node concept="2leIlQ" id="3Gp_4VpgVAP" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpaWox" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpgVBo" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoy" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpgVBt" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWo_" resolve="passenger_count" />
      </node>
      <node concept="15J0zF" id="3Gp_4VpgVBx" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4VpgVBz" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
          <node concept="1HhJcF" id="3Gp_4VpgVB$" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3Gp_4VpgVB_" role="1osJ57">
            <ref role="Agl$i" node="3Gp_4VpaWoO" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="3Gp_4VpgVBD" role="1LY3Yp">
        <property role="TrG5h" value="PassengersAirportRides" />
        <node concept="Al3nk" id="3Gp_4VpgVBE" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="PassengersAirportRides.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="3Gp_4VpgVBF" role="1_7Ipx">
          <property role="TrG5h" value="passenger_count" />
          <property role="2l5wPj" value="PassengersAirportRides.passenger_count" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4VpgVCr" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4VpgVCt" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpgVAc" resolve="DistanceAirportRides" />
      </node>
      <node concept="2leIlQ" id="3Gp_4VpmtHY" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpgVBD" resolve="PassengersAirportRides" />
      </node>
      <node concept="ini0t" id="3Gp_4VpmtI1" role="ini0D">
        <node concept="Agl$j" id="3Gp_4VpmtI2" role="ini0i">
          <ref role="Agl$i" node="3Gp_4VpgVAd" resolve="VendorID" />
        </node>
        <node concept="Agl$j" id="3Gp_4VpmtI3" role="ini0g">
          <ref role="Agl$i" node="3Gp_4VpgVBE" resolve="VendorID" />
        </node>
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtI7" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpgVAd" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtIc" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpgVBF" resolve="passenger_count" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtIk" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpgVAe" resolve="trip_distance" />
      </node>
      <node concept="2odo9i" id="3Gp_4VpmtIp" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4VpmtJh" role="21riY_">
      <node concept="2leIlQ" id="3Gp_4VpmtJj" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpaWox" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtKb" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoO" resolve="Airport_fee" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtKg" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoE" resolve="DOLocationID" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtKo" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoD" resolve="PULocationID" />
      </node>
      <node concept="15J0zF" id="3Gp_4VpmtKt" role="AlhBa">
        <node concept="1osJ5R" id="3Gp_4VpmtKv" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qs/OR" />
          <node concept="1osJ5R" id="3Gp_4VpmtKI" role="1osJ4x">
            <property role="1osJ5c" value="2fooeIVv2qr/AND" />
            <node concept="1osJ5O" id="3Gp_4VpmtKY" role="1osJ4x">
              <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
              <node concept="1HhJcF" id="3Gp_4VpmtL0" role="1osJ5a">
                <property role="1HhJcI" value="0" />
              </node>
              <node concept="Agl$j" id="3Gp_4VpmtL2" role="1osJ57">
                <ref role="Agl$i" node="3Gp_4VpaWoL" resolve="improvement_surcharge" />
              </node>
            </node>
            <node concept="1osJ5O" id="3Gp_4VpmtKP" role="1osJ4P">
              <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
              <node concept="1HhJcF" id="3Gp_4VpmtKR" role="1osJ5a">
                <property role="1HhJcI" value="0" />
              </node>
              <node concept="Agl$j" id="3Gp_4VpmtKT" role="1osJ57">
                <ref role="Agl$i" node="3Gp_4VpaWoI" resolve="mta_tax" />
              </node>
            </node>
          </node>
          <node concept="1osJ5O" id="3Gp_4VpmtK_" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
            <node concept="1HhJcF" id="3Gp_4VpmtKB" role="1osJ5a">
              <property role="1HhJcI" value="0" />
            </node>
            <node concept="Agl$j" id="3Gp_4VpmtKD" role="1osJ57">
              <ref role="Agl$i" node="3Gp_4VpaWoG" resolve="fare_amount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="3Gp_4VpmtL7" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4VpmtMh" role="21riY_">
      <node concept="Agl$j" id="3Gp_4VpmtNB" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoI" resolve="mta_tax" />
        <node concept="Avfcn" id="3Gp_4VpmtNP" role="1LWTg_" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtNH" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWo_" resolve="passenger_count" />
      </node>
      <node concept="2leIlQ" id="3Gp_4VpmtMj" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpaWox" resolve="agent" />
      </node>
      <node concept="15J0zF" id="3Gp_4VpmtNt" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4VpmtNv" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL08/LOWER" />
          <node concept="1HhJcF" id="3Gp_4VpmtNw" role="1osJ5a">
            <property role="1HhJcI" value="3" />
          </node>
          <node concept="Agl$j" id="3Gp_4VpmtNx" role="1osJ57">
            <ref role="Agl$i" node="3Gp_4VpaWo_" resolve="passenger_count" />
          </node>
        </node>
      </node>
      <node concept="21oAwd" id="3Gp_4VpmtNL" role="21oAAU">
        <node concept="Agl$j" id="3Gp_4VpmtNM" role="21oAAq">
          <ref role="Agl$i" node="3Gp_4VpaWo_" resolve="passenger_count" />
        </node>
      </node>
      <node concept="21qpMi" id="3Gp_4VpmtNR" role="21qpFE">
        <node concept="Agl$j" id="3Gp_4VpmtNS" role="21oAwc">
          <ref role="Agl$i" node="3Gp_4VpaWoI" resolve="mta_tax" />
        </node>
      </node>
      <node concept="2odo9i" id="3Gp_4VpmtNV" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
    <node concept="15J0zD" id="3Gp_4VpmtPj" role="21riY_">
      <node concept="Agl$j" id="3Gp_4VpmtQJ" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoO" resolve="Airport_fee" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtR8" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWo$" resolve="tpep_dropoff_datetime" />
      </node>
      <node concept="Agl$j" id="3Gp_4VpmtRg" role="2WRRZq">
        <ref role="Agl$i" node="3Gp_4VpaWoz" resolve="tpep_pickup_datetime" />
      </node>
      <node concept="2leIlQ" id="3Gp_4VpmtPl" role="2legkn">
        <ref role="2leIlR" node="3Gp_4VpaWox" resolve="agent" />
      </node>
      <node concept="15J0zF" id="3Gp_4VpmtRl" role="AlhBa">
        <node concept="1osJ5O" id="3Gp_4VpmtRn" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL08/LOWER" />
          <node concept="1HhJcF" id="3Gp_4VpmtRo" role="1osJ5a">
            <property role="1HhJcI" value="3" />
          </node>
          <node concept="Agl$j" id="3Gp_4VpmtRp" role="1osJ57">
            <ref role="Agl$i" node="3Gp_4VpaWo_" resolve="passenger_count" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="3Gp_4VpmtRt" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
    </node>
  </node>
</model>

