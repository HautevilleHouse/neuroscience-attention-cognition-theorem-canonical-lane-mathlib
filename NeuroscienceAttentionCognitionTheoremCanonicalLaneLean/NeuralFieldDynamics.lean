import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure NeuralFieldDynamicsPackage where
  activityBumpSolution : Prop
  attractorStability : Prop
  travelingWave : Prop
  bifurcationRoutes : Prop

structure NeuralFieldDynamicsEvidence (N : NeuralFieldDynamicsPackage) where
  activityBumpSolutionClosed : N.activityBumpSolution
  attractorStabilityClosed : N.attractorStability
  travelingWaveClosed : N.travelingWave
  bifurcationRoutesClosed : N.bifurcationRoutes

def NeuralFieldDynamicsClosed (N : NeuralFieldDynamicsPackage) : Prop :=
  N.activityBumpSolution ∧ N.attractorStability ∧ N.travelingWave ∧ N.bifurcationRoutes

theorem neural_field_dynamics_closed_from_evidence (N : NeuralFieldDynamicsPackage) (E : NeuralFieldDynamicsEvidence N) : NeuralFieldDynamicsClosed N := by
  exact And.intro E.activityBumpSolutionClosed (And.intro E.attractorStabilityClosed (And.intro E.travelingWaveClosed E.bifurcationRoutesClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse