import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : Type
  ionChannelDynamics : Type
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumCurrentClosed (And.intro E.potassiumCurrentClosed (And.intro E.leakCurrentClosed E.actionPotentialGeneratedClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse