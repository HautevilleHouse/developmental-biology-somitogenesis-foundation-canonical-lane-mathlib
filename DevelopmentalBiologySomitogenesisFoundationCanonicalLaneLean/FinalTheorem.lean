import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean.BridgeLemmas
import DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

def ConstrainedSomitogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_somitogenesis_endgame (A : AdmissibleClass) :
    ConstrainedSomitogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
