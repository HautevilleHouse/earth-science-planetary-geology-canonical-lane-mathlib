import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlanetaryTectonicsPackage where
  lithosphereFragments : Type u
  plateBoundaries : Type v
  relativeMotions : Type w
  plateBoundariesMapped : Prop
  motionKinematicsModeled : Prop
  deformationHistoryAccounted : Prop

structure TectonicsEvidence (T : PlanetaryTectonicsPackage) where
  plateBoundariesMappedClosed : T.plateBoundariesMapped
  motionKinematicsModeledClosed : T.motionKinematicsModeled
  deformationHistoryAccountedClosed : T.deformationHistoryAccounted

def TectonicsClosed (T : PlanetaryTectonicsPackage) : Prop :=
  T.plateBoundariesMapped ∧ T.motionKinematicsModeled ∧ T.deformationHistoryAccounted

theorem tectonics_closed_from_evidence (T : PlanetaryTectonicsPackage)
    (E : TectonicsEvidence T) : TectonicsClosed T := by
  exact And.intro E.plateBoundariesMappedClosed
    (And.intro E.motionKinematicsModeledClosed E.deformationHistoryAccountedClosed)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse