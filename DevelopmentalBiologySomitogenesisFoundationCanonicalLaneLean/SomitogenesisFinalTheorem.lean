import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

def ConstrainedSomitogenesisClosure (A : SomitogenesisAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_somitogenesis_endgame (A : SomitogenesisAdmissibleClass) : ConstrainedSomitogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse