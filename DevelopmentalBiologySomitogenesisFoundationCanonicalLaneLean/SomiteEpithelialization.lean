import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomiteEpithelializationPackage where
  mesenchymalEpithelialTransition : Prop
  somiteBoundaryFormation : Prop
  cellPolarity : Prop
  extracellularMatrix : Prop

structure SomiteEpithelializationEvidence (S : SomiteEpithelializationPackage) where
  mesenchymalEpithelialTransitionClosed : S.mesenchymalEpithelialTransition
  somiteBoundaryFormationClosed : S.somiteBoundaryFormation
  cellPolarityClosed : S.cellPolarity
  extracellularMatrixClosed : S.extracellularMatrix

def SomiteEpithelializationClosed (S : SomiteEpithelializationPackage) : Prop :=
  S.mesenchymalEpithelialTransition ∧ S.somiteBoundaryFormation ∧
  S.cellPolarity ∧ S.extracellularMatrix

theorem somite_epithelialization_closed_from_evidence
    (S : SomiteEpithelializationPackage)
    (E : SomiteEpithelializationEvidence S) : SomiteEpithelializationClosed S := by
  exact And.intro E.mesenchymalEpithelialTransitionClosed
    (And.intro E.somiteBoundaryFormationClosed
      (And.intro E.cellPolarityClosed E.extracellularMatrixClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse