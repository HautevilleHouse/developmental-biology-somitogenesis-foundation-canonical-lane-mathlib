import canonicalLaneMathlib.AdmissibleClass

/-!
# Coupled Oscillator Model Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure CoupledOscillatorPackage where
  cellCycleOscillator : Prop
  notchOscillator : Prop
  winglessOscillator : Prop
  phaseLocking : Prop

structure CoupledOscillatorEvidence (C : CoupledOscillatorPackage) where
  cellCycleOscillatorClosed : C.cellCycleOscillator
  notchOscillatorClosed : C.notchOscillator
  winglessOscillatorClosed : C.winglessOscillator
  phaseLockingClosed : C.phaseLocking

def CoupledOscillatorClosed (C : CoupledOscillatorPackage) : Prop :=
  C.cellCycleOscillator ∧ C.notchOscillator ∧
  C.winglessOscillator ∧ C.phaseLocking

theorem coupled_oscillator_closed_from_evidence
    (C : CoupledOscillatorPackage) (E : CoupledOscillatorEvidence C) :
    CoupledOscillatorClosed C := by
  exact And.intro E.cellCycleOscillatorClosed
    (And.intro E.notchOscillatorClosed
      (And.intro E.winglessOscillatorClosed E.phaseLockingClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse