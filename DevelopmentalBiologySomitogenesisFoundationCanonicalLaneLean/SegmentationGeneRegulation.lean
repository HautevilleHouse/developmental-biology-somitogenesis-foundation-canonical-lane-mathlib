import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SegmentationGeneRegulationPackage where
  geneticRegulatoryNetwork : Prop
  segmentationGeneExpression : Prop
  morphogenGradient : Prop
  positionalIdentity : Prop

structure SegmentationGeneRegulationEvidence (S : SegmentationGeneRegulationPackage) where
  geneticRegulatoryNetworkClosed : S.geneticRegulatoryNetwork
  segmentationGeneExpressionClosed : S.segmentationGeneExpression
  morphogenGradientClosed : S.morphogenGradient
  positionalIdentityClosed : S.positionalIdentity

def SegmentationGeneRegulationClosed (S : SegmentationGeneRegulationPackage) : Prop :=
  S.geneticRegulatoryNetwork ∧ S.segmentationGeneExpression ∧
  S.morphogenGradient ∧ S.positionalIdentity

theorem segmentation_gene_regulation_closed_from_evidence
    (S : SegmentationGeneRegulationPackage)
    (E : SegmentationGeneRegulationEvidence S) : SegmentationGeneRegulationClosed S := by
  exact And.intro E.geneticRegulatoryNetworkClosed
    (And.intro E.segmentationGeneExpressionClosed
      (And.intro E.morphogenGradientClosed E.positionalIdentityClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse