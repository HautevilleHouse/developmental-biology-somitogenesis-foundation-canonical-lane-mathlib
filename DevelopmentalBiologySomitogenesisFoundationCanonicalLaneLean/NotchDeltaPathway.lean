import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure NotchDeltaPathway where
  notchReceptor : Type u
  deltaLigand : Type v
  lateralInhibition : Prop
  boundarySharpening : Prop
  intersegmentalBorderFormation : Prop

structure NotchDeltaPathwayEvidence (N : NotchDeltaPathway) where
  lateralInhibitionClosed : N.lateralInhibition
  boundarySharpeningClosed : N.boundarySharpening
  intersegmentalBorderFormationClosed : N.intersegmentalBorderFormation

def NotchDeltaPathwayClosed (N : NotchDeltaPathway) : Prop :=
  N.lateralInhibition ∧ N.boundarySharpening ∧ N.intersegmentalBorderFormation

theorem notch_delta_pathway_closed_from_evidence (N : NotchDeltaPathway) (E : NotchDeltaPathwayEvidence N) :
    NotchDeltaPathwayClosed N := by
  exact And.intro E.lateralInhibitionClosed
    (And.intro E.boundarySharpeningClosed E.intersegmentalBorderFormationClosed)

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
