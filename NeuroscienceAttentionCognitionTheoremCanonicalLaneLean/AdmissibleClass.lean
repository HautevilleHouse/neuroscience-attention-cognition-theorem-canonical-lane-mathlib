import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  modelType : String
  empiricalSupport : Prop
  mathematicalFormulation : Prop
  conclusion : conclusion

def NeuroscienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean