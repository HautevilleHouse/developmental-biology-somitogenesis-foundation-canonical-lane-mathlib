import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SegmentationClockEntrainmentPackage where
  fgfWntGradient : Prop
  retinoicAcidPosteriorization : Prop
  clockCouplingStrength : Prop
  phaseWaveSynchronization : Prop

structure SegmentationClockEntrainmentEvidence (S : SegmentationClockEntrainmentPackage) where
  fgfWntGradientClosed : S.fgfWntGradient
  retinoicAcidPosteriorizationClosed : S.retinoicAcidPosteriorization
  clockCouplingStrengthClosed : S.clockCouplingStrength
  phaseWaveSynchronizationClosed : S.phaseWaveSynchronization

def SegmentationClockEntrainmentClosed (S : SegmentationClockEntrainmentPackage) : Prop :=
  S.fgfWntGradient ∧ S.retinoicAcidPosteriorization ∧ S.clockCouplingStrength ∧ S.phaseWaveSynchronization

theorem segmentation_clock_entrainment_closed_from_evidence
  (S : SegmentationClockEntrainmentPackage) (E : SegmentationClockEntrainmentEvidence S) : SegmentationClockEntrainmentClosed S := by
  exact And.intro E.fgfWntGradientClosed (And.intro E.retinoicAcidPosteriorizationClosed (And.intro E.clockCouplingStrengthClosed E.phaseWaveSynchronizationClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
