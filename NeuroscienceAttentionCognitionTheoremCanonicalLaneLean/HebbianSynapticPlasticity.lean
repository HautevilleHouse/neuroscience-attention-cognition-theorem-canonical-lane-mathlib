import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  preSynapticActivity : Type u
  postSynapticActivity : Type v
  synapticWeight : Type w
  hebbianRule : Prop
  weightChangeEquation : Prop
  correlationDetectable : Prop
  longTermPotentiation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  weightChangeEquationClosed : H.weightChangeEquation
  correlationDetectableClosed : H.correlationDetectable
  longTermPotentiationClosed : H.longTermPotentiation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.weightChangeEquation ∧ H.correlationDetectable ∧ H.longTermPotentiation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed (And.intro E.weightChangeEquationClosed (And.intro E.correlationDetectableClosed E.longTermPotentiationClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse