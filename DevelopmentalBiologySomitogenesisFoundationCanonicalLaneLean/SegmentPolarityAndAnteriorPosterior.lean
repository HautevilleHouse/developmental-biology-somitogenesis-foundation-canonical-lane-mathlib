import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SegmentPolarityAnteriorPosteriorPackage where
  anteriorPosteriorPatterning : Prop
  hoxGeneExpression : Prop
  segmentIdentity : Prop
  positionalCues : Prop

structure SegmentPolarityAnteriorPosteriorEvidence
    (S : SegmentPolarityAnteriorPosteriorPackage) where
  anteriorPosteriorPatterningClosed : S.anteriorPosteriorPatterning
  hoxGeneExpressionClosed : S.hoxGeneExpression
  segmentIdentityClosed : S.segmentIdentity
  positionalCuesClosed : S.positionalCues

def SegmentPolarityAnteriorPosteriorClosed
    (S : SegmentPolarityAnteriorPosteriorPackage) : Prop :=
  S.anteriorPosteriorPatterning ∧ S.hoxGeneExpression ∧
  S.segmentIdentity ∧ S.positionalCues

theorem segment_polarity_anterior_posterior_closed_from_evidence
    (S : SegmentPolarityAnteriorPosteriorPackage)
    (E : SegmentPolarityAnteriorPosteriorEvidence S) :
    SegmentPolarityAnteriorPosteriorClosed S := by
  exact And.intro E.anteriorPosteriorPatterningClosed
    (And.intro E.hoxGeneExpressionClosed
      (And.intro E.segmentIdentityClosed E.positionalCuesClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse