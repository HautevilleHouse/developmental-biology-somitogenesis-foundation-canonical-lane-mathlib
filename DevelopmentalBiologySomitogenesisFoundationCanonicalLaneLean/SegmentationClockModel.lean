import canonicalLaneMathlib.AdmissibleClass

/-!
# Segmentation Clock Model Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SegmentationClockPackage where
  cyclicGeneExpression : Prop
  deltaNotchCoupling : Prop
  wavefrontPropagation : Prop
  somiteBoudaryFormation : Prop

structure SegmentationClockEvidence (C : SegmentationClockPackage) where
  cyclicGeneExpressionClosed : C.cyclicGeneExpression
  deltaNotchCouplingClosed : C.deltaNotchCoupling
  wavefrontPropagationClosed : C.wavefrontPropagation
  somiteBoudaryFormationClosed : C.somiteBoudaryFormation

def SegmentationClockClosed (C : SegmentationClockPackage) : Prop :=
  C.cyclicGeneExpression ∧ C.deltaNotchCoupling ∧
  C.wavefrontPropagation ∧ C.somiteBoudaryFormation

theorem segmentation_clock_closed_from_evidence
    (C : SegmentationClockPackage) (E : SegmentationClockEvidence C) :
    SegmentationClockClosed C := by
  exact And.intro E.cyclicGeneExpressionClosed
    (And.intro E.deltaNotchCouplingClosed
      (And.intro E.wavefrontPropagationClosed E.somiteBoudaryFormationClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse