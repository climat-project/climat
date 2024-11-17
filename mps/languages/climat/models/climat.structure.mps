<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5sHVQEQlflH">
    <property role="EcuMT" value="6281940296856302957" />
    <property role="TrG5h" value="RootToolchain" />
    <property role="19KtqR" value="true" />
    <node concept="PrWs8" id="5sHVQEQlsoW" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="5sHVQEQohBN" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857098739" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="annotationSection" />
      <ref role="20lvS9" node="5sHVQEQoCzZ" resolve="AnnotationSection" />
    </node>
    <node concept="1TJgyj" id="5sHVQEQohBf" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857098703" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <ref role="20lvS9" node="5sHVQEQoC$6" resolve="ToolchainBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="5sHVQEQlflS">
    <property role="EcuMT" value="6281940296856302968" />
    <property role="TrG5h" value="Constant" />
    <node concept="1TJgyj" id="5sHVQEQlqW3" role="1TKVEi">
      <property role="IQ2ns" value="6281940296856350467" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="pieces" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5sHVQEQlqGM" resolve="TemplatePiece" />
    </node>
    <node concept="PrWs8" id="5QT3DyaJ$fk" role="PzmwI">
      <ref role="PrY4T" node="5QT3DyaJ$fh" resolve="Referenceable" />
    </node>
  </node>
  <node concept="PlHQZ" id="5sHVQEQlqGM">
    <property role="EcuMT" value="6281940296856349490" />
    <property role="TrG5h" value="TemplatePiece" />
  </node>
  <node concept="1TIwiD" id="5sHVQEQlqGN">
    <property role="EcuMT" value="6281940296856349491" />
    <property role="TrG5h" value="StringTemplatePiece" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="5sHVQEQlqGR" role="PzmwI">
      <ref role="PrY4T" node="5sHVQEQlqGM" resolve="TemplatePiece" />
    </node>
    <node concept="1TJgyi" id="5sHVQEQlEqc" role="1TKVEl">
      <property role="IQ2nx" value="6281940296856413836" />
      <property role="TrG5h" value="content" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5sHVQEQlqGQ">
    <property role="EcuMT" value="6281940296856349494" />
    <property role="TrG5h" value="InterpolationTemplatePiece" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="5sHVQEQlqGU" role="PzmwI">
      <ref role="PrY4T" node="5sHVQEQlqGM" resolve="TemplatePiece" />
    </node>
    <node concept="1TJgyj" id="5QT3DyaJ$fo" role="1TKVEi">
      <property role="IQ2ns" value="6753445164544312280" />
      <property role="20kJfa" value="reference" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5QT3DyaJ$fh" resolve="Referenceable" />
    </node>
  </node>
  <node concept="1TIwiD" id="5sHVQEQls8C">
    <property role="EcuMT" value="6281940296856355368" />
    <property role="TrG5h" value="Toolchain" />
    <property role="34LRSv" value="sub" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="5sHVQEQlsDi" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5QT3DyaJQmS" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="5sHVQEQohAS" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857098680" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="annotationSection" />
      <ref role="20lvS9" node="5sHVQEQoCzZ" resolve="AnnotationSection" />
    </node>
    <node concept="1TJgyj" id="5QT3DyaG8ZY" role="1TKVEi">
      <property role="IQ2ns" value="6753445164543414270" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="signature" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5QT3DyaFZoj" resolve="ToolchainSignature" />
    </node>
    <node concept="1TJgyj" id="5sHVQEQoC$4" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857192708" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <ref role="20lvS9" node="5sHVQEQoC$6" resolve="ToolchainBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="5sHVQEQnvTd">
    <property role="EcuMT" value="6281940296856895053" />
    <property role="TrG5h" value="Annotation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="5sHVQEQnvTe" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="5sHVQEQnvTg" role="1TKVEl">
      <property role="IQ2nx" value="6281940296856895056" />
      <property role="TrG5h" value="content" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5sHVQEQoCzZ">
    <property role="EcuMT" value="6281940296857192703" />
    <property role="TrG5h" value="AnnotationSection" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="5sHVQEQoC$0" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857192704" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="annotations" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5sHVQEQnvTd" resolve="Annotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="5sHVQEQoC$6">
    <property role="TrG5h" value="ToolchainBody" />
    <property role="EcuMT" value="6281940296857192710" />
    <node concept="1TJgyj" id="5sHVQEQoC$8" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857192712" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="constants" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5sHVQEQlflS" resolve="Constant" />
    </node>
    <node concept="1TJgyj" id="5QT3DyaFk1Y" role="1TKVEi">
      <property role="IQ2ns" value="6753445164543197310" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="action" />
      <ref role="20lvS9" node="5QT3DyaFk1V" resolve="Action" />
    </node>
    <node concept="1TJgyj" id="5sHVQEQoC$a" role="1TKVEi">
      <property role="IQ2ns" value="6281940296857192714" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="toolchains" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5sHVQEQls8C" resolve="Toolchain" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QT3DyaFk1V">
    <property role="EcuMT" value="6753445164543197307" />
    <property role="TrG5h" value="Action" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="5QT3DyaFk1W" role="1TKVEi">
      <property role="IQ2ns" value="6753445164543197308" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="pieces" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5sHVQEQlqGM" resolve="TemplatePiece" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QT3DyaFPWu">
    <property role="EcuMT" value="6753445164543336222" />
    <property role="TrG5h" value="Parameter" />
    <node concept="1TJgyi" id="5QT3DyaFPWw" role="1TKVEl">
      <property role="IQ2nx" value="6753445164543336224" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="5QT3DyaI6Z5" resolve="ParameterType" />
    </node>
    <node concept="1TJgyi" id="5QT3DyaGiXL" role="1TKVEl">
      <property role="IQ2nx" value="6753445164543455089" />
      <property role="TrG5h" value="presence" />
      <ref role="AX2Wp" node="5QT3DyaI6Zb" resolve="ParameterPresence" />
    </node>
    <node concept="1TJgyj" id="5QT3DyaJ1lG" role="1TKVEi">
      <property role="IQ2ns" value="6753445164544169324" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="defaultDataType" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5sHVQEQlqGM" resolve="TemplatePiece" />
    </node>
    <node concept="PrWs8" id="5QT3DyaJ$fm" role="PzmwI">
      <ref role="PrY4T" node="5QT3DyaJ$fh" resolve="Referenceable" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QT3DyaFZoj">
    <property role="EcuMT" value="6753445164543374867" />
    <property role="TrG5h" value="ToolchainSignature" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="5QT3DyaFZok" role="1TKVEi">
      <property role="IQ2ns" value="6753445164543374868" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5QT3DyaFPWu" resolve="Parameter" />
    </node>
  </node>
  <node concept="25R3W" id="5QT3DyaI6Z5">
    <property role="3F6X1D" value="6753445164543930309" />
    <property role="TrG5h" value="ParameterType" />
    <node concept="25R33" id="5QT3DyaI6Z6" role="25R1y">
      <property role="3tVfz5" value="6753445164543930310" />
      <property role="TrG5h" value="arg" />
    </node>
    <node concept="25R33" id="5QT3DyaI6Z7" role="25R1y">
      <property role="3tVfz5" value="6753445164543930311" />
      <property role="TrG5h" value="flag" />
    </node>
  </node>
  <node concept="25R3W" id="5QT3DyaI6Zb">
    <property role="3F6X1D" value="6753445164543930315" />
    <property role="TrG5h" value="ParameterPresence" />
    <ref role="1H5jkz" node="5QT3DyaI6Zd" resolve="mandatory" />
    <node concept="25R33" id="5QT3DyaI6Zd" role="25R1y">
      <property role="3tVfz5" value="6753445164543930317" />
      <property role="TrG5h" value="mandatory" />
      <property role="1L1pqM" value="!" />
    </node>
    <node concept="25R33" id="5QT3DyaI6Zc" role="25R1y">
      <property role="3tVfz5" value="6753445164543930316" />
      <property role="TrG5h" value="optional" />
      <property role="1L1pqM" value="?" />
    </node>
  </node>
  <node concept="PlHQZ" id="5QT3DyaJ$fh">
    <property role="EcuMT" value="6753445164544312273" />
    <property role="TrG5h" value="Referenceable" />
    <node concept="PrWs8" id="5QT3DyaJ$fi" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

