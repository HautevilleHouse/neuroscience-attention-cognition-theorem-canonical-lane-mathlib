import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAttentionCognitionTheoremCanonicalLaneLean.NeuronMembraneModel

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure HodgkinHuxleyCircuit (M : NeuronMembraneModel) where
  voltageClampData : Prop
  rateEquations : Prop
  spikeGeneration : Prop
  sodiumInactivation : Prop
  potassiumDelayedRectifier : Prop

structure HodgkinHuxleyEvidence {M : NeuronMembraneModel}
    (H : HodgkinHuxleyCircuit M) where
  voltageClampDataClosed : H.voltageClampData
  rateEquationsClosed : H.rateEquations
  spikeGenerationClosed : H.spikeGeneration
  sodiumInactivationClosed : H.sodiumInactivation
  potassiumDelayedRectifierClosed : H.potassiumDelayedRectifier

def HodgkinHuxleyClosed {M : NeuronMembraneModel}
    (H : HodgkinHuxleyCircuit M) : Prop :=
  H.voltageClampData ∧ H.rateEquations ∧ H.spikeGeneration ∧
  H.sodiumInactivation ∧ H.potassiumDelayedRectifier

theorem hodgkin_huxley_closed_from_evidence {M : NeuronMembraneModel}
    (H : HodgkinHuxleyCircuit M) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.voltageClampDataClosed
    (And.intro E.rateEquationsClosed
      (And.intro E.spikeGenerationClosed
        (And.intro E.sodiumInactivationClosed
          E.potassiumDelayedRectifierClosed)))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse