<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e26f7a9d-a8a2-42bc-80b1-f191eed65b40(sandbox.demo)">
  <persistence version="9" />
  <languages>
    <use id="73bee2cc-6969-4dd7-abeb-6acc8e6703a8" name="climat" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="73bee2cc-6969-4dd7-abeb-6acc8e6703a8" name="climat">
      <concept id="6753445164543197307" name="climat.structure.Action" flags="ng" index="3n54Vz">
        <child id="6753445164543197308" name="pieces" index="3n54V$" />
      </concept>
      <concept id="6753445164543336222" name="climat.structure.Parameter" flags="ng" index="3n5_66">
        <property id="6753445164543336224" name="type" index="3n5_6S" />
      </concept>
      <concept id="6753445164543374867" name="climat.structure.ToolchainSignature" flags="ng" index="3n5Jyb">
        <child id="6753445164543374868" name="parameters" index="3n5Jyc" />
      </concept>
      <concept id="6281940296857192710" name="climat.structure.ToolchainBody" flags="ng" index="3xjQpG">
        <child id="6753445164543197310" name="action" index="3n54VA" />
        <child id="6281940296857192714" name="toolchains" index="3xjQpw" />
        <child id="6281940296857192712" name="constants" index="3xjQpy" />
      </concept>
      <concept id="6281940296857192703" name="climat.structure.AnnotationSection" flags="ng" index="3xjQul">
        <child id="6281940296857192704" name="annotations" index="3xjQpE" />
      </concept>
      <concept id="6281940296856895053" name="climat.structure.Annotation" flags="ng" index="3xs14B">
        <property id="6281940296856895056" name="content" index="3xs14U" />
      </concept>
      <concept id="6281940296856355368" name="climat.structure.Toolchain" flags="ng" index="3xu2P2">
        <child id="6753445164543414270" name="signature" index="3n2o5A" />
        <child id="6281940296857098680" name="annotationSection" index="3xjfri" />
        <child id="6281940296857192708" name="body" index="3xjQpI" />
      </concept>
      <concept id="6281940296856349491" name="climat.structure.StringTemplatePiece" flags="ng" index="3xu4hp">
        <property id="6281940296856413836" name="content" index="3xuOBA" />
      </concept>
      <concept id="6281940296856349494" name="climat.structure.InterpolationTemplatePiece" flags="ng" index="3xu4hs">
        <reference id="6753445164544312280" name="reference" index="3n1OP0" />
      </concept>
      <concept id="6281940296856302957" name="climat.structure.RootToolchain" flags="ng" index="3xuhC7">
        <child id="6281940296857098703" name="body" index="3xjfq_" />
      </concept>
      <concept id="6281940296856302968" name="climat.structure.Constant" flags="ng" index="3xuhCi">
        <child id="6281940296856350467" name="pieces" index="3xu41D" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3xuhC7" id="6A1F$nHHVMy">
    <property role="TrG5h" value="demo" />
    <node concept="3xjQpG" id="5QT3DyaFk2I" role="3xjfq_">
      <node concept="3n54Vz" id="5QT3DyaFImG" role="3n54VA">
        <node concept="3xu4hp" id="5QT3DyaFImH" role="3n54V$">
          <property role="3xuOBA" value="echo" />
        </node>
        <node concept="3xu4hs" id="5QT3DyaFImJ" role="3n54V$" />
      </node>
      <node concept="3xu2P2" id="5QT3DyaG9si" role="3xjQpw">
        <property role="TrG5h" value="ere" />
        <node concept="3n5Jyb" id="5QT3DyaG9sj" role="3n2o5A">
          <node concept="3n5_66" id="5QT3DyaI$u4" role="3n5Jyc">
            <property role="3n5_6S" value="5QT3DyaI6Z6/arg" />
            <property role="TrG5h" value="eqrqer" />
          </node>
        </node>
        <node concept="3xjQul" id="5QT3DyaJo2_" role="3xjfri">
          <node concept="3xs14B" id="5QT3DyaJo2A" role="3xjQpE">
            <property role="TrG5h" value="qweq" />
            <property role="3xs14U" value="avaev" />
          </node>
          <node concept="3xs14B" id="5QT3DyaJo2B" role="3xjQpE">
            <property role="TrG5h" value="qwefwerf" />
            <property role="3xs14U" value="edrbaerg" />
          </node>
          <node concept="3xs14B" id="5QT3DyaJo2C" role="3xjQpE" />
        </node>
        <node concept="3xjQpG" id="5QT3DyaJ$Nc" role="3xjQpI">
          <node concept="3xuhCi" id="5QT3DyaJPdE" role="3xjQpy">
            <property role="TrG5h" value="erq" />
            <node concept="3xu4hs" id="5QT3DyaJPdG" role="3xu41D">
              <ref role="3n1OP0" node="5QT3DyaJPdA" resolve="er" />
            </node>
          </node>
          <node concept="3n54Vz" id="5QT3DyaJ$Nd" role="3n54VA">
            <node concept="3xu4hs" id="5QT3DyaK_gB" role="3n54V$">
              <ref role="3n1OP0" node="5QT3DyaJPdA" resolve="er" />
            </node>
          </node>
          <node concept="3xuhCi" id="5QT3DyaJPdA" role="3xjQpy">
            <property role="TrG5h" value="er" />
            <node concept="3xu4hs" id="5QT3DyaLoOh" role="3xu41D">
              <ref role="3n1OP0" node="5QT3DyaJPdE" resolve="erq" />
            </node>
          </node>
          <node concept="3xu2P2" id="5QT3DyaLoOj" role="3xjQpw">
            <property role="TrG5h" value="qwe" />
            <node concept="3n5Jyb" id="5QT3DyaLoOk" role="3n2o5A">
              <node concept="3n5_66" id="5QT3DyaLoOl" role="3n5Jyc">
                <property role="TrG5h" value="qdfqd" />
                <property role="3n5_6S" value="5QT3DyaI6Z7/flag" />
              </node>
            </node>
            <node concept="3xjQpG" id="5QT3DyaLoOn" role="3xjQpI">
              <node concept="3xuhCi" id="5QT3DyaLoOo" role="3xjQpy">
                <property role="TrG5h" value="qw" />
                <node concept="3xu4hs" id="5QT3DyaM6uy" role="3xu41D">
                  <ref role="3n1OP0" node="5QT3DyaJPdE" resolve="erq" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3xu2P2" id="5QT3DyaLRdM" role="3xjQpw">
            <property role="TrG5h" value="were" />
            <node concept="3n5Jyb" id="5QT3DyaLRdN" role="3n2o5A">
              <node concept="3n5_66" id="5QT3DyaLRdO" role="3n5Jyc">
                <property role="TrG5h" value="er" />
                <property role="3n5_6S" value="5QT3DyaI6Z7/flag" />
              </node>
            </node>
            <node concept="3xjQpG" id="5QT3DyaLRdP" role="3xjQpI">
              <node concept="3xuhCi" id="5QT3DyaLRdQ" role="3xjQpy">
                <property role="TrG5h" value="q" />
                <node concept="3xu4hs" id="5QT3DyaLRdR" role="3xu41D">
                  <ref role="3n1OP0" node="5QT3DyaJPdA" resolve="er" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

