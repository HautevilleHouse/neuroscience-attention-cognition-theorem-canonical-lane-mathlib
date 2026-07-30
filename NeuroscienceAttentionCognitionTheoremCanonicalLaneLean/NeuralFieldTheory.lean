import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  corticalSheetGeometry : Prop
  synapticConnectivityKernel : Prop
  firingRateDynamics : Prop
  stationaryPatternsExist : Prop
  travelingWavesSupported : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  corticalSheetGeometryClosed : N.corticalSheetGeometry
  synapticConnectivityKernelClosed : N.synapticConnectivityKernel
  firingRateDynamicsClosed : N.firingRateDynamics
  stationaryPatternsExistClosed : N.stationaryPatternsExist
  travelingWavesSupportedClosed : N.travelingWavesSupported

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.corticalSheetGeometry ∧ N.synapticConnectivityKernel ∧ N.firingRateDynamics ∧
  N.stationaryPatternsExist ∧ N.travelingWavesSupported

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.corticalSheetGeometryClosed
    (And.intro E.synapticConnectivityKernelClosed
      (And.intro E.firingRateDynamicsClosed
        (And.intro E.stationaryPatternsExistClosed E.travelingWavesSupportedClosed)))

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean