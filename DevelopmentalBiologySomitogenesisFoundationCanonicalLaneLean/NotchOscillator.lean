import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure NotchOscillatorPackage where
  cellIdentity : Prop
  lateralInhibitionActive : Prop
  her7Clock : Prop
  deltaNotchCoupling : Prop
  oscillationPeriodMeasured : Prop

structure NotchOscillatorEvidence (N : NotchOscillatorPackage) where
  cellIdentityClosed : N.cellIdentity
  lateralInhibitionActiveClosed : N.lateralInhibitionActive
  her7ClockClosed : N.her7Clock
  deltaNotchCouplingClosed : N.deltaNotchCoupling
  oscillationPeriodMeasuredClosed : N.oscillationPeriodMeasured

def NotchOscillatorClosed (N : NotchOscillatorPackage) : Prop :=
  N.cellIdentity ∧ N.lateralInhibitionActive ∧ N.her7Clock ∧ N.deltaNotchCoupling ∧ N.oscillationPeriodMeasured

theorem notch_oscillator_closed_from_evidence (N : NotchOscillatorPackage) (E : NotchOscillatorEvidence N) : NotchOscillatorClosed N := by
  exact And.intro E.cellIdentityClosed
    (And.intro E.lateralInhibitionActiveClosed
      (And.intro E.her7ClockClosed
        (And.intro E.deltaNotchCouplingClosed E.oscillationPeriodMeasuredClosed)))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse