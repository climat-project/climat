<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fda2233(checkpoints/climat.feedback@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="j6as" ref="r:520f2be3-af3b-4e33-8e4e-ba062d38ac72(climat.feedback)" />
    <import index="j809" ref="aaaaf3e2-decf-4e97-bf80-9109eab759ee/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.feedback.problem.legacy-constraints/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="pjnk" ref="r:a703dee7-679c-4011-a20a-7f09be120d3f(climat.structure)" />
    <import index="j80a" ref="9abaaae2-decf-4e97-bf80-9109e8b759cc/java:jetbrains.mps.core.aspects.feedback.messages(jetbrains.mps.lang.messages.api/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="9jwd" ref="9e9ef4e2-decf-4e97-bf80-9109e8b759bb/java:jetbrains.mps.core.aspects.feedback.api(jetbrains.mps.lang.feedback.api/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="" />
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="GeneratedFeedbackAspectFeedback" />
    <node concept="3Tm1VV" id="1" role="1B3o_S" />
    <node concept="3uibUv" id="2" role="EKbjA">
      <ref role="3uigEE" to="9jwd:~FeedbackAspect" resolve="FeedbackAspect" />
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="getPerConceptDescriptors" />
      <node concept="3Tm1VV" id="4" role="1B3o_S" />
      <node concept="3uibUv" id="5" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="9" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackPerConceptDescriptor" resolve="FeedbackPerConceptDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="6" role="3clF47">
        <node concept="3cpWs6" id="a" role="3cqZAp">
          <node concept="2YIFZM" id="b" role="3cqZAk">
            <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
            <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object)" resolve="of" />
            <node concept="2ShNRf" id="c" role="37wK5m">
              <node concept="1pGfFk" id="d" role="2ShVmc">
                <ref role="37wK5l" node="v" resolve="InterpolationTemplatePiece_FeedbackFeedback" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="e">
    <node concept="39e2AJ" id="f" role="39e2AI">
      <property role="39e3Y2" value="feedbackMember" />
      <node concept="39e2AG" id="h" role="39e3Y0">
        <ref role="39e2AK" to="j6as:5QT3DyaLOS5" />
        <node concept="385nmt" id="i" role="385vvn">
          <property role="385vuF" value="show message" />
          <node concept="3u3nmq" id="k" role="385v07">
            <property role="3u3nmv" value="6753445164544904709" />
          </node>
        </node>
        <node concept="39e2AT" id="j" role="39e2AY">
          <ref role="39e2AS" node="q" resolve="MSGPROVIDER_WhenReferenceIsOutOfScope_uv8skc_a" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="g" role="39e2AI">
      <property role="39e3Y2" value="feedbackAspectClass" />
      <node concept="39e2AG" id="l" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="m" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="GeneratedFeedbackAspectFeedback" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="n">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="InterpolationTemplatePiece_FeedbackFeedback" />
    <uo k="s:originTrace" v="n:6753445164544904708" />
    <node concept="Wx3nA" id="o" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="CONCEPT" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:6753445164544904708" />
      <node concept="3Tm6S6" id="z" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="35c_gC" id="$" role="33vP2m">
        <ref role="35c_gD" to="pjnk:5sHVQEQlqGQ" resolve="InterpolationTemplatePiece" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="3uibUv" id="_" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
    </node>
    <node concept="2tJIrI" id="p" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164544904708" />
    </node>
    <node concept="Wx3nA" id="q" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MSGPROVIDER_WhenReferenceIsOutOfScope_uv8skc_a" />
      <uo k="s:originTrace" v="n:6753445164544904709" />
      <node concept="3Tm6S6" id="A" role="1B3o_S" />
      <node concept="2ShNRf" id="B" role="33vP2m">
        <node concept="YeOm9" id="D" role="2ShVmc">
          <node concept="1Y3b0j" id="E" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="j80a:~BaseMessageProvider" resolve="BaseMessageProvider" />
            <ref role="37wK5l" to="j80a:~BaseMessageProvider.&lt;init&gt;(jetbrains.mps.core.aspects.feedback.problem.ProblemId)" resolve="BaseMessageProvider" />
            <node concept="2ShNRf" id="F" role="37wK5m">
              <uo k="s:originTrace" v="n:6753445164544904707" />
              <node concept="1pGfFk" id="J" role="2ShVmc">
                <ref role="37wK5l" to="j809:~RefOutOfScopeProblemId.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="RefOutOfScopeProblemId" />
                <uo k="s:originTrace" v="n:6753445164544904707" />
                <node concept="1BaE9c" id="K" role="37wK5m">
                  <property role="1ouuDV" value="LINKS" />
                  <property role="1BaxDp" value="reference$Vi1I" />
                  <uo k="s:originTrace" v="n:6753445164544904707" />
                  <node concept="2YIFZM" id="L" role="1Bazha">
                    <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                    <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                    <uo k="s:originTrace" v="n:6753445164544904707" />
                    <node concept="11gdke" id="M" role="37wK5m">
                      <property role="11gdj1" value="73bee2cc69694dd7L" />
                      <uo k="s:originTrace" v="n:6753445164544904707" />
                    </node>
                    <node concept="11gdke" id="N" role="37wK5m">
                      <property role="11gdj1" value="abeb6acc8e6703a8L" />
                      <uo k="s:originTrace" v="n:6753445164544904707" />
                    </node>
                    <node concept="11gdke" id="O" role="37wK5m">
                      <property role="11gdj1" value="572def6ab655ab36L" />
                      <uo k="s:originTrace" v="n:6753445164544904707" />
                    </node>
                    <node concept="11gdke" id="P" role="37wK5m">
                      <property role="11gdj1" value="5db90e988abe43d8L" />
                      <uo k="s:originTrace" v="n:6753445164544904707" />
                    </node>
                    <node concept="Xl_RD" id="Q" role="37wK5m">
                      <property role="Xl_RC" value="reference" />
                      <uo k="s:originTrace" v="n:6753445164544904707" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="G" role="1B3o_S" />
            <node concept="3clFb_" id="H" role="jymVt">
              <property role="TrG5h" value="yieldMessage" />
              <node concept="3Tm1VV" id="R" role="1B3o_S" />
              <node concept="2AHcQZ" id="S" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="T" role="3clF45">
                <ref role="3uigEE" to="j80a:~MessageProvider$Msg" resolve="MessageProvider.Msg" />
              </node>
              <node concept="37vLTG" id="U" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="X" role="1tU5fm">
                  <ref role="3uigEE" to="j809:~RefOutOfScopeContext" resolve="RefOutOfScopeContext" />
                  <uo k="s:originTrace" v="n:6753445164544904707" />
                </node>
              </node>
              <node concept="3clFbS" id="V" role="3clF47">
                <node concept="3cpWs6" id="Y" role="3cqZAp">
                  <node concept="1rXfSq" id="Z" role="3cqZAk">
                    <ref role="37wK5l" to="j80a:~MessageProvider.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="10" role="37wK5m">
                      <property role="Xl_RC" value="Cannot access %s because it is out of scope" />
                    </node>
                    <node concept="2OqwBi" id="11" role="37wK5m">
                      <uo k="s:originTrace" v="n:6753445164544904725" />
                      <node concept="37vLTw" id="12" role="2Oq$k0">
                        <ref role="3cqZAo" node="U" resolve="context" />
                      </node>
                      <node concept="liA8E" id="13" role="2OqNvi">
                        <ref role="37wK5l" to="j809:~RefOutOfScopeContext.getReference()" resolve="getReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="W" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="I" role="2Ghqu4">
              <ref role="3uigEE" to="j809:~RefOutOfScopeContext" resolve="RefOutOfScopeContext" />
              <uo k="s:originTrace" v="n:6753445164544904707" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="C" role="1tU5fm">
        <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
        <node concept="3uibUv" id="14" role="11_B2D">
          <ref role="3uigEE" to="j809:~RefOutOfScopeContext" resolve="RefOutOfScopeContext" />
          <uo k="s:originTrace" v="n:6753445164544904707" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="r" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164544904708" />
    </node>
    <node concept="3Tm1VV" id="s" role="1B3o_S">
      <uo k="s:originTrace" v="n:6753445164544904708" />
    </node>
    <node concept="Wx3nA" id="t" role="jymVt">
      <property role="TrG5h" value="PROVIDERS" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:6753445164544904708" />
      <node concept="3uibUv" id="15" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
        <node concept="3uibUv" id="18" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:6753445164544904708" />
        </node>
      </node>
      <node concept="3Tm6S6" id="16" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="2YIFZM" id="17" role="33vP2m">
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
        <node concept="2YIFZM" id="19" role="37wK5m">
          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
          <uo k="s:originTrace" v="n:6753445164544904708" />
          <node concept="3uibUv" id="1a" role="3PaCim">
            <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
            <uo k="s:originTrace" v="n:6753445164544904708" />
          </node>
          <node concept="37vLTw" id="1b" role="37wK5m">
            <ref role="3cqZAo" node="q" resolve="MSGPROVIDER_WhenReferenceIsOutOfScope_uv8skc_a" />
            <uo k="s:originTrace" v="n:6753445164544904708" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="u" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164544904708" />
    </node>
    <node concept="3clFbW" id="v" role="jymVt">
      <property role="TrG5h" value="BaseMessageDescriptor" />
      <uo k="s:originTrace" v="n:6753445164544904708" />
      <node concept="3cqZAl" id="1c" role="3clF45">
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="3Tm1VV" id="1d" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="3clFbS" id="1e" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164544904708" />
        <node concept="XkiVB" id="1f" role="3cqZAp">
          <ref role="37wK5l" to="9jwd:~BaseFeedbackDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="BaseFeedbackDescriptor" />
          <uo k="s:originTrace" v="n:6753445164544904708" />
          <node concept="37vLTw" id="1g" role="37wK5m">
            <ref role="3cqZAo" node="o" resolve="CONCEPT" />
            <uo k="s:originTrace" v="n:6753445164544904708" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="w" role="jymVt">
      <uo k="s:originTrace" v="n:6753445164544904708" />
    </node>
    <node concept="3clFb_" id="x" role="jymVt">
      <property role="TrG5h" value="getDeclaredProviders" />
      <uo k="s:originTrace" v="n:6753445164544904708" />
      <node concept="3uibUv" id="1h" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
        <node concept="3uibUv" id="1m" role="11_B2D">
          <ref role="3uigEE" to="9jwd:~FeedbackProvider" resolve="FeedbackProvider" />
          <uo k="s:originTrace" v="n:6753445164544904708" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1i" role="1B3o_S">
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="3clFbS" id="1j" role="3clF47">
        <uo k="s:originTrace" v="n:6753445164544904708" />
        <node concept="3cpWs6" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:6753445164544904708" />
          <node concept="2OqwBi" id="1o" role="3cqZAk">
            <uo k="s:originTrace" v="n:6753445164544904708" />
            <node concept="37vLTw" id="1p" role="2Oq$k0">
              <ref role="3cqZAo" node="t" resolve="PROVIDERS" />
              <uo k="s:originTrace" v="n:6753445164544904708" />
            </node>
            <node concept="liA8E" id="1q" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              <uo k="s:originTrace" v="n:6753445164544904708" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1k" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
      <node concept="2AHcQZ" id="1l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6753445164544904708" />
      </node>
    </node>
    <node concept="3uibUv" id="y" role="1zkMxy">
      <ref role="3uigEE" to="9jwd:~BaseFeedbackDescriptor" resolve="BaseFeedbackDescriptor" />
      <uo k="s:originTrace" v="n:6753445164544904708" />
    </node>
  </node>
</model>

