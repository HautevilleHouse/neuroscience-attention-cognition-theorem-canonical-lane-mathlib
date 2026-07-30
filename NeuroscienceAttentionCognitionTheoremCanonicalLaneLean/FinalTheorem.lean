import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CognitiveAdmissibleObject where
  object : Type
  attentionSystemFunction : Prop
  underlyingNeuralModel : Type
  keyPreprintDOI : String
  conclusion : attentionSystemFunction

structure NeuroscienceAdmittedObject where
  cognitiveObject : CognitiveAdmissibleObject
  spikeTrainData : List Float
  hebbianEvidence : HebbianClosed (default)

structure NeuroscienceAdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : NeuroscienceAdmissibleClass) : Prop :=
  A.object.cognitiveObject.attentionSystemFunction

theorem bridge_from_admissible_class (A : NeuroscienceAdmissibleClass) : bridgeClosed A := by
  exact A.object.cognitiveObject.conclusion

def gateClosed (A : NeuroscienceAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NeuroscienceAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedAttentionCognitionClosure (A : NeuroscienceAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_attention_cognition_endgame (A : NeuroscienceAdmissibleClass) : ConstrainedAttentionCognitionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse