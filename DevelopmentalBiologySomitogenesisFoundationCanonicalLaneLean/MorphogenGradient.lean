import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure MorphogenGradient where
  morphogenFGF8 : Type u
  morphogenWnt3a : Type v
  morphogenRetinoicAcid : Type w
  gradientFormation : Prop
  gradientPrecision : Prop
  dualGradientModel : Prop

structure MorphogenGradientEvidence (M : MorphogenGradient) where
  gradientFormationClosed : M.gradientFormation
  gradientPrecisionClosed : M.gradientPrecision
  dualGradientModelClosed : M.dualGradientModel

def MorphogenGradientClosed (M : MorphogenGradient) : Prop :=
  M.gradientFormation ∧ M.gradientPrecision ∧ M.dualGradientModel

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradient) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.gradientFormationClosed
    (And.intro E.gradientPrecisionClosed E.dualGradientModelClosed)

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
