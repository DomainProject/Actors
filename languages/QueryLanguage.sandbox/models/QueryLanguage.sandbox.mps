<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8cc8777b-46d3-45a2-9b32-ab88d05f313f(QueryLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage">
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
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <property id="8521615295528819822" name="viewName" index="1cLguo" />
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
    <property role="TrG5h" value="AgentScript" />
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
        <property role="2l5wPj" value="agent.RatecodeID" />
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
        <property role="2l5wPj" value="agent.extra" />
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
    <node concept="15J0zD" id="1u7A9uKZjtI" role="21riY_">
      <property role="1cLguo" value="AirportFeeSinglePassenger" />
      <node concept="2leIlQ" id="1u7A9uKZjtK" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="1u7A9uKZjuj" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="1u7A9uKZjuo" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40r7" resolve="Airport_fee" />
      </node>
      <node concept="15J0zF" id="1u7A9uKZjus" role="AlhBa">
        <node concept="1osJ5O" id="1u7A9uKZjuu" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
          <node concept="1HhJcF" id="1u7A9uKZjuv" role="1osJ5a">
            <property role="1HhJcI" value="1" />
          </node>
          <node concept="Agl$j" id="1u7A9uKZjuw" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40o7" resolve="passenger_count" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="1u7A9uKZju$" role="1LY3Yp">
        <property role="TrG5h" value="AirportFeeSinglePassenger" />
        <node concept="Al3nk" id="1u7A9uKZju_" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="AirportFeeSinglePassenger.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
        <node concept="Al3nk" id="1u7A9uKZjuA" role="1_7Ipx">
          <property role="TrG5h" value="Airport_fee" />
          <property role="2l5wPj" value="AirportFeeSinglePassenger.Airport_fee" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="1u7A9uKZjji" role="21riY_">
      <property role="1cLguo" value="CongestionSurchargeAirportRides" />
      <node concept="2leIlQ" id="1u7A9uKZjjk" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="1u7A9uKZjjQ" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40qO" resolve="congestion_surcharge" />
      </node>
      <node concept="Agl$j" id="1u7A9uKZjjV" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="VendorID" />
      </node>
      <node concept="15J0zF" id="1u7A9uKZjjZ" role="AlhBa">
        <node concept="1osJ5O" id="1u7A9uKZjk1" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
          <node concept="1HhJcF" id="1u7A9uKZjk2" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="1u7A9uKZjk3" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40r7" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="Al3n9" id="1u7A9uKZjk7" role="1LY3Yp">
        <property role="TrG5h" value="CongestionSurchargeAirportRides" />
        <node concept="Al3nk" id="1u7A9uKZjk8" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="2l5wPj" value="CongestionSurchargeAirportRides.congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="1u7A9uKZjk9" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="2l5wPj" value="CongestionSurchargeAirportRides.VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="1u7A9uKZjvm" role="21riY_">
      <node concept="2leIlQ" id="1u7A9uKZjvo" role="2legkn">
        <ref role="2leIlR" node="1u7A9uKZju$" resolve="AirportFeeSinglePassenger" />
      </node>
      <node concept="2leIlQ" id="1u7A9uKZjw6" role="2legkn">
        <ref role="2leIlR" node="1u7A9uKZjk7" resolve="CongestionSurchargeAirportRides" />
      </node>
      <node concept="ini0t" id="1u7A9uKZjw9" role="ini0D">
        <node concept="Agl$j" id="1u7A9uKZjwa" role="ini0i">
          <ref role="Agl$i" node="1u7A9uKZju_" resolve="VendorID" />
        </node>
        <node concept="Agl$j" id="1u7A9uKZjwb" role="ini0g">
          <ref role="Agl$i" node="1u7A9uKZjk9" resolve="VendorID" />
        </node>
      </node>
      <node concept="Agl$j" id="1u7A9uKZjxe" role="2WRRZq">
        <ref role="Agl$i" node="1u7A9uKZju_" resolve="VendorID" />
      </node>
      <node concept="Agl$j" id="1u7A9uKZjx1" role="2WRRZq">
        <ref role="Agl$i" node="1u7A9uKZjuA" resolve="Airport_fee" />
      </node>
      <node concept="Agl$j" id="1u7A9uKZjx6" role="2WRRZq">
        <ref role="Agl$i" node="1u7A9uKZjk8" resolve="congestion_surcharge" />
      </node>
      <node concept="2odo9i" id="1u7A9uLomNo" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
  </node>
</model>

