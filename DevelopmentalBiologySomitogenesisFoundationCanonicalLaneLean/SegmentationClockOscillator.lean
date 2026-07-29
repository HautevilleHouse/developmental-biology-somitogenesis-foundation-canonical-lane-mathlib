import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SegmentationClockOscillator where
  clockPeriod : ℝ
  notchDeltaPhaseCoupling : Prop
  herHesNegativeFeedback : Prop
  transcriptionalDelay : Prop
  oscillationRobustness : Prop

structure SegmentationClockOscillatorEvidence (C : SegmentationClockOscillator) where
  notchDeltaPhaseCouplingClosed : C.notchDeltaPhaseCoupling
  herHesNegativeFeedbackClosed : C.herHesNegativeFeedback
  transcriptionalDelayClosed : C.transcriptionalDelay
  oscillationRobustnessClosed : C.oscillationRobustness

def SegmentationClockOscillatorClosed (C : SegmentationClockOscillator) : Prop :=
  C.notchDeltaPhaseCoupling ∧ C.herHesNegativeFeedback ∧ C.transcriptionalDelay ∧ C.oscillationRobustness

theorem segmentation_clock_oscillator_closed_from_evidence (C : SegmentationClockOscillator) (E : SegmentationClockOscillatorEvidence C) :
    SegmentationClockOscillatorClosed C := by
  exact And.intro E.notchDeltaPhaseCouplingClosed
    (And.intro E.herHesNegativeFeedbackClosed
      (And.intro E.transcriptionalDelayClosed E.oscillationRobustnessClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
