import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomitogenesisAdmittedObject where
  organism : Type
  lifeStage : Prop
  psmPresent : Prop
  oscillatoryGeneExpression : Prop
  somiteFormationCompetent : Prop

structure SomitogenesisAdmissibleClass where
  object : SomitogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : SomitogenesisAdmissibleClass) : Prop :=
  objectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)
  where
    objectClosed (O : SomitogenesisAdmittedObject) : Prop := O.oscillatoryGeneExpression ∧ O.somiteFormationCompetent

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse