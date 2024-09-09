<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:718fca03-60cd-445f-8e2d-8b9abcf446c4(QueryLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="2" />
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="1" />
    <engage id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" />
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
      <concept id="3500821905858947243" name="QueryLanguage.structure.Window" flags="ng" index="2odo9i">
        <property id="3500821905858947251" name="size" index="2odo9a" />
        <property id="578498120054961687" name="temporalUnit" index="2H74FI" />
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
      <concept id="6736945802599629715" name="QueryLanguage.structure.Sum" flags="ng" index="Avfcg" />
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
  <node concept="Al3kE" id="52XYD7aJnju">
    <property role="TrG5h" value="Script1" />
    <node concept="Al3n9" id="52XYD7aJnjv" role="21riY_">
      <property role="TrG5h" value="Taxis" />
      <node concept="Al3nk" id="52XYD7aJnjw" role="1_7Ipx">
        <property role="TrG5h" value="VendorID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        <property role="2l5wPj" value="Taxis_alias.VendorID" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjx" role="1_7Ipx">
        <property role="TrG5h" value="tpep_pickup_datetime" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
        <property role="2l5wPj" value="Taxis_alias.tpep_pickup_datetime" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjy" role="1_7Ipx">
        <property role="TrG5h" value="tpep_dropoff_datetime" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
        <property role="2l5wPj" value="Taxis_alias.tpep_dropoff_datetime" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjz" role="1_7Ipx">
        <property role="TrG5h" value="passenger_count" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        <property role="2l5wPj" value="Taxis_alias.passenger_count" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnj$" role="1_7Ipx">
        <property role="TrG5h" value="trip_distance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.trip_distance" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnj_" role="1_7Ipx">
        <property role="TrG5h" value="RatecodeID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        <property role="2l5wPj" value="Taxis_alias.RatecodeID" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjA" role="1_7Ipx">
        <property role="TrG5h" value="PULocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        <property role="2l5wPj" value="Taxis_alias.PULocationID" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjB" role="1_7Ipx">
        <property role="TrG5h" value="DOLocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        <property role="2l5wPj" value="Taxis_alias.DOLocationID" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjC" role="1_7Ipx">
        <property role="TrG5h" value="payment_type" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
        <property role="2l5wPj" value="Taxis_alias.payment_type" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjD" role="1_7Ipx">
        <property role="TrG5h" value="fare_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.fare_amount" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjE" role="1_7Ipx">
        <property role="TrG5h" value="extra" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.extra" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjF" role="1_7Ipx">
        <property role="TrG5h" value="mta_tax" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.mta_tax" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjG" role="1_7Ipx">
        <property role="TrG5h" value="tip_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.tip_amount" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjH" role="1_7Ipx">
        <property role="TrG5h" value="tolls_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.tolls_amount" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjI" role="1_7Ipx">
        <property role="TrG5h" value="improvement_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.improvement_surcharge" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjJ" role="1_7Ipx">
        <property role="TrG5h" value="total_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.total_amount" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjK" role="1_7Ipx">
        <property role="TrG5h" value="congestion_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.congestion_surcharge" />
      </node>
      <node concept="Al3nk" id="52XYD7aJnjL" role="1_7Ipx">
        <property role="TrG5h" value="Airport_fee" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
        <property role="2l5wPj" value="Taxis_alias.Airport_fee" />
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azng0l" role="21riY_">
      <property role="1cLguo" value="AiportRides" />
      <node concept="2leIlQ" id="7axJ0azng0n" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="2WQRJ5" id="7axJ0azng1o" role="2WRRZq" />
      <node concept="15J0zF" id="7axJ0azng1q" role="AlhBa">
        <node concept="1osJ5O" id="7axJ0azng1s" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL0p/NOT_EQUAL" />
          <node concept="1HhJcF" id="7axJ0azng1t" role="1osJ5a">
            <property role="1HhJcI" value="0.0" />
          </node>
          <node concept="Agl$j" id="7axJ0azng1u" role="1osJ57">
            <ref role="Agl$i" node="52XYD7aJnjL" resolve="Airport_fee" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azng1y" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_7xVr/HOURS" />
      </node>
      <node concept="Al3n9" id="7axJ0azng1$" role="1LY3Yp">
        <property role="TrG5h" value="AiportRides" />
        <node concept="Al3nk" id="7axJ0azng1_" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="AiportRides.VendorID" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1A" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="AiportRides.tpep_pickup_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1B" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="AiportRides.tpep_dropoff_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1C" role="1_7Ipx">
          <property role="TrG5h" value="passenger_count" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="AiportRides.passenger_count" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1D" role="1_7Ipx">
          <property role="TrG5h" value="trip_distance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.trip_distance" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1E" role="1_7Ipx">
          <property role="TrG5h" value="RatecodeID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="AiportRides.RatecodeID" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1F" role="1_7Ipx">
          <property role="TrG5h" value="PULocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="AiportRides.PULocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1G" role="1_7Ipx">
          <property role="TrG5h" value="DOLocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="AiportRides.DOLocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1H" role="1_7Ipx">
          <property role="TrG5h" value="payment_type" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="AiportRides.payment_type" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1I" role="1_7Ipx">
          <property role="TrG5h" value="fare_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.fare_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1J" role="1_7Ipx">
          <property role="TrG5h" value="extra" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.extra" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1K" role="1_7Ipx">
          <property role="TrG5h" value="mta_tax" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.mta_tax" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1L" role="1_7Ipx">
          <property role="TrG5h" value="tip_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.tip_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1M" role="1_7Ipx">
          <property role="TrG5h" value="tolls_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.tolls_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1N" role="1_7Ipx">
          <property role="TrG5h" value="improvement_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.improvement_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1O" role="1_7Ipx">
          <property role="TrG5h" value="total_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.total_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1P" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.congestion_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1Q" role="1_7Ipx">
          <property role="TrG5h" value="Airport_fee" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="AiportRides.Airport_fee" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1R" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_date" />
          <property role="2l5wPj" value="AiportRides.tpep_pickup_date" />
          <property role="Al3ng" value="14g3IsRh3GZ/Date" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1S" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_time" />
          <property role="2l5wPj" value="AiportRides.tpep_pickup_time" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1T" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_date" />
          <property role="2l5wPj" value="AiportRides.tpep_dropoff_date" />
          <property role="Al3ng" value="14g3IsRh3GZ/Date" />
        </node>
        <node concept="Al3nk" id="7axJ0azng1U" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_time" />
          <property role="2l5wPj" value="AiportRides.tpep_dropoff_time" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azCd8o" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azCd9k" role="2legkn">
        <ref role="2leIlR" node="7axJ0azng1$" resolve="AiportRides" />
      </node>
      <node concept="Agl$j" id="7axJ0azCd9m" role="2WRRZq">
        <ref role="Agl$i" node="7axJ0azng1H" resolve="payment_type" />
      </node>
      <node concept="Agl$j" id="7axJ0azCd9r" role="2WRRZq">
        <ref role="Agl$i" node="7axJ0azng1O" resolve="total_amount" />
        <node concept="Avfcn" id="7axJ0azCd9v" role="1LWTg_" />
      </node>
      <node concept="21oAwd" id="7axJ0azCd9x" role="21oAAU">
        <node concept="Agl$j" id="7axJ0azCd9y" role="21oAAq">
          <ref role="Agl$i" node="7axJ0azng1H" resolve="payment_type" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJudb" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azJudd" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="Agl$j" id="7axJ0azJuee" role="2WRRZq">
        <ref role="Agl$i" node="52XYD7aJnjA" resolve="PULocationID" />
      </node>
      <node concept="Agl$j" id="7axJ0azJuej" role="2WRRZq">
        <ref role="Agl$i" node="52XYD7aJnjz" resolve="passenger_count" />
        <node concept="Avfcg" id="7axJ0azJuen" role="1LWTg_" />
      </node>
      <node concept="21oAwd" id="7axJ0azJuep" role="21oAAU">
        <node concept="Agl$j" id="7axJ0azJueq" role="21oAAq">
          <ref role="Agl$i" node="52XYD7aJnjA" resolve="PULocationID" />
        </node>
      </node>
      <node concept="21qpMi" id="7axJ0azJuet" role="21qpFE">
        <node concept="Agl$j" id="7axJ0azJueu" role="21oAwc">
          <ref role="Agl$i" node="52XYD7aJnjz" resolve="passenger_count" />
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azJuex" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_6Ro8/DAYS" />
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJufG" role="21riY_">
      <property role="1cLguo" value="ChristmasRides" />
      <node concept="2leIlQ" id="7axJ0azJufI" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="2WQRJ5" id="7axJ0azJugT" role="2WRRZq" />
      <node concept="15J0zF" id="7axJ0azJugV" role="AlhBa">
        <node concept="1osJ5R" id="7axJ0azJugX" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="7axJ0azJuiq" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhL0j/LOWER_EQUAL" />
            <node concept="1HhJcF" id="7axJ0azJuis" role="1osJ5a">
              <property role="1HhJcI" value="2024-12-25 23:59:59" />
            </node>
            <node concept="Agl$j" id="7axJ0azJuiu" role="1osJ57">
              <ref role="Agl$i" node="52XYD7aJnjx" resolve="tpep_pickup_datetime" />
            </node>
          </node>
          <node concept="1osJ5O" id="7axJ0azJuh3" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhL0d/GREATER_EQUAL" />
            <node concept="1HhJcF" id="7axJ0azJuh5" role="1osJ5a">
              <property role="1HhJcI" value="2024-12-25 00:00:00" />
            </node>
            <node concept="Agl$j" id="7axJ0azJuh7" role="1osJ57">
              <ref role="Agl$i" node="52XYD7aJnjx" resolve="tpep_pickup_datetime" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azJuiz" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_6Roc/YEARS" />
      </node>
      <node concept="Al3n9" id="7axJ0azJui_" role="1LY3Yp">
        <property role="TrG5h" value="ChristmasRides" />
        <node concept="Al3nk" id="7axJ0azJuiA" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="ChristmasRides.VendorID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiB" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="ChristmasRides.tpep_pickup_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiC" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="ChristmasRides.tpep_dropoff_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiD" role="1_7Ipx">
          <property role="TrG5h" value="passenger_count" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="ChristmasRides.passenger_count" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiE" role="1_7Ipx">
          <property role="TrG5h" value="trip_distance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.trip_distance" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiF" role="1_7Ipx">
          <property role="TrG5h" value="RatecodeID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="ChristmasRides.RatecodeID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiG" role="1_7Ipx">
          <property role="TrG5h" value="PULocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="ChristmasRides.PULocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiH" role="1_7Ipx">
          <property role="TrG5h" value="DOLocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="ChristmasRides.DOLocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiI" role="1_7Ipx">
          <property role="TrG5h" value="payment_type" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="ChristmasRides.payment_type" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiJ" role="1_7Ipx">
          <property role="TrG5h" value="fare_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.fare_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiK" role="1_7Ipx">
          <property role="TrG5h" value="extra" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.extra" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiL" role="1_7Ipx">
          <property role="TrG5h" value="mta_tax" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.mta_tax" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiM" role="1_7Ipx">
          <property role="TrG5h" value="tip_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.tip_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiN" role="1_7Ipx">
          <property role="TrG5h" value="tolls_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.tolls_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiO" role="1_7Ipx">
          <property role="TrG5h" value="improvement_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.improvement_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiP" role="1_7Ipx">
          <property role="TrG5h" value="total_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.total_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiQ" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.congestion_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuiR" role="1_7Ipx">
          <property role="TrG5h" value="Airport_fee" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="ChristmasRides.Airport_fee" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJupD" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azJupF" role="2legkn">
        <ref role="2leIlR" node="7axJ0azJui_" resolve="ChristmasRides" />
      </node>
      <node concept="2WQRJ5" id="7axJ0azJurl" role="2WRRZq">
        <node concept="Avfch" id="7axJ0azJurn" role="1LWTg_" />
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJuyk" role="21riY_">
      <property role="1cLguo" value="MadisonSquareGardenRides" />
      <node concept="2leIlQ" id="7axJ0azJuym" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="2WQRJ5" id="7axJ0azJu$0" role="2WRRZq" />
      <node concept="15J0zF" id="7axJ0azJu$2" role="AlhBa">
        <node concept="1osJ5R" id="7axJ0azJu$4" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qs/OR" />
          <node concept="1osJ5O" id="7axJ0azJu$j" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
            <node concept="1HhJcF" id="7axJ0azJu$l" role="1osJ5a">
              <property role="1HhJcI" value="161" />
            </node>
            <node concept="Agl$j" id="7axJ0azJu$n" role="1osJ57">
              <ref role="Agl$i" node="52XYD7aJnjB" resolve="DOLocationID" />
            </node>
          </node>
          <node concept="1osJ5O" id="7axJ0azJu$a" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
            <node concept="1HhJcF" id="7axJ0azJu$c" role="1osJ5a">
              <property role="1HhJcI" value="161" />
            </node>
            <node concept="Agl$j" id="7axJ0azJu$e" role="1osJ57">
              <ref role="Agl$i" node="52XYD7aJnjA" resolve="PULocationID" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azJu$s" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_7xVr/HOURS" />
      </node>
      <node concept="Al3n9" id="7axJ0azJu$u" role="1LY3Yp">
        <property role="TrG5h" value="MadisonSquareGardenRides" />
        <node concept="Al3nk" id="7axJ0azJu$v" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.VendorID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$w" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.tpep_pickup_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$x" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.tpep_dropoff_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$y" role="1_7Ipx">
          <property role="TrG5h" value="passenger_count" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.passenger_count" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$z" role="1_7Ipx">
          <property role="TrG5h" value="trip_distance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.trip_distance" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$$" role="1_7Ipx">
          <property role="TrG5h" value="RatecodeID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.RatecodeID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$_" role="1_7Ipx">
          <property role="TrG5h" value="PULocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.PULocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$A" role="1_7Ipx">
          <property role="TrG5h" value="DOLocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.DOLocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$B" role="1_7Ipx">
          <property role="TrG5h" value="payment_type" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.payment_type" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$C" role="1_7Ipx">
          <property role="TrG5h" value="fare_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.fare_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$D" role="1_7Ipx">
          <property role="TrG5h" value="extra" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.extra" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$E" role="1_7Ipx">
          <property role="TrG5h" value="mta_tax" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.mta_tax" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$F" role="1_7Ipx">
          <property role="TrG5h" value="tip_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.tip_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$G" role="1_7Ipx">
          <property role="TrG5h" value="tolls_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.tolls_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$H" role="1_7Ipx">
          <property role="TrG5h" value="improvement_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.improvement_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$I" role="1_7Ipx">
          <property role="TrG5h" value="total_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.total_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$J" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.congestion_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJu$K" role="1_7Ipx">
          <property role="TrG5h" value="Airport_fee" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="MadisonSquareGardenRides.Airport_fee" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJuBb" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azJuBd" role="2legkn">
        <ref role="2leIlR" node="7axJ0azJu$u" resolve="MadisonSquareGardenRides" />
      </node>
      <node concept="Agl$j" id="7axJ0azJuDZ" role="2WRRZq">
        <ref role="Agl$i" node="7axJ0azJu$_" resolve="PULocationID" />
      </node>
      <node concept="Agl$j" id="7axJ0azJuE4" role="2WRRZq">
        <ref role="Agl$i" node="7axJ0azJu$J" resolve="congestion_surcharge" />
        <node concept="Avfcn" id="7axJ0azJuE8" role="1LWTg_" />
      </node>
      <node concept="21oAwd" id="7axJ0azJuEa" role="21oAAU">
        <node concept="Agl$j" id="7axJ0azJuEb" role="21oAAq">
          <ref role="Agl$i" node="7axJ0azJu$_" resolve="PULocationID" />
        </node>
      </node>
      <node concept="21qpMi" id="7axJ0azJuEe" role="21qpFE">
        <node concept="Agl$j" id="7axJ0azJuEf" role="21oAwc">
          <ref role="Agl$i" node="7axJ0azJu$J" resolve="congestion_surcharge" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJuGy" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azJuG$" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="Agl$j" id="7axJ0azJuIV" role="2WRRZq">
        <ref role="Agl$i" node="52XYD7aJnjA" resolve="PULocationID" />
      </node>
      <node concept="Agl$j" id="7axJ0azJuIQ" role="2WRRZq">
        <ref role="Agl$i" node="52XYD7aJnj$" resolve="trip_distance" />
        <node concept="Avfcg" id="7axJ0azJuIZ" role="1LWTg_" />
      </node>
      <node concept="21oAwd" id="7axJ0azJuJ1" role="21oAAU">
        <node concept="Agl$j" id="7axJ0azJuJ2" role="21oAAq">
          <ref role="Agl$i" node="52XYD7aJnjA" resolve="PULocationID" />
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azJuJ5" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_6Roh/MONTHS" />
      </node>
      <node concept="21qpMi" id="7axJ0azJuJ7" role="21qpFE">
        <node concept="Agl$j" id="7axJ0azJuJ8" role="21oAwc">
          <ref role="Agl$i" node="52XYD7aJnj$" resolve="trip_distance" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJuT9" role="21riY_">
      <property role="1cLguo" value="HighTipsRides" />
      <node concept="2leIlQ" id="7axJ0azJuTb" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="2WQRJ5" id="7axJ0azJuVB" role="2WRRZq" />
      <node concept="15J0zF" id="7axJ0azJuVD" role="AlhBa">
        <node concept="1osJ5O" id="7axJ0azJuVF" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
          <node concept="1HhJcF" id="7axJ0azJuVG" role="1osJ5a">
            <property role="1HhJcI" value="10.0" />
          </node>
          <node concept="Agl$j" id="7axJ0azJuVH" role="1osJ57">
            <ref role="Agl$i" node="52XYD7aJnjG" resolve="tip_amount" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azJuVL" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_7xVr/HOURS" />
      </node>
      <node concept="Al3n9" id="7axJ0azJuVN" role="1LY3Yp">
        <property role="TrG5h" value="HighTipsRides" />
        <node concept="Al3nk" id="7axJ0azJuVO" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="HighTipsRides.VendorID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVP" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="HighTipsRides.tpep_pickup_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVQ" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="HighTipsRides.tpep_dropoff_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVR" role="1_7Ipx">
          <property role="TrG5h" value="passenger_count" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="HighTipsRides.passenger_count" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVS" role="1_7Ipx">
          <property role="TrG5h" value="trip_distance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.trip_distance" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVT" role="1_7Ipx">
          <property role="TrG5h" value="RatecodeID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="HighTipsRides.RatecodeID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVU" role="1_7Ipx">
          <property role="TrG5h" value="PULocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="HighTipsRides.PULocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVV" role="1_7Ipx">
          <property role="TrG5h" value="DOLocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="HighTipsRides.DOLocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVW" role="1_7Ipx">
          <property role="TrG5h" value="payment_type" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="HighTipsRides.payment_type" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVX" role="1_7Ipx">
          <property role="TrG5h" value="fare_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.fare_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVY" role="1_7Ipx">
          <property role="TrG5h" value="extra" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.extra" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuVZ" role="1_7Ipx">
          <property role="TrG5h" value="mta_tax" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.mta_tax" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuW0" role="1_7Ipx">
          <property role="TrG5h" value="tip_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.tip_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuW1" role="1_7Ipx">
          <property role="TrG5h" value="tolls_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.tolls_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuW2" role="1_7Ipx">
          <property role="TrG5h" value="improvement_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.improvement_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuW3" role="1_7Ipx">
          <property role="TrG5h" value="total_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.total_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuW4" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.congestion_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJuW5" role="1_7Ipx">
          <property role="TrG5h" value="Airport_fee" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="HighTipsRides.Airport_fee" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJuZe" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azJuZg" role="2legkn">
        <ref role="2leIlR" node="7axJ0azJuVN" resolve="HighTipsRides" />
      </node>
      <node concept="Agl$j" id="7axJ0azJv27" role="2WRRZq">
        <ref role="Agl$i" node="7axJ0azJuVU" resolve="PULocationID" />
      </node>
      <node concept="Agl$j" id="7axJ0azJv2c" role="2WRRZq">
        <ref role="Agl$i" node="7axJ0azJuVV" resolve="DOLocationID" />
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJv59" role="21riY_">
      <property role="1cLguo" value="GroupRides" />
      <node concept="2leIlQ" id="7axJ0azJv5b" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="2WQRJ5" id="7axJ0azJv86" role="2WRRZq" />
      <node concept="15J0zF" id="7axJ0azJv88" role="AlhBa">
        <node concept="1osJ5O" id="7axJ0azJv8a" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
          <node concept="1HhJcF" id="7axJ0azJv8b" role="1osJ5a">
            <property role="1HhJcI" value="4" />
          </node>
          <node concept="Agl$j" id="7axJ0azJv8c" role="1osJ57">
            <ref role="Agl$i" node="52XYD7aJnjz" resolve="passenger_count" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="7axJ0azJv8g" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_7xVr/HOURS" />
      </node>
      <node concept="Al3n9" id="7axJ0azJv8i" role="1LY3Yp">
        <property role="TrG5h" value="GroupRides" />
        <node concept="Al3nk" id="7axJ0azJv8j" role="1_7Ipx">
          <property role="TrG5h" value="VendorID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="GroupRides.VendorID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8k" role="1_7Ipx">
          <property role="TrG5h" value="tpep_pickup_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="GroupRides.tpep_pickup_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8l" role="1_7Ipx">
          <property role="TrG5h" value="tpep_dropoff_datetime" />
          <property role="Al3ng" value="14g3IsRh3GV/String" />
          <property role="2l5wPj" value="GroupRides.tpep_dropoff_datetime" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8m" role="1_7Ipx">
          <property role="TrG5h" value="passenger_count" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="GroupRides.passenger_count" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8n" role="1_7Ipx">
          <property role="TrG5h" value="trip_distance" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.trip_distance" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8o" role="1_7Ipx">
          <property role="TrG5h" value="RatecodeID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="GroupRides.RatecodeID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8p" role="1_7Ipx">
          <property role="TrG5h" value="PULocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="GroupRides.PULocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8q" role="1_7Ipx">
          <property role="TrG5h" value="DOLocationID" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="GroupRides.DOLocationID" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8r" role="1_7Ipx">
          <property role="TrG5h" value="payment_type" />
          <property role="Al3ng" value="14g3IsRh3GU/Integer" />
          <property role="2l5wPj" value="GroupRides.payment_type" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8s" role="1_7Ipx">
          <property role="TrG5h" value="fare_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.fare_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8t" role="1_7Ipx">
          <property role="TrG5h" value="extra" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.extra" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8u" role="1_7Ipx">
          <property role="TrG5h" value="mta_tax" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.mta_tax" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8v" role="1_7Ipx">
          <property role="TrG5h" value="tip_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.tip_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8w" role="1_7Ipx">
          <property role="TrG5h" value="tolls_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.tolls_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8x" role="1_7Ipx">
          <property role="TrG5h" value="improvement_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.improvement_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8y" role="1_7Ipx">
          <property role="TrG5h" value="total_amount" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.total_amount" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8z" role="1_7Ipx">
          <property role="TrG5h" value="congestion_surcharge" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.congestion_surcharge" />
        </node>
        <node concept="Al3nk" id="7axJ0azJv8$" role="1_7Ipx">
          <property role="TrG5h" value="Airport_fee" />
          <property role="Al3ng" value="14g3IsRh3H3/Float" />
          <property role="2l5wPj" value="GroupRides.Airport_fee" />
        </node>
      </node>
    </node>
    <node concept="15J0zD" id="7axJ0azJvmj" role="21riY_">
      <node concept="2leIlQ" id="7axJ0azJvml" role="2legkn">
        <ref role="2leIlR" node="52XYD7aJnjv" resolve="Taxis" />
      </node>
      <node concept="15J0zF" id="7axJ0azJvpF" role="AlhBa">
        <node concept="1osJ5R" id="7axJ0azJvpN" role="AmyPj">
          <property role="1osJ5c" value="2fooeIVv2qr/AND" />
          <node concept="1osJ5O" id="7axJ0azJvq2" role="1osJ4x">
            <property role="1osJ58" value="14g3IsRhKZW/GREATER" />
            <node concept="1HhJcF" id="7axJ0azJvq4" role="1osJ5a">
              <property role="1HhJcI" value="100.0" />
            </node>
            <node concept="Agl$j" id="7axJ0azJvq6" role="1osJ57">
              <ref role="Agl$i" node="52XYD7aJnjJ" resolve="total_amount" />
            </node>
          </node>
          <node concept="1osJ5O" id="7axJ0azJvpT" role="1osJ4P">
            <property role="1osJ58" value="14g3IsRhKZU/EQUALS" />
            <node concept="1HhJcF" id="7axJ0azJvpV" role="1osJ5a">
              <property role="1HhJcI" value="1" />
            </node>
            <node concept="Agl$j" id="7axJ0azJvpX" role="1osJ57">
              <ref role="Agl$i" node="52XYD7aJnjC" resolve="payment_type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2WQRJ5" id="7axJ0azJvqb" role="2WRRZq" />
      <node concept="2odo9i" id="7axJ0azJvqd" role="2odo9f">
        <property role="2odo9a" value="1" />
        <property role="2H74FI" value="w7ffA_7xVr/HOURS" />
      </node>
    </node>
  </node>
</model>

