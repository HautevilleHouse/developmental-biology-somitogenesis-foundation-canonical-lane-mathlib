import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomitogenesisAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  somitogenesisProcess : Prop
  endpointCondition : Prop
  conclusion : endpointCondition

def SomitogenesisWitnessClosed (O : SomitogenesisAdmittedObject) : Prop :=
  O.endpointCondition

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse