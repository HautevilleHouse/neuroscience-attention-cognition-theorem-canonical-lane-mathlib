import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure NeuralOscillationsPackage where
  singleNeuronSpiking : Prop
  populationRhythms : Prop
  frequencyBands : Prop
  phaseLocking : Prop
  informationCoding : Prop

structure NeuralOscillationsEvidence (N : NeuralOscillationsPackage) where
  singleNeuronSpikingClosed : N.singleNeuronSpiking
  populationRhythmsClosed : N.populationRhythms
  frequencyBandsClosed : N.frequencyBands
  phaseLockingClosed : N.phaseLocking
  informationCodingClosed : N.informationCoding

def NeuralOscillationsClosed (N : NeuralOscillationsPackage) : Prop :=
  N.singleNeuronSpiking ∧ N.populationRhythms ∧ N.frequencyBands ∧
  N.phaseLocking ∧ N.informationCoding

theorem neural_oscillations_closed_from_evidence (N : NeuralOscillationsPackage) (E : NeuralOscillationsEvidence N) :
    NeuralOscillationsClosed N := by
  exact And.intro E.singleNeuronSpikingClosed
    (And.intro E.populationRhythmsClosed
      (And.intro E.frequencyBandsClosed
        (And.intro E.phaseLockingClosed E.informationCodingClosed)))

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean