import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SegmentationClockPackage (N : NotchOscillatorPackage) where
  somitePairFormation : Prop
  clockWavefrontModel : Prop
  fgfWntGradient : Prop
  retinoicAcidPosteriorization : Prop
  pacemakerCellsIdentified : Prop

structure SegmentationClockEvidence {N : NotchOscillatorPackage} (S : SegmentationClockPackage N) where
  somitePairFormationClosed : S.somitePairFormation
  clockWavefrontModelClosed : S.clockWavefrontModel
  fgfWntGradientClosed : S.fgfWntGradient
  retinoicAcidPosteriorizationClosed : S.retinoicAcidPosteriorization
  pacemakerCellsIdentifiedClosed : S.pacemakerCellsIdentified

def SegmentationClockClosed {N : NotchOscillatorPackage} (S : SegmentationClockPackage N) : Prop :=
  S.somitePairFormation ∧ S.clockWavefrontModel ∧ S.fgfWntGradient ∧ S.retinoicAcidPosteriorization ∧ S.pacemakerCellsIdentified

theorem segmentation_clock_closed_from_evidence {N : NotchOscillatorPackage} (S : SegmentationClockPackage N) (E : SegmentationClockEvidence S) : SegmentationClockClosed S := by
  exact And.intro E.somitePairFormationClosed
    (And.intro E.clockWavefrontModelClosed
      (And.intro E.fgfWntGradientClosed
        (And.intro E.retinoicAcidPosteriorizationClosed E.pacemakerCellsIdentifiedClosed)))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse