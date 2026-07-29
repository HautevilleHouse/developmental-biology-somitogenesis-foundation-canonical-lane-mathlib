import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomiteFormationSegment where
  presomiticMesoderm : Type u
  segmentationClock : Type v
  notchDeltaOscillation : Prop
  fgfWntGradient : Prop
  retinoicAcidWavefront : Prop
  somiteBoundaryDefined : Prop

structure SomiteFormationSegmentEvidence (S : SomiteFormationSegment) where
  notchDeltaOscillationClosed : S.notchDeltaOscillation
  fgfWntGradientClosed : S.fgfWntGradient
  retinoicAcidWavefrontClosed : S.retinoicAcidWavefront
  somiteBoundaryDefinedClosed : S.somiteBoundaryDefined

def SomiteFormationSegmentClosed (S : SomiteFormationSegment) : Prop :=
  S.notchDeltaOscillation ∧ S.fgfWntGradient ∧ S.retinoicAcidWavefront ∧ S.somiteBoundaryDefined

theorem somite_formation_segment_closed_from_evidence (S : SomiteFormationSegment) (E : SomiteFormationSegmentEvidence S) :
    SomiteFormationSegmentClosed S := by
  exact And.intro E.notchDeltaOscillationClosed
    (And.intro E.fgfWntGradientClosed
      (And.intro E.retinoicAcidWavefrontClosed E.somiteBoundaryDefinedClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
