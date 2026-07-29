import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlanetaryMagneticFieldPackage where
  dynamoRegion : Type u
  fieldDipole : Type v
  polarityHistory : Type w
  dynamoActive : Prop
  dipoleMomentComputed : Prop
  polarityReversalRecorded : Prop

structure MagneticFieldEvidence (M : PlanetaryMagneticFieldPackage) where
  dynamoActiveClosed : M.dynamoActive
  dipoleMomentComputedClosed : M.dipoleMomentComputed
  polarityReversalRecordedClosed : M.polarityReversalRecorded

def MagneticFieldClosed (M : PlanetaryMagneticFieldPackage) : Prop :=
  M.dynamoActive ∧ M.dipoleMomentComputed ∧ M.polarityReversalRecorded

theorem magnetic_field_closed_from_evidence (M : PlanetaryMagneticFieldPackage)
    (E : MagneticFieldEvidence M) : MagneticFieldClosed M := by
  exact And.intro E.dynamoActiveClosed
    (And.intro E.dipoleMomentComputedClosed E.polarityReversalRecordedClosed)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse