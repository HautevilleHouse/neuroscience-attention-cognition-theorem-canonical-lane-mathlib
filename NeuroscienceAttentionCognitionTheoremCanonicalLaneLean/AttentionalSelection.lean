import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure AttentionalSelectionPackage where
  sensoryInput : Type u
  attentionSignal : Type v
  competitiveBias : Prop
  gainModulation : Prop
  winnerTakeAll : Prop
  selectionAccuracy : Prop

structure AttentionalSelectionEvidence (A : AttentionalSelectionPackage) where
  competitiveBiasClosed : A.competitiveBias
  gainModulationClosed : A.gainModulation
  winnerTakeAllClosed : A.winnerTakeAll
  selectionAccuracyClosed : A.selectionAccuracy

def AttentionalSelectionClosed (A : AttentionalSelectionPackage) : Prop :=
  A.competitiveBias ∧ A.gainModulation ∧ A.winnerTakeAll ∧ A.selectionAccuracy

theorem attentional_selection_closed_from_evidence (A : AttentionalSelectionPackage) (E : AttentionalSelectionEvidence A) :
    AttentionalSelectionClosed A := by
  exact And.intro E.competitiveBiasClosed
    (And.intro E.gainModulationClosed
      (And.intro E.winnerTakeAllClosed E.selectionAccuracyClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse