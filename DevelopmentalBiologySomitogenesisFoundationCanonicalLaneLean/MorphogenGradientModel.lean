import canonicalLaneMathlib.AdmissibleClass

/-!
# Morphogen Gradient Model Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  fibroblastGrowthFactorGradient : Prop
  retinoicAcidGradient : Prop
  gradientDecoding : Prop
  positionalIdentity : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  fibroblastGrowthFactorGradientClosed : M.fibroblastGrowthFactorGradient
  retinoicAcidGradientClosed : M.retinoicAcidGradient
  gradientDecodingClosed : M.gradientDecoding
  positionalIdentityClosed : M.positionalIdentity

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.fibroblastGrowthFactorGradient ∧ M.retinoicAcidGradient ∧
  M.gradientDecoding ∧ M.positionalIdentity

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.fibroblastGrowthFactorGradientClosed
    (And.intro E.retinoicAcidGradientClosed
      (And.intro E.gradientDecodingClosed E.positionalIdentityClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse