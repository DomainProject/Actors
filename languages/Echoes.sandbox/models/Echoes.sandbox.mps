<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5123f9be-6b44-4a5c-bf95-e214f35cc9ac(Echoes.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="7490bbbd-1519-415e-8b1f-acaab58020fb" name="Echoes" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="7490bbbd-1519-415e-8b1f-acaab58020fb" name="Echoes">
      <concept id="5358399129737721179" name="Echoes.structure.Echo" flags="ng" index="uAUV5">
        <property id="5358399129737721181" name="text" index="uAUV3" />
      </concept>
      <concept id="5358399129737721206" name="Echoes.structure.EchoScript" flags="ng" index="uAUVC">
        <child id="5358399129737721207" name="echoes" index="uAUVD" />
      </concept>
    </language>
  </registry>
  <node concept="uAUVC" id="4DsQTTkLTIJ">
    <node concept="uAUV5" id="4DsQTTkLTIK" role="uAUVD">
      <property role="uAUV3" value="hello world" />
    </node>
    <node concept="uAUV5" id="518QUjCfZMM" role="uAUVD">
      <property role="uAUV3" value="hi" />
    </node>
    <node concept="uAUV5" id="518QUjCfZMP" role="uAUVD">
      <property role="uAUV3" value="hello" />
    </node>
  </node>
</model>

