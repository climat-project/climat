<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e26f7a9d-a8a2-42bc-80b1-f191eed65b40(sandbox.demo)">
  <persistence version="9" />
  <languages>
    <use id="73bee2cc-6969-4dd7-abeb-6acc8e6703a8" name="climat" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="73bee2cc-6969-4dd7-abeb-6acc8e6703a8" name="climat">
      <concept id="1673101796775454470" name="climat.structure.JavaScriptAction" flags="ng" index="ETACY">
        <property id="1673101796775507372" name="javascript" index="ETNyk" />
      </concept>
      <concept id="1673101796775507350" name="climat.structure.CustomScriptAction" flags="ng" index="ETNyI">
        <property id="1673101796775509717" name="runtimePath" index="ETNfH" />
      </concept>
      <concept id="6753445164543197307" name="climat.structure.ShellAction" flags="ng" index="3n54Vz">
        <child id="6753445164543197308" name="pieces" index="3n54V$" />
      </concept>
      <concept id="6753445164543336222" name="climat.structure.Parameter" flags="ng" index="3n5_66">
        <property id="1673101796773947428" name="shortHand" index="EZQks" />
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
      <concept id="6281940296856355368" name="climat.structure.Toolchain" flags="ng" index="3xu2P2">
        <child id="6753445164543414270" name="signature" index="3n2o5A" />
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
      <concept id="6281940296856302968" name="climat.structure.Constant" flags="ng" index="3xuhCi" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3xuhC7" id="6A1F$nHHVMy">
    <property role="TrG5h" value="sgit" />
    <node concept="3xjQpG" id="1sS3jwXMOxU" role="3xjfq_">
      <node concept="3xu2P2" id="1sS3jwXMOxV" role="3xjQpw">
        <property role="TrG5h" value="acp" />
        <node concept="3n5Jyb" id="1sS3jwXMOxW" role="3n2o5A">
          <node concept="3n5_66" id="1sS3jwXMOxX" role="3n5Jyc">
            <property role="TrG5h" value="ammend" />
            <property role="EZQks" value="a" />
            <property role="3n5_6S" value="5QT3DyaI6Z7/flag" />
          </node>
        </node>
        <node concept="3xjQpG" id="1sS3jwXMPc1" role="3xjQpI">
          <node concept="3n54Vz" id="1sS3jwXMPc2" role="3n54VA">
            <node concept="3xu4hp" id="1sS3jwXMPc3" role="3n54V$">
              <property role="3xuOBA" value="git add . &amp;&amp; git commit $(amend:--amend) &amp;&amp; git push $(amend:--force)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3xu2P2" id="1sS3jwXMPc4" role="3xjQpw">
        <property role="TrG5h" value="cf" />
        <node concept="3n5Jyb" id="1sS3jwXMPc5" role="3n2o5A">
          <node concept="3n5_66" id="1sS3jwXMPc6" role="3n5Jyc">
            <property role="TrG5h" value="branch" />
            <property role="3n5_6S" value="5QT3DyaI6Z6/arg" />
          </node>
          <node concept="3n5_66" id="1sS3jwXMPc7" role="3n5Jyc">
            <property role="TrG5h" value="force" />
            <property role="EZQks" value="f" />
            <property role="3n5_6S" value="5QT3DyaI6Z7/flag" />
          </node>
        </node>
        <node concept="3xjQpG" id="1sS3jwXMPc8" role="3xjQpI">
          <node concept="3xuhCi" id="1sS3jwXSx53" role="3xjQpy">
            <property role="TrG5h" value="werwe" />
          </node>
          <node concept="3n54Vz" id="1sS3jwXQ8ix" role="3n54VA">
            <node concept="3xu4hp" id="1sS3jwXQ8iy" role="3n54V$">
              <property role="3xuOBA" value="git checkout feature/" />
            </node>
            <node concept="3xu4hs" id="1sS3jwXQ8i$" role="3n54V$">
              <ref role="3n1OP0" node="1sS3jwXMPc6" resolve="branch" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3xu2P2" id="1sS3jwXS38o" role="3xjQpw">
        <node concept="3n5Jyb" id="1sS3jwXS38p" role="3n2o5A">
          <node concept="3n5_66" id="1sS3jwXS38q" role="3n5Jyc" />
        </node>
        <node concept="3xjQpG" id="1sS3jwXS38r" role="3xjQpI">
          <node concept="ETACY" id="1sS3jwXSirS" role="3n54VA">
            <property role="ETNyk" value="wergerg" />
          </node>
        </node>
      </node>
      <node concept="3xu2P2" id="1qlCtBHsWbG" role="3xjQpw">
        <property role="TrG5h" value="erq" />
        <node concept="3n5Jyb" id="1qlCtBHsWbH" role="3n2o5A">
          <node concept="3n5_66" id="1qlCtBHsWbI" role="3n5Jyc" />
        </node>
        <node concept="3xjQpG" id="1qlCtBHsWbJ" role="3xjQpI">
          <node concept="ETNyI" id="1qlCtBHsWbK" role="3n54VA">
            <property role="ETNfH" value="/erq" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

