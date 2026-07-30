import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure CognitiveAttentionSelectionModel where
  attentionSignal : Type
  sensoryInput : Type
  cognitiveControl : Type
  biasedCompetition : Prop
  topDownModulation : Prop
  selectiveAmplification : Prop
  suppressionOfIrrelevant : Prop

structure CognitiveAttentionSelectionEvidence (C : CognitiveAttentionSelectionModel) where
  biasedCompetitionClosed : C.biasedCompetition
  topDownModulationClosed : C.topDownModulation
  selectiveAmplificationClosed : C.selectiveAmplification
  suppressionOfIrrelevantClosed : C.suppressionOfIrrelevant

def CognitiveAttentionSelectionClosed (C : CognitiveAttentionSelectionModel) : Prop :=
  C.biasedCompetition ∧ C.topDownModulation ∧
  C.selectiveAmplification ∧ C.suppressionOfIrrelevant

theorem cognitive_attention_selection_closed_from_evidence
    (C : CognitiveAttentionSelectionModel)
    (E : CognitiveAttentionSelectionEvidence C) :
    CognitiveAttentionSelectionClosed C := by
  exact And.intro E.biasedCompetitionClosed
    (And.intro E.topDownModulationClosed
      (And.intro E.selectiveAmplificationClosed
        E.suppressionOfIrrelevantClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse