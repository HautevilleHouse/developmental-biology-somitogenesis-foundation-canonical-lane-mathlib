import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomaticAdmittedObject where
  somite : Type
  segmentationClock : Type
  oscillatoryDynamics : Prop
  morphogenGradient : Prop
  conclusion : oscillatoryDynamics ∧ morphogenGradient

structure AdmissibleClass where
  object : SomaticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.oscillatoryDynamics ∧ A.object.morphogenGradient) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse