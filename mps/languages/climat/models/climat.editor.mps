<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:039fa9f7-a7c4-4037-8c68-2309195b6500(climat.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pjnk" ref="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="5sHVQEQltr8">
    <ref role="1XX52x" to="pjnk:5sHVQEQlflS" resolve="Constant" />
    <node concept="3EZMnI" id="5sHVQEQlCcr" role="2wV5jI">
      <node concept="3F0ifn" id="5sHVQEQlCcx" role="3EZMnx">
        <property role="3F0ifm" value="const" />
      </node>
      <node concept="3F0A7n" id="5sHVQEQlCcA" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQlCcD" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQlCcM" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
      <node concept="3F2HdR" id="5sHVQEQlCcR" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5sHVQEQlqW3" resolve="pieces" />
        <node concept="l2Vlx" id="5sHVQEQlCcT" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQlCcX" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
      <node concept="l2Vlx" id="5sHVQEQlCcu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHVQEQlEqe">
    <ref role="1XX52x" to="pjnk:5sHVQEQlqGN" resolve="StringTemplatePiece" />
    <node concept="3F0A7n" id="5sHVQEQlEqg" role="2wV5jI">
      <ref role="1NtTu8" to="pjnk:5sHVQEQlEqc" resolve="content" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHVQEQlImk">
    <ref role="1XX52x" to="pjnk:5sHVQEQlqGQ" resolve="InterpolationTemplatePiece" />
    <node concept="3EZMnI" id="5sHVQEQlImm" role="2wV5jI">
      <node concept="3F0ifn" id="5sHVQEQlImq" role="3EZMnx">
        <property role="3F0ifm" value="$" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQlImt" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="5QT3DyaJ$Ng" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5QT3DyaJ$fo" resolve="reference" />
        <node concept="1sVBvm" id="5QT3DyaJ$Ni" role="1sWHZn">
          <node concept="3F0A7n" id="5QT3DyaJ$Nm" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5sHVQEQlImz" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="5sHVQEQlImp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHVQEQnvTi">
    <ref role="1XX52x" to="pjnk:5sHVQEQnvTd" resolve="Annotation" />
    <node concept="3EZMnI" id="5sHVQEQnvTk" role="2wV5jI">
      <node concept="3F0ifn" id="5sHVQEQnvTo" role="3EZMnx">
        <property role="3F0ifm" value="@" />
      </node>
      <node concept="3F0A7n" id="5sHVQEQnvTw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQnvTz" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="5sHVQEQnvTC" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5sHVQEQnvTg" resolve="content" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQnvTF" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="5sHVQEQnvTn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHVQEQnVg_">
    <ref role="1XX52x" to="pjnk:5sHVQEQls8C" resolve="Toolchain" />
    <node concept="3EZMnI" id="5sHVQEQnVgA" role="2wV5jI">
      <node concept="3F1sOY" id="5sHVQEQoC$Q" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="pjnk:5sHVQEQohAS" resolve="annotationSection" />
      </node>
      <node concept="3EZMnI" id="5sHVQEQoa9T" role="3EZMnx">
        <node concept="PMmxH" id="5sHVQEQoC$A" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="VPM3Z" id="5sHVQEQoa9V" role="3F10Kt" />
        <node concept="3F0A7n" id="5sHVQEQoaa0" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F1sOY" id="5QT3DyaG9sn" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="pjnk:5QT3DyaG8ZY" resolve="signature" />
        </node>
        <node concept="3F0ifn" id="5sHVQEQoaa3" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="l2Vlx" id="5sHVQEQoa9Y" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5sHVQEQoC$C" role="3EZMnx">
        <node concept="VPM3Z" id="5sHVQEQoC$E" role="3F10Kt" />
        <node concept="3XFhqQ" id="5sHVQEQoC$J" role="3EZMnx" />
        <node concept="3F1sOY" id="5sHVQEQoC$M" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="pjnk:5sHVQEQoC$4" resolve="body" />
        </node>
        <node concept="l2Vlx" id="5sHVQEQoC$H" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQnVgY" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRkQZ" id="5sHVQEQnVgZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHVQEQohBW">
    <ref role="1XX52x" to="pjnk:5sHVQEQlflH" resolve="RootToolchain" />
    <node concept="3EZMnI" id="5sHVQEQohCc" role="2wV5jI">
      <node concept="3F1sOY" id="5sHVQEQohCg" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="pjnk:5sHVQEQohBN" resolve="annotationSection" />
      </node>
      <node concept="3EZMnI" id="5sHVQEQopHP" role="3EZMnx">
        <node concept="VPM3Z" id="5sHVQEQopHR" role="3F10Kt" />
        <node concept="3F0A7n" id="5sHVQEQopHV" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="5sHVQEQoC$e" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="2iRfu4" id="5sHVQEQopHU" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5sHVQEQoC$n" role="3EZMnx">
        <node concept="VPM3Z" id="5sHVQEQoC$p" role="3F10Kt" />
        <node concept="3XFhqQ" id="5sHVQEQoC$u" role="3EZMnx" />
        <node concept="3F1sOY" id="5sHVQEQoC$x" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="pjnk:5sHVQEQohBf" resolve="body" />
        </node>
        <node concept="l2Vlx" id="5sHVQEQoC$s" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5sHVQEQoC$l" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRkQZ" id="5sHVQEQohCf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHVQEQoC$T">
    <ref role="1XX52x" to="pjnk:5sHVQEQoC$6" resolve="ToolchainBody" />
    <node concept="3EZMnI" id="5sHVQEQoC_8" role="2wV5jI">
      <node concept="3F2HdR" id="5sHVQEQoC_c" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5sHVQEQoC$8" />
        <node concept="2iRkQZ" id="5sHVQEQoC_f" role="2czzBx" />
        <node concept="VPM3Z" id="5sHVQEQoC_g" role="3F10Kt" />
        <node concept="3F0ifn" id="1sS3jwXO_l2" role="2czzBI" />
      </node>
      <node concept="2iRkQZ" id="5sHVQEQoC_b" role="2iSdaV" />
      <node concept="3F1sOY" id="5QT3DyaFk22" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="pjnk:5QT3DyaFk1Y" resolve="action" />
      </node>
      <node concept="3F2HdR" id="5sHVQEQoC_j" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5sHVQEQoC$a" resolve="toolchains" />
        <node concept="2iRkQZ" id="5sHVQEQoC_l" role="2czzBx" />
        <node concept="3F0ifn" id="1sS3jwXO_kZ" role="2czzBI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5QT3DyaFk25">
    <ref role="1XX52x" to="pjnk:5QT3DyaFk1V" resolve="ShellAction" />
    <node concept="3EZMnI" id="5QT3DyaFk27" role="2wV5jI">
      <node concept="3F0ifn" id="5QT3DyaFk2g" role="3EZMnx">
        <property role="3F0ifm" value="action" />
      </node>
      <node concept="3F0ifn" id="5QT3DyaFk2r" role="3EZMnx">
        <property role="3F0ifm" value="&lt;%" />
      </node>
      <node concept="l2Vlx" id="1sS3jwXQOzv" role="2iSdaV" />
      <node concept="3F2HdR" id="5QT3DyaFk2D" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5QT3DyaFk1W" />
        <node concept="2iRfu4" id="1sS3jwXQkEq" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="5QT3DyaFImM" role="3EZMnx">
        <property role="3F0ifm" value="%&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5QT3DyaFPWy">
    <ref role="1XX52x" to="pjnk:5QT3DyaFPWu" resolve="Parameter" />
    <node concept="3EZMnI" id="5QT3DyaFPWA" role="2wV5jI">
      <node concept="3F0A7n" id="5QT3DyaFPWE" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0A7n" id="1sS3jwXM1$V" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:1sS3jwXLQw$" resolve="shortHand" />
      </node>
      <node concept="3F0ifn" id="5QT3DyaFPWH" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="5QT3DyaFPWK" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5QT3DyaFPWw" resolve="type" />
      </node>
      <node concept="3F0A7n" id="5QT3DyaHrJY" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="pjnk:5QT3DyaGiXL" resolve="presence" />
      </node>
      <node concept="1QoScp" id="5QT3DyaGGzW" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="3EZMnI" id="5QT3DyaGIbI" role="1QoS34">
          <node concept="3F0ifn" id="5QT3DyaGIcu" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="5QT3DyaGIcz" role="3EZMnx">
            <property role="3F0ifm" value="&quot;" />
          </node>
          <node concept="3F2HdR" id="5QT3DyaJ1YE" role="3EZMnx">
            <ref role="1NtTu8" to="pjnk:5QT3DyaJ1lG" resolve="defaultDataType" />
            <node concept="l2Vlx" id="5QT3DyaJ1YG" role="2czzBx" />
          </node>
          <node concept="3F0ifn" id="5QT3DyaGIcE" role="3EZMnx">
            <property role="3F0ifm" value="&quot;" />
          </node>
          <node concept="l2Vlx" id="5QT3DyaGIbL" role="2iSdaV" />
          <node concept="VPM3Z" id="5QT3DyaGIbM" role="3F10Kt" />
        </node>
        <node concept="pkWqt" id="5QT3DyaGGzZ" role="3e4ffs">
          <node concept="3clFbS" id="5QT3DyaGG$1" role="2VODD2">
            <node concept="3clFbF" id="5QT3DyaIjX_" role="3cqZAp">
              <node concept="3clFbC" id="5QT3DyaIli_" role="3clFbG">
                <node concept="2OqwBi" id="5QT3DyaIn_Z" role="3uHU7w">
                  <node concept="1XH99k" id="5QT3DyaIlN_" role="2Oq$k0">
                    <ref role="1XH99l" to="pjnk:5QT3DyaI6Zb" resolve="ParameterPresence" />
                  </node>
                  <node concept="2ViDtV" id="5QT3DyaIokt" role="2OqNvi">
                    <ref role="2ViDtZ" to="pjnk:5QT3DyaI6Zc" resolve="optional" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5QT3DyaIkmW" role="3uHU7B">
                  <node concept="pncrf" id="5QT3DyaIjX$" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5QT3DyaIkVM" role="2OqNvi">
                    <ref role="3TsBF5" to="pjnk:5QT3DyaGiXL" resolve="presence" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="35HoNQ" id="5QT3DyaGIcH" role="1QoVPY" />
      </node>
      <node concept="l2Vlx" id="5QT3DyaFPWD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5QT3DyaFZon">
    <ref role="1XX52x" to="pjnk:5QT3DyaFZoj" resolve="ToolchainSignature" />
    <node concept="3EZMnI" id="5QT3DyaFZou" role="2wV5jI">
      <node concept="3F0ifn" id="5QT3DyaFZoy" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="5QT3DyaFZo_" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="pjnk:5QT3DyaFZok" resolve="parameters" />
        <node concept="l2Vlx" id="5QT3DyaFZoB" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="5QT3DyaFZoD" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="5QT3DyaFZox" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5QT3DyaJdc2">
    <ref role="1XX52x" to="pjnk:5sHVQEQoCzZ" resolve="AnnotationSection" />
    <node concept="3EZMnI" id="5QT3DyaJdc4" role="2wV5jI">
      <node concept="3F2HdR" id="5QT3DyaJdc8" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:5sHVQEQoC$0" resolve="annotations" />
        <node concept="2iRkQZ" id="5QT3DyaJdca" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="5QT3DyaJdc7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1sS3jwXRNmo">
    <ref role="1XX52x" to="pjnk:1sS3jwXRAs6" resolve="JavaScriptAction" />
    <node concept="3EZMnI" id="1sS3jwXRNmq" role="2wV5jI">
      <node concept="3F0ifn" id="1sS3jwXRNmw" role="3EZMnx">
        <property role="3F0ifm" value="javascript action" />
      </node>
      <node concept="3F0ifn" id="1sS3jwXRNm_" role="3EZMnx">
        <property role="3F0ifm" value="&lt;%" />
      </node>
      <node concept="3F0A7n" id="1sS3jwXRNmI" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:1sS3jwXRNmG" resolve="javascript" />
      </node>
      <node concept="3F0ifn" id="1sS3jwXRNmD" role="3EZMnx">
        <property role="3F0ifm" value="%&gt;" />
      </node>
      <node concept="l2Vlx" id="1sS3jwXRNmt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1sS3jwXRNV9">
    <ref role="1XX52x" to="pjnk:1sS3jwXRNmm" resolve="CustomScriptAction" />
    <node concept="3EZMnI" id="1sS3jwXRNVb" role="2wV5jI">
      <node concept="3F0ifn" id="1sS3jwXRNVf" role="3EZMnx">
        <property role="3F0ifm" value="custom action" />
      </node>
      <node concept="3F0A7n" id="1sS3jwXRNVp" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:1sS3jwXRNVl" resolve="runtimePath" />
      </node>
      <node concept="3F0ifn" id="1sS3jwXS3MD" role="3EZMnx">
        <property role="3F0ifm" value="&lt;%" />
      </node>
      <node concept="3F0A7n" id="1sS3jwXRNVs" role="3EZMnx">
        <ref role="1NtTu8" to="pjnk:1sS3jwXRNVm" resolve="customScript" />
      </node>
      <node concept="3F0ifn" id="1sS3jwXS3MG" role="3EZMnx">
        <property role="3F0ifm" value="%&gt;" />
      </node>
      <node concept="l2Vlx" id="1sS3jwXRNVe" role="2iSdaV" />
    </node>
  </node>
</model>

