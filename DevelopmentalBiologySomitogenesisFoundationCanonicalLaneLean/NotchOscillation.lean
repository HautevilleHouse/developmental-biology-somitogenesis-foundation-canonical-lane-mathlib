import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure NotchOscillationPackage where
  oscillatorCellType : Type u
  oscillationPeriod : Prop
  notchPathwayActivation : Prop
  herHesTargetGenes : Prop
  intercellularCoupling : Prop

structure NotchOscillationEvidence (N : NotchOscillationPackage) where
  oscillationPeriodClosed : N.oscillationPeriod
  notchPathwayActivationClosed : N.notchPathwayActivation
  herHesTargetGenesClosed : N.herHesTargetGenes
  intercellularCouplingClosed : N.intercellularCoupling

def NotchOscillationClosed (N : NotchOscillationPackage) : Prop :=
  N.oscillationPeriod ∧ N.notchPathwayActivation ∧ N.herHesTargetGenes ∧ N.intercellularCoupling

theorem notch_oscillation_closed_from_evidence (N : NotchOscillationPackage) (E : NotchOscillationEvidence N) :
    NotchOscillationClosed N := by
  exact And.intro E.oscillationPeriodClosed (And.intro E.notchPathwayActivationClosed (And.intro E.herHesTargetGenesClosed E.intercellularCouplingClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
