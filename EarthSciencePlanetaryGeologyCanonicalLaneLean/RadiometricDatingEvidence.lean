import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure RadiometricDatingPackage where
  decayConstantsKnown : Prop
  parentDaughterIsotopes : Prop
  closureTemperature : Prop
  ageDetermination : Prop

structure RadiometricDatingEvidence (R : RadiometricDatingPackage) where
  decayConstantsKnownClosed : R.decayConstantsKnown
  parentDaughterIsotopesClosed : R.parentDaughterIsotopes
  closureTemperatureClosed : R.closureTemperature
  ageDeterminationClosed : R.ageDetermination

def RadiometricDatingClosed (R : RadiometricDatingPackage) : Prop :=
  R.decayConstantsKnown ∧ R.parentDaughterIsotopes ∧ R.closureTemperature ∧ R.ageDetermination

theorem radiometric_dating_closed_from_evidence (R : RadiometricDatingPackage) (E : RadiometricDatingEvidence R) :
    RadiometricDatingClosed R := by
  exact And.intro E.decayConstantsKnownClosed
    (And.intro E.parentDaughterIsotopesClosed
      (And.intro E.closureTemperatureClosed E.ageDeterminationClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse