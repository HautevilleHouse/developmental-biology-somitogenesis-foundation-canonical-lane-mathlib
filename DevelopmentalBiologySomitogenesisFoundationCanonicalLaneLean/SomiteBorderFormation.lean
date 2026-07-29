import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomiteBorderFormationPackage where
  mesp2ExpressionDomain : Prop
  ephrinEphReceptorSignaling : Prop
  fibronectinMatrixRemodeling : Prop
  boundaryCellShapeChange : Prop

structure SomiteBorderFormationEvidence (S : SomiteBorderFormationPackage) where
  mesp2ExpressionDomainClosed : S.mesp2ExpressionDomain
  ephrinEphReceptorSignalingClosed : S.ephrinEphReceptorSignaling
  fibronectinMatrixRemodelingClosed : S.fibronectinMatrixRemodeling
  boundaryCellShapeChangeClosed : S.boundaryCellShapeChange

def SomiteBorderFormationClosed (S : SomiteBorderFormationPackage) : Prop :=
  S.mesp2ExpressionDomain ∧ S.ephrinEphReceptorSignaling ∧ S.fibronectinMatrixRemodeling ∧ S.boundaryCellShapeChange

theorem somite_border_formation_closed_from_evidence
  (S : SomiteBorderFormationPackage) (E : SomiteBorderFormationEvidence S) : SomiteBorderFormationClosed S := by
  exact And.intro E.mesp2ExpressionDomainClosed (And.intro E.ephrinEphReceptorSignalingClosed (And.intro E.fibronectinMatrixRemodelingClosed E.boundaryCellShapeChangeClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse
