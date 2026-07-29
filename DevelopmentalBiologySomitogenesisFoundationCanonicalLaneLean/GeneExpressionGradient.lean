import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure GeneExpressionGradientPackage where
  morphogen : Type u
  gradientFormation : Prop
  targetGeneActivation : Prop
  concentrationThreshold : Prop
  boundaryDetermination : Prop

structure GeneExpressionGradientEvidence (G : GeneExpressionGradientPackage) where
  gradientFormationClosed : G.gradientFormation
  targetGeneActivationClosed : G.targetGeneActivation
  concentrationThresholdClosed : G.concentrationThreshold
  boundaryDeterminationClosed : G.boundaryDetermination

def GeneExpressionGradientClosed (G : GeneExpressionGradientPackage) : Prop :=
  G.gradientFormation ∧ G.targetGeneActivation ∧ G.concentrationThreshold ∧ G.boundaryDetermination

theorem gene_expression_gradient_closed_from_evidence (G : GeneExpressionGradientPackage) (E : GeneExpressionGradientEvidence G) :
    GeneExpressionGradientClosed G := by
  exact And.intro E.gradientFormationClosed (And.intro E.targetGeneActivationClosed (And.intro E.concentrationThresholdClosed E.boundaryDeterminationClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
