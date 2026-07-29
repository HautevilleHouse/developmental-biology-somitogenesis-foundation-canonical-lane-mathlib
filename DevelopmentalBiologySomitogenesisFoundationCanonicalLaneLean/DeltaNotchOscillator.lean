import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure DeltaNotchOscillatorPackage where
  deltaNotchSignaling : Prop
  intercellularCoupling : Prop
  oscillatorDynamics : Prop
  synchronization : Prop

structure DeltaNotchOscillatorEvidence (D : DeltaNotchOscillatorPackage) where
  deltaNotchSignalingClosed : D.deltaNotchSignaling
  intercellularCouplingClosed : D.intercellularCoupling
  oscillatorDynamicsClosed : D.oscillatorDynamics
  synchronizationClosed : D.synchronization

def DeltaNotchOscillatorClosed (D : DeltaNotchOscillatorPackage) : Prop :=
  D.deltaNotchSignaling ∧ D.intercellularCoupling ∧
  D.oscillatorDynamics ∧ D.synchronization

theorem delta_notch_oscillator_closed_from_evidence
    (D : DeltaNotchOscillatorPackage)
    (E : DeltaNotchOscillatorEvidence D) : DeltaNotchOscillatorClosed D := by
  exact And.intro E.deltaNotchSignalingClosed
    (And.intro E.intercellularCouplingClosed
      (And.intro E.oscillatorDynamicsClosed E.synchronizationClosed))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse