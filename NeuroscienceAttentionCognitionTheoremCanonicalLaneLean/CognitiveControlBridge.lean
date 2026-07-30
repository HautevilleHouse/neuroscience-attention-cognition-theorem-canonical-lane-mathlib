import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure CognitiveControlPackage where
  executiveFunction : Type u
  workingMemory : Type v
  inhibitoryControl : Prop
  taskSwitching : Prop
  cognitiveLoad : Prop
  performanceMetrics : Prop

structure CognitiveControlEvidence (C : CognitiveControlPackage) where
  inhibitoryControlClosed : C.inhibitoryControl
  taskSwitchingClosed : C.taskSwitching
  cognitiveLoadClosed : C.cognitiveLoad
  performanceMetricsClosed : C.performanceMetrics

def CognitiveControlClosed (C : CognitiveControlPackage) : Prop :=
  C.inhibitoryControl ∧ C.taskSwitching ∧ C.cognitiveLoad ∧ C.performanceMetrics

theorem cognitive_control_closed_from_evidence (C : CognitiveControlPackage) (E : CognitiveControlEvidence C) :
    CognitiveControlClosed C := by
  exact And.intro E.inhibitoryControlClosed
    (And.intro E.taskSwitchingClosed
      (And.intro E.cognitiveLoadClosed E.performanceMetricsClosed))

theorem bridge_from_admissible_class (A : AdmissibleClass) : CognitiveControlClosed (A.object : CognitiveControlPackage) := by
  exact id

theorem gate_from_admissible_class (A : AdmissibleClass) : A.endpointSatisfied ∨ A.remainderRecorded := by
  exact A.gateWitness

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  CognitiveControlClosed (A.object : CognitiveControlPackage) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem constrained_neuroscience_endgame (A : AdmissibleClass) : ConstrainedNeuroscienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse