import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure ClockWavePackage where
  notchDeltaOscillation : Prop
  hairyEnhancerBinding : Prop
  mesp2Wavefront : Prop
  segmentBorderFormation : Prop

structure ClockWaveEvidence (C : ClockWavePackage) where
  notchDeltaOscillationClosed : C.notchDeltaOscillation
  hairyEnhancerBindingClosed : C.hairyEnhancerBinding
  mesp2WavefrontClosed : C.mesp2Wavefront
  segmentBorderFormationClosed : C.segmentBorderFormation

def ClockWaveClosed (C : ClockWavePackage) : Prop :=
  C.notchDeltaOscillation ∧ C.hairyEnhancerBinding ∧ C.mesp2Wavefront ∧ C.segmentBorderFormation

theorem clock_wave_closed_from_evidence (C : ClockWavePackage) (E : ClockWaveEvidence C) : ClockWaveClosed C := by
  exact And.intro E.notchDeltaOscillationClosed (And.intro E.hairyEnhancerBindingClosed (And.intro E.mesp2WavefrontClosed E.segmentBorderFormationClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
