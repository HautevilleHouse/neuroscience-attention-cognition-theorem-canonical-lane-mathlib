import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakageCurrent : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  sodiumChannelDynamicsClosed : H.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : H.potassiumChannelDynamics
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.sodiumChannelDynamics ∧ H.potassiumChannelDynamics ∧
  H.leakageCurrent ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.sodiumChannelDynamicsClosed
      (And.intro E.potassiumChannelDynamicsClosed
        (And.intro E.leakageCurrentClosed E.actionPotentialGeneratedClosed)))

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean