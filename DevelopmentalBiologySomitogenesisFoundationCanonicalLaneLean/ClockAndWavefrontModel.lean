import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure ClockAndWavefrontModel where
  segmentationClock : SegmentationClockOscillator
  morphogenGradient : MorphogenGradient
  wavefrontPosition : ℝ
  somitePeriod : ℝ
  modelConsistency : Prop

structure ClockAndWavefrontModelEvidence (C : ClockAndWavefrontModel) where
  segmentationClockClosed : SegmentationClockOscillatorClosed C.segmentationClock
  morphogenGradientClosed : MorphogenGradientClosed C.morphogenGradient
  modelConsistencyClosed : C.modelConsistency

def ClockAndWavefrontModelClosed (C : ClockAndWavefrontModel) : Prop :=
  SegmentationClockOscillatorClosed C.segmentationClock ∧
  MorphogenGradientClosed C.morphogenGradient ∧
  C.modelConsistency

theorem clock_and_wavefront_model_closed_from_evidence (C : ClockAndWavefrontModel) (E : ClockAndWavefrontModelEvidence C) :
    ClockAndWavefrontModelClosed C := by
  exact And.intro E.segmentationClockClosed
    (And.intro E.morphogenGradientClosed E.modelConsistencyClosed)

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
