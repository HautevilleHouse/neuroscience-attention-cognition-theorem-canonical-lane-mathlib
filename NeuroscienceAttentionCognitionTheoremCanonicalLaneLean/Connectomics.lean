import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  nodeDefinition : Prop
  edgeDefinition : Prop
  adjacencyMatrix : Prop
  smallWorldProperty : Prop
  hubNodesIdentified : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  nodeDefinitionClosed : C.nodeDefinition
  edgeDefinitionClosed : C.edgeDefinition
  adjacencyMatrixClosed : C.adjacencyMatrix
  smallWorldPropertyClosed : C.smallWorldProperty
  hubNodesIdentifiedClosed : C.hubNodesIdentified

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.nodeDefinition ∧ C.edgeDefinition ∧ C.adjacencyMatrix ∧
  C.smallWorldProperty ∧ C.hubNodesIdentified

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.nodeDefinitionClosed
    (And.intro E.edgeDefinitionClosed
      (And.intro E.adjacencyMatrixClosed
        (And.intro E.smallWorldPropertyClosed E.hubNodesIdentifiedClosed)))

end HautevilleHouse
end NeuroscienceAttentionCognitionTheoremCanonicalLaneLean