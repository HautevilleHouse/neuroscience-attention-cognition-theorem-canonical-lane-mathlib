import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure NeuronMembraneModel where
  membranePotential : Type
  ionConductances : Type
  capacitance : Prop
  sodiumChannelActivation : Prop
  potassiumChannelActivation : Prop
  leakCurrent : Prop

structure NeuronMembraneEvidence (M : NeuronMembraneModel) where
  capacitanceClosed : M.capacitance
  sodiumChannelActivationClosed : M.sodiumChannelActivation
  potassiumChannelActivationClosed : M.potassiumChannelActivation
  leakCurrentClosed : M.leakCurrent

def NeuronMembraneClosed (M : NeuronMembraneModel) : Prop :=
  M.capacitance ∧ M.sodiumChannelActivation ∧
  M.potassiumChannelActivation ∧ M.leakCurrent

theorem neuron_membrane_closed_from_evidence (M : NeuronMembraneModel)
    (E : NeuronMembraneEvidence M) : NeuronMembraneClosed M := by
  exact And.intro E.capacitanceClosed
    (And.intro E.sodiumChannelActivationClosed
      (And.intro E.potassiumChannelActivationClosed E.leakCurrentClosed))

end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean
end HautevilleHouse