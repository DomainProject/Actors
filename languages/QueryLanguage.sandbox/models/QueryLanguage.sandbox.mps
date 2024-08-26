<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:718fca03-60cd-445f-8e2d-8b9abcf446c4(QueryLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="2" />
    <engage id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" />
  </languages>
  <imports />
  <registry>
    <language id="26d1395b-1ee6-43ad-b522-c0cdd699ded3" name="QueryLanguage">
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
  <node concept="Al3kE" id="dWibcwbecF">
    <property role="TrG5h" value="TestScript" />
    <node concept="Al3n9" id="3SawQFrbiqj" role="21riY_">
      <property role="TrG5h" value="agent" />
      <node concept="Al3nk" id="3SawQFrbiql" role="1_7Ipx">
        <property role="TrG5h" value="VendorID" />
        <property role="2l5wPj" value="agent_alias.VendorID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqn" role="1_7Ipx">
        <property role="TrG5h" value="tpep_pickup_datetime" />
        <property role="2l5wPj" value="agent.tpep_pickup_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqu" role="1_7Ipx">
        <property role="TrG5h" value="tpep_dropoff_datetime" />
        <property role="2l5wPj" value="agent.tpep_dropoff_datetime" />
        <property role="Al3ng" value="14g3IsRh3GZ/Date" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqq" role="1_7Ipx">
        <property role="TrG5h" value="passenger_count" />
        <property role="2l5wPj" value="agent_alias.passenger_count" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqz" role="1_7Ipx">
        <property role="TrG5h" value="trip_distance" />
        <property role="2l5wPj" value="agent_alias.trip_distance" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqD" role="1_7Ipx">
        <property role="TrG5h" value="RatecodeID" />
        <property role="2l5wPj" value="agent.RatecodeID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqK" role="1_7Ipx">
        <property role="TrG5h" value="store_and_fwd_flag" />
        <property role="2l5wPj" value="agent.store_and_fwd_flag" />
        <property role="Al3ng" value="14g3IsRh3GV/String" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiqS" role="1_7Ipx">
        <property role="TrG5h" value="PULocationID" />
        <property role="2l5wPj" value="agent.PULocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3SawQFrbir1" role="1_7Ipx">
        <property role="TrG5h" value="DOLocationID" />
        <property role="2l5wPj" value="agent.DOLocationID" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3SawQFrbirb" role="1_7Ipx">
        <property role="TrG5h" value="payment_type" />
        <property role="2l5wPj" value="agent.payment_type" />
        <property role="Al3ng" value="14g3IsRh3GU/Integer" />
      </node>
      <node concept="Al3nk" id="3SawQFrbirm" role="1_7Ipx">
        <property role="TrG5h" value="fare_amount" />
        <property role="2l5wPj" value="agent.fare_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiry" role="1_7Ipx">
        <property role="TrG5h" value="extra" />
        <property role="2l5wPj" value="agent.extra" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbirJ" role="1_7Ipx">
        <property role="TrG5h" value="mta_tax" />
        <property role="2l5wPj" value="agent.mta_tax" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbirX" role="1_7Ipx">
        <property role="TrG5h" value="tip_amount" />
        <property role="2l5wPj" value="agent.tip_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbisc" role="1_7Ipx">
        <property role="TrG5h" value="tolls_amount" />
        <property role="2l5wPj" value="agent.tolls_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiss" role="1_7Ipx">
        <property role="TrG5h" value="improvement_surcharge" />
        <property role="2l5wPj" value="agent.improvement_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbisH" role="1_7Ipx">
        <property role="TrG5h" value="total_amount" />
        <property role="2l5wPj" value="agent.total_amount" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbisZ" role="1_7Ipx">
        <property role="TrG5h" value="congestion_surcharge" />
        <property role="2l5wPj" value="agent.congestion_surcharge" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
      <node concept="Al3nk" id="3SawQFrbiti" role="1_7Ipx">
        <property role="TrG5h" value="Airport_fee" />
        <property role="2l5wPj" value="agent.Airport_fee" />
        <property role="Al3ng" value="14g3IsRh3H3/Float" />
      </node>
    </node>
    <node concept="15J0zD" id="43OnvjspvAU" role="21riY_">
      <node concept="2leIlQ" id="43OnvjspvAW" role="2legkn">
        <ref role="2leIlR" node="3SawQFrbiqj" resolve="agent" />
      </node>
      <node concept="Agl$j" id="43OnvjspvBk" role="2WRRZq">
        <ref role="Agl$i" node="3SawQFrbiti" resolve="Airport_fee" />
      </node>
      <node concept="15J0zF" id="43OnvjspvBm" role="AlhBa">
        <node concept="1osJ5O" id="43OnvjspvBo" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL08/LOWER" />
          <node concept="1HhJcF" id="43OnvjspvBp" role="1osJ5a">
            <property role="1HhJcI" value="3" />
          </node>
          <node concept="Agl$j" id="43OnvjspvBq" role="1osJ57">
            <ref role="Agl$i" node="3SawQFrbiqq" resolve="passenger_count" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="43OnvjspvBu" role="2odo9f">
        <property role="2odo9a" value="10" />
      </node>
    </node>
    <node concept="15J0zD" id="43OnvjspvBY" role="21riY_">
      <node concept="2leIlQ" id="43OnvjspvC0" role="2legkn">
        <ref role="2leIlR" node="3SawQFrbiqj" resolve="agent" />
      </node>
      <node concept="Agl$j" id="43OnvjspvCw" role="2WRRZq">
        <ref role="Agl$i" node="3SawQFrbir1" resolve="DOLocationID" />
      </node>
      <node concept="15J0zF" id="43OnvjspvCy" role="AlhBa">
        <node concept="1osJ5O" id="43OnvjspvC$" role="AmyPj">
          <property role="1osJ58" value="14g3IsRhL08/LOWER" />
          <node concept="1HhJcF" id="43OnvjspvC_" role="1osJ5a">
            <property role="1HhJcI" value="3" />
          </node>
          <node concept="Agl$j" id="43OnvjspvCA" role="1osJ57">
            <ref role="Agl$i" node="3SawQFrbiqq" resolve="passenger_count" />
          </node>
        </node>
      </node>
      <node concept="2odo9i" id="43OnvjspvCE" role="2odo9f">
        <property role="2odo9a" value="15" />
      </node>
    </node>
  </node>
</model>

