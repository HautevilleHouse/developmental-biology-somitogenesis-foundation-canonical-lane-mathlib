import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  notchDeltaHes7OscillatoryLoop : Prop
  hairyEnhancerOfSplitRepression : Prop
  mesp2Tbx6Activation : Prop
  lfngRipply2Modulation : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  notchDeltaHes7OscillatoryLoopClosed : G.notchDeltaHes7OscillatoryLoop
  hairyEnhancerOfSplitRepressionClosed : G.hairyEnhancerOfSplitRepression
  mesp2Tbx6ActivationClosed : G.mesp2Tbx6Activation
  lfngRipply2ModulationClosed : G.lfngRipply2Modulation

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.notchDeltaHes7OscillatoryLoop ∧ G.hairyEnhancerOfSplitRepression ∧ G.mesp2Tbx6Activation ∧ G.lfngRipply2Modulation

theorem gene_regulatory_network_closed_from_evidence
  (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.notchDeltaHes7OscillatoryLoopClosed (And.intro E.hairyEnhancerOfSplitRepressionClosed (And.intro E.mesp2Tbx6ActivationClosed E.lfngRipply2ModulationClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
