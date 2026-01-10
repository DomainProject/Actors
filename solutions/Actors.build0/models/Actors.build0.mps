<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:88d89f87-b0a5-4f47-8fc2-597d9eaa8ad4(Actors.build0)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
    <devkit ref="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="p6ld" ref="r:0764bd79-eef9-46f0-a6fe-739a07a30bb2(com.mbeddr.build.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
    <import index="slod" ref="r:0fac2319-607e-4342-a163-7b982bbd957e(com.mbeddr.mpsutil.modellisteners.runtime)" />
    <import index="nx8m" ref="r:8f7335ec-b571-471b-b34e-920da7a7bcfc(com.mbeddr.mpsutil.buildassistant.plugin)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ngI" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="7832771629084799699" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginVendor" flags="ng" index="2iUeEo">
        <property id="7832771629084799702" name="name" index="2iUeEt" />
        <property id="7832771629084799701" name="url" index="2iUeEu" />
      </concept>
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="7832771629084912518" name="vendor" index="2iVFfd" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="43lJK4qlsur">
    <property role="TrG5h" value="Actors" />
    <property role="2DA0ip" value="../.." />
    <node concept="10PD9b" id="43lJK4qlsus" role="10PD9s" />
    <node concept="3b7kt6" id="43lJK4qlsut" role="10PD9s" />
    <node concept="398rNT" id="43lJK4qlsuu" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="43lJK4qlsvy" role="398pKh">
        <node concept="2Ry0Ak" id="43lJK4qlsvA" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="43lJK4qlsvD" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="43lJK4qlsvG" role="2Ry0An">
              <property role="2Ry0Am" value=".local" />
              <node concept="2Ry0Ak" id="43lJK4qlsvJ" role="2Ry0An">
                <property role="2Ry0Am" value="share" />
                <node concept="2Ry0Ak" id="43lJK4qlsvM" role="2Ry0An">
                  <property role="2Ry0Am" value="JetBrains" />
                  <node concept="2Ry0Ak" id="43lJK4qlsvP" role="2Ry0An">
                    <property role="2Ry0Am" value="Toolbox" />
                    <node concept="2Ry0Ak" id="43lJK4qlsvS" role="2Ry0An">
                      <property role="2Ry0Am" value="apps" />
                      <node concept="2Ry0Ak" id="43lJK4qlsvV" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="43lJK4qlsvZ" role="2Ry0An">
                          <property role="2Ry0Am" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="43lJK4qlsuv" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="43lJK4qlsuw" role="2JcizS">
        <ref role="398BVh" node="43lJK4qlsuu" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleB5" role="1l3spa">
      <ref role="1l3spb" to="p6ld:4i9pOwKTFVe" resolve="mbeddr" />
      <node concept="398BVA" id="43lJK4qltUD" role="2JcizS">
        <ref role="398BVh" node="43lJK4qlsuu" resolve="mps_home" />
        <node concept="2Ry0Ak" id="43lJK4qltUG" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="43lJK4qlxo8" role="1l3spa">
      <ref role="1l3spb" to="ffeo:7pdFgzxlDme" resolve="mpsBuild" />
      <node concept="398BVA" id="43lJK4qlxoa" role="2JcizS">
        <ref role="398BVh" node="43lJK4qlsuu" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="43lJK4qlzf8" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="43lJK4qlzfa" role="2JcizS">
        <ref role="398BVh" node="43lJK4qlsuu" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="43lJK4qlzLz" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="43lJK4qlzL_" role="2JcizS">
        <ref role="398BVh" node="43lJK4qlsuu" resolve="mps_home" />
        <node concept="2Ry0Ak" id="43lJK4qlzLC" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="43lJK4ql$fU" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="43lJK4ql$fW" role="2JcizS">
        <ref role="398BVh" node="43lJK4qlsuu" resolve="mps_home" />
        <node concept="2Ry0Ak" id="43lJK4ql$fZ" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="43lJK4qlsuV" role="1l3spN">
      <node concept="3981dG" id="43lJK4qlsuW" role="39821P">
        <node concept="3_J27D" id="43lJK4qlsuX" role="Nbhlr">
          <node concept="3Mxwew" id="43lJK4qlsuY" role="3MwsjC">
            <property role="3MwjfP" value="ActorLanguage.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="43lJK4qlsuZ" role="39821P">
          <ref role="m_rDy" node="43lJK4qlsuK" resolve="ActorLanguage" />
          <node concept="pUk6x" id="43lJK4qlsv0" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="43lJK4qlsuK" role="3989C9">
      <property role="m$_wk" value="ActorLanguage" />
      <node concept="3_J27D" id="43lJK4qlsuL" role="m$_yQ">
        <node concept="3Mxwew" id="43lJK4qlsuM" role="3MwsjC">
          <property role="3MwjfP" value="ActorLanguage" />
        </node>
      </node>
      <node concept="3_J27D" id="43lJK4qlsuN" role="m$_w8">
        <node concept="3Mxwew" id="43lJK4qlsuO" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="43lJK4qlsuP" role="m$_yh">
        <ref role="m$f5T" node="43lJK4qlsuJ" resolve="Actors" />
      </node>
      <node concept="m$_yC" id="43lJK4qlsuQ" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="43lJK4qltV9" role="m$_yJ">
        <ref role="m$_y1" to="p6ld:7uZw0yZ43Jz" resolve="com.mbeddr.core" />
      </node>
      <node concept="m$_yC" id="43lJK4qlu3c" role="m$_yJ">
        <ref role="m$_y1" to="90a9:hCVXosGNJH" resolve="com.mbeddr.mpsutil.modellisteners" />
      </node>
      <node concept="3_J27D" id="43lJK4qlsuR" role="m_cZH">
        <node concept="3Mxwew" id="43lJK4qlsuS" role="3MwsjC">
          <property role="3MwjfP" value="ActorLanguage" />
        </node>
      </node>
      <node concept="3_J27D" id="43lJK4qlsw8" role="3s6cr7">
        <node concept="3Mxwew" id="43lJK4qlsw9" role="3MwsjC">
          <property role="3MwjfP" value="DSL based on the actor model" />
        </node>
      </node>
      <node concept="2iUeEo" id="43lJK4qlswb" role="2iVFfd">
        <property role="2iUeEt" value="DOMAIN Project" />
        <property role="2iUeEu" value="https://domainproject.github.io/" />
      </node>
    </node>
    <node concept="2G$12M" id="43lJK4qlsuJ" role="3989C9">
      <property role="TrG5h" value="Actors" />
      <node concept="1E1JtD" id="43lJK4qlsuB" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="ActorLanguage" />
        <property role="3LESm3" value="10eda999-5898-4cde-9416-196c5eca1268" />
        <node concept="55IIr" id="43lJK4qlsuy" role="3LF7KH">
          <node concept="2Ry0Ak" id="43lJK4qlsuz" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="43lJK4qlsu$" role="2Ry0An">
              <property role="2Ry0Am" value="ActorLanguage" />
              <node concept="2Ry0Ak" id="43lJK4qlsu_" role="2Ry0An">
                <property role="2Ry0Am" value="ActorLanguage.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="43lJK4qlsuG" role="3bR31x">
          <node concept="3LXTmp" id="43lJK4qlsuH" role="3rtmxm">
            <node concept="3qWCbU" id="43lJK4qlsuI" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="43lJK4qlsuC" role="3LXTmr">
              <node concept="2Ry0Ak" id="43lJK4qlsuD" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="43lJK4qlsuE" role="2Ry0An">
                  <property role="2Ry0Am" value="ActorLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsv1" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsv2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3qkjbZn89da" resolve="jetbrains.mps.lang.feedback.problem.childAndProp" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsv3" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsv4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsv5" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsv6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsv7" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsv8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsv9" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsva" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:14x5$qAUbkb" resolve="jetbrains.mps.lang.access" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsvb" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsvc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsvd" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qlsve" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3qkjbZn8nuy" resolve="jetbrains.mps.lang.feedback.problem.structural" />
          </node>
        </node>
        <node concept="1BupzO" id="43lJK4qlsvj" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="43lJK4qlsvk" role="1HemKq">
            <node concept="55IIr" id="43lJK4qlsvf" role="3LXTmr">
              <node concept="2Ry0Ak" id="43lJK4qlsvg" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="43lJK4qlsvh" role="2Ry0An">
                  <property role="2Ry0Am" value="ActorLanguage" />
                  <node concept="2Ry0Ak" id="43lJK4qlsvi" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="43lJK4qlsvl" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qlsvm" role="3bR37C">
          <node concept="1Busua" id="43lJK4qlsvn" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="43lJK4qlsvo" role="1TViLv">
          <property role="TrG5h" value="ActorLanguage.generator00" />
          <property role="3LESm3" value="9634904d-e478-4af8-8060-3b031fe6bd44" />
          <node concept="1BupzO" id="43lJK4qlsvu" role="3bR31x">
            <property role="3ZfqAx" value="generator1/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="43lJK4qlsvv" role="1HemKq">
              <node concept="55IIr" id="43lJK4qlsvp" role="3LXTmr">
                <node concept="2Ry0Ak" id="43lJK4qlsvq" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="43lJK4qlsvr" role="2Ry0An">
                    <property role="2Ry0Am" value="ActorLanguage" />
                    <node concept="2Ry0Ak" id="43lJK4qlsvs" role="2Ry0An">
                      <property role="2Ry0Am" value="generator1" />
                      <node concept="2Ry0Ak" id="43lJK4qlsvt" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="43lJK4qlsvw" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUH" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qltUI" role="1SiIV1">
            <ref role="3bR37D" to="p6ld:7uZw0yZ43Mi" resolve="com.mbeddr.core.udt" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUJ" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qltUK" role="1SiIV1">
            <ref role="3bR37D" to="p6ld:7uZw0yZ43L9" resolve="com.mbeddr.core.modules" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUL" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qltUM" role="1SiIV1">
            <ref role="3bR37D" to="90a9:F1NWDr9_MX" resolve="com.mbeddr.mpsutil.grammarcells" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUN" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qltUO" role="1SiIV1">
            <ref role="3bR37D" to="al5i:$bJ0jguQfr" resolve="com.mbeddr.core.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUP" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qltUQ" role="1SiIV1">
            <ref role="3bR37D" to="p6ld:7uZw0yZ43Lo" resolve="com.mbeddr.core.pointers" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUR" role="3bR37C">
          <node concept="3bR9La" id="43lJK4qltUS" role="1SiIV1">
            <ref role="3bR37D" to="90a9:56Tfdun3uan" resolve="de.itemis.mps.editor.diagram.layout" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUX" role="3bR37C">
          <node concept="1Busua" id="43lJK4qltUY" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43JM" resolve="com.mbeddr.core.statements" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltUZ" role="3bR37C">
          <node concept="1Busua" id="43lJK4qltV0" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43L9" resolve="com.mbeddr.core.modules" />
          </node>
        </node>
        <node concept="1SiIV0" id="43lJK4qltV1" role="3bR37C">
          <node concept="1Busua" id="43lJK4qltV2" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43Mi" resolve="com.mbeddr.core.udt" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

