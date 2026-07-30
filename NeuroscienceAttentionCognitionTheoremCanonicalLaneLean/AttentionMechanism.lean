import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure AttentionMechanismPackage where
  sensoryInput : Prop
  saliencyMap : Prop
  topDownBias : Prop
  selectiveProcessing : Prop
  workingMemoryUpdate : Prop

structure AttentionMechanismEvidence (A : AttentionMechanismPackage) where
  sensoryInputClosed : A.sensoryInput
  saliencyMapClosed : A.saliencyMap
  topDownBiasClosed : A.topDownBias
  selectiveProcessingClosed : A.selectiveProcessing
  workingMemoryUpdateClosed : A.workingMemoryUpdate

def AttentionMechanismClosed (A : AttentionMechanismPackage) : Prop :=
  A.sensoryInput ∧ A.saliencyMap ∧ A.topDownBias ∧
  A.selectiveProcessing ∧ A.workingMemoryUpdate

theorem attention_mechanism_closed_from_evidence (A : AttentionMechanismPackage) (E : AttentionMechanismEvidence A) :
    AttentionMechanismClosed A := by
  exact And.intro E.sensoryInputClosed
    (And.intro E.saliencyMapClosed
      (And.intro E.topDownBiasClosed
        (And.intro E.selectiveProcessingClosed E.workingMemoryUpdateClosed)))

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean