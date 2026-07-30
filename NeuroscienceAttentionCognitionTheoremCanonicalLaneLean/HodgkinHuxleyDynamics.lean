import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneVoltage : Type u
  ionConductances : Type v
  gatingVariables : Type w
  voltageEquation : Prop
  gatingDynamics : Prop
  actionPotentialExists : Prop
  spikeTimingReliable : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  voltageEquationClosed : H.voltageEquation
  gatingDynamicsClosed : H.gatingDynamics
  actionPotentialExistsClosed : H.actionPotentialExists
  spikeTimingReliableClosed : H.spikeTimingReliable

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.voltageEquation ∧ H.gatingDynamics ∧ H.actionPotentialExists ∧ H.spikeTimingReliable

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.voltageEquationClosed
    (And.intro E.gatingDynamicsClosed
      (And.intro E.actionPotentialExistsClosed E.spikeTimingReliableClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse