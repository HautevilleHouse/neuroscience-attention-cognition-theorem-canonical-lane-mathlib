import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure CognitiveControlPackage where
  prefrontalCortexInput : Prop
  taskRules : Prop
  conflictMonitoring : Prop
  inhibitoryControl : Prop
  goalDirectedBehavior : Prop

structure CognitiveControlEvidence (C : CognitiveControlPackage) where
  prefrontalCortexInputClosed : C.prefrontalCortexInput
  taskRulesClosed : C.taskRules
  conflictMonitoringClosed : C.conflictMonitoring
  inhibitoryControlClosed : C.inhibitoryControl
  goalDirectedBehaviorClosed : C.goalDirectedBehavior

def CognitiveControlClosed (C : CognitiveControlPackage) : Prop :=
  C.prefrontalCortexInput ∧ C.taskRules ∧ C.conflictMonitoring ∧
  C.inhibitoryControl ∧ C.goalDirectedBehavior

theorem cognitive_control_closed_from_evidence (C : CognitiveControlPackage) (E : CognitiveControlEvidence C) :
    CognitiveControlClosed C := by
  exact And.intro E.prefrontalCortexInputClosed
    (And.intro E.taskRulesClosed
      (And.intro E.conflictMonitoringClosed
        (And.intro E.inhibitoryControlClosed E.goalDirectedBehaviorClosed)))

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean