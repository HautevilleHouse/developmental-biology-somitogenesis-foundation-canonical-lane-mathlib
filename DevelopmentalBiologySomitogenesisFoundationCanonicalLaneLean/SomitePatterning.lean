import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean

structure SomitePatterningPackage (N : NotchOscillatorPackage) (S : SegmentationClockPackage N) where
  anteriorPosteriorPolarity : Prop
  sclerotomeDermomyotomeSpecification : Prop
  hoxGeneCoding : Prop
  segmentationClockDrivesPatterning : Prop
  segmentalIdentityEstablished : Prop

structure SomitePatterningEvidence {N : NotchOscillatorPackage} {S : SegmentationClockPackage N} (P : SomitePatterningPackage N S) where
  anteriorPosteriorPolarityClosed : P.anteriorPosteriorPolarity
  sclerotomeDermomyotomeSpecificationClosed : P.sclerotomeDermomyotomeSpecification
  hoxGeneCodingClosed : P.hoxGeneCoding
  segmentationClockDrivesPatterningClosed : P.segmentationClockDrivesPatterning
  segmentalIdentityEstablishedClosed : P.segmentalIdentityEstablished

def SomitePatterningClosed {N : NotchOscillatorPackage} {S : SegmentationClockPackage N} (P : SomitePatterningPackage N S) : Prop :=
  P.anteriorPosteriorPolarity ∧ P.sclerotomeDermomyotomeSpecification ∧ P.hoxGeneCoding ∧ P.segmentationClockDrivesPatterning ∧ P.segmentalIdentityEstablished

theorem somite_patterning_closed_from_evidence {N : NotchOscillatorPackage} {S : SegmentationClockPackage N} (P : SomitePatterningPackage N S) (E : SomitePatterningEvidence P) : SomitePatterningClosed P := by
  exact And.intro E.anteriorPosteriorPolarityClosed
    (And.intro E.sclerotomeDermomyotomeSpecificationClosed
      (And.intro E.hoxGeneCodingClosed
        (And.intro E.segmentationClockDrivesPatterningClosed E.segmentalIdentityEstablishedClosed)))

end DevelopmentalBiologySomitogenesisFoundationCanonicalLaneLean
end HautevilleHouse