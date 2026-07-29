import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure ClockWavePackage where
  cyclicGeneExpression : Prop
  wavefrontPropagation : Prop
  segmentFormation : Prop
  clockAndWavefrontCoupling : Prop

structure ClockWaveEvidence (C : ClockWavePackage) where
  cyclicGeneExpressionClosed : C.cyclicGeneExpression
  wavefrontPropagationClosed : C.wavefrontPropagation
  segmentFormationClosed : C.segmentFormation
  clockAndWavefrontCouplingClosed : C.clockAndWavefrontCoupling

def ClockWaveClosed (C : ClockWavePackage) : Prop :=
  C.cyclicGeneExpression ∧ C.wavefrontPropagation ∧
  C.segmentFormation ∧ C.clockAndWavefrontCoupling

theorem clock_wave_closed_from_evidence (C : ClockWavePackage)
    (E : ClockWaveEvidence C) : ClockWaveClosed C := by
  exact And.intro E.cyclicGeneExpressionClosed
    (And.intro E.wavefrontPropagationClosed
      (And.intro E.segmentFormationClosed E.clockAndWavefrontCouplingClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse