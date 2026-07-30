import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure AttentionalFilterModel where
  sensoryInputs : Type
  attentionalBias : Type
  selectionMechanism : Prop
  gainModulation : Prop
  competitiveDynamics : Prop
  topDownFeedback : Prop
  behavioralOutput : Prop

structure AttentionalFilterEvidence (A : AttentionalFilterModel) where
  selectionMechanismClosed : A.selectionMechanism
  gainModulationClosed : A.gainModulation
  competitiveDynamicsClosed : A.competitiveDynamics
  topDownFeedbackClosed : A.topDownFeedback
  behavioralOutputClosed : A.behavioralOutput

def AttentionalFilterClosed (A : AttentionalFilterModel) : Prop :=
  A.selectionMechanism ∧ A.gainModulation ∧ A.competitiveDynamics ∧ A.topDownFeedback ∧ A.behavioralOutput

theorem attentional_filter_closed_from_evidence (A : AttentionalFilterModel) (E : AttentionalFilterEvidence A) : AttentionalFilterClosed A := by
  exact And.intro E.selectionMechanismClosed (And.intro E.gainModulationClosed (And.intro E.competitiveDynamicsClosed (And.intro E.topDownFeedbackClosed E.behavioralOutputClosed)))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse