<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2075279e-df9b-4070-8744-3e40ce765382(Actors.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="p6ld" ref="r:0764bd79-eef9-46f0-a6fe-739a07a30bb2(com.mbeddr.build.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
  </imports>
  <registry>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
    </language>
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
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
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
        <child id="1359186315025500371" name="xml" index="20twgj" />
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
  <node concept="1l3spW" id="1S3pF_JleAr">
    <property role="2DA0ip" value="../.." />
    <property role="TrG5h" value="Actors" />
    <node concept="m$_wf" id="1S3pF_JleBr" role="3989C9">
      <property role="m$_wk" value="Actors" />
      <node concept="2pNNFK" id="1S3pF_JleCF" role="20twgj">
        <property role="2pNNFO" value="depends" />
        <node concept="3o6iSG" id="1S3pF_JleCG" role="3o6s8t">
          <property role="3o6i5n" value="com.intellij.modules.platform" />
        </node>
      </node>
      <node concept="3_J27D" id="1S3pF_JleBt" role="m$_yQ">
        <node concept="3Mxwew" id="1S3pF_JleBz" role="3MwsjC">
          <property role="3MwjfP" value="Actors" />
        </node>
      </node>
      <node concept="3_J27D" id="1S3pF_JleBv" role="m_cZH">
        <node concept="3Mxwew" id="1S3pF_JleB$" role="3MwsjC">
          <property role="3MwjfP" value="Actors" />
        </node>
      </node>
      <node concept="3_J27D" id="1S3pF_JleBx" role="m$_w8">
        <node concept="3Mxwew" id="1S3pF_JleBB" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="3_J27D" id="1S3pF_JleB_" role="3s6cr7">
        <node concept="3Mxwew" id="1S3pF_JleBA" role="3MwsjC">
          <property role="3MwjfP" value="DSL based on the Actor Model" />
        </node>
      </node>
      <node concept="2iUeEo" id="1S3pF_JleBC" role="2iVFfd">
        <property role="2iUeEt" value="Domain Project" />
        <property role="2iUeEu" value="https://domainproject.github.io/" />
      </node>
      <node concept="m$f5U" id="1S3pF_JleCC" role="m$_yh">
        <ref role="m$f5T" node="1S3pF_JleBE" resolve="Actors" />
      </node>
      <node concept="m$_yC" id="1S3pF_JleCD" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="1S3pF_JleCE" role="m$_yJ">
        <ref role="m$_y1" to="p6ld:7uZw0yZ43Jz" />
      </node>
    </node>
    <node concept="2G$12M" id="1S3pF_JleBE" role="3989C9">
      <property role="TrG5h" value="Actors" />
      <node concept="1E1JtD" id="1S3pF_JleBG" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="ActorLanguage" />
        <property role="3LESm3" value="10eda999-5898-4cde-9416-196c5eca1268" />
        <node concept="55IIr" id="1S3pF_JleBH" role="3LF7KH">
          <node concept="2Ry0Ak" id="1S3pF_JleBJ" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="1S3pF_JleBM" role="2Ry0An">
              <property role="2Ry0Am" value="ActorLanguage" />
              <node concept="2Ry0Ak" id="1S3pF_JleBP" role="2Ry0An">
                <property role="2Ry0Am" value="ActorLanguage.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleBQ" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleBR" role="1SiIV1">
            <ref role="3bR37D" to="p6ld:7uZw0yZ43Mi" resolve="com.mbeddr.core.udt" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleBS" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleBT" role="1SiIV1">
            <ref role="3bR37D" to="p6ld:7uZw0yZ43L9" resolve="com.mbeddr.core.modules" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleBU" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleBV" role="1SiIV1">
            <ref role="3bR37D" to="90a9:F1NWDr9_MX" resolve="com.mbeddr.mpsutil.grammarcells" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleBW" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleBX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3qkjbZn89da" resolve="jetbrains.mps.lang.feedback.problem.childAndProp" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleBY" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleBZ" role="1SiIV1">
            <ref role="3bR37D" to="al5i:$bJ0jguQfr" resolve="com.mbeddr.core.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleC0" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleC1" role="1SiIV1">
            <ref role="3bR37D" to="p6ld:7uZw0yZ43Lo" resolve="com.mbeddr.core.pointers" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleC2" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleC3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleC4" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleC5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleC6" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleC7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleC8" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleC9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:14x5$qAUbkb" resolve="jetbrains.mps.lang.access" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCa" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleCb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCc" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleCd" role="1SiIV1">
            <ref role="3bR37D" to="90a9:56Tfdun3uan" resolve="de.itemis.mps.editor.diagram.layout" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCe" role="3bR37C">
          <node concept="3bR9La" id="1S3pF_JleCf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3qkjbZn8nuy" resolve="jetbrains.mps.lang.feedback.problem.structural" />
          </node>
        </node>
        <node concept="1BupzO" id="1S3pF_JleCk" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1S3pF_JleCl" role="1HemKq">
            <node concept="55IIr" id="1S3pF_JleCg" role="3LXTmr">
              <node concept="2Ry0Ak" id="1S3pF_JleCh" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="1S3pF_JleCi" role="2Ry0An">
                  <property role="2Ry0Am" value="ActorLanguage" />
                  <node concept="2Ry0Ak" id="1S3pF_JleCj" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1S3pF_JleCm" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCn" role="3bR37C">
          <node concept="1Busua" id="1S3pF_JleCo" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCp" role="3bR37C">
          <node concept="1Busua" id="1S3pF_JleCq" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43JM" resolve="com.mbeddr.core.statements" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCr" role="3bR37C">
          <node concept="1Busua" id="1S3pF_JleCs" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43L9" resolve="com.mbeddr.core.modules" />
          </node>
        </node>
        <node concept="1SiIV0" id="1S3pF_JleCt" role="3bR37C">
          <node concept="1Busua" id="1S3pF_JleCu" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43Mi" resolve="com.mbeddr.core.udt" />
          </node>
        </node>
        <node concept="1yeLz9" id="1S3pF_JleCv" role="1TViLv">
          <property role="TrG5h" value="ActorLanguage.generator00" />
          <property role="3LESm3" value="9634904d-e478-4af8-8060-3b031fe6bd44" />
          <node concept="1BupzO" id="1S3pF_JleC_" role="3bR31x">
            <property role="3ZfqAx" value="generator1/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="1S3pF_JleCA" role="1HemKq">
              <node concept="55IIr" id="1S3pF_JleCw" role="3LXTmr">
                <node concept="2Ry0Ak" id="1S3pF_JleCx" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="1S3pF_JleCy" role="2Ry0An">
                    <property role="2Ry0Am" value="ActorLanguage" />
                    <node concept="2Ry0Ak" id="1S3pF_JleCz" role="2Ry0An">
                      <property role="2Ry0Am" value="generator1" />
                      <node concept="2Ry0Ak" id="1S3pF_JleC$" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="1S3pF_JleCB" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleAM" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="1S3pF_JleAO" role="2JcizS">
        <ref role="398BVh" node="1S3pF_JleAy" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleAQ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="1S3pF_JleAS" role="2JcizS">
        <ref role="398BVh" node="1S3pF_JleAy" resolve="mps_home" />
        <node concept="2Ry0Ak" id="1S3pF_JleAU" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleAV" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5D1dJ7xWer5" resolve="mpsCore" />
      <node concept="398BVA" id="1S3pF_JleAW" role="2JcizS">
        <ref role="398BVh" node="1S3pF_JleAy" resolve="mps_home" />
        <node concept="2Ry0Ak" id="1S3pF_JleAX" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleAY" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1lMM4owFq4Y" resolve="mpsVcs" />
      <node concept="398BVA" id="1S3pF_JleAZ" role="2JcizS">
        <ref role="398BVh" node="1S3pF_JleAy" resolve="mps_home" />
        <node concept="2Ry0Ak" id="1S3pF_JleB0" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleB1" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5yMuYWFN8P1" resolve="mpsPlugins" />
      <node concept="398BVA" id="1S3pF_JleB2" role="2JcizS">
        <ref role="398BVh" node="1S3pF_JleAy" resolve="mps_home" />
        <node concept="2Ry0Ak" id="1S3pF_JleB3" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleB5" role="1l3spa">
      <ref role="1l3spb" to="p6ld:4i9pOwKTFVe" resolve="mbeddr" />
      <node concept="55IIr" id="1S3pF_JleB7" role="2JcizS">
        <node concept="2Ry0Ak" id="1S3pF_JleB9" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="1S3pF_JleBc" role="2Ry0An">
            <property role="2Ry0Am" value="dependencies" />
            <node concept="2Ry0Ak" id="1S3pF_JleBe" role="2Ry0An">
              <property role="2Ry0Am" value="mbeddr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1S3pF_JleBg" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="55IIr" id="1S3pF_JleBm" role="2JcizS">
        <node concept="2Ry0Ak" id="1S3pF_JleBn" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="1S3pF_JleBo" role="2Ry0An">
            <property role="2Ry0Am" value="dependencies" />
            <node concept="2Ry0Ak" id="1S3pF_JleBp" role="2Ry0An">
              <property role="2Ry0Am" value="com.mbeddr.platform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="1S3pF_JleAs" role="auvoZ" />
    <node concept="1l3spV" id="1S3pF_JleAt" role="1l3spN">
      <node concept="3981dG" id="1S3pF_JleCH" role="39821P">
        <node concept="3_J27D" id="1S3pF_JleCI" role="Nbhlr">
          <node concept="3Mxwew" id="1S3pF_JleCJ" role="3MwsjC">
            <property role="3MwjfP" value="Actors.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="1S3pF_JleCK" role="39821P">
          <ref role="m_rDy" node="1S3pF_JleBr" />
          <node concept="pUk6x" id="1S3pF_JleCM" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="1S3pF_JleAu" role="10PD9s" />
    <node concept="3b7kt6" id="1S3pF_JleAw" role="10PD9s" />
    <node concept="398rNT" id="1S3pF_JleAy" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1S3pF_JleAz" role="398pKh">
        <node concept="2Ry0Ak" id="1S3pF_JleA_" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="1S3pF_JleAB" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="1S3pF_JleAH" role="2Ry0An">
              <property role="2Ry0Am" value="MPS" />
              <node concept="2Ry0Ak" id="1S3pF_JleAK" role="2Ry0An">
                <property role="2Ry0Am" value="MPS-2024.1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

