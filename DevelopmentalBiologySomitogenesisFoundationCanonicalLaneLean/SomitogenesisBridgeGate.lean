import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

def bridgeClosed (A : SomitogenesisAdmissibleClass) : Prop :=
  objectClosed A.object
  where
    objectClosed (O : SomitogenesisAdmittedObject) : Prop := O.oscillatoryGeneExpression ∧ O.somiteFormationCompetent

theorem bridge_from_admissible_class (A : SomitogenesisAdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.oscillatoryGeneExpression A.object.somiteFormationCompetent

def gateClosed (A : SomitogenesisAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SomitogenesisAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse