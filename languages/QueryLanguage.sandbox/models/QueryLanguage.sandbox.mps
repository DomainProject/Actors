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
      <concept id="6736945802599629716" name="QueryLanguage.structure.Average" flags="ng" index="Avfcn" />
      <concept id="1047910270175909650" name="QueryLanguage.structure.SelectColumn" flags="ngI" index="2WQRJ4">
        <child id="817930103574645565" name="aggregationFunction" index="1LWTg_" />
      </concept>
      <concept id="7033755722359825273" name="QueryLanguage.structure.Select" flags="ng" index="15J0zD">
        <child id="3100867722287388537" name="groupBy" index="21oAAU" />
        <child id="2341611946572650175" name="tables" index="2legkn" />
        <child id="3500821905858947254" name="window" index="2odo9f" />
        <child id="1229499084499654445" name="where" index="AlhBa" />
        <child id="1047910270176170764" name="cols" index="2WRRZq" />
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
        <property role="2l5wPj" value="agent.VendorID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o0" role="1_7Ipx">
        <property role="TrG5h" value="tpep_pickup_datetime" />
        <property role="2l5wPj" value="agent.tpep_pickup_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o3" role="1_7Ipx">
        <property role="TrG5h" value="tpep_dropoff_datetime" />
        <property role="2l5wPj" value="agent.tpep_dropoff_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40o7" role="1_7Ipx">
        <property role="TrG5h" value="passenger_count" />
        <property role="2l5wPj" value="agent.passenger_count" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40oc" role="1_7Ipx">
        <property role="TrG5h" value="trip_distance" />
        <property role="2l5wPj" value="agent.trip_distance" />
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
        <property role="2l5wPj" value="agent.DOLocationID" />
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
        <property role="2l5wPj" value="agent.congestion_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="7XEq$CD40r7" role="1_7Ipx">
        <property role="TrG5h" value="Airport_fee" />
        <property role="2l5wPj" value="agent.Airport_fee" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="Al3n9" id="7XEq$CEmheX" role="21riY_">
      <property role="TrG5h" value="person" />
      <node concept="Al3nk" id="7XEq$CEmhg2" role="1_7Ipx">
        <property role="TrG5h" value="id" />
        <property role="2l5wPj" value="person.id" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
    </node>
    <node concept="15J0zD" id="3QVj6nW3n93" role="21riY_">
      <node concept="2leIlQ" id="3QVj6nW3n95" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3QVj6nW3n9v" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40r7" resolve="Airport_fee" />
      </node>
      <node concept="Agl$j" id="3QVj6nW3n9$" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40oQ" resolve="DOLocationID" />
      </node>
      <node concept="15J0zF" id="3QVj6nW3n9C" role="AlhBa">
        <node concept="1osJ5O" id="3QVj6nW3n9K" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
          <node concept="1HhJcF" id="3QVj6nW3n9L" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3QVj6nW3n9M" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40r7" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="3QVj6nW3n9Q" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
    </node>
    <node concept="15J0zD" id="3QVj6nW3nap" role="21riY_">
      <node concept="2leIlQ" id="3QVj6nW3nar" role="2legkn">
        <ref role="2leIlR" node="HpRLxUoZRZ" resolve="agent" />
      </node>
      <node concept="Agl$j" id="3QVj6nW3naY" role="2WRRZq">
        <ref role="Agl$i" node="7XEq$CD40oQ" resolve="DOLocationID" />
      </node>
      <node concept="Agl$j" id="3QVj6nW3nbd" role="2WRRZq">
        <ref role="Agl$i" node="HpRLxUurU0" resolve="VendorID" />
        <node concept="Avfcn" id="3QVj6nW3nbh" role="1LWTg_" />
      </node>
      <node concept="15J0zF" id="3QVj6nW3nb0" role="AlhBa">
        <node concept="1osJ5O" id="3QVj6nW3nb2" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
          <node concept="1HhJcF" id="3QVj6nW3nb3" role="1osJ5a">
            <property role="1HhJcI" value="0" />
          </node>
          <node concept="Agl$j" id="3QVj6nW3nb4" role="1osJ57">
            <ref role="Agl$i" node="7XEq$CD40r7" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="3QVj6nW3nb8" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
      <node concept="21oAwd" id="3QVj6nW3nbj" role="21oAAU">
        <node concept="Agl$j" id="3QVj6nW3nbk" role="21oAAq">
          <ref role="Agl$i" node="7XEq$CD40oQ" resolve="DOLocationID" />
        </node>
      </node>
    </node>
  </node>
</model>

