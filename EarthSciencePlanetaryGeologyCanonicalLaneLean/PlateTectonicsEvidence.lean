import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlateTectonicsPackage where
  lithosphereDivisions : Prop
  convectionDriven : Prop
  seafloorSpreading : Prop
  subductionZones : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  lithosphereDivisionsClosed : P.lithosphereDivisions
  convectionDrivenClosed : P.convectionDriven
  seafloorSpreadingClosed : P.seafloorSpreading
  subductionZonesClosed : P.subductionZones

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.lithosphereDivisions ∧ P.convectionDriven ∧ P.seafloorSpreading ∧ P.subductionZones

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage) (E : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro E.lithosphereDivisionsClosed
    (And.intro E.convectionDrivenClosed
      (And.intro E.seafloorSpreadingClosed E.subductionZonesClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse