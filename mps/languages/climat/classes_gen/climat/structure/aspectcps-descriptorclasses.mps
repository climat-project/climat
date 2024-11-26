<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f1fbd57(checkpoints/climat.structure@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="pjnk" ref="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)" />
    <import index="ksn4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="bzg8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.impl(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="8353134822275456723" name="jetbrains.mps.baseLanguage.structure.HexLongLiteral" flags="ng" index="11gdke">
        <property id="8353134822275456796" name="hexValue" index="11gdj1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="ConceptPresentationAspectImpl" />
    <node concept="3uibUv" id="1" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~ConceptPresentationAspectBase" resolve="ConceptPresentationAspectBase" />
    </node>
    <node concept="312cEg" id="2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Action" />
      <node concept="3uibUv" id="l" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="m" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Annotation" />
      <node concept="3uibUv" id="n" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="o" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_AnnotationSection" />
      <node concept="3uibUv" id="p" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="q" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Constant" />
      <node concept="3uibUv" id="r" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="s" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_CustomScriptAction" />
      <node concept="3uibUv" id="t" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="u" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_InterpolationTemplatePiece" />
      <node concept="3uibUv" id="v" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="w" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_JavaScriptAction" />
      <node concept="3uibUv" id="x" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Parameter" />
      <node concept="3uibUv" id="z" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="$" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="a" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Referenceable" />
      <node concept="3uibUv" id="_" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="A" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="b" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_RootToolchain" />
      <node concept="3uibUv" id="B" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="C" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="c" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ShellAction" />
      <node concept="3uibUv" id="D" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="E" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="d" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_StringTemplatePiece" />
      <node concept="3uibUv" id="F" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="G" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="e" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_TemplatePiece" />
      <node concept="3uibUv" id="H" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="I" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="f" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Toolchain" />
      <node concept="3uibUv" id="J" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="K" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="g" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ToolchainBody" />
      <node concept="3uibUv" id="L" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="M" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="h" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ToolchainSignature" />
      <node concept="3uibUv" id="N" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="O" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="i" role="1B3o_S" />
    <node concept="2tJIrI" id="j" role="jymVt" />
    <node concept="3clFb_" id="k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="P" role="1B3o_S" />
      <node concept="37vLTG" id="Q" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="V" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="R" role="3clF47">
        <node concept="3cpWs8" id="W" role="3cqZAp">
          <node concept="3cpWsn" id="Z" role="3cpWs9">
            <property role="TrG5h" value="structureDescriptor" />
            <node concept="3uibUv" id="10" role="1tU5fm">
              <ref role="3uigEE" node="fm" resolve="StructureAspectDescriptor" />
            </node>
            <node concept="10QFUN" id="11" role="33vP2m">
              <node concept="3uibUv" id="12" role="10QFUM">
                <ref role="3uigEE" node="fm" resolve="StructureAspectDescriptor" />
              </node>
              <node concept="2OqwBi" id="13" role="10QFUP">
                <node concept="37vLTw" id="14" role="2Oq$k0">
                  <ref role="3cqZAo" to="ze1i:~ConceptPresentationAspectBase.myLanguageRuntime" resolve="myLanguageRuntime" />
                </node>
                <node concept="liA8E" id="15" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                  <node concept="3VsKOn" id="16" role="37wK5m">
                    <ref role="3VsUkX" to="ze1i:~StructureAspectDescriptor" resolve="StructureAspectDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="X" role="3cqZAp">
          <node concept="2OqwBi" id="17" role="3KbGdf">
            <node concept="37vLTw" id="1o" role="2Oq$k0">
              <ref role="3cqZAo" node="Z" resolve="structureDescriptor" />
            </node>
            <node concept="liA8E" id="1p" role="2OqNvi">
              <ref role="37wK5l" node="fS" resolve="internalIndex" />
              <node concept="37vLTw" id="1q" role="37wK5m">
                <ref role="3cqZAo" node="Q" resolve="c" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="18" role="3KbHQx">
            <node concept="3clFbS" id="1r" role="3Kbo56">
              <node concept="3clFbJ" id="1t" role="3cqZAp">
                <node concept="3clFbS" id="1v" role="3clFbx">
                  <node concept="3cpWs8" id="1x" role="3cqZAp">
                    <node concept="3cpWsn" id="1$" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="1_" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1A" role="33vP2m">
                        <node concept="1pGfFk" id="1B" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1y" role="3cqZAp">
                    <node concept="2OqwBi" id="1C" role="3clFbG">
                      <node concept="37vLTw" id="1D" role="2Oq$k0">
                        <ref role="3cqZAo" node="1$" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="1E" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:1673101796775454467" />
                        <node concept="Xl_RD" id="1F" role="37wK5m">
                          <property role="Xl_RC" value="Action" />
                          <uo k="s:originTrace" v="n:1673101796775454467" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1z" role="3cqZAp">
                    <node concept="37vLTI" id="1G" role="3clFbG">
                      <node concept="2OqwBi" id="1H" role="37vLTx">
                        <node concept="37vLTw" id="1J" role="2Oq$k0">
                          <ref role="3cqZAo" node="1$" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="1K" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1I" role="37vLTJ">
                        <ref role="3cqZAo" node="2" resolve="props_Action" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1w" role="3clFbw">
                  <node concept="10Nm6u" id="1L" role="3uHU7w" />
                  <node concept="37vLTw" id="1M" role="3uHU7B">
                    <ref role="3cqZAo" node="2" resolve="props_Action" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1u" role="3cqZAp">
                <node concept="37vLTw" id="1N" role="3cqZAk">
                  <ref role="3cqZAo" node="2" resolve="props_Action" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1s" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ca" resolve="Action" />
            </node>
          </node>
          <node concept="3KbdKl" id="19" role="3KbHQx">
            <node concept="3clFbS" id="1O" role="3Kbo56">
              <node concept="3clFbJ" id="1Q" role="3cqZAp">
                <node concept="3clFbS" id="1S" role="3clFbx">
                  <node concept="3cpWs8" id="1U" role="3cqZAp">
                    <node concept="3cpWsn" id="1X" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="1Y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1Z" role="33vP2m">
                        <node concept="1pGfFk" id="20" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1V" role="3cqZAp">
                    <node concept="2OqwBi" id="21" role="3clFbG">
                      <node concept="37vLTw" id="22" role="2Oq$k0">
                        <ref role="3cqZAo" node="1X" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="23" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:6281940296856895053" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1W" role="3cqZAp">
                    <node concept="37vLTI" id="24" role="3clFbG">
                      <node concept="2OqwBi" id="25" role="37vLTx">
                        <node concept="37vLTw" id="27" role="2Oq$k0">
                          <ref role="3cqZAo" node="1X" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="28" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="26" role="37vLTJ">
                        <ref role="3cqZAo" node="3" resolve="props_Annotation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1T" role="3clFbw">
                  <node concept="10Nm6u" id="29" role="3uHU7w" />
                  <node concept="37vLTw" id="2a" role="3uHU7B">
                    <ref role="3cqZAo" node="3" resolve="props_Annotation" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1R" role="3cqZAp">
                <node concept="37vLTw" id="2b" role="3cqZAk">
                  <ref role="3cqZAo" node="3" resolve="props_Annotation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1P" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cb" resolve="Annotation" />
            </node>
          </node>
          <node concept="3KbdKl" id="1a" role="3KbHQx">
            <node concept="3clFbS" id="2c" role="3Kbo56">
              <node concept="3clFbJ" id="2e" role="3cqZAp">
                <node concept="3clFbS" id="2g" role="3clFbx">
                  <node concept="3cpWs8" id="2i" role="3cqZAp">
                    <node concept="3cpWsn" id="2l" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2m" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2n" role="33vP2m">
                        <node concept="1pGfFk" id="2o" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2j" role="3cqZAp">
                    <node concept="2OqwBi" id="2p" role="3clFbG">
                      <node concept="37vLTw" id="2q" role="2Oq$k0">
                        <ref role="3cqZAo" node="2l" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2r" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6281940296857192703" />
                        <node concept="Xl_RD" id="2s" role="37wK5m">
                          <property role="Xl_RC" value="AnnotationSection" />
                          <uo k="s:originTrace" v="n:6281940296857192703" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2k" role="3cqZAp">
                    <node concept="37vLTI" id="2t" role="3clFbG">
                      <node concept="2OqwBi" id="2u" role="37vLTx">
                        <node concept="37vLTw" id="2w" role="2Oq$k0">
                          <ref role="3cqZAo" node="2l" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2x" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2v" role="37vLTJ">
                        <ref role="3cqZAo" node="4" resolve="props_AnnotationSection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2h" role="3clFbw">
                  <node concept="10Nm6u" id="2y" role="3uHU7w" />
                  <node concept="37vLTw" id="2z" role="3uHU7B">
                    <ref role="3cqZAo" node="4" resolve="props_AnnotationSection" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2f" role="3cqZAp">
                <node concept="37vLTw" id="2$" role="3cqZAk">
                  <ref role="3cqZAo" node="4" resolve="props_AnnotationSection" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2d" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cc" resolve="AnnotationSection" />
            </node>
          </node>
          <node concept="3KbdKl" id="1b" role="3KbHQx">
            <node concept="3clFbS" id="2_" role="3Kbo56">
              <node concept="3clFbJ" id="2B" role="3cqZAp">
                <node concept="3clFbS" id="2D" role="3clFbx">
                  <node concept="3cpWs8" id="2F" role="3cqZAp">
                    <node concept="3cpWsn" id="2I" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2J" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2K" role="33vP2m">
                        <node concept="1pGfFk" id="2L" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2G" role="3cqZAp">
                    <node concept="2OqwBi" id="2M" role="3clFbG">
                      <node concept="37vLTw" id="2N" role="2Oq$k0">
                        <ref role="3cqZAo" node="2I" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2O" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:6281940296856302968" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2H" role="3cqZAp">
                    <node concept="37vLTI" id="2P" role="3clFbG">
                      <node concept="2OqwBi" id="2Q" role="37vLTx">
                        <node concept="37vLTw" id="2S" role="2Oq$k0">
                          <ref role="3cqZAo" node="2I" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2T" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2R" role="37vLTJ">
                        <ref role="3cqZAo" node="5" resolve="props_Constant" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2E" role="3clFbw">
                  <node concept="10Nm6u" id="2U" role="3uHU7w" />
                  <node concept="37vLTw" id="2V" role="3uHU7B">
                    <ref role="3cqZAo" node="5" resolve="props_Constant" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2C" role="3cqZAp">
                <node concept="37vLTw" id="2W" role="3cqZAk">
                  <ref role="3cqZAo" node="5" resolve="props_Constant" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2A" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cd" resolve="Constant" />
            </node>
          </node>
          <node concept="3KbdKl" id="1c" role="3KbHQx">
            <node concept="3clFbS" id="2X" role="3Kbo56">
              <node concept="3clFbJ" id="2Z" role="3cqZAp">
                <node concept="3clFbS" id="31" role="3clFbx">
                  <node concept="3cpWs8" id="33" role="3cqZAp">
                    <node concept="3cpWsn" id="36" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="37" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="38" role="33vP2m">
                        <node concept="1pGfFk" id="39" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="34" role="3cqZAp">
                    <node concept="2OqwBi" id="3a" role="3clFbG">
                      <node concept="37vLTw" id="3b" role="2Oq$k0">
                        <ref role="3cqZAo" node="36" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3c" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:1673101796775507350" />
                        <node concept="Xl_RD" id="3d" role="37wK5m">
                          <property role="Xl_RC" value="CustomScriptAction" />
                          <uo k="s:originTrace" v="n:1673101796775507350" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="35" role="3cqZAp">
                    <node concept="37vLTI" id="3e" role="3clFbG">
                      <node concept="2OqwBi" id="3f" role="37vLTx">
                        <node concept="37vLTw" id="3h" role="2Oq$k0">
                          <ref role="3cqZAo" node="36" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3i" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3g" role="37vLTJ">
                        <ref role="3cqZAo" node="6" resolve="props_CustomScriptAction" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="32" role="3clFbw">
                  <node concept="10Nm6u" id="3j" role="3uHU7w" />
                  <node concept="37vLTw" id="3k" role="3uHU7B">
                    <ref role="3cqZAo" node="6" resolve="props_CustomScriptAction" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="30" role="3cqZAp">
                <node concept="37vLTw" id="3l" role="3cqZAk">
                  <ref role="3cqZAo" node="6" resolve="props_CustomScriptAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2Y" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ce" resolve="CustomScriptAction" />
            </node>
          </node>
          <node concept="3KbdKl" id="1d" role="3KbHQx">
            <node concept="3clFbS" id="3m" role="3Kbo56">
              <node concept="3clFbJ" id="3o" role="3cqZAp">
                <node concept="3clFbS" id="3q" role="3clFbx">
                  <node concept="3cpWs8" id="3s" role="3cqZAp">
                    <node concept="3cpWsn" id="3v" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3w" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3x" role="33vP2m">
                        <node concept="1pGfFk" id="3y" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3t" role="3cqZAp">
                    <node concept="2OqwBi" id="3z" role="3clFbG">
                      <node concept="37vLTw" id="3$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3v" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3_" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <uo k="s:originTrace" v="n:6281940296856349494" />
                        <node concept="11gdke" id="3A" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                        <node concept="11gdke" id="3B" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                        <node concept="11gdke" id="3C" role="37wK5m">
                          <property role="11gdj1" value="572def6ab655ab36L" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                        <node concept="11gdke" id="3D" role="37wK5m">
                          <property role="11gdj1" value="5db90e988abe43d8L" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                        <node concept="Xl_RD" id="3E" role="37wK5m">
                          <property role="Xl_RC" value="reference" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                        <node concept="Xl_RD" id="3F" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                        <node concept="Xl_RD" id="3G" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <uo k="s:originTrace" v="n:6281940296856349494" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3u" role="3cqZAp">
                    <node concept="37vLTI" id="3H" role="3clFbG">
                      <node concept="2OqwBi" id="3I" role="37vLTx">
                        <node concept="37vLTw" id="3K" role="2Oq$k0">
                          <ref role="3cqZAo" node="3v" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3L" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3J" role="37vLTJ">
                        <ref role="3cqZAo" node="7" resolve="props_InterpolationTemplatePiece" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3r" role="3clFbw">
                  <node concept="10Nm6u" id="3M" role="3uHU7w" />
                  <node concept="37vLTw" id="3N" role="3uHU7B">
                    <ref role="3cqZAo" node="7" resolve="props_InterpolationTemplatePiece" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3p" role="3cqZAp">
                <node concept="37vLTw" id="3O" role="3cqZAk">
                  <ref role="3cqZAo" node="7" resolve="props_InterpolationTemplatePiece" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3n" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cf" resolve="InterpolationTemplatePiece" />
            </node>
          </node>
          <node concept="3KbdKl" id="1e" role="3KbHQx">
            <node concept="3clFbS" id="3P" role="3Kbo56">
              <node concept="3clFbJ" id="3R" role="3cqZAp">
                <node concept="3clFbS" id="3T" role="3clFbx">
                  <node concept="3cpWs8" id="3V" role="3cqZAp">
                    <node concept="3cpWsn" id="3Y" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3Z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="40" role="33vP2m">
                        <node concept="1pGfFk" id="41" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3W" role="3cqZAp">
                    <node concept="2OqwBi" id="42" role="3clFbG">
                      <node concept="37vLTw" id="43" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Y" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="44" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:1673101796775454470" />
                        <node concept="Xl_RD" id="45" role="37wK5m">
                          <property role="Xl_RC" value="JavaScriptAction" />
                          <uo k="s:originTrace" v="n:1673101796775454470" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3X" role="3cqZAp">
                    <node concept="37vLTI" id="46" role="3clFbG">
                      <node concept="2OqwBi" id="47" role="37vLTx">
                        <node concept="37vLTw" id="49" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Y" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4a" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="48" role="37vLTJ">
                        <ref role="3cqZAo" node="8" resolve="props_JavaScriptAction" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3U" role="3clFbw">
                  <node concept="10Nm6u" id="4b" role="3uHU7w" />
                  <node concept="37vLTw" id="4c" role="3uHU7B">
                    <ref role="3cqZAo" node="8" resolve="props_JavaScriptAction" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3S" role="3cqZAp">
                <node concept="37vLTw" id="4d" role="3cqZAk">
                  <ref role="3cqZAo" node="8" resolve="props_JavaScriptAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3Q" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cg" resolve="JavaScriptAction" />
            </node>
          </node>
          <node concept="3KbdKl" id="1f" role="3KbHQx">
            <node concept="3clFbS" id="4e" role="3Kbo56">
              <node concept="3clFbJ" id="4g" role="3cqZAp">
                <node concept="3clFbS" id="4i" role="3clFbx">
                  <node concept="3cpWs8" id="4k" role="3cqZAp">
                    <node concept="3cpWsn" id="4n" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4o" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4p" role="33vP2m">
                        <node concept="1pGfFk" id="4q" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4l" role="3cqZAp">
                    <node concept="2OqwBi" id="4r" role="3clFbG">
                      <node concept="37vLTw" id="4s" role="2Oq$k0">
                        <ref role="3cqZAo" node="4n" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4t" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:6753445164543336222" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4m" role="3cqZAp">
                    <node concept="37vLTI" id="4u" role="3clFbG">
                      <node concept="2OqwBi" id="4v" role="37vLTx">
                        <node concept="37vLTw" id="4x" role="2Oq$k0">
                          <ref role="3cqZAo" node="4n" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4y" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4w" role="37vLTJ">
                        <ref role="3cqZAo" node="9" resolve="props_Parameter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4j" role="3clFbw">
                  <node concept="10Nm6u" id="4z" role="3uHU7w" />
                  <node concept="37vLTw" id="4$" role="3uHU7B">
                    <ref role="3cqZAo" node="9" resolve="props_Parameter" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4h" role="3cqZAp">
                <node concept="37vLTw" id="4_" role="3cqZAk">
                  <ref role="3cqZAo" node="9" resolve="props_Parameter" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4f" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ch" resolve="Parameter" />
            </node>
          </node>
          <node concept="3KbdKl" id="1g" role="3KbHQx">
            <node concept="3clFbS" id="4A" role="3Kbo56">
              <node concept="3clFbJ" id="4C" role="3cqZAp">
                <node concept="3clFbS" id="4E" role="3clFbx">
                  <node concept="3cpWs8" id="4G" role="3cqZAp">
                    <node concept="3cpWsn" id="4I" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4J" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4K" role="33vP2m">
                        <node concept="1pGfFk" id="4L" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4H" role="3cqZAp">
                    <node concept="37vLTI" id="4M" role="3clFbG">
                      <node concept="2OqwBi" id="4N" role="37vLTx">
                        <node concept="37vLTw" id="4P" role="2Oq$k0">
                          <ref role="3cqZAo" node="4I" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4Q" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4O" role="37vLTJ">
                        <ref role="3cqZAo" node="a" resolve="props_Referenceable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4F" role="3clFbw">
                  <node concept="10Nm6u" id="4R" role="3uHU7w" />
                  <node concept="37vLTw" id="4S" role="3uHU7B">
                    <ref role="3cqZAo" node="a" resolve="props_Referenceable" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4D" role="3cqZAp">
                <node concept="37vLTw" id="4T" role="3cqZAk">
                  <ref role="3cqZAo" node="a" resolve="props_Referenceable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4B" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ci" resolve="Referenceable" />
            </node>
          </node>
          <node concept="3KbdKl" id="1h" role="3KbHQx">
            <node concept="3clFbS" id="4U" role="3Kbo56">
              <node concept="3clFbJ" id="4W" role="3cqZAp">
                <node concept="3clFbS" id="4Y" role="3clFbx">
                  <node concept="3cpWs8" id="50" role="3cqZAp">
                    <node concept="3cpWsn" id="53" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="54" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="55" role="33vP2m">
                        <node concept="1pGfFk" id="56" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="51" role="3cqZAp">
                    <node concept="2OqwBi" id="57" role="3clFbG">
                      <node concept="37vLTw" id="58" role="2Oq$k0">
                        <ref role="3cqZAo" node="53" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="59" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:6281940296856302957" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="52" role="3cqZAp">
                    <node concept="37vLTI" id="5a" role="3clFbG">
                      <node concept="2OqwBi" id="5b" role="37vLTx">
                        <node concept="37vLTw" id="5d" role="2Oq$k0">
                          <ref role="3cqZAo" node="53" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5e" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5c" role="37vLTJ">
                        <ref role="3cqZAo" node="b" resolve="props_RootToolchain" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4Z" role="3clFbw">
                  <node concept="10Nm6u" id="5f" role="3uHU7w" />
                  <node concept="37vLTw" id="5g" role="3uHU7B">
                    <ref role="3cqZAo" node="b" resolve="props_RootToolchain" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4X" role="3cqZAp">
                <node concept="37vLTw" id="5h" role="3cqZAk">
                  <ref role="3cqZAo" node="b" resolve="props_RootToolchain" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4V" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cj" resolve="RootToolchain" />
            </node>
          </node>
          <node concept="3KbdKl" id="1i" role="3KbHQx">
            <node concept="3clFbS" id="5i" role="3Kbo56">
              <node concept="3clFbJ" id="5k" role="3cqZAp">
                <node concept="3clFbS" id="5m" role="3clFbx">
                  <node concept="3cpWs8" id="5o" role="3cqZAp">
                    <node concept="3cpWsn" id="5r" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5s" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5t" role="33vP2m">
                        <node concept="1pGfFk" id="5u" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5p" role="3cqZAp">
                    <node concept="2OqwBi" id="5v" role="3clFbG">
                      <node concept="37vLTw" id="5w" role="2Oq$k0">
                        <ref role="3cqZAo" node="5r" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5x" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6753445164543197307" />
                        <node concept="Xl_RD" id="5y" role="37wK5m">
                          <property role="Xl_RC" value="ShellAction" />
                          <uo k="s:originTrace" v="n:6753445164543197307" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5q" role="3cqZAp">
                    <node concept="37vLTI" id="5z" role="3clFbG">
                      <node concept="2OqwBi" id="5$" role="37vLTx">
                        <node concept="37vLTw" id="5A" role="2Oq$k0">
                          <ref role="3cqZAo" node="5r" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5B" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5_" role="37vLTJ">
                        <ref role="3cqZAo" node="c" resolve="props_ShellAction" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5n" role="3clFbw">
                  <node concept="10Nm6u" id="5C" role="3uHU7w" />
                  <node concept="37vLTw" id="5D" role="3uHU7B">
                    <ref role="3cqZAo" node="c" resolve="props_ShellAction" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5l" role="3cqZAp">
                <node concept="37vLTw" id="5E" role="3cqZAk">
                  <ref role="3cqZAo" node="c" resolve="props_ShellAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5j" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ck" resolve="ShellAction" />
            </node>
          </node>
          <node concept="3KbdKl" id="1j" role="3KbHQx">
            <node concept="3clFbS" id="5F" role="3Kbo56">
              <node concept="3clFbJ" id="5H" role="3cqZAp">
                <node concept="3clFbS" id="5J" role="3clFbx">
                  <node concept="3cpWs8" id="5L" role="3cqZAp">
                    <node concept="3cpWsn" id="5O" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5P" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5Q" role="33vP2m">
                        <node concept="1pGfFk" id="5R" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5M" role="3cqZAp">
                    <node concept="2OqwBi" id="5S" role="3clFbG">
                      <node concept="37vLTw" id="5T" role="2Oq$k0">
                        <ref role="3cqZAo" node="5O" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5U" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6281940296856349491" />
                        <node concept="Xl_RD" id="5V" role="37wK5m">
                          <property role="Xl_RC" value="StringTemplatePiece" />
                          <uo k="s:originTrace" v="n:6281940296856349491" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5N" role="3cqZAp">
                    <node concept="37vLTI" id="5W" role="3clFbG">
                      <node concept="2OqwBi" id="5X" role="37vLTx">
                        <node concept="37vLTw" id="5Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="5O" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="60" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5Y" role="37vLTJ">
                        <ref role="3cqZAo" node="d" resolve="props_StringTemplatePiece" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5K" role="3clFbw">
                  <node concept="10Nm6u" id="61" role="3uHU7w" />
                  <node concept="37vLTw" id="62" role="3uHU7B">
                    <ref role="3cqZAo" node="d" resolve="props_StringTemplatePiece" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5I" role="3cqZAp">
                <node concept="37vLTw" id="63" role="3cqZAk">
                  <ref role="3cqZAo" node="d" resolve="props_StringTemplatePiece" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5G" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cl" resolve="StringTemplatePiece" />
            </node>
          </node>
          <node concept="3KbdKl" id="1k" role="3KbHQx">
            <node concept="3clFbS" id="64" role="3Kbo56">
              <node concept="3clFbJ" id="66" role="3cqZAp">
                <node concept="3clFbS" id="68" role="3clFbx">
                  <node concept="3cpWs8" id="6a" role="3cqZAp">
                    <node concept="3cpWsn" id="6c" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6d" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6e" role="33vP2m">
                        <node concept="1pGfFk" id="6f" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6b" role="3cqZAp">
                    <node concept="37vLTI" id="6g" role="3clFbG">
                      <node concept="2OqwBi" id="6h" role="37vLTx">
                        <node concept="37vLTw" id="6j" role="2Oq$k0">
                          <ref role="3cqZAo" node="6c" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6k" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6i" role="37vLTJ">
                        <ref role="3cqZAo" node="e" resolve="props_TemplatePiece" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="69" role="3clFbw">
                  <node concept="10Nm6u" id="6l" role="3uHU7w" />
                  <node concept="37vLTw" id="6m" role="3uHU7B">
                    <ref role="3cqZAo" node="e" resolve="props_TemplatePiece" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="67" role="3cqZAp">
                <node concept="37vLTw" id="6n" role="3cqZAk">
                  <ref role="3cqZAo" node="e" resolve="props_TemplatePiece" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="65" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cm" resolve="TemplatePiece" />
            </node>
          </node>
          <node concept="3KbdKl" id="1l" role="3KbHQx">
            <node concept="3clFbS" id="6o" role="3Kbo56">
              <node concept="3clFbJ" id="6q" role="3cqZAp">
                <node concept="3clFbS" id="6s" role="3clFbx">
                  <node concept="3cpWs8" id="6u" role="3cqZAp">
                    <node concept="3cpWsn" id="6x" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6z" role="33vP2m">
                        <node concept="1pGfFk" id="6$" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6v" role="3cqZAp">
                    <node concept="2OqwBi" id="6_" role="3clFbG">
                      <node concept="37vLTw" id="6A" role="2Oq$k0">
                        <ref role="3cqZAo" node="6x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6B" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <uo k="s:originTrace" v="n:6281940296856355368" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6w" role="3cqZAp">
                    <node concept="37vLTI" id="6C" role="3clFbG">
                      <node concept="2OqwBi" id="6D" role="37vLTx">
                        <node concept="37vLTw" id="6F" role="2Oq$k0">
                          <ref role="3cqZAo" node="6x" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6G" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6E" role="37vLTJ">
                        <ref role="3cqZAo" node="f" resolve="props_Toolchain" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6t" role="3clFbw">
                  <node concept="10Nm6u" id="6H" role="3uHU7w" />
                  <node concept="37vLTw" id="6I" role="3uHU7B">
                    <ref role="3cqZAo" node="f" resolve="props_Toolchain" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6r" role="3cqZAp">
                <node concept="37vLTw" id="6J" role="3cqZAk">
                  <ref role="3cqZAo" node="f" resolve="props_Toolchain" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6p" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cn" resolve="Toolchain" />
            </node>
          </node>
          <node concept="3KbdKl" id="1m" role="3KbHQx">
            <node concept="3clFbS" id="6K" role="3Kbo56">
              <node concept="3clFbJ" id="6M" role="3cqZAp">
                <node concept="3clFbS" id="6O" role="3clFbx">
                  <node concept="3cpWs8" id="6Q" role="3cqZAp">
                    <node concept="3cpWsn" id="6T" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6U" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6V" role="33vP2m">
                        <node concept="1pGfFk" id="6W" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6R" role="3cqZAp">
                    <node concept="2OqwBi" id="6X" role="3clFbG">
                      <node concept="37vLTw" id="6Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="6T" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6Z" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6281940296857192710" />
                        <node concept="Xl_RD" id="70" role="37wK5m">
                          <property role="Xl_RC" value="ToolchainBody" />
                          <uo k="s:originTrace" v="n:6281940296857192710" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6S" role="3cqZAp">
                    <node concept="37vLTI" id="71" role="3clFbG">
                      <node concept="2OqwBi" id="72" role="37vLTx">
                        <node concept="37vLTw" id="74" role="2Oq$k0">
                          <ref role="3cqZAo" node="6T" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="75" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="73" role="37vLTJ">
                        <ref role="3cqZAo" node="g" resolve="props_ToolchainBody" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6P" role="3clFbw">
                  <node concept="10Nm6u" id="76" role="3uHU7w" />
                  <node concept="37vLTw" id="77" role="3uHU7B">
                    <ref role="3cqZAo" node="g" resolve="props_ToolchainBody" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6N" role="3cqZAp">
                <node concept="37vLTw" id="78" role="3cqZAk">
                  <ref role="3cqZAo" node="g" resolve="props_ToolchainBody" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6L" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="co" resolve="ToolchainBody" />
            </node>
          </node>
          <node concept="3KbdKl" id="1n" role="3KbHQx">
            <node concept="3clFbS" id="79" role="3Kbo56">
              <node concept="3clFbJ" id="7b" role="3cqZAp">
                <node concept="3clFbS" id="7d" role="3clFbx">
                  <node concept="3cpWs8" id="7f" role="3cqZAp">
                    <node concept="3cpWsn" id="7i" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7j" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7k" role="33vP2m">
                        <node concept="1pGfFk" id="7l" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7g" role="3cqZAp">
                    <node concept="2OqwBi" id="7m" role="3clFbG">
                      <node concept="37vLTw" id="7n" role="2Oq$k0">
                        <ref role="3cqZAo" node="7i" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7o" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <uo k="s:originTrace" v="n:6753445164543374867" />
                        <node concept="Xl_RD" id="7p" role="37wK5m">
                          <property role="Xl_RC" value="ToolchainSignature" />
                          <uo k="s:originTrace" v="n:6753445164543374867" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7h" role="3cqZAp">
                    <node concept="37vLTI" id="7q" role="3clFbG">
                      <node concept="2OqwBi" id="7r" role="37vLTx">
                        <node concept="37vLTw" id="7t" role="2Oq$k0">
                          <ref role="3cqZAo" node="7i" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7u" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7s" role="37vLTJ">
                        <ref role="3cqZAo" node="h" resolve="props_ToolchainSignature" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7e" role="3clFbw">
                  <node concept="10Nm6u" id="7v" role="3uHU7w" />
                  <node concept="37vLTw" id="7w" role="3uHU7B">
                    <ref role="3cqZAo" node="h" resolve="props_ToolchainSignature" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7c" role="3cqZAp">
                <node concept="37vLTw" id="7x" role="3cqZAk">
                  <ref role="3cqZAo" node="h" resolve="props_ToolchainSignature" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7a" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cp" resolve="ToolchainSignature" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Y" role="3cqZAp">
          <node concept="10Nm6u" id="7y" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="S" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="2AHcQZ" id="T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="U" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7z">
    <property role="TrG5h" value="EnumerationDescriptor_ParameterPresence" />
    <uo k="s:originTrace" v="n:6753445164543930315" />
    <node concept="2tJIrI" id="7$" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="3clFbW" id="7_" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3cqZAl" id="7Q" role="3clF45">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3Tm1VV" id="7R" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3clFbS" id="7S" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="XkiVB" id="7T" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="11gdke" id="7U" role="37wK5m">
            <property role="11gdj1" value="73bee2cc69694dd7L" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="11gdke" id="7V" role="37wK5m">
            <property role="11gdj1" value="abeb6acc8e6703a8L" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="11gdke" id="7W" role="37wK5m">
            <property role="11gdj1" value="5db90e988ab86fcbL" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="Xl_RD" id="7X" role="37wK5m">
            <property role="Xl_RC" value="ParameterPresence" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="Xl_RD" id="7Y" role="37wK5m">
            <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543930315" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7A" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="312cEg" id="7B" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_mandatory_0" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm6S6" id="7Z" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="80" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2ShNRf" id="81" role="33vP2m">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="1pGfFk" id="82" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="Xl_RD" id="83" role="37wK5m">
            <property role="Xl_RC" value="mandatory" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="Xl_RD" id="84" role="37wK5m">
            <property role="Xl_RC" value="!" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="11gdke" id="85" role="37wK5m">
            <property role="11gdj1" value="5db90e988ab86fcdL" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="Xl_RD" id="86" role="37wK5m">
            <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543930317" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7C" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_optional_0" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm6S6" id="87" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="88" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2ShNRf" id="89" role="33vP2m">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="1pGfFk" id="8a" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="Xl_RD" id="8b" role="37wK5m">
            <property role="Xl_RC" value="optional" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="Xl_RD" id="8c" role="37wK5m">
            <property role="Xl_RC" value="?" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="11gdke" id="8d" role="37wK5m">
            <property role="11gdj1" value="5db90e988ab86fccL" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="Xl_RD" id="8e" role="37wK5m">
            <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543930316" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7D" role="1B3o_S">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="3uibUv" id="7E" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="2tJIrI" id="7F" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="312cEg" id="7G" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm6S6" id="8f" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="8g" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2YIFZM" id="8h" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="11gdke" id="8i" role="37wK5m">
          <property role="11gdj1" value="73bee2cc69694dd7L" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
        <node concept="11gdke" id="8j" role="37wK5m">
          <property role="11gdj1" value="abeb6acc8e6703a8L" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
        <node concept="11gdke" id="8k" role="37wK5m">
          <property role="11gdj1" value="5db90e988ab86fcbL" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
        <node concept="11gdke" id="8l" role="37wK5m">
          <property role="11gdj1" value="5db90e988ab86fcdL" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
        <node concept="11gdke" id="8m" role="37wK5m">
          <property role="11gdj1" value="5db90e988ab86fccL" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7H" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm6S6" id="8n" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="8o" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3uibUv" id="8q" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
      </node>
      <node concept="2ShNRf" id="8p" role="33vP2m">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="1pGfFk" id="8r" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="37vLTw" id="8s" role="37wK5m">
            <ref role="3cqZAo" node="7G" resolve="myIndex" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="37vLTw" id="8t" role="37wK5m">
            <ref role="3cqZAo" node="7B" resolve="myMember_mandatory_0" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="37vLTw" id="8u" role="37wK5m">
            <ref role="3cqZAo" node="7C" resolve="myMember_optional_0" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7I" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="3clFb_" id="7J" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm1VV" id="8v" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2AHcQZ" id="8w" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="8x" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3clFbS" id="8y" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3clFbF" id="8$" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="37vLTw" id="8_" role="3clFbG">
            <ref role="3cqZAo" node="7B" resolve="myMember_mandatory_0" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
    </node>
    <node concept="2tJIrI" id="7K" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="3clFb_" id="7L" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm1VV" id="8A" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2AHcQZ" id="8B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="8C" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3uibUv" id="8F" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
      </node>
      <node concept="3clFbS" id="8D" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3cpWs6" id="8G" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="37vLTw" id="8H" role="3cqZAk">
            <ref role="3cqZAo" node="7H" resolve="myMembers" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
    </node>
    <node concept="2tJIrI" id="7M" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="3clFb_" id="7N" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm1VV" id="8I" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2AHcQZ" id="8J" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="8K" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="37vLTG" id="8L" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3uibUv" id="8O" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
        <node concept="2AHcQZ" id="8P" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
      </node>
      <node concept="3clFbS" id="8M" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3clFbJ" id="8Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="3clFbS" id="8T" role="3clFbx">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="3cpWs6" id="8V" role="3cqZAp">
              <uo k="s:originTrace" v="n:6753445164543930315" />
              <node concept="10Nm6u" id="8W" role="3cqZAk">
                <uo k="s:originTrace" v="n:6753445164543930315" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="8U" role="3clFbw">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="10Nm6u" id="8X" role="3uHU7w">
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
            <node concept="37vLTw" id="8Y" role="3uHU7B">
              <ref role="3cqZAo" node="8L" resolve="memberName" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="8R" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="37vLTw" id="8Z" role="3KbGdf">
            <ref role="3cqZAo" node="8L" resolve="memberName" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
          <node concept="3KbdKl" id="90" role="3KbHQx">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="Xl_RD" id="92" role="3Kbmr1">
              <property role="Xl_RC" value="mandatory" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
            <node concept="3clFbS" id="93" role="3Kbo56">
              <uo k="s:originTrace" v="n:6753445164543930315" />
              <node concept="3cpWs6" id="94" role="3cqZAp">
                <uo k="s:originTrace" v="n:6753445164543930315" />
                <node concept="37vLTw" id="95" role="3cqZAk">
                  <ref role="3cqZAo" node="7B" resolve="myMember_mandatory_0" />
                  <uo k="s:originTrace" v="n:6753445164543930315" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="91" role="3KbHQx">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="Xl_RD" id="96" role="3Kbmr1">
              <property role="Xl_RC" value="optional" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
            <node concept="3clFbS" id="97" role="3Kbo56">
              <uo k="s:originTrace" v="n:6753445164543930315" />
              <node concept="3cpWs6" id="98" role="3cqZAp">
                <uo k="s:originTrace" v="n:6753445164543930315" />
                <node concept="37vLTw" id="99" role="3cqZAk">
                  <ref role="3cqZAo" node="7C" resolve="myMember_optional_0" />
                  <uo k="s:originTrace" v="n:6753445164543930315" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="8S" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="10Nm6u" id="9a" role="3cqZAk">
            <uo k="s:originTrace" v="n:6753445164543930315" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
    </node>
    <node concept="2tJIrI" id="7O" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930315" />
    </node>
    <node concept="3clFb_" id="7P" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:6753445164543930315" />
      <node concept="3Tm1VV" id="9b" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="2AHcQZ" id="9c" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="3uibUv" id="9d" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
      <node concept="37vLTG" id="9e" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3cpWsb" id="9h" role="1tU5fm">
          <uo k="s:originTrace" v="n:6753445164543930315" />
        </node>
      </node>
      <node concept="3clFbS" id="9f" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930315" />
        <node concept="3cpWs8" id="9i" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="3cpWsn" id="9l" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="10Oyi0" id="9m" role="1tU5fm">
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
            <node concept="2OqwBi" id="9n" role="33vP2m">
              <uo k="s:originTrace" v="n:6753445164543930315" />
              <node concept="37vLTw" id="9o" role="2Oq$k0">
                <ref role="3cqZAo" node="7G" resolve="myIndex" />
                <uo k="s:originTrace" v="n:6753445164543930315" />
              </node>
              <node concept="liA8E" id="9p" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:6753445164543930315" />
                <node concept="37vLTw" id="9q" role="37wK5m">
                  <ref role="3cqZAo" node="9e" resolve="idValue" />
                  <uo k="s:originTrace" v="n:6753445164543930315" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9j" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="3clFbS" id="9r" role="3clFbx">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="3cpWs6" id="9t" role="3cqZAp">
              <uo k="s:originTrace" v="n:6753445164543930315" />
              <node concept="10Nm6u" id="9u" role="3cqZAk">
                <uo k="s:originTrace" v="n:6753445164543930315" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="9s" role="3clFbw">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="3cmrfG" id="9v" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
            <node concept="37vLTw" id="9w" role="3uHU7B">
              <ref role="3cqZAo" node="9l" resolve="index" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9k" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930315" />
          <node concept="2OqwBi" id="9x" role="3clFbG">
            <uo k="s:originTrace" v="n:6753445164543930315" />
            <node concept="37vLTw" id="9y" role="2Oq$k0">
              <ref role="3cqZAo" node="7H" resolve="myMembers" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
            </node>
            <node concept="liA8E" id="9z" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:6753445164543930315" />
              <node concept="37vLTw" id="9$" role="37wK5m">
                <ref role="3cqZAo" node="9l" resolve="index" />
                <uo k="s:originTrace" v="n:6753445164543930315" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="9g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930315" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9_">
    <property role="TrG5h" value="EnumerationDescriptor_ParameterType" />
    <uo k="s:originTrace" v="n:6753445164543930309" />
    <node concept="2tJIrI" id="9A" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="3clFbW" id="9B" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3cqZAl" id="9S" role="3clF45">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3Tm1VV" id="9T" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3clFbS" id="9U" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="XkiVB" id="9V" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="11gdke" id="9W" role="37wK5m">
            <property role="11gdj1" value="73bee2cc69694dd7L" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="11gdke" id="9X" role="37wK5m">
            <property role="11gdj1" value="abeb6acc8e6703a8L" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="11gdke" id="9Y" role="37wK5m">
            <property role="11gdj1" value="5db90e988ab86fc5L" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="Xl_RD" id="9Z" role="37wK5m">
            <property role="Xl_RC" value="ParameterType" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="Xl_RD" id="a0" role="37wK5m">
            <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543930309" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9C" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="312cEg" id="9D" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_arg_0" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm6S6" id="a1" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="a2" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2ShNRf" id="a3" role="33vP2m">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="1pGfFk" id="a4" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="Xl_RD" id="a5" role="37wK5m">
            <property role="Xl_RC" value="arg" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="Xl_RD" id="a6" role="37wK5m">
            <property role="Xl_RC" value="arg" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="11gdke" id="a7" role="37wK5m">
            <property role="11gdj1" value="5db90e988ab86fc6L" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="Xl_RD" id="a8" role="37wK5m">
            <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543930310" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9E" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myMember_flag_0" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm6S6" id="a9" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="aa" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2ShNRf" id="ab" role="33vP2m">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="1pGfFk" id="ac" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,long,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="Xl_RD" id="ad" role="37wK5m">
            <property role="Xl_RC" value="flag" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="Xl_RD" id="ae" role="37wK5m">
            <property role="Xl_RC" value="flag" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="11gdke" id="af" role="37wK5m">
            <property role="11gdj1" value="5db90e988ab86fc7L" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="Xl_RD" id="ag" role="37wK5m">
            <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543930311" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="9F" role="1B3o_S">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="3uibUv" id="9G" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="2tJIrI" id="9H" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="312cEg" id="9I" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm6S6" id="ah" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="ai" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2YIFZM" id="aj" role="33vP2m">
        <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.build(long,long,long,long...)" resolve="build" />
        <ref role="1Pybhc" to="ksn4:~EnumerationLiteralsIndex" resolve="EnumerationLiteralsIndex" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="11gdke" id="ak" role="37wK5m">
          <property role="11gdj1" value="73bee2cc69694dd7L" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
        <node concept="11gdke" id="al" role="37wK5m">
          <property role="11gdj1" value="abeb6acc8e6703a8L" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
        <node concept="11gdke" id="am" role="37wK5m">
          <property role="11gdj1" value="5db90e988ab86fc5L" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
        <node concept="11gdke" id="an" role="37wK5m">
          <property role="11gdj1" value="5db90e988ab86fc6L" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
        <node concept="11gdke" id="ao" role="37wK5m">
          <property role="11gdj1" value="5db90e988ab86fc7L" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9J" role="jymVt">
      <property role="TrG5h" value="myMembers" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm6S6" id="ap" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="aq" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3uibUv" id="as" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
      </node>
      <node concept="2ShNRf" id="ar" role="33vP2m">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="1pGfFk" id="at" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase$MembersList.&lt;init&gt;(jetbrains.mps.smodel.runtime.EnumerationDescriptorBase,jetbrains.mps.lang.smodel.EnumerationLiteralsIndex,jetbrains.mps.smodel.runtime.EnumerationDescriptor$MemberDescriptor...)" resolve="EnumerationDescriptorBase.MembersList" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="37vLTw" id="au" role="37wK5m">
            <ref role="3cqZAo" node="9I" resolve="myIndex" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="37vLTw" id="av" role="37wK5m">
            <ref role="3cqZAo" node="9D" resolve="myMember_arg_0" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="37vLTw" id="aw" role="37wK5m">
            <ref role="3cqZAo" node="9E" resolve="myMember_flag_0" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9K" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="3clFb_" id="9L" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm1VV" id="ax" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2AHcQZ" id="ay" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="az" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3clFbS" id="a$" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3clFbF" id="aA" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="10Nm6u" id="aB" role="3clFbG">
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="a_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
    </node>
    <node concept="2tJIrI" id="9M" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="3clFb_" id="9N" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm1VV" id="aC" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2AHcQZ" id="aD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="aE" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3uibUv" id="aH" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
      </node>
      <node concept="3clFbS" id="aF" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3cpWs6" id="aI" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="37vLTw" id="aJ" role="3cqZAk">
            <ref role="3cqZAo" node="9J" resolve="myMembers" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
    </node>
    <node concept="2tJIrI" id="9O" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="3clFb_" id="9P" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm1VV" id="aK" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2AHcQZ" id="aL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="aM" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="37vLTG" id="aN" role="3clF46">
        <property role="TrG5h" value="memberName" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3uibUv" id="aQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
        <node concept="2AHcQZ" id="aR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
      </node>
      <node concept="3clFbS" id="aO" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3clFbJ" id="aS" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="3clFbS" id="aV" role="3clFbx">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="3cpWs6" id="aX" role="3cqZAp">
              <uo k="s:originTrace" v="n:6753445164543930309" />
              <node concept="10Nm6u" id="aY" role="3cqZAk">
                <uo k="s:originTrace" v="n:6753445164543930309" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="aW" role="3clFbw">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="10Nm6u" id="aZ" role="3uHU7w">
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
            <node concept="37vLTw" id="b0" role="3uHU7B">
              <ref role="3cqZAo" node="aN" resolve="memberName" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="aT" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="37vLTw" id="b1" role="3KbGdf">
            <ref role="3cqZAo" node="aN" resolve="memberName" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
          <node concept="3KbdKl" id="b2" role="3KbHQx">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="Xl_RD" id="b4" role="3Kbmr1">
              <property role="Xl_RC" value="arg" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
            <node concept="3clFbS" id="b5" role="3Kbo56">
              <uo k="s:originTrace" v="n:6753445164543930309" />
              <node concept="3cpWs6" id="b6" role="3cqZAp">
                <uo k="s:originTrace" v="n:6753445164543930309" />
                <node concept="37vLTw" id="b7" role="3cqZAk">
                  <ref role="3cqZAo" node="9D" resolve="myMember_arg_0" />
                  <uo k="s:originTrace" v="n:6753445164543930309" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="b3" role="3KbHQx">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="Xl_RD" id="b8" role="3Kbmr1">
              <property role="Xl_RC" value="flag" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
            <node concept="3clFbS" id="b9" role="3Kbo56">
              <uo k="s:originTrace" v="n:6753445164543930309" />
              <node concept="3cpWs6" id="ba" role="3cqZAp">
                <uo k="s:originTrace" v="n:6753445164543930309" />
                <node concept="37vLTw" id="bb" role="3cqZAk">
                  <ref role="3cqZAo" node="9E" resolve="myMember_flag_0" />
                  <uo k="s:originTrace" v="n:6753445164543930309" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="aU" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="10Nm6u" id="bc" role="3cqZAk">
            <uo k="s:originTrace" v="n:6753445164543930309" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="aP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
    </node>
    <node concept="2tJIrI" id="9Q" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164543930309" />
    </node>
    <node concept="3clFb_" id="9R" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <uo k="s:originTrace" v="n:6753445164543930309" />
      <node concept="3Tm1VV" id="bd" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="2AHcQZ" id="be" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="3uibUv" id="bf" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
      <node concept="37vLTG" id="bg" role="3clF46">
        <property role="TrG5h" value="idValue" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3cpWsb" id="bj" role="1tU5fm">
          <uo k="s:originTrace" v="n:6753445164543930309" />
        </node>
      </node>
      <node concept="3clFbS" id="bh" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164543930309" />
        <node concept="3cpWs8" id="bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="3cpWsn" id="bn" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="10Oyi0" id="bo" role="1tU5fm">
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
            <node concept="2OqwBi" id="bp" role="33vP2m">
              <uo k="s:originTrace" v="n:6753445164543930309" />
              <node concept="37vLTw" id="bq" role="2Oq$k0">
                <ref role="3cqZAo" node="9I" resolve="myIndex" />
                <uo k="s:originTrace" v="n:6753445164543930309" />
              </node>
              <node concept="liA8E" id="br" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~EnumerationLiteralsIndex.index(long)" resolve="index" />
                <uo k="s:originTrace" v="n:6753445164543930309" />
                <node concept="37vLTw" id="bs" role="37wK5m">
                  <ref role="3cqZAo" node="bg" resolve="idValue" />
                  <uo k="s:originTrace" v="n:6753445164543930309" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="bl" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="3clFbS" id="bt" role="3clFbx">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="3cpWs6" id="bv" role="3cqZAp">
              <uo k="s:originTrace" v="n:6753445164543930309" />
              <node concept="10Nm6u" id="bw" role="3cqZAk">
                <uo k="s:originTrace" v="n:6753445164543930309" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="bu" role="3clFbw">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="3cmrfG" id="bx" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
            <node concept="37vLTw" id="by" role="3uHU7B">
              <ref role="3cqZAo" node="bn" resolve="index" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bm" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164543930309" />
          <node concept="2OqwBi" id="bz" role="3clFbG">
            <uo k="s:originTrace" v="n:6753445164543930309" />
            <node concept="37vLTw" id="b$" role="2Oq$k0">
              <ref role="3cqZAo" node="9J" resolve="myMembers" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
            </node>
            <node concept="liA8E" id="b_" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
              <uo k="s:originTrace" v="n:6753445164543930309" />
              <node concept="37vLTw" id="bA" role="37wK5m">
                <ref role="3cqZAo" node="bn" resolve="index" />
                <uo k="s:originTrace" v="n:6753445164543930309" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164543930309" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="bB">
    <node concept="39e2AJ" id="bC" role="39e2AI">
      <property role="39e3Y2" value="EnumerationDescriptorCons" />
      <node concept="39e2AG" id="bG" role="39e3Y0">
        <ref role="39e2AK" to="pjnk:5QT3DyaI6Zb" resolve="ParameterPresence" />
        <node concept="385nmt" id="bI" role="385vvn">
          <property role="385vuF" value="ParameterPresence" />
          <node concept="3u3nmq" id="bK" role="385v07">
            <property role="3u3nmv" value="6753445164543930315" />
          </node>
        </node>
        <node concept="39e2AT" id="bJ" role="39e2AY">
          <ref role="39e2AS" node="7_" resolve="EnumerationDescriptor_ParameterPresence" />
        </node>
      </node>
      <node concept="39e2AG" id="bH" role="39e3Y0">
        <ref role="39e2AK" to="pjnk:5QT3DyaI6Z5" resolve="ParameterType" />
        <node concept="385nmt" id="bL" role="385vvn">
          <property role="385vuF" value="ParameterType" />
          <node concept="3u3nmq" id="bN" role="385v07">
            <property role="3u3nmv" value="6753445164543930309" />
          </node>
        </node>
        <node concept="39e2AT" id="bM" role="39e2AY">
          <ref role="39e2AS" node="9B" resolve="EnumerationDescriptor_ParameterType" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bD" role="39e2AI">
      <property role="39e3Y2" value="EnumerationMember" />
      <node concept="39e2AG" id="bO" role="39e3Y0">
        <ref role="39e2AK" to="pjnk:5QT3DyaI6Z6" resolve="arg" />
        <node concept="385nmt" id="bS" role="385vvn">
          <property role="385vuF" value="arg" />
          <node concept="3u3nmq" id="bU" role="385v07">
            <property role="3u3nmv" value="6753445164543930310" />
          </node>
        </node>
        <node concept="39e2AT" id="bT" role="39e2AY">
          <ref role="39e2AS" node="9D" resolve="myMember_arg_0" />
        </node>
      </node>
      <node concept="39e2AG" id="bP" role="39e3Y0">
        <ref role="39e2AK" to="pjnk:5QT3DyaI6Z7" resolve="flag" />
        <node concept="385nmt" id="bV" role="385vvn">
          <property role="385vuF" value="flag" />
          <node concept="3u3nmq" id="bX" role="385v07">
            <property role="3u3nmv" value="6753445164543930311" />
          </node>
        </node>
        <node concept="39e2AT" id="bW" role="39e2AY">
          <ref role="39e2AS" node="9E" resolve="myMember_flag_0" />
        </node>
      </node>
      <node concept="39e2AG" id="bQ" role="39e3Y0">
        <ref role="39e2AK" to="pjnk:5QT3DyaI6Zd" resolve="mandatory" />
        <node concept="385nmt" id="bY" role="385vvn">
          <property role="385vuF" value="mandatory" />
          <node concept="3u3nmq" id="c0" role="385v07">
            <property role="3u3nmv" value="6753445164543930317" />
          </node>
        </node>
        <node concept="39e2AT" id="bZ" role="39e2AY">
          <ref role="39e2AS" node="7B" resolve="myMember_mandatory_0" />
        </node>
      </node>
      <node concept="39e2AG" id="bR" role="39e3Y0">
        <ref role="39e2AK" to="pjnk:5QT3DyaI6Zc" resolve="optional" />
        <node concept="385nmt" id="c1" role="385vvn">
          <property role="385vuF" value="optional" />
          <node concept="3u3nmq" id="c3" role="385v07">
            <property role="3u3nmv" value="6753445164543930316" />
          </node>
        </node>
        <node concept="39e2AT" id="c2" role="39e2AY">
          <ref role="39e2AS" node="7C" resolve="myMember_optional_0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bE" role="39e2AI">
      <property role="39e3Y2" value="ConceptPresentationAspectClass" />
      <node concept="39e2AG" id="c4" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="c5" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptPresentationAspectImpl" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bF" role="39e2AI">
      <property role="39e3Y2" value="StructureAspectDescriptorCons" />
      <node concept="39e2AG" id="c6" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="c7" role="39e2AY">
          <ref role="39e2AS" node="fH" resolve="StructureAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="c8">
    <property role="TrG5h" value="LanguageConceptSwitch" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="c9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="cx" role="1B3o_S" />
      <node concept="3uibUv" id="cy" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~LanguageConceptIndex" resolve="LanguageConceptIndex" />
      </node>
    </node>
    <node concept="Wx3nA" id="ca" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Action" />
      <node concept="3Tm1VV" id="cz" role="1B3o_S" />
      <node concept="10Oyi0" id="c$" role="1tU5fm" />
      <node concept="3cmrfG" id="c_" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="cb" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Annotation" />
      <node concept="3Tm1VV" id="cA" role="1B3o_S" />
      <node concept="10Oyi0" id="cB" role="1tU5fm" />
      <node concept="3cmrfG" id="cC" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="cc" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="AnnotationSection" />
      <node concept="3Tm1VV" id="cD" role="1B3o_S" />
      <node concept="10Oyi0" id="cE" role="1tU5fm" />
      <node concept="3cmrfG" id="cF" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="Wx3nA" id="cd" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Constant" />
      <node concept="3Tm1VV" id="cG" role="1B3o_S" />
      <node concept="10Oyi0" id="cH" role="1tU5fm" />
      <node concept="3cmrfG" id="cI" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="ce" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CustomScriptAction" />
      <node concept="3Tm1VV" id="cJ" role="1B3o_S" />
      <node concept="10Oyi0" id="cK" role="1tU5fm" />
      <node concept="3cmrfG" id="cL" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="cf" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="InterpolationTemplatePiece" />
      <node concept="3Tm1VV" id="cM" role="1B3o_S" />
      <node concept="10Oyi0" id="cN" role="1tU5fm" />
      <node concept="3cmrfG" id="cO" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="Wx3nA" id="cg" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="JavaScriptAction" />
      <node concept="3Tm1VV" id="cP" role="1B3o_S" />
      <node concept="10Oyi0" id="cQ" role="1tU5fm" />
      <node concept="3cmrfG" id="cR" role="33vP2m">
        <property role="3cmrfH" value="6" />
      </node>
    </node>
    <node concept="Wx3nA" id="ch" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Parameter" />
      <node concept="3Tm1VV" id="cS" role="1B3o_S" />
      <node concept="10Oyi0" id="cT" role="1tU5fm" />
      <node concept="3cmrfG" id="cU" role="33vP2m">
        <property role="3cmrfH" value="7" />
      </node>
    </node>
    <node concept="Wx3nA" id="ci" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Referenceable" />
      <node concept="3Tm1VV" id="cV" role="1B3o_S" />
      <node concept="10Oyi0" id="cW" role="1tU5fm" />
      <node concept="3cmrfG" id="cX" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="Wx3nA" id="cj" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="RootToolchain" />
      <node concept="3Tm1VV" id="cY" role="1B3o_S" />
      <node concept="10Oyi0" id="cZ" role="1tU5fm" />
      <node concept="3cmrfG" id="d0" role="33vP2m">
        <property role="3cmrfH" value="9" />
      </node>
    </node>
    <node concept="Wx3nA" id="ck" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ShellAction" />
      <node concept="3Tm1VV" id="d1" role="1B3o_S" />
      <node concept="10Oyi0" id="d2" role="1tU5fm" />
      <node concept="3cmrfG" id="d3" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="Wx3nA" id="cl" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="StringTemplatePiece" />
      <node concept="3Tm1VV" id="d4" role="1B3o_S" />
      <node concept="10Oyi0" id="d5" role="1tU5fm" />
      <node concept="3cmrfG" id="d6" role="33vP2m">
        <property role="3cmrfH" value="11" />
      </node>
    </node>
    <node concept="Wx3nA" id="cm" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TemplatePiece" />
      <node concept="3Tm1VV" id="d7" role="1B3o_S" />
      <node concept="10Oyi0" id="d8" role="1tU5fm" />
      <node concept="3cmrfG" id="d9" role="33vP2m">
        <property role="3cmrfH" value="12" />
      </node>
    </node>
    <node concept="Wx3nA" id="cn" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Toolchain" />
      <node concept="3Tm1VV" id="da" role="1B3o_S" />
      <node concept="10Oyi0" id="db" role="1tU5fm" />
      <node concept="3cmrfG" id="dc" role="33vP2m">
        <property role="3cmrfH" value="13" />
      </node>
    </node>
    <node concept="Wx3nA" id="co" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ToolchainBody" />
      <node concept="3Tm1VV" id="dd" role="1B3o_S" />
      <node concept="10Oyi0" id="de" role="1tU5fm" />
      <node concept="3cmrfG" id="df" role="33vP2m">
        <property role="3cmrfH" value="14" />
      </node>
    </node>
    <node concept="Wx3nA" id="cp" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ToolchainSignature" />
      <node concept="3Tm1VV" id="dg" role="1B3o_S" />
      <node concept="10Oyi0" id="dh" role="1tU5fm" />
      <node concept="3cmrfG" id="di" role="33vP2m">
        <property role="3cmrfH" value="15" />
      </node>
    </node>
    <node concept="2tJIrI" id="cq" role="jymVt" />
    <node concept="3clFbW" id="cr" role="jymVt">
      <node concept="3cqZAl" id="dj" role="3clF45" />
      <node concept="3Tm1VV" id="dk" role="1B3o_S" />
      <node concept="3clFbS" id="dl" role="3clF47">
        <node concept="3cpWs8" id="dm" role="3cqZAp">
          <node concept="3cpWsn" id="dC" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="dD" role="1tU5fm">
              <ref role="3uigEE" to="ksn4:~LanguageConceptIndexBuilder" resolve="LanguageConceptIndexBuilder" />
            </node>
            <node concept="2ShNRf" id="dE" role="33vP2m">
              <node concept="1pGfFk" id="dF" role="2ShVmc">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.&lt;init&gt;(long,long)" resolve="LanguageConceptIndexBuilder" />
                <node concept="11gdke" id="dG" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="dH" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dn" role="3cqZAp">
          <node concept="2OqwBi" id="dI" role="3clFbG">
            <node concept="37vLTw" id="dJ" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="dK" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="dL" role="37wK5m">
                <property role="11gdj1" value="17380d383dde6703L" />
              </node>
              <node concept="37vLTw" id="dM" role="37wK5m">
                <ref role="3cqZAo" node="ca" resolve="Action" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="do" role="3cqZAp">
          <node concept="2OqwBi" id="dN" role="3clFbG">
            <node concept="37vLTw" id="dO" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="dP" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="dQ" role="37wK5m">
                <property role="11gdj1" value="572def6ab65dfe4dL" />
              </node>
              <node concept="37vLTw" id="dR" role="37wK5m">
                <ref role="3cqZAo" node="cb" resolve="Annotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dp" role="3cqZAp">
          <node concept="2OqwBi" id="dS" role="3clFbG">
            <node concept="37vLTw" id="dT" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="dU" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="dV" role="37wK5m">
                <property role="11gdj1" value="572def6ab66288ffL" />
              </node>
              <node concept="37vLTw" id="dW" role="37wK5m">
                <ref role="3cqZAo" node="cc" resolve="AnnotationSection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dq" role="3cqZAp">
          <node concept="2OqwBi" id="dX" role="3clFbG">
            <node concept="37vLTw" id="dY" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="dZ" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="e0" role="37wK5m">
                <property role="11gdj1" value="572def6ab654f578L" />
              </node>
              <node concept="37vLTw" id="e1" role="37wK5m">
                <ref role="3cqZAo" node="cd" resolve="Constant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dr" role="3cqZAp">
          <node concept="2OqwBi" id="e2" role="3clFbG">
            <node concept="37vLTw" id="e3" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="e4" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="e5" role="37wK5m">
                <property role="11gdj1" value="17380d383ddf3596L" />
              </node>
              <node concept="37vLTw" id="e6" role="37wK5m">
                <ref role="3cqZAo" node="ce" resolve="CustomScriptAction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ds" role="3cqZAp">
          <node concept="2OqwBi" id="e7" role="3clFbG">
            <node concept="37vLTw" id="e8" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="e9" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="ea" role="37wK5m">
                <property role="11gdj1" value="572def6ab655ab36L" />
              </node>
              <node concept="37vLTw" id="eb" role="37wK5m">
                <ref role="3cqZAo" node="cf" resolve="InterpolationTemplatePiece" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dt" role="3cqZAp">
          <node concept="2OqwBi" id="ec" role="3clFbG">
            <node concept="37vLTw" id="ed" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="ee" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="ef" role="37wK5m">
                <property role="11gdj1" value="17380d383dde6706L" />
              </node>
              <node concept="37vLTw" id="eg" role="37wK5m">
                <ref role="3cqZAo" node="cg" resolve="JavaScriptAction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="du" role="3cqZAp">
          <node concept="2OqwBi" id="eh" role="3clFbG">
            <node concept="37vLTw" id="ei" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="ej" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="ek" role="37wK5m">
                <property role="11gdj1" value="5db90e988aaf5f1eL" />
              </node>
              <node concept="37vLTw" id="el" role="37wK5m">
                <ref role="3cqZAo" node="ch" resolve="Parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dv" role="3cqZAp">
          <node concept="2OqwBi" id="em" role="3clFbG">
            <node concept="37vLTw" id="en" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="eo" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="ep" role="37wK5m">
                <property role="11gdj1" value="5db90e988abe43d1L" />
              </node>
              <node concept="37vLTw" id="eq" role="37wK5m">
                <ref role="3cqZAo" node="ci" resolve="Referenceable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dw" role="3cqZAp">
          <node concept="2OqwBi" id="er" role="3clFbG">
            <node concept="37vLTw" id="es" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="et" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="eu" role="37wK5m">
                <property role="11gdj1" value="572def6ab654f56dL" />
              </node>
              <node concept="37vLTw" id="ev" role="37wK5m">
                <ref role="3cqZAo" node="cj" resolve="RootToolchain" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dx" role="3cqZAp">
          <node concept="2OqwBi" id="ew" role="3clFbG">
            <node concept="37vLTw" id="ex" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="ey" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="ez" role="37wK5m">
                <property role="11gdj1" value="5db90e988aad407bL" />
              </node>
              <node concept="37vLTw" id="e$" role="37wK5m">
                <ref role="3cqZAo" node="ck" resolve="ShellAction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dy" role="3cqZAp">
          <node concept="2OqwBi" id="e_" role="3clFbG">
            <node concept="37vLTw" id="eA" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="eB" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="eC" role="37wK5m">
                <property role="11gdj1" value="572def6ab655ab33L" />
              </node>
              <node concept="37vLTw" id="eD" role="37wK5m">
                <ref role="3cqZAo" node="cl" resolve="StringTemplatePiece" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dz" role="3cqZAp">
          <node concept="2OqwBi" id="eE" role="3clFbG">
            <node concept="37vLTw" id="eF" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="eG" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="eH" role="37wK5m">
                <property role="11gdj1" value="572def6ab655ab32L" />
              </node>
              <node concept="37vLTw" id="eI" role="37wK5m">
                <ref role="3cqZAo" node="cm" resolve="TemplatePiece" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d$" role="3cqZAp">
          <node concept="2OqwBi" id="eJ" role="3clFbG">
            <node concept="37vLTw" id="eK" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="eL" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="eM" role="37wK5m">
                <property role="11gdj1" value="572def6ab655c228L" />
              </node>
              <node concept="37vLTw" id="eN" role="37wK5m">
                <ref role="3cqZAo" node="cn" resolve="Toolchain" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d_" role="3cqZAp">
          <node concept="2OqwBi" id="eO" role="3clFbG">
            <node concept="37vLTw" id="eP" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="eQ" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="eR" role="37wK5m">
                <property role="11gdj1" value="572def6ab6628906L" />
              </node>
              <node concept="37vLTw" id="eS" role="37wK5m">
                <ref role="3cqZAo" node="co" resolve="ToolchainBody" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dA" role="3cqZAp">
          <node concept="2OqwBi" id="eT" role="3clFbG">
            <node concept="37vLTw" id="eU" role="2Oq$k0">
              <ref role="3cqZAo" node="dC" resolve="builder" />
            </node>
            <node concept="liA8E" id="eV" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="11gdke" id="eW" role="37wK5m">
                <property role="11gdj1" value="5db90e988aaff613L" />
              </node>
              <node concept="37vLTw" id="eX" role="37wK5m">
                <ref role="3cqZAo" node="cp" resolve="ToolchainSignature" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dB" role="3cqZAp">
          <node concept="37vLTI" id="eY" role="3clFbG">
            <node concept="2OqwBi" id="eZ" role="37vLTx">
              <node concept="37vLTw" id="f1" role="2Oq$k0">
                <ref role="3cqZAo" node="dC" resolve="builder" />
              </node>
              <node concept="liA8E" id="f2" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.seal()" resolve="seal" />
              </node>
            </node>
            <node concept="37vLTw" id="f0" role="37vLTJ">
              <ref role="3cqZAo" node="c9" resolve="myIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cs" role="jymVt" />
    <node concept="3clFb_" id="ct" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="f3" role="3clF45" />
      <node concept="3clFbS" id="f4" role="3clF47">
        <node concept="3cpWs6" id="f6" role="3cqZAp">
          <node concept="2OqwBi" id="f7" role="3cqZAk">
            <node concept="37vLTw" id="f8" role="2Oq$k0">
              <ref role="3cqZAo" node="c9" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="f9" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="index" />
              <node concept="37vLTw" id="fa" role="37wK5m">
                <ref role="3cqZAo" node="f5" resolve="cid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="f5" role="3clF46">
        <property role="TrG5h" value="cid" />
        <node concept="3uibUv" id="fb" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cu" role="jymVt" />
    <node concept="3clFb_" id="cv" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="fc" role="3clF45" />
      <node concept="3Tm1VV" id="fd" role="1B3o_S" />
      <node concept="3clFbS" id="fe" role="3clF47">
        <node concept="3cpWs6" id="fg" role="3cqZAp">
          <node concept="2OqwBi" id="fh" role="3cqZAk">
            <node concept="37vLTw" id="fi" role="2Oq$k0">
              <ref role="3cqZAo" node="c9" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="fj" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <node concept="37vLTw" id="fk" role="37wK5m">
                <ref role="3cqZAo" node="ff" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ff" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="fl" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="cw" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="fm">
    <property role="TrG5h" value="StructureAspectDescriptor" />
    <node concept="3uibUv" id="fn" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseStructureAspectDescriptor" resolve="BaseStructureAspectDescriptor" />
    </node>
    <node concept="312cEg" id="fo" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptAction" />
      <node concept="3uibUv" id="ga" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gb" role="33vP2m">
        <ref role="37wK5l" node="fU" resolve="createDescriptorForAction" />
      </node>
    </node>
    <node concept="312cEg" id="fp" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptAnnotation" />
      <node concept="3uibUv" id="gc" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gd" role="33vP2m">
        <ref role="37wK5l" node="fV" resolve="createDescriptorForAnnotation" />
      </node>
    </node>
    <node concept="312cEg" id="fq" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptAnnotationSection" />
      <node concept="3uibUv" id="ge" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gf" role="33vP2m">
        <ref role="37wK5l" node="fW" resolve="createDescriptorForAnnotationSection" />
      </node>
    </node>
    <node concept="312cEg" id="fr" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptConstant" />
      <node concept="3uibUv" id="gg" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gh" role="33vP2m">
        <ref role="37wK5l" node="fX" resolve="createDescriptorForConstant" />
      </node>
    </node>
    <node concept="312cEg" id="fs" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCustomScriptAction" />
      <node concept="3uibUv" id="gi" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gj" role="33vP2m">
        <ref role="37wK5l" node="fY" resolve="createDescriptorForCustomScriptAction" />
      </node>
    </node>
    <node concept="312cEg" id="ft" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptInterpolationTemplatePiece" />
      <node concept="3uibUv" id="gk" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gl" role="33vP2m">
        <ref role="37wK5l" node="fZ" resolve="createDescriptorForInterpolationTemplatePiece" />
      </node>
    </node>
    <node concept="312cEg" id="fu" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptJavaScriptAction" />
      <node concept="3uibUv" id="gm" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gn" role="33vP2m">
        <ref role="37wK5l" node="g0" resolve="createDescriptorForJavaScriptAction" />
      </node>
    </node>
    <node concept="312cEg" id="fv" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptParameter" />
      <node concept="3uibUv" id="go" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gp" role="33vP2m">
        <ref role="37wK5l" node="g1" resolve="createDescriptorForParameter" />
      </node>
    </node>
    <node concept="312cEg" id="fw" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptReferenceable" />
      <node concept="3uibUv" id="gq" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gr" role="33vP2m">
        <ref role="37wK5l" node="g2" resolve="createDescriptorForReferenceable" />
      </node>
    </node>
    <node concept="312cEg" id="fx" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptRootToolchain" />
      <node concept="3uibUv" id="gs" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gt" role="33vP2m">
        <ref role="37wK5l" node="g3" resolve="createDescriptorForRootToolchain" />
      </node>
    </node>
    <node concept="312cEg" id="fy" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptShellAction" />
      <node concept="3uibUv" id="gu" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gv" role="33vP2m">
        <ref role="37wK5l" node="g4" resolve="createDescriptorForShellAction" />
      </node>
    </node>
    <node concept="312cEg" id="fz" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptStringTemplatePiece" />
      <node concept="3uibUv" id="gw" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gx" role="33vP2m">
        <ref role="37wK5l" node="g5" resolve="createDescriptorForStringTemplatePiece" />
      </node>
    </node>
    <node concept="312cEg" id="f$" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptTemplatePiece" />
      <node concept="3uibUv" id="gy" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gz" role="33vP2m">
        <ref role="37wK5l" node="g6" resolve="createDescriptorForTemplatePiece" />
      </node>
    </node>
    <node concept="312cEg" id="f_" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptToolchain" />
      <node concept="3uibUv" id="g$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="g_" role="33vP2m">
        <ref role="37wK5l" node="g7" resolve="createDescriptorForToolchain" />
      </node>
    </node>
    <node concept="312cEg" id="fA" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptToolchainBody" />
      <node concept="3uibUv" id="gA" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gB" role="33vP2m">
        <ref role="37wK5l" node="g8" resolve="createDescriptorForToolchainBody" />
      </node>
    </node>
    <node concept="312cEg" id="fB" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptToolchainSignature" />
      <node concept="3uibUv" id="gC" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="gD" role="33vP2m">
        <ref role="37wK5l" node="g9" resolve="createDescriptorForToolchainSignature" />
      </node>
    </node>
    <node concept="312cEg" id="fC" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationParameterPresence" />
      <node concept="3uibUv" id="gE" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="gF" role="33vP2m">
        <node concept="1pGfFk" id="gG" role="2ShVmc">
          <ref role="37wK5l" node="7_" resolve="EnumerationDescriptor_ParameterPresence" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="fD" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationParameterType" />
      <node concept="3uibUv" id="gH" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="gI" role="33vP2m">
        <node concept="1pGfFk" id="gJ" role="2ShVmc">
          <ref role="37wK5l" node="9B" resolve="EnumerationDescriptor_ParameterType" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="fE" role="jymVt">
      <property role="TrG5h" value="myIndexSwitch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="gK" role="1B3o_S" />
      <node concept="3uibUv" id="gL" role="1tU5fm">
        <ref role="3uigEE" node="c8" resolve="LanguageConceptSwitch" />
      </node>
    </node>
    <node concept="3Tm1VV" id="fF" role="1B3o_S" />
    <node concept="2tJIrI" id="fG" role="jymVt" />
    <node concept="3clFbW" id="fH" role="jymVt">
      <node concept="3cqZAl" id="gM" role="3clF45" />
      <node concept="3Tm1VV" id="gN" role="1B3o_S" />
      <node concept="3clFbS" id="gO" role="3clF47">
        <node concept="3clFbF" id="gP" role="3cqZAp">
          <node concept="37vLTI" id="gQ" role="3clFbG">
            <node concept="2ShNRf" id="gR" role="37vLTx">
              <node concept="1pGfFk" id="gT" role="2ShVmc">
                <ref role="37wK5l" node="cr" resolve="LanguageConceptSwitch" />
              </node>
            </node>
            <node concept="37vLTw" id="gS" role="37vLTJ">
              <ref role="3cqZAo" node="fE" resolve="myIndexSwitch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="fI" role="jymVt" />
    <node concept="2tJIrI" id="fJ" role="jymVt" />
    <node concept="3clFb_" id="fK" role="jymVt">
      <property role="TrG5h" value="reportDependencies" />
      <node concept="3Tm1VV" id="gU" role="1B3o_S" />
      <node concept="3cqZAl" id="gV" role="3clF45" />
      <node concept="37vLTG" id="gW" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="3uibUv" id="gZ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~StructureAspectDescriptor$Dependencies" resolve="StructureAspectDescriptor.Dependencies" />
        </node>
      </node>
      <node concept="3clFbS" id="gX" role="3clF47">
        <node concept="3clFbF" id="h0" role="3cqZAp">
          <node concept="2OqwBi" id="h1" role="3clFbG">
            <node concept="37vLTw" id="h2" role="2Oq$k0">
              <ref role="3cqZAo" node="gW" resolve="deps" />
            </node>
            <node concept="liA8E" id="h3" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="11gdke" id="h4" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="h5" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="Xl_RD" id="h6" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.core" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="gY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="fL" role="jymVt" />
    <node concept="3clFb_" id="fM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getDescriptors" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="h7" role="3clF47">
        <node concept="3cpWs6" id="hb" role="3cqZAp">
          <node concept="2YIFZM" id="hc" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="37vLTw" id="hd" role="37wK5m">
              <ref role="3cqZAo" node="fo" resolve="myConceptAction" />
            </node>
            <node concept="37vLTw" id="he" role="37wK5m">
              <ref role="3cqZAo" node="fp" resolve="myConceptAnnotation" />
            </node>
            <node concept="37vLTw" id="hf" role="37wK5m">
              <ref role="3cqZAo" node="fq" resolve="myConceptAnnotationSection" />
            </node>
            <node concept="37vLTw" id="hg" role="37wK5m">
              <ref role="3cqZAo" node="fr" resolve="myConceptConstant" />
            </node>
            <node concept="37vLTw" id="hh" role="37wK5m">
              <ref role="3cqZAo" node="fs" resolve="myConceptCustomScriptAction" />
            </node>
            <node concept="37vLTw" id="hi" role="37wK5m">
              <ref role="3cqZAo" node="ft" resolve="myConceptInterpolationTemplatePiece" />
            </node>
            <node concept="37vLTw" id="hj" role="37wK5m">
              <ref role="3cqZAo" node="fu" resolve="myConceptJavaScriptAction" />
            </node>
            <node concept="37vLTw" id="hk" role="37wK5m">
              <ref role="3cqZAo" node="fv" resolve="myConceptParameter" />
            </node>
            <node concept="37vLTw" id="hl" role="37wK5m">
              <ref role="3cqZAo" node="fw" resolve="myConceptReferenceable" />
            </node>
            <node concept="37vLTw" id="hm" role="37wK5m">
              <ref role="3cqZAo" node="fx" resolve="myConceptRootToolchain" />
            </node>
            <node concept="37vLTw" id="hn" role="37wK5m">
              <ref role="3cqZAo" node="fy" resolve="myConceptShellAction" />
            </node>
            <node concept="37vLTw" id="ho" role="37wK5m">
              <ref role="3cqZAo" node="fz" resolve="myConceptStringTemplatePiece" />
            </node>
            <node concept="37vLTw" id="hp" role="37wK5m">
              <ref role="3cqZAo" node="f$" resolve="myConceptTemplatePiece" />
            </node>
            <node concept="37vLTw" id="hq" role="37wK5m">
              <ref role="3cqZAo" node="f_" resolve="myConceptToolchain" />
            </node>
            <node concept="37vLTw" id="hr" role="37wK5m">
              <ref role="3cqZAo" node="fA" resolve="myConceptToolchainBody" />
            </node>
            <node concept="37vLTw" id="hs" role="37wK5m">
              <ref role="3cqZAo" node="fB" resolve="myConceptToolchainSignature" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h8" role="1B3o_S" />
      <node concept="3uibUv" id="h9" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="ht" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="ha" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="fN" role="jymVt" />
    <node concept="3clFb_" id="fO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="hu" role="1B3o_S" />
      <node concept="37vLTG" id="hv" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="h$" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
      <node concept="3clFbS" id="hw" role="3clF47">
        <node concept="3KaCP$" id="h_" role="3cqZAp">
          <node concept="3KbdKl" id="hA" role="3KbHQx">
            <node concept="3clFbS" id="hS" role="3Kbo56">
              <node concept="3cpWs6" id="hU" role="3cqZAp">
                <node concept="37vLTw" id="hV" role="3cqZAk">
                  <ref role="3cqZAo" node="fo" resolve="myConceptAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hT" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ca" resolve="Action" />
            </node>
          </node>
          <node concept="3KbdKl" id="hB" role="3KbHQx">
            <node concept="3clFbS" id="hW" role="3Kbo56">
              <node concept="3cpWs6" id="hY" role="3cqZAp">
                <node concept="37vLTw" id="hZ" role="3cqZAk">
                  <ref role="3cqZAo" node="fp" resolve="myConceptAnnotation" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="hX" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cb" resolve="Annotation" />
            </node>
          </node>
          <node concept="3KbdKl" id="hC" role="3KbHQx">
            <node concept="3clFbS" id="i0" role="3Kbo56">
              <node concept="3cpWs6" id="i2" role="3cqZAp">
                <node concept="37vLTw" id="i3" role="3cqZAk">
                  <ref role="3cqZAo" node="fq" resolve="myConceptAnnotationSection" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="i1" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cc" resolve="AnnotationSection" />
            </node>
          </node>
          <node concept="3KbdKl" id="hD" role="3KbHQx">
            <node concept="3clFbS" id="i4" role="3Kbo56">
              <node concept="3cpWs6" id="i6" role="3cqZAp">
                <node concept="37vLTw" id="i7" role="3cqZAk">
                  <ref role="3cqZAo" node="fr" resolve="myConceptConstant" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="i5" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cd" resolve="Constant" />
            </node>
          </node>
          <node concept="3KbdKl" id="hE" role="3KbHQx">
            <node concept="3clFbS" id="i8" role="3Kbo56">
              <node concept="3cpWs6" id="ia" role="3cqZAp">
                <node concept="37vLTw" id="ib" role="3cqZAk">
                  <ref role="3cqZAo" node="fs" resolve="myConceptCustomScriptAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="i9" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ce" resolve="CustomScriptAction" />
            </node>
          </node>
          <node concept="3KbdKl" id="hF" role="3KbHQx">
            <node concept="3clFbS" id="ic" role="3Kbo56">
              <node concept="3cpWs6" id="ie" role="3cqZAp">
                <node concept="37vLTw" id="if" role="3cqZAk">
                  <ref role="3cqZAo" node="ft" resolve="myConceptInterpolationTemplatePiece" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="id" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cf" resolve="InterpolationTemplatePiece" />
            </node>
          </node>
          <node concept="3KbdKl" id="hG" role="3KbHQx">
            <node concept="3clFbS" id="ig" role="3Kbo56">
              <node concept="3cpWs6" id="ii" role="3cqZAp">
                <node concept="37vLTw" id="ij" role="3cqZAk">
                  <ref role="3cqZAo" node="fu" resolve="myConceptJavaScriptAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ih" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cg" resolve="JavaScriptAction" />
            </node>
          </node>
          <node concept="3KbdKl" id="hH" role="3KbHQx">
            <node concept="3clFbS" id="ik" role="3Kbo56">
              <node concept="3cpWs6" id="im" role="3cqZAp">
                <node concept="37vLTw" id="in" role="3cqZAk">
                  <ref role="3cqZAo" node="fv" resolve="myConceptParameter" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="il" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ch" resolve="Parameter" />
            </node>
          </node>
          <node concept="3KbdKl" id="hI" role="3KbHQx">
            <node concept="3clFbS" id="io" role="3Kbo56">
              <node concept="3cpWs6" id="iq" role="3cqZAp">
                <node concept="37vLTw" id="ir" role="3cqZAk">
                  <ref role="3cqZAo" node="fw" resolve="myConceptReferenceable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ip" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ci" resolve="Referenceable" />
            </node>
          </node>
          <node concept="3KbdKl" id="hJ" role="3KbHQx">
            <node concept="3clFbS" id="is" role="3Kbo56">
              <node concept="3cpWs6" id="iu" role="3cqZAp">
                <node concept="37vLTw" id="iv" role="3cqZAk">
                  <ref role="3cqZAo" node="fx" resolve="myConceptRootToolchain" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="it" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cj" resolve="RootToolchain" />
            </node>
          </node>
          <node concept="3KbdKl" id="hK" role="3KbHQx">
            <node concept="3clFbS" id="iw" role="3Kbo56">
              <node concept="3cpWs6" id="iy" role="3cqZAp">
                <node concept="37vLTw" id="iz" role="3cqZAk">
                  <ref role="3cqZAo" node="fy" resolve="myConceptShellAction" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ix" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ck" resolve="ShellAction" />
            </node>
          </node>
          <node concept="3KbdKl" id="hL" role="3KbHQx">
            <node concept="3clFbS" id="i$" role="3Kbo56">
              <node concept="3cpWs6" id="iA" role="3cqZAp">
                <node concept="37vLTw" id="iB" role="3cqZAk">
                  <ref role="3cqZAo" node="fz" resolve="myConceptStringTemplatePiece" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="i_" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cl" resolve="StringTemplatePiece" />
            </node>
          </node>
          <node concept="3KbdKl" id="hM" role="3KbHQx">
            <node concept="3clFbS" id="iC" role="3Kbo56">
              <node concept="3cpWs6" id="iE" role="3cqZAp">
                <node concept="37vLTw" id="iF" role="3cqZAk">
                  <ref role="3cqZAo" node="f$" resolve="myConceptTemplatePiece" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="iD" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cm" resolve="TemplatePiece" />
            </node>
          </node>
          <node concept="3KbdKl" id="hN" role="3KbHQx">
            <node concept="3clFbS" id="iG" role="3Kbo56">
              <node concept="3cpWs6" id="iI" role="3cqZAp">
                <node concept="37vLTw" id="iJ" role="3cqZAk">
                  <ref role="3cqZAo" node="f_" resolve="myConceptToolchain" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="iH" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cn" resolve="Toolchain" />
            </node>
          </node>
          <node concept="3KbdKl" id="hO" role="3KbHQx">
            <node concept="3clFbS" id="iK" role="3Kbo56">
              <node concept="3cpWs6" id="iM" role="3cqZAp">
                <node concept="37vLTw" id="iN" role="3cqZAk">
                  <ref role="3cqZAo" node="fA" resolve="myConceptToolchainBody" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="iL" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="co" resolve="ToolchainBody" />
            </node>
          </node>
          <node concept="3KbdKl" id="hP" role="3KbHQx">
            <node concept="3clFbS" id="iO" role="3Kbo56">
              <node concept="3cpWs6" id="iQ" role="3cqZAp">
                <node concept="37vLTw" id="iR" role="3cqZAk">
                  <ref role="3cqZAo" node="fB" resolve="myConceptToolchainSignature" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="iP" role="3Kbmr1">
              <ref role="1PxDUh" node="c8" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="cp" resolve="ToolchainSignature" />
            </node>
          </node>
          <node concept="2OqwBi" id="hQ" role="3KbGdf">
            <node concept="37vLTw" id="iS" role="2Oq$k0">
              <ref role="3cqZAo" node="fE" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="iT" role="2OqNvi">
              <ref role="37wK5l" node="ct" resolve="index" />
              <node concept="37vLTw" id="iU" role="37wK5m">
                <ref role="3cqZAo" node="hv" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hR" role="3Kb1Dw">
            <node concept="3cpWs6" id="iV" role="3cqZAp">
              <node concept="10Nm6u" id="iW" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="hx" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="2AHcQZ" id="hy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="hz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="fP" role="jymVt" />
    <node concept="3clFb_" id="fQ" role="jymVt">
      <property role="TrG5h" value="getDataTypeDescriptors" />
      <node concept="3Tm1VV" id="iX" role="1B3o_S" />
      <node concept="3uibUv" id="iY" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="j1" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~DataTypeDescriptor" resolve="DataTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="iZ" role="3clF47">
        <node concept="3cpWs6" id="j2" role="3cqZAp">
          <node concept="2YIFZM" id="j3" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="j4" role="37wK5m">
              <ref role="3cqZAo" node="fC" resolve="myEnumerationParameterPresence" />
            </node>
            <node concept="37vLTw" id="j5" role="37wK5m">
              <ref role="3cqZAo" node="fD" resolve="myEnumerationParameterType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="j0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="fR" role="jymVt" />
    <node concept="3clFb_" id="fS" role="jymVt">
      <property role="TrG5h" value="internalIndex" />
      <node concept="10Oyi0" id="j6" role="3clF45" />
      <node concept="3clFbS" id="j7" role="3clF47">
        <node concept="3cpWs6" id="j9" role="3cqZAp">
          <node concept="2OqwBi" id="ja" role="3cqZAk">
            <node concept="37vLTw" id="jb" role="2Oq$k0">
              <ref role="3cqZAo" node="fE" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="jc" role="2OqNvi">
              <ref role="37wK5l" node="cv" resolve="index" />
              <node concept="37vLTw" id="jd" role="37wK5m">
                <ref role="3cqZAo" node="j8" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="j8" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="je" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="fT" role="jymVt" />
    <node concept="2YIFZL" id="fU" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForAction" />
      <node concept="3clFbS" id="jf" role="3clF47">
        <node concept="3cpWs8" id="ji" role="3cqZAp">
          <node concept="3cpWsn" id="jn" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="jo" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="jp" role="33vP2m">
              <node concept="1pGfFk" id="jq" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="jr" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="js" role="37wK5m">
                  <property role="Xl_RC" value="Action" />
                </node>
                <node concept="11gdke" id="jt" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="ju" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="jv" role="37wK5m">
                  <property role="11gdj1" value="17380d383dde6703L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jj" role="3cqZAp">
          <node concept="2OqwBi" id="jw" role="3clFbG">
            <node concept="37vLTw" id="jx" role="2Oq$k0">
              <ref role="3cqZAo" node="jn" resolve="b" />
            </node>
            <node concept="liA8E" id="jy" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="jz" role="37wK5m" />
              <node concept="3clFbT" id="j$" role="37wK5m" />
              <node concept="3clFbT" id="j_" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jk" role="3cqZAp">
          <node concept="2OqwBi" id="jA" role="3clFbG">
            <node concept="37vLTw" id="jB" role="2Oq$k0">
              <ref role="3cqZAo" node="jn" resolve="b" />
            </node>
            <node concept="liA8E" id="jC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="jD" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/1673101796775454467" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jl" role="3cqZAp">
          <node concept="2OqwBi" id="jE" role="3clFbG">
            <node concept="37vLTw" id="jF" role="2Oq$k0">
              <ref role="3cqZAo" node="jn" resolve="b" />
            </node>
            <node concept="liA8E" id="jG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="jH" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="jm" role="3cqZAp">
          <node concept="2OqwBi" id="jI" role="3cqZAk">
            <node concept="37vLTw" id="jJ" role="2Oq$k0">
              <ref role="3cqZAo" node="jn" resolve="b" />
            </node>
            <node concept="liA8E" id="jK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="jg" role="1B3o_S" />
      <node concept="3uibUv" id="jh" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fV" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForAnnotation" />
      <node concept="3clFbS" id="jL" role="3clF47">
        <node concept="3cpWs8" id="jO" role="3cqZAp">
          <node concept="3cpWsn" id="jV" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="jW" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="jX" role="33vP2m">
              <node concept="1pGfFk" id="jY" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="jZ" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="k0" role="37wK5m">
                  <property role="Xl_RC" value="Annotation" />
                </node>
                <node concept="11gdke" id="k1" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="k2" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="k3" role="37wK5m">
                  <property role="11gdj1" value="572def6ab65dfe4dL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jP" role="3cqZAp">
          <node concept="2OqwBi" id="k4" role="3clFbG">
            <node concept="37vLTw" id="k5" role="2Oq$k0">
              <ref role="3cqZAo" node="jV" resolve="b" />
            </node>
            <node concept="liA8E" id="k6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="k7" role="37wK5m" />
              <node concept="3clFbT" id="k8" role="37wK5m" />
              <node concept="3clFbT" id="k9" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jQ" role="3cqZAp">
          <node concept="2OqwBi" id="ka" role="3clFbG">
            <node concept="37vLTw" id="kb" role="2Oq$k0">
              <ref role="3cqZAo" node="jV" resolve="b" />
            </node>
            <node concept="liA8E" id="kc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="kd" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="ke" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="kf" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jR" role="3cqZAp">
          <node concept="2OqwBi" id="kg" role="3clFbG">
            <node concept="37vLTw" id="kh" role="2Oq$k0">
              <ref role="3cqZAo" node="jV" resolve="b" />
            </node>
            <node concept="liA8E" id="ki" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="kj" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856895053" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jS" role="3cqZAp">
          <node concept="2OqwBi" id="kk" role="3clFbG">
            <node concept="37vLTw" id="kl" role="2Oq$k0">
              <ref role="3cqZAo" node="jV" resolve="b" />
            </node>
            <node concept="liA8E" id="km" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="kn" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jT" role="3cqZAp">
          <node concept="2OqwBi" id="ko" role="3clFbG">
            <node concept="2OqwBi" id="kp" role="2Oq$k0">
              <node concept="2OqwBi" id="kr" role="2Oq$k0">
                <node concept="2OqwBi" id="kt" role="2Oq$k0">
                  <node concept="37vLTw" id="kv" role="2Oq$k0">
                    <ref role="3cqZAo" node="jV" resolve="b" />
                  </node>
                  <node concept="liA8E" id="kw" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="kx" role="37wK5m">
                      <property role="Xl_RC" value="content" />
                    </node>
                    <node concept="11gdke" id="ky" role="37wK5m">
                      <property role="11gdj1" value="572def6ab65dfe50L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="ku" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="kz" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="ks" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="k$" role="37wK5m">
                  <property role="Xl_RC" value="6281940296856895056" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="kq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="jU" role="3cqZAp">
          <node concept="2OqwBi" id="k_" role="3cqZAk">
            <node concept="37vLTw" id="kA" role="2Oq$k0">
              <ref role="3cqZAo" node="jV" resolve="b" />
            </node>
            <node concept="liA8E" id="kB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="jM" role="1B3o_S" />
      <node concept="3uibUv" id="jN" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fW" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForAnnotationSection" />
      <node concept="3clFbS" id="kC" role="3clF47">
        <node concept="3cpWs8" id="kF" role="3cqZAp">
          <node concept="3cpWsn" id="kL" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="kM" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="kN" role="33vP2m">
              <node concept="1pGfFk" id="kO" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="kP" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="kQ" role="37wK5m">
                  <property role="Xl_RC" value="AnnotationSection" />
                </node>
                <node concept="11gdke" id="kR" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="kS" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="kT" role="37wK5m">
                  <property role="11gdj1" value="572def6ab66288ffL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kG" role="3cqZAp">
          <node concept="2OqwBi" id="kU" role="3clFbG">
            <node concept="37vLTw" id="kV" role="2Oq$k0">
              <ref role="3cqZAo" node="kL" resolve="b" />
            </node>
            <node concept="liA8E" id="kW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="kX" role="37wK5m" />
              <node concept="3clFbT" id="kY" role="37wK5m" />
              <node concept="3clFbT" id="kZ" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kH" role="3cqZAp">
          <node concept="2OqwBi" id="l0" role="3clFbG">
            <node concept="37vLTw" id="l1" role="2Oq$k0">
              <ref role="3cqZAo" node="kL" resolve="b" />
            </node>
            <node concept="liA8E" id="l2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="l3" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296857192703" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kI" role="3cqZAp">
          <node concept="2OqwBi" id="l4" role="3clFbG">
            <node concept="37vLTw" id="l5" role="2Oq$k0">
              <ref role="3cqZAo" node="kL" resolve="b" />
            </node>
            <node concept="liA8E" id="l6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="l7" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="kJ" role="3cqZAp">
          <node concept="2OqwBi" id="l8" role="3clFbG">
            <node concept="2OqwBi" id="l9" role="2Oq$k0">
              <node concept="2OqwBi" id="lb" role="2Oq$k0">
                <node concept="2OqwBi" id="ld" role="2Oq$k0">
                  <node concept="2OqwBi" id="lf" role="2Oq$k0">
                    <node concept="2OqwBi" id="lh" role="2Oq$k0">
                      <node concept="2OqwBi" id="lj" role="2Oq$k0">
                        <node concept="37vLTw" id="ll" role="2Oq$k0">
                          <ref role="3cqZAo" node="kL" resolve="b" />
                        </node>
                        <node concept="liA8E" id="lm" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="ln" role="37wK5m">
                            <property role="Xl_RC" value="annotations" />
                          </node>
                          <node concept="11gdke" id="lo" role="37wK5m">
                            <property role="11gdj1" value="572def6ab6628900L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="lk" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="lp" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="lq" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="lr" role="37wK5m">
                          <property role="11gdj1" value="572def6ab65dfe4dL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="li" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="ls" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="lg" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="lt" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="le" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="lu" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="lc" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="lv" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857192704" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="la" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="kK" role="3cqZAp">
          <node concept="2OqwBi" id="lw" role="3cqZAk">
            <node concept="37vLTw" id="lx" role="2Oq$k0">
              <ref role="3cqZAo" node="kL" resolve="b" />
            </node>
            <node concept="liA8E" id="ly" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="kD" role="1B3o_S" />
      <node concept="3uibUv" id="kE" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fX" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForConstant" />
      <node concept="3clFbS" id="lz" role="3clF47">
        <node concept="3cpWs8" id="lA" role="3cqZAp">
          <node concept="3cpWsn" id="lH" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="lI" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="lJ" role="33vP2m">
              <node concept="1pGfFk" id="lK" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="lL" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="lM" role="37wK5m">
                  <property role="Xl_RC" value="Constant" />
                </node>
                <node concept="11gdke" id="lN" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="lO" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="lP" role="37wK5m">
                  <property role="11gdj1" value="572def6ab654f578L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lB" role="3cqZAp">
          <node concept="2OqwBi" id="lQ" role="3clFbG">
            <node concept="37vLTw" id="lR" role="2Oq$k0">
              <ref role="3cqZAo" node="lH" resolve="b" />
            </node>
            <node concept="liA8E" id="lS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="lT" role="37wK5m" />
              <node concept="3clFbT" id="lU" role="37wK5m" />
              <node concept="3clFbT" id="lV" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lC" role="3cqZAp">
          <node concept="2OqwBi" id="lW" role="3clFbG">
            <node concept="37vLTw" id="lX" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="lY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="lZ" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="m0" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="m1" role="37wK5m">
                <property role="11gdj1" value="5db90e988abe43d1L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lD" role="3cqZAp">
          <node concept="2OqwBi" id="m2" role="3clFbG">
            <node concept="37vLTw" id="m3" role="2Oq$k0">
              <ref role="3cqZAo" node="lH" resolve="b" />
            </node>
            <node concept="liA8E" id="m4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="m5" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856302968" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lE" role="3cqZAp">
          <node concept="2OqwBi" id="m6" role="3clFbG">
            <node concept="37vLTw" id="m7" role="2Oq$k0">
              <ref role="3cqZAo" node="lH" resolve="b" />
            </node>
            <node concept="liA8E" id="m8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="m9" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lF" role="3cqZAp">
          <node concept="2OqwBi" id="ma" role="3clFbG">
            <node concept="2OqwBi" id="mb" role="2Oq$k0">
              <node concept="2OqwBi" id="md" role="2Oq$k0">
                <node concept="2OqwBi" id="mf" role="2Oq$k0">
                  <node concept="2OqwBi" id="mh" role="2Oq$k0">
                    <node concept="2OqwBi" id="mj" role="2Oq$k0">
                      <node concept="2OqwBi" id="ml" role="2Oq$k0">
                        <node concept="37vLTw" id="mn" role="2Oq$k0">
                          <ref role="3cqZAo" node="lH" resolve="b" />
                        </node>
                        <node concept="liA8E" id="mo" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="mp" role="37wK5m">
                            <property role="Xl_RC" value="pieces" />
                          </node>
                          <node concept="11gdke" id="mq" role="37wK5m">
                            <property role="11gdj1" value="572def6ab655af03L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="mm" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="mr" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="ms" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="mt" role="37wK5m">
                          <property role="11gdj1" value="572def6ab655ab32L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="mk" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="mu" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="mi" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="mv" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="mg" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="mw" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="me" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="mx" role="37wK5m">
                  <property role="Xl_RC" value="6281940296856350467" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="mc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="lG" role="3cqZAp">
          <node concept="2OqwBi" id="my" role="3cqZAk">
            <node concept="37vLTw" id="mz" role="2Oq$k0">
              <ref role="3cqZAo" node="lH" resolve="b" />
            </node>
            <node concept="liA8E" id="m$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="l$" role="1B3o_S" />
      <node concept="3uibUv" id="l_" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fY" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCustomScriptAction" />
      <node concept="3clFbS" id="m_" role="3clF47">
        <node concept="3cpWs8" id="mC" role="3cqZAp">
          <node concept="3cpWsn" id="mL" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="mM" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="mN" role="33vP2m">
              <node concept="1pGfFk" id="mO" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="mP" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="mQ" role="37wK5m">
                  <property role="Xl_RC" value="CustomScriptAction" />
                </node>
                <node concept="11gdke" id="mR" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="mS" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="mT" role="37wK5m">
                  <property role="11gdj1" value="17380d383ddf3596L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mD" role="3cqZAp">
          <node concept="2OqwBi" id="mU" role="3clFbG">
            <node concept="37vLTw" id="mV" role="2Oq$k0">
              <ref role="3cqZAo" node="mL" resolve="b" />
            </node>
            <node concept="liA8E" id="mW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="mX" role="37wK5m" />
              <node concept="3clFbT" id="mY" role="37wK5m" />
              <node concept="3clFbT" id="mZ" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="mE" role="3cqZAp">
          <node concept="1PaTwC" id="n0" role="1aUNEU">
            <node concept="3oM_SD" id="n1" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="n2" role="1PaTwD">
              <property role="3oM_SC" value="climat.structure.Action" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mF" role="3cqZAp">
          <node concept="15s5l7" id="n3" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="n4" role="3clFbG">
            <node concept="37vLTw" id="n5" role="2Oq$k0">
              <ref role="3cqZAo" node="mL" resolve="b" />
            </node>
            <node concept="liA8E" id="n6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="n7" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="n8" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="n9" role="37wK5m">
                <property role="11gdj1" value="17380d383dde6703L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mG" role="3cqZAp">
          <node concept="2OqwBi" id="na" role="3clFbG">
            <node concept="37vLTw" id="nb" role="2Oq$k0">
              <ref role="3cqZAo" node="mL" resolve="b" />
            </node>
            <node concept="liA8E" id="nc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="nd" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/1673101796775507350" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mH" role="3cqZAp">
          <node concept="2OqwBi" id="ne" role="3clFbG">
            <node concept="37vLTw" id="nf" role="2Oq$k0">
              <ref role="3cqZAo" node="mL" resolve="b" />
            </node>
            <node concept="liA8E" id="ng" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="nh" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mI" role="3cqZAp">
          <node concept="2OqwBi" id="ni" role="3clFbG">
            <node concept="2OqwBi" id="nj" role="2Oq$k0">
              <node concept="2OqwBi" id="nl" role="2Oq$k0">
                <node concept="2OqwBi" id="nn" role="2Oq$k0">
                  <node concept="37vLTw" id="np" role="2Oq$k0">
                    <ref role="3cqZAo" node="mL" resolve="b" />
                  </node>
                  <node concept="liA8E" id="nq" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="nr" role="37wK5m">
                      <property role="Xl_RC" value="runtimePath" />
                    </node>
                    <node concept="11gdke" id="ns" role="37wK5m">
                      <property role="11gdj1" value="17380d383ddf3ed5L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="no" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="nt" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="nm" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="nu" role="37wK5m">
                  <property role="Xl_RC" value="1673101796775509717" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="nk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mJ" role="3cqZAp">
          <node concept="2OqwBi" id="nv" role="3clFbG">
            <node concept="2OqwBi" id="nw" role="2Oq$k0">
              <node concept="2OqwBi" id="ny" role="2Oq$k0">
                <node concept="2OqwBi" id="n$" role="2Oq$k0">
                  <node concept="37vLTw" id="nA" role="2Oq$k0">
                    <ref role="3cqZAo" node="mL" resolve="b" />
                  </node>
                  <node concept="liA8E" id="nB" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="nC" role="37wK5m">
                      <property role="Xl_RC" value="customScript" />
                    </node>
                    <node concept="11gdke" id="nD" role="37wK5m">
                      <property role="11gdj1" value="17380d383ddf3ed6L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="n_" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="nE" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="nz" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="nF" role="37wK5m">
                  <property role="Xl_RC" value="1673101796775509718" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="nx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="mK" role="3cqZAp">
          <node concept="2OqwBi" id="nG" role="3cqZAk">
            <node concept="37vLTw" id="nH" role="2Oq$k0">
              <ref role="3cqZAo" node="mL" resolve="b" />
            </node>
            <node concept="liA8E" id="nI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="mA" role="1B3o_S" />
      <node concept="3uibUv" id="mB" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="fZ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForInterpolationTemplatePiece" />
      <node concept="3clFbS" id="nJ" role="3clF47">
        <node concept="3cpWs8" id="nM" role="3cqZAp">
          <node concept="3cpWsn" id="nT" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="nU" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="nV" role="33vP2m">
              <node concept="1pGfFk" id="nW" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="nX" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="nY" role="37wK5m">
                  <property role="Xl_RC" value="InterpolationTemplatePiece" />
                </node>
                <node concept="11gdke" id="nZ" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="o0" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="o1" role="37wK5m">
                  <property role="11gdj1" value="572def6ab655ab36L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nN" role="3cqZAp">
          <node concept="2OqwBi" id="o2" role="3clFbG">
            <node concept="37vLTw" id="o3" role="2Oq$k0">
              <ref role="3cqZAo" node="nT" resolve="b" />
            </node>
            <node concept="liA8E" id="o4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="o5" role="37wK5m" />
              <node concept="3clFbT" id="o6" role="37wK5m" />
              <node concept="3clFbT" id="o7" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nO" role="3cqZAp">
          <node concept="2OqwBi" id="o8" role="3clFbG">
            <node concept="37vLTw" id="o9" role="2Oq$k0">
              <ref role="3cqZAo" node="vw" resolve="b" />
            </node>
            <node concept="liA8E" id="oa" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="ob" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="oc" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="od" role="37wK5m">
                <property role="11gdj1" value="572def6ab655ab32L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nP" role="3cqZAp">
          <node concept="2OqwBi" id="oe" role="3clFbG">
            <node concept="37vLTw" id="of" role="2Oq$k0">
              <ref role="3cqZAo" node="nT" resolve="b" />
            </node>
            <node concept="liA8E" id="og" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="oh" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856349494" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nQ" role="3cqZAp">
          <node concept="2OqwBi" id="oi" role="3clFbG">
            <node concept="37vLTw" id="oj" role="2Oq$k0">
              <ref role="3cqZAo" node="nT" resolve="b" />
            </node>
            <node concept="liA8E" id="ok" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="ol" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nR" role="3cqZAp">
          <node concept="2OqwBi" id="om" role="3clFbG">
            <node concept="2OqwBi" id="on" role="2Oq$k0">
              <node concept="2OqwBi" id="op" role="2Oq$k0">
                <node concept="2OqwBi" id="or" role="2Oq$k0">
                  <node concept="2OqwBi" id="ot" role="2Oq$k0">
                    <node concept="37vLTw" id="ov" role="2Oq$k0">
                      <ref role="3cqZAo" node="nT" resolve="b" />
                    </node>
                    <node concept="liA8E" id="ow" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="ox" role="37wK5m">
                        <property role="Xl_RC" value="reference" />
                      </node>
                      <node concept="11gdke" id="oy" role="37wK5m">
                        <property role="11gdj1" value="5db90e988abe43d8L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="ou" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="11gdke" id="oz" role="37wK5m">
                      <property role="11gdj1" value="73bee2cc69694dd7L" />
                    </node>
                    <node concept="11gdke" id="o$" role="37wK5m">
                      <property role="11gdj1" value="abeb6acc8e6703a8L" />
                    </node>
                    <node concept="11gdke" id="o_" role="37wK5m">
                      <property role="11gdj1" value="5db90e988abe43d1L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="os" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="oA" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="oq" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="oB" role="37wK5m">
                  <property role="Xl_RC" value="6753445164544312280" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="oo" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="nS" role="3cqZAp">
          <node concept="2OqwBi" id="oC" role="3cqZAk">
            <node concept="37vLTw" id="oD" role="2Oq$k0">
              <ref role="3cqZAo" node="nT" resolve="b" />
            </node>
            <node concept="liA8E" id="oE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="nK" role="1B3o_S" />
      <node concept="3uibUv" id="nL" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g0" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForJavaScriptAction" />
      <node concept="3clFbS" id="oF" role="3clF47">
        <node concept="3cpWs8" id="oI" role="3cqZAp">
          <node concept="3cpWsn" id="oQ" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="oR" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="oS" role="33vP2m">
              <node concept="1pGfFk" id="oT" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="oU" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="oV" role="37wK5m">
                  <property role="Xl_RC" value="JavaScriptAction" />
                </node>
                <node concept="11gdke" id="oW" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="oX" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="oY" role="37wK5m">
                  <property role="11gdj1" value="17380d383dde6706L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oJ" role="3cqZAp">
          <node concept="2OqwBi" id="oZ" role="3clFbG">
            <node concept="37vLTw" id="p0" role="2Oq$k0">
              <ref role="3cqZAo" node="oQ" resolve="b" />
            </node>
            <node concept="liA8E" id="p1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="p2" role="37wK5m" />
              <node concept="3clFbT" id="p3" role="37wK5m" />
              <node concept="3clFbT" id="p4" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="oK" role="3cqZAp">
          <node concept="1PaTwC" id="p5" role="1aUNEU">
            <node concept="3oM_SD" id="p6" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="p7" role="1PaTwD">
              <property role="3oM_SC" value="climat.structure.Action" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oL" role="3cqZAp">
          <node concept="15s5l7" id="p8" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="p9" role="3clFbG">
            <node concept="37vLTw" id="pa" role="2Oq$k0">
              <ref role="3cqZAo" node="oQ" resolve="b" />
            </node>
            <node concept="liA8E" id="pb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="pc" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="pd" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="pe" role="37wK5m">
                <property role="11gdj1" value="17380d383dde6703L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oM" role="3cqZAp">
          <node concept="2OqwBi" id="pf" role="3clFbG">
            <node concept="37vLTw" id="pg" role="2Oq$k0">
              <ref role="3cqZAo" node="oQ" resolve="b" />
            </node>
            <node concept="liA8E" id="ph" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="pi" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/1673101796775454470" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oN" role="3cqZAp">
          <node concept="2OqwBi" id="pj" role="3clFbG">
            <node concept="37vLTw" id="pk" role="2Oq$k0">
              <ref role="3cqZAo" node="oQ" resolve="b" />
            </node>
            <node concept="liA8E" id="pl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="pm" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oO" role="3cqZAp">
          <node concept="2OqwBi" id="pn" role="3clFbG">
            <node concept="2OqwBi" id="po" role="2Oq$k0">
              <node concept="2OqwBi" id="pq" role="2Oq$k0">
                <node concept="2OqwBi" id="ps" role="2Oq$k0">
                  <node concept="37vLTw" id="pu" role="2Oq$k0">
                    <ref role="3cqZAo" node="oQ" resolve="b" />
                  </node>
                  <node concept="liA8E" id="pv" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="pw" role="37wK5m">
                      <property role="Xl_RC" value="javascript" />
                    </node>
                    <node concept="11gdke" id="px" role="37wK5m">
                      <property role="11gdj1" value="17380d383ddf35acL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="pt" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="py" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="pr" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="pz" role="37wK5m">
                  <property role="Xl_RC" value="1673101796775507372" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="pp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="oP" role="3cqZAp">
          <node concept="2OqwBi" id="p$" role="3cqZAk">
            <node concept="37vLTw" id="p_" role="2Oq$k0">
              <ref role="3cqZAo" node="oQ" resolve="b" />
            </node>
            <node concept="liA8E" id="pA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="oG" role="1B3o_S" />
      <node concept="3uibUv" id="oH" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g1" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForParameter" />
      <node concept="3clFbS" id="pB" role="3clF47">
        <node concept="3cpWs8" id="pE" role="3cqZAp">
          <node concept="3cpWsn" id="pO" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="pP" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="pQ" role="33vP2m">
              <node concept="1pGfFk" id="pR" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="pS" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="pT" role="37wK5m">
                  <property role="Xl_RC" value="Parameter" />
                </node>
                <node concept="11gdke" id="pU" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="pV" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="pW" role="37wK5m">
                  <property role="11gdj1" value="5db90e988aaf5f1eL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pF" role="3cqZAp">
          <node concept="2OqwBi" id="pX" role="3clFbG">
            <node concept="37vLTw" id="pY" role="2Oq$k0">
              <ref role="3cqZAo" node="pO" resolve="b" />
            </node>
            <node concept="liA8E" id="pZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="q0" role="37wK5m" />
              <node concept="3clFbT" id="q1" role="37wK5m" />
              <node concept="3clFbT" id="q2" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pG" role="3cqZAp">
          <node concept="2OqwBi" id="q3" role="3clFbG">
            <node concept="37vLTw" id="q4" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="q5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="q6" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="q7" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="q8" role="37wK5m">
                <property role="11gdj1" value="5db90e988abe43d1L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pH" role="3cqZAp">
          <node concept="2OqwBi" id="q9" role="3clFbG">
            <node concept="37vLTw" id="qa" role="2Oq$k0">
              <ref role="3cqZAo" node="pO" resolve="b" />
            </node>
            <node concept="liA8E" id="qb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="qc" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543336222" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pI" role="3cqZAp">
          <node concept="2OqwBi" id="qd" role="3clFbG">
            <node concept="37vLTw" id="qe" role="2Oq$k0">
              <ref role="3cqZAo" node="pO" resolve="b" />
            </node>
            <node concept="liA8E" id="qf" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="qg" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pJ" role="3cqZAp">
          <node concept="2OqwBi" id="qh" role="3clFbG">
            <node concept="2OqwBi" id="qi" role="2Oq$k0">
              <node concept="2OqwBi" id="qk" role="2Oq$k0">
                <node concept="2OqwBi" id="qm" role="2Oq$k0">
                  <node concept="37vLTw" id="qo" role="2Oq$k0">
                    <ref role="3cqZAo" node="pO" resolve="b" />
                  </node>
                  <node concept="liA8E" id="qp" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="qq" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="11gdke" id="qr" role="37wK5m">
                      <property role="11gdj1" value="5db90e988aaf5f20L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qn" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="qs" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:6753445164543930309" />
                    <node concept="11gdke" id="qt" role="37wK5m">
                      <property role="11gdj1" value="73bee2cc69694dd7L" />
                      <uo k="s:originTrace" v="n:6753445164543930309" />
                    </node>
                    <node concept="11gdke" id="qu" role="37wK5m">
                      <property role="11gdj1" value="abeb6acc8e6703a8L" />
                      <uo k="s:originTrace" v="n:6753445164543930309" />
                    </node>
                    <node concept="11gdke" id="qv" role="37wK5m">
                      <property role="11gdj1" value="5db90e988ab86fc5L" />
                      <uo k="s:originTrace" v="n:6753445164543930309" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="ql" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qw" role="37wK5m">
                  <property role="Xl_RC" value="6753445164543336224" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pK" role="3cqZAp">
          <node concept="2OqwBi" id="qx" role="3clFbG">
            <node concept="2OqwBi" id="qy" role="2Oq$k0">
              <node concept="2OqwBi" id="q$" role="2Oq$k0">
                <node concept="2OqwBi" id="qA" role="2Oq$k0">
                  <node concept="37vLTw" id="qC" role="2Oq$k0">
                    <ref role="3cqZAo" node="pO" resolve="b" />
                  </node>
                  <node concept="liA8E" id="qD" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="qE" role="37wK5m">
                      <property role="Xl_RC" value="presence" />
                    </node>
                    <node concept="11gdke" id="qF" role="37wK5m">
                      <property role="11gdj1" value="5db90e988ab12f71L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qB" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="qG" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <uo k="s:originTrace" v="n:6753445164543930315" />
                    <node concept="11gdke" id="qH" role="37wK5m">
                      <property role="11gdj1" value="73bee2cc69694dd7L" />
                      <uo k="s:originTrace" v="n:6753445164543930315" />
                    </node>
                    <node concept="11gdke" id="qI" role="37wK5m">
                      <property role="11gdj1" value="abeb6acc8e6703a8L" />
                      <uo k="s:originTrace" v="n:6753445164543930315" />
                    </node>
                    <node concept="11gdke" id="qJ" role="37wK5m">
                      <property role="11gdj1" value="5db90e988ab86fcbL" />
                      <uo k="s:originTrace" v="n:6753445164543930315" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="q_" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qK" role="37wK5m">
                  <property role="Xl_RC" value="6753445164543455089" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pL" role="3cqZAp">
          <node concept="2OqwBi" id="qL" role="3clFbG">
            <node concept="2OqwBi" id="qM" role="2Oq$k0">
              <node concept="2OqwBi" id="qO" role="2Oq$k0">
                <node concept="2OqwBi" id="qQ" role="2Oq$k0">
                  <node concept="37vLTw" id="qS" role="2Oq$k0">
                    <ref role="3cqZAo" node="pO" resolve="b" />
                  </node>
                  <node concept="liA8E" id="qT" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="qU" role="37wK5m">
                      <property role="Xl_RC" value="shortHand" />
                    </node>
                    <node concept="11gdke" id="qV" role="37wK5m">
                      <property role="11gdj1" value="17380d383dc76824L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="qR" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="qW" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="qP" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="qX" role="37wK5m">
                  <property role="Xl_RC" value="1673101796773947428" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qN" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="pM" role="3cqZAp">
          <node concept="2OqwBi" id="qY" role="3clFbG">
            <node concept="2OqwBi" id="qZ" role="2Oq$k0">
              <node concept="2OqwBi" id="r1" role="2Oq$k0">
                <node concept="2OqwBi" id="r3" role="2Oq$k0">
                  <node concept="2OqwBi" id="r5" role="2Oq$k0">
                    <node concept="2OqwBi" id="r7" role="2Oq$k0">
                      <node concept="2OqwBi" id="r9" role="2Oq$k0">
                        <node concept="37vLTw" id="rb" role="2Oq$k0">
                          <ref role="3cqZAo" node="pO" resolve="b" />
                        </node>
                        <node concept="liA8E" id="rc" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="rd" role="37wK5m">
                            <property role="Xl_RC" value="defaultDataType" />
                          </node>
                          <node concept="11gdke" id="re" role="37wK5m">
                            <property role="11gdj1" value="5db90e988abc156cL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ra" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="rf" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="rg" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="rh" role="37wK5m">
                          <property role="11gdj1" value="572def6ab655ab32L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="r8" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="ri" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="r6" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="rj" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="r4" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="rk" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="r2" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="rl" role="37wK5m">
                  <property role="Xl_RC" value="6753445164544169324" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="r0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pN" role="3cqZAp">
          <node concept="2OqwBi" id="rm" role="3cqZAk">
            <node concept="37vLTw" id="rn" role="2Oq$k0">
              <ref role="3cqZAo" node="pO" resolve="b" />
            </node>
            <node concept="liA8E" id="ro" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="pC" role="1B3o_S" />
      <node concept="3uibUv" id="pD" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g2" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForReferenceable" />
      <node concept="3clFbS" id="rp" role="3clF47">
        <node concept="3cpWs8" id="rs" role="3cqZAp">
          <node concept="3cpWsn" id="ry" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="rz" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="r$" role="33vP2m">
              <node concept="1pGfFk" id="r_" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="rA" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="rB" role="37wK5m">
                  <property role="Xl_RC" value="Referenceable" />
                </node>
                <node concept="11gdke" id="rC" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="rD" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="rE" role="37wK5m">
                  <property role="11gdj1" value="5db90e988abe43d1L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rt" role="3cqZAp">
          <node concept="2OqwBi" id="rF" role="3clFbG">
            <node concept="37vLTw" id="rG" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="rH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ru" role="3cqZAp">
          <node concept="2OqwBi" id="rI" role="3clFbG">
            <node concept="37vLTw" id="rJ" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="rK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="rL" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="rM" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="rN" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rv" role="3cqZAp">
          <node concept="2OqwBi" id="rO" role="3clFbG">
            <node concept="37vLTw" id="rP" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="rQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="rR" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164544312273" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="rw" role="3cqZAp">
          <node concept="2OqwBi" id="rS" role="3clFbG">
            <node concept="37vLTw" id="rT" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="rU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="rV" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="rx" role="3cqZAp">
          <node concept="2OqwBi" id="rW" role="3cqZAk">
            <node concept="37vLTw" id="rX" role="2Oq$k0">
              <ref role="3cqZAo" node="ry" resolve="b" />
            </node>
            <node concept="liA8E" id="rY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="rq" role="1B3o_S" />
      <node concept="3uibUv" id="rr" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g3" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForRootToolchain" />
      <node concept="3clFbS" id="rZ" role="3clF47">
        <node concept="3cpWs8" id="s2" role="3cqZAp">
          <node concept="3cpWsn" id="sa" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="sb" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="sc" role="33vP2m">
              <node concept="1pGfFk" id="sd" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="se" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="sf" role="37wK5m">
                  <property role="Xl_RC" value="RootToolchain" />
                </node>
                <node concept="11gdke" id="sg" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="sh" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="si" role="37wK5m">
                  <property role="11gdj1" value="572def6ab654f56dL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s3" role="3cqZAp">
          <node concept="2OqwBi" id="sj" role="3clFbG">
            <node concept="37vLTw" id="sk" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="sm" role="37wK5m" />
              <node concept="3clFbT" id="sn" role="37wK5m" />
              <node concept="3clFbT" id="so" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s4" role="3cqZAp">
          <node concept="2OqwBi" id="sp" role="3clFbG">
            <node concept="37vLTw" id="sq" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sr" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="ss" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="st" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="su" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s5" role="3cqZAp">
          <node concept="2OqwBi" id="sv" role="3clFbG">
            <node concept="37vLTw" id="sw" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="sx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="sy" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856302957" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s6" role="3cqZAp">
          <node concept="2OqwBi" id="sz" role="3clFbG">
            <node concept="37vLTw" id="s$" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="s_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="sA" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s7" role="3cqZAp">
          <node concept="2OqwBi" id="sB" role="3clFbG">
            <node concept="2OqwBi" id="sC" role="2Oq$k0">
              <node concept="2OqwBi" id="sE" role="2Oq$k0">
                <node concept="2OqwBi" id="sG" role="2Oq$k0">
                  <node concept="2OqwBi" id="sI" role="2Oq$k0">
                    <node concept="2OqwBi" id="sK" role="2Oq$k0">
                      <node concept="2OqwBi" id="sM" role="2Oq$k0">
                        <node concept="37vLTw" id="sO" role="2Oq$k0">
                          <ref role="3cqZAo" node="sa" resolve="b" />
                        </node>
                        <node concept="liA8E" id="sP" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="sQ" role="37wK5m">
                            <property role="Xl_RC" value="annotationSection" />
                          </node>
                          <node concept="11gdke" id="sR" role="37wK5m">
                            <property role="11gdj1" value="572def6ab66119f3L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="sN" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="sS" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="sT" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="sU" role="37wK5m">
                          <property role="11gdj1" value="572def6ab66288ffL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="sL" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="sV" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="sJ" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="sW" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="sH" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="sX" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="sF" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="sY" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857098739" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="sD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s8" role="3cqZAp">
          <node concept="2OqwBi" id="sZ" role="3clFbG">
            <node concept="2OqwBi" id="t0" role="2Oq$k0">
              <node concept="2OqwBi" id="t2" role="2Oq$k0">
                <node concept="2OqwBi" id="t4" role="2Oq$k0">
                  <node concept="2OqwBi" id="t6" role="2Oq$k0">
                    <node concept="2OqwBi" id="t8" role="2Oq$k0">
                      <node concept="2OqwBi" id="ta" role="2Oq$k0">
                        <node concept="37vLTw" id="tc" role="2Oq$k0">
                          <ref role="3cqZAo" node="sa" resolve="b" />
                        </node>
                        <node concept="liA8E" id="td" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="te" role="37wK5m">
                            <property role="Xl_RC" value="body" />
                          </node>
                          <node concept="11gdke" id="tf" role="37wK5m">
                            <property role="11gdj1" value="572def6ab66119cfL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="tb" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="tg" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="th" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="ti" role="37wK5m">
                          <property role="11gdj1" value="572def6ab6628906L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="t9" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="tj" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="t7" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="tk" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="t5" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="tl" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="t3" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="tm" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857098703" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="t1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="s9" role="3cqZAp">
          <node concept="2OqwBi" id="tn" role="3cqZAk">
            <node concept="37vLTw" id="to" role="2Oq$k0">
              <ref role="3cqZAo" node="sa" resolve="b" />
            </node>
            <node concept="liA8E" id="tp" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="s0" role="1B3o_S" />
      <node concept="3uibUv" id="s1" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g4" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForShellAction" />
      <node concept="3clFbS" id="tq" role="3clF47">
        <node concept="3cpWs8" id="tt" role="3cqZAp">
          <node concept="3cpWsn" id="t_" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="tA" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="tB" role="33vP2m">
              <node concept="1pGfFk" id="tC" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="tD" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="tE" role="37wK5m">
                  <property role="Xl_RC" value="ShellAction" />
                </node>
                <node concept="11gdke" id="tF" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="tG" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="tH" role="37wK5m">
                  <property role="11gdj1" value="5db90e988aad407bL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tu" role="3cqZAp">
          <node concept="2OqwBi" id="tI" role="3clFbG">
            <node concept="37vLTw" id="tJ" role="2Oq$k0">
              <ref role="3cqZAo" node="t_" resolve="b" />
            </node>
            <node concept="liA8E" id="tK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="tL" role="37wK5m" />
              <node concept="3clFbT" id="tM" role="37wK5m" />
              <node concept="3clFbT" id="tN" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="tv" role="3cqZAp">
          <node concept="1PaTwC" id="tO" role="1aUNEU">
            <node concept="3oM_SD" id="tP" role="1PaTwD">
              <property role="3oM_SC" value="extends:" />
            </node>
            <node concept="3oM_SD" id="tQ" role="1PaTwD">
              <property role="3oM_SC" value="climat.structure.Action" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tw" role="3cqZAp">
          <node concept="15s5l7" id="tR" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: wrong number of parameters&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743462708]&quot;;" />
            <property role="huDt6" value="Error: wrong number of parameters" />
          </node>
          <node concept="2OqwBi" id="tS" role="3clFbG">
            <node concept="37vLTw" id="tT" role="2Oq$k0">
              <ref role="3cqZAo" node="t_" resolve="b" />
            </node>
            <node concept="liA8E" id="tU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(long,long,long)" resolve="super_" />
              <node concept="11gdke" id="tV" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="tW" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="tX" role="37wK5m">
                <property role="11gdj1" value="17380d383dde6703L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tx" role="3cqZAp">
          <node concept="2OqwBi" id="tY" role="3clFbG">
            <node concept="37vLTw" id="tZ" role="2Oq$k0">
              <ref role="3cqZAo" node="t_" resolve="b" />
            </node>
            <node concept="liA8E" id="u0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="u1" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543197307" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ty" role="3cqZAp">
          <node concept="2OqwBi" id="u2" role="3clFbG">
            <node concept="37vLTw" id="u3" role="2Oq$k0">
              <ref role="3cqZAo" node="t_" resolve="b" />
            </node>
            <node concept="liA8E" id="u4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="u5" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tz" role="3cqZAp">
          <node concept="2OqwBi" id="u6" role="3clFbG">
            <node concept="2OqwBi" id="u7" role="2Oq$k0">
              <node concept="2OqwBi" id="u9" role="2Oq$k0">
                <node concept="2OqwBi" id="ub" role="2Oq$k0">
                  <node concept="2OqwBi" id="ud" role="2Oq$k0">
                    <node concept="2OqwBi" id="uf" role="2Oq$k0">
                      <node concept="2OqwBi" id="uh" role="2Oq$k0">
                        <node concept="37vLTw" id="uj" role="2Oq$k0">
                          <ref role="3cqZAo" node="t_" resolve="b" />
                        </node>
                        <node concept="liA8E" id="uk" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="ul" role="37wK5m">
                            <property role="Xl_RC" value="pieces" />
                          </node>
                          <node concept="11gdke" id="um" role="37wK5m">
                            <property role="11gdj1" value="5db90e988aad407cL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ui" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="un" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="uo" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="up" role="37wK5m">
                          <property role="11gdj1" value="572def6ab655ab32L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="ug" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="uq" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="ue" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="ur" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uc" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="us" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="ua" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="ut" role="37wK5m">
                  <property role="Xl_RC" value="6753445164543197308" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="u8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="t$" role="3cqZAp">
          <node concept="2OqwBi" id="uu" role="3cqZAk">
            <node concept="37vLTw" id="uv" role="2Oq$k0">
              <ref role="3cqZAo" node="t_" resolve="b" />
            </node>
            <node concept="liA8E" id="uw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="tr" role="1B3o_S" />
      <node concept="3uibUv" id="ts" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g5" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForStringTemplatePiece" />
      <node concept="3clFbS" id="ux" role="3clF47">
        <node concept="3cpWs8" id="u$" role="3cqZAp">
          <node concept="3cpWsn" id="uF" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="uG" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="uH" role="33vP2m">
              <node concept="1pGfFk" id="uI" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="uJ" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="uK" role="37wK5m">
                  <property role="Xl_RC" value="StringTemplatePiece" />
                </node>
                <node concept="11gdke" id="uL" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="uM" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="uN" role="37wK5m">
                  <property role="11gdj1" value="572def6ab655ab33L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="u_" role="3cqZAp">
          <node concept="2OqwBi" id="uO" role="3clFbG">
            <node concept="37vLTw" id="uP" role="2Oq$k0">
              <ref role="3cqZAo" node="uF" resolve="b" />
            </node>
            <node concept="liA8E" id="uQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="uR" role="37wK5m" />
              <node concept="3clFbT" id="uS" role="37wK5m" />
              <node concept="3clFbT" id="uT" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uA" role="3cqZAp">
          <node concept="2OqwBi" id="uU" role="3clFbG">
            <node concept="37vLTw" id="uV" role="2Oq$k0">
              <ref role="3cqZAo" node="vw" resolve="b" />
            </node>
            <node concept="liA8E" id="uW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="uX" role="37wK5m">
                <property role="11gdj1" value="73bee2cc69694dd7L" />
              </node>
              <node concept="11gdke" id="uY" role="37wK5m">
                <property role="11gdj1" value="abeb6acc8e6703a8L" />
              </node>
              <node concept="11gdke" id="uZ" role="37wK5m">
                <property role="11gdj1" value="572def6ab655ab32L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uB" role="3cqZAp">
          <node concept="2OqwBi" id="v0" role="3clFbG">
            <node concept="37vLTw" id="v1" role="2Oq$k0">
              <ref role="3cqZAo" node="uF" resolve="b" />
            </node>
            <node concept="liA8E" id="v2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="v3" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856349491" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uC" role="3cqZAp">
          <node concept="2OqwBi" id="v4" role="3clFbG">
            <node concept="37vLTw" id="v5" role="2Oq$k0">
              <ref role="3cqZAo" node="uF" resolve="b" />
            </node>
            <node concept="liA8E" id="v6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="v7" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uD" role="3cqZAp">
          <node concept="2OqwBi" id="v8" role="3clFbG">
            <node concept="2OqwBi" id="v9" role="2Oq$k0">
              <node concept="2OqwBi" id="vb" role="2Oq$k0">
                <node concept="2OqwBi" id="vd" role="2Oq$k0">
                  <node concept="37vLTw" id="vf" role="2Oq$k0">
                    <ref role="3cqZAo" node="uF" resolve="b" />
                  </node>
                  <node concept="liA8E" id="vg" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="vh" role="37wK5m">
                      <property role="Xl_RC" value="content" />
                    </node>
                    <node concept="11gdke" id="vi" role="37wK5m">
                      <property role="11gdj1" value="572def6ab656a68cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="ve" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="vj" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="vc" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="vk" role="37wK5m">
                  <property role="Xl_RC" value="6281940296856413836" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="va" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="uE" role="3cqZAp">
          <node concept="2OqwBi" id="vl" role="3cqZAk">
            <node concept="37vLTw" id="vm" role="2Oq$k0">
              <ref role="3cqZAo" node="uF" resolve="b" />
            </node>
            <node concept="liA8E" id="vn" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="uy" role="1B3o_S" />
      <node concept="3uibUv" id="uz" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g6" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForTemplatePiece" />
      <node concept="3clFbS" id="vo" role="3clF47">
        <node concept="3cpWs8" id="vr" role="3cqZAp">
          <node concept="3cpWsn" id="vw" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="vx" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="vy" role="33vP2m">
              <node concept="1pGfFk" id="vz" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="v$" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="v_" role="37wK5m">
                  <property role="Xl_RC" value="TemplatePiece" />
                </node>
                <node concept="11gdke" id="vA" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="vB" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="vC" role="37wK5m">
                  <property role="11gdj1" value="572def6ab655ab32L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vs" role="3cqZAp">
          <node concept="2OqwBi" id="vD" role="3clFbG">
            <node concept="37vLTw" id="vE" role="2Oq$k0">
              <ref role="3cqZAo" node="vw" resolve="b" />
            </node>
            <node concept="liA8E" id="vF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.interface_()" resolve="interface_" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vt" role="3cqZAp">
          <node concept="2OqwBi" id="vG" role="3clFbG">
            <node concept="37vLTw" id="vH" role="2Oq$k0">
              <ref role="3cqZAo" node="vw" resolve="b" />
            </node>
            <node concept="liA8E" id="vI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="vJ" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856349490" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vu" role="3cqZAp">
          <node concept="2OqwBi" id="vK" role="3clFbG">
            <node concept="37vLTw" id="vL" role="2Oq$k0">
              <ref role="3cqZAo" node="vw" resolve="b" />
            </node>
            <node concept="liA8E" id="vM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="vN" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="vv" role="3cqZAp">
          <node concept="2OqwBi" id="vO" role="3cqZAk">
            <node concept="37vLTw" id="vP" role="2Oq$k0">
              <ref role="3cqZAo" node="vw" resolve="b" />
            </node>
            <node concept="liA8E" id="vQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="vp" role="1B3o_S" />
      <node concept="3uibUv" id="vq" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g7" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForToolchain" />
      <node concept="3clFbS" id="vR" role="3clF47">
        <node concept="3cpWs8" id="vU" role="3cqZAp">
          <node concept="3cpWsn" id="w5" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="w6" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="w7" role="33vP2m">
              <node concept="1pGfFk" id="w8" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="w9" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="wa" role="37wK5m">
                  <property role="Xl_RC" value="Toolchain" />
                </node>
                <node concept="11gdke" id="wb" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="wc" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="wd" role="37wK5m">
                  <property role="11gdj1" value="572def6ab655c228L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vV" role="3cqZAp">
          <node concept="2OqwBi" id="we" role="3clFbG">
            <node concept="37vLTw" id="wf" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="wg" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="wh" role="37wK5m" />
              <node concept="3clFbT" id="wi" role="37wK5m" />
              <node concept="3clFbT" id="wj" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vW" role="3cqZAp">
          <node concept="2OqwBi" id="wk" role="3clFbG">
            <node concept="37vLTw" id="wl" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="wm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="wn" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="wo" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="wp" role="37wK5m">
                <property role="11gdj1" value="110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vX" role="3cqZAp">
          <node concept="2OqwBi" id="wq" role="3clFbG">
            <node concept="37vLTw" id="wr" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="ws" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="11gdke" id="wt" role="37wK5m">
                <property role="11gdj1" value="ceab519525ea4f22L" />
              </node>
              <node concept="11gdke" id="wu" role="37wK5m">
                <property role="11gdj1" value="9b92103b95ca8c0cL" />
              </node>
              <node concept="11gdke" id="wv" role="37wK5m">
                <property role="11gdj1" value="33d23ee961a0cbf3L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vY" role="3cqZAp">
          <node concept="2OqwBi" id="ww" role="3clFbG">
            <node concept="37vLTw" id="wx" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="wy" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="wz" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296856355368" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="vZ" role="3cqZAp">
          <node concept="2OqwBi" id="w$" role="3clFbG">
            <node concept="37vLTw" id="w_" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="wA" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="wB" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w0" role="3cqZAp">
          <node concept="2OqwBi" id="wC" role="3clFbG">
            <node concept="2OqwBi" id="wD" role="2Oq$k0">
              <node concept="2OqwBi" id="wF" role="2Oq$k0">
                <node concept="2OqwBi" id="wH" role="2Oq$k0">
                  <node concept="2OqwBi" id="wJ" role="2Oq$k0">
                    <node concept="2OqwBi" id="wL" role="2Oq$k0">
                      <node concept="2OqwBi" id="wN" role="2Oq$k0">
                        <node concept="37vLTw" id="wP" role="2Oq$k0">
                          <ref role="3cqZAo" node="w5" resolve="b" />
                        </node>
                        <node concept="liA8E" id="wQ" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="wR" role="37wK5m">
                            <property role="Xl_RC" value="annotationSection" />
                          </node>
                          <node concept="11gdke" id="wS" role="37wK5m">
                            <property role="11gdj1" value="572def6ab66119b8L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="wO" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="wT" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="wU" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="wV" role="37wK5m">
                          <property role="11gdj1" value="572def6ab66288ffL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="wM" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="wW" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="wK" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="wX" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="wI" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="wY" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="wG" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="wZ" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857098680" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="wE" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w1" role="3cqZAp">
          <node concept="2OqwBi" id="x0" role="3clFbG">
            <node concept="2OqwBi" id="x1" role="2Oq$k0">
              <node concept="2OqwBi" id="x3" role="2Oq$k0">
                <node concept="2OqwBi" id="x5" role="2Oq$k0">
                  <node concept="2OqwBi" id="x7" role="2Oq$k0">
                    <node concept="2OqwBi" id="x9" role="2Oq$k0">
                      <node concept="2OqwBi" id="xb" role="2Oq$k0">
                        <node concept="37vLTw" id="xd" role="2Oq$k0">
                          <ref role="3cqZAo" node="w5" resolve="b" />
                        </node>
                        <node concept="liA8E" id="xe" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="xf" role="37wK5m">
                            <property role="Xl_RC" value="signature" />
                          </node>
                          <node concept="11gdke" id="xg" role="37wK5m">
                            <property role="11gdj1" value="5db90e988ab08ffeL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="xc" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="xh" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="xi" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="xj" role="37wK5m">
                          <property role="11gdj1" value="5db90e988aaff613L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="xa" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="xk" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="x8" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="xl" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="x6" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="xm" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="x4" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="xn" role="37wK5m">
                  <property role="Xl_RC" value="6753445164543414270" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="x2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w2" role="3cqZAp">
          <node concept="2OqwBi" id="xo" role="3clFbG">
            <node concept="2OqwBi" id="xp" role="2Oq$k0">
              <node concept="2OqwBi" id="xr" role="2Oq$k0">
                <node concept="2OqwBi" id="xt" role="2Oq$k0">
                  <node concept="2OqwBi" id="xv" role="2Oq$k0">
                    <node concept="2OqwBi" id="xx" role="2Oq$k0">
                      <node concept="2OqwBi" id="xz" role="2Oq$k0">
                        <node concept="37vLTw" id="x_" role="2Oq$k0">
                          <ref role="3cqZAo" node="w5" resolve="b" />
                        </node>
                        <node concept="liA8E" id="xA" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="xB" role="37wK5m">
                            <property role="Xl_RC" value="body" />
                          </node>
                          <node concept="11gdke" id="xC" role="37wK5m">
                            <property role="11gdj1" value="572def6ab6628904L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="x$" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="xD" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="xE" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="xF" role="37wK5m">
                          <property role="11gdj1" value="572def6ab6628906L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="xy" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="xG" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="xw" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="xH" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="xu" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="xI" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="xs" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="xJ" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857192708" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="xq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w3" role="3cqZAp">
          <node concept="2OqwBi" id="xK" role="3clFbG">
            <node concept="37vLTw" id="xL" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="xM" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="xN" role="37wK5m">
                <property role="Xl_RC" value="sub" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="w4" role="3cqZAp">
          <node concept="2OqwBi" id="xO" role="3cqZAk">
            <node concept="37vLTw" id="xP" role="2Oq$k0">
              <ref role="3cqZAo" node="w5" resolve="b" />
            </node>
            <node concept="liA8E" id="xQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="vS" role="1B3o_S" />
      <node concept="3uibUv" id="vT" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g8" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForToolchainBody" />
      <node concept="3clFbS" id="xR" role="3clF47">
        <node concept="3cpWs8" id="xU" role="3cqZAp">
          <node concept="3cpWsn" id="y2" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="y3" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="y4" role="33vP2m">
              <node concept="1pGfFk" id="y5" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="y6" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="y7" role="37wK5m">
                  <property role="Xl_RC" value="ToolchainBody" />
                </node>
                <node concept="11gdke" id="y8" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="y9" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="ya" role="37wK5m">
                  <property role="11gdj1" value="572def6ab6628906L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xV" role="3cqZAp">
          <node concept="2OqwBi" id="yb" role="3clFbG">
            <node concept="37vLTw" id="yc" role="2Oq$k0">
              <ref role="3cqZAo" node="y2" resolve="b" />
            </node>
            <node concept="liA8E" id="yd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="ye" role="37wK5m" />
              <node concept="3clFbT" id="yf" role="37wK5m" />
              <node concept="3clFbT" id="yg" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xW" role="3cqZAp">
          <node concept="2OqwBi" id="yh" role="3clFbG">
            <node concept="37vLTw" id="yi" role="2Oq$k0">
              <ref role="3cqZAo" node="y2" resolve="b" />
            </node>
            <node concept="liA8E" id="yj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="yk" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6281940296857192710" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xX" role="3cqZAp">
          <node concept="2OqwBi" id="yl" role="3clFbG">
            <node concept="37vLTw" id="ym" role="2Oq$k0">
              <ref role="3cqZAo" node="y2" resolve="b" />
            </node>
            <node concept="liA8E" id="yn" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="yo" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xY" role="3cqZAp">
          <node concept="2OqwBi" id="yp" role="3clFbG">
            <node concept="2OqwBi" id="yq" role="2Oq$k0">
              <node concept="2OqwBi" id="ys" role="2Oq$k0">
                <node concept="2OqwBi" id="yu" role="2Oq$k0">
                  <node concept="2OqwBi" id="yw" role="2Oq$k0">
                    <node concept="2OqwBi" id="yy" role="2Oq$k0">
                      <node concept="2OqwBi" id="y$" role="2Oq$k0">
                        <node concept="37vLTw" id="yA" role="2Oq$k0">
                          <ref role="3cqZAo" node="y2" resolve="b" />
                        </node>
                        <node concept="liA8E" id="yB" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="yC" role="37wK5m">
                            <property role="Xl_RC" value="constants" />
                          </node>
                          <node concept="11gdke" id="yD" role="37wK5m">
                            <property role="11gdj1" value="572def6ab6628908L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="y_" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="yE" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="yF" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="yG" role="37wK5m">
                          <property role="11gdj1" value="572def6ab654f578L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="yz" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="yH" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="yx" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="yI" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="yv" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="yJ" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="yt" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="yK" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857192712" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="yr" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xZ" role="3cqZAp">
          <node concept="2OqwBi" id="yL" role="3clFbG">
            <node concept="2OqwBi" id="yM" role="2Oq$k0">
              <node concept="2OqwBi" id="yO" role="2Oq$k0">
                <node concept="2OqwBi" id="yQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="yS" role="2Oq$k0">
                    <node concept="2OqwBi" id="yU" role="2Oq$k0">
                      <node concept="2OqwBi" id="yW" role="2Oq$k0">
                        <node concept="37vLTw" id="yY" role="2Oq$k0">
                          <ref role="3cqZAo" node="y2" resolve="b" />
                        </node>
                        <node concept="liA8E" id="yZ" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="z0" role="37wK5m">
                            <property role="Xl_RC" value="action" />
                          </node>
                          <node concept="11gdke" id="z1" role="37wK5m">
                            <property role="11gdj1" value="5db90e988aad407eL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="yX" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="z2" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="z3" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="z4" role="37wK5m">
                          <property role="11gdj1" value="17380d383dde6703L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="yV" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="z5" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="yT" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="z6" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="yR" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="z7" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="yP" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="z8" role="37wK5m">
                  <property role="Xl_RC" value="6753445164543197310" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="yN" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="y0" role="3cqZAp">
          <node concept="2OqwBi" id="z9" role="3clFbG">
            <node concept="2OqwBi" id="za" role="2Oq$k0">
              <node concept="2OqwBi" id="zc" role="2Oq$k0">
                <node concept="2OqwBi" id="ze" role="2Oq$k0">
                  <node concept="2OqwBi" id="zg" role="2Oq$k0">
                    <node concept="2OqwBi" id="zi" role="2Oq$k0">
                      <node concept="2OqwBi" id="zk" role="2Oq$k0">
                        <node concept="37vLTw" id="zm" role="2Oq$k0">
                          <ref role="3cqZAo" node="y2" resolve="b" />
                        </node>
                        <node concept="liA8E" id="zn" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="zo" role="37wK5m">
                            <property role="Xl_RC" value="toolchains" />
                          </node>
                          <node concept="11gdke" id="zp" role="37wK5m">
                            <property role="11gdj1" value="572def6ab662890aL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="zl" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="zq" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="zr" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="zs" role="37wK5m">
                          <property role="11gdj1" value="572def6ab655c228L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="zj" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="zt" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="zh" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="zu" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="zf" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="zv" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="zd" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="zw" role="37wK5m">
                  <property role="Xl_RC" value="6281940296857192714" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="zb" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="y1" role="3cqZAp">
          <node concept="2OqwBi" id="zx" role="3cqZAk">
            <node concept="37vLTw" id="zy" role="2Oq$k0">
              <ref role="3cqZAo" node="y2" resolve="b" />
            </node>
            <node concept="liA8E" id="zz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="xS" role="1B3o_S" />
      <node concept="3uibUv" id="xT" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="g9" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForToolchainSignature" />
      <node concept="3clFbS" id="z$" role="3clF47">
        <node concept="3cpWs8" id="zB" role="3cqZAp">
          <node concept="3cpWsn" id="zH" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="zI" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="zJ" role="33vP2m">
              <node concept="1pGfFk" id="zK" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="zL" role="37wK5m">
                  <property role="Xl_RC" value="climat" />
                </node>
                <node concept="Xl_RD" id="zM" role="37wK5m">
                  <property role="Xl_RC" value="ToolchainSignature" />
                </node>
                <node concept="11gdke" id="zN" role="37wK5m">
                  <property role="11gdj1" value="73bee2cc69694dd7L" />
                </node>
                <node concept="11gdke" id="zO" role="37wK5m">
                  <property role="11gdj1" value="abeb6acc8e6703a8L" />
                </node>
                <node concept="11gdke" id="zP" role="37wK5m">
                  <property role="11gdj1" value="5db90e988aaff613L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zC" role="3cqZAp">
          <node concept="2OqwBi" id="zQ" role="3clFbG">
            <node concept="37vLTw" id="zR" role="2Oq$k0">
              <ref role="3cqZAo" node="zH" resolve="b" />
            </node>
            <node concept="liA8E" id="zS" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="zT" role="37wK5m" />
              <node concept="3clFbT" id="zU" role="37wK5m" />
              <node concept="3clFbT" id="zV" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zD" role="3cqZAp">
          <node concept="2OqwBi" id="zW" role="3clFbG">
            <node concept="37vLTw" id="zX" role="2Oq$k0">
              <ref role="3cqZAo" node="zH" resolve="b" />
            </node>
            <node concept="liA8E" id="zY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="zZ" role="37wK5m">
                <property role="Xl_RC" value="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)/6753445164543374867" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zE" role="3cqZAp">
          <node concept="2OqwBi" id="$0" role="3clFbG">
            <node concept="37vLTw" id="$1" role="2Oq$k0">
              <ref role="3cqZAo" node="zH" resolve="b" />
            </node>
            <node concept="liA8E" id="$2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="$3" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zF" role="3cqZAp">
          <node concept="2OqwBi" id="$4" role="3clFbG">
            <node concept="2OqwBi" id="$5" role="2Oq$k0">
              <node concept="2OqwBi" id="$7" role="2Oq$k0">
                <node concept="2OqwBi" id="$9" role="2Oq$k0">
                  <node concept="2OqwBi" id="$b" role="2Oq$k0">
                    <node concept="2OqwBi" id="$d" role="2Oq$k0">
                      <node concept="2OqwBi" id="$f" role="2Oq$k0">
                        <node concept="37vLTw" id="$h" role="2Oq$k0">
                          <ref role="3cqZAo" node="zH" resolve="b" />
                        </node>
                        <node concept="liA8E" id="$i" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="$j" role="37wK5m">
                            <property role="Xl_RC" value="parameters" />
                          </node>
                          <node concept="11gdke" id="$k" role="37wK5m">
                            <property role="11gdj1" value="5db90e988aaff614L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="$g" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="11gdke" id="$l" role="37wK5m">
                          <property role="11gdj1" value="73bee2cc69694dd7L" />
                        </node>
                        <node concept="11gdke" id="$m" role="37wK5m">
                          <property role="11gdj1" value="abeb6acc8e6703a8L" />
                        </node>
                        <node concept="11gdke" id="$n" role="37wK5m">
                          <property role="11gdj1" value="5db90e988aaf5f1eL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="$e" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="$o" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="$c" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="$p" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="$a" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="$q" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="$8" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="$r" role="37wK5m">
                  <property role="Xl_RC" value="6753445164543374868" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="$6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="zG" role="3cqZAp">
          <node concept="2OqwBi" id="$s" role="3cqZAk">
            <node concept="37vLTw" id="$t" role="2Oq$k0">
              <ref role="3cqZAo" node="zH" resolve="b" />
            </node>
            <node concept="liA8E" id="$u" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="z_" role="1B3o_S" />
      <node concept="3uibUv" id="zA" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
  </node>
</model>

