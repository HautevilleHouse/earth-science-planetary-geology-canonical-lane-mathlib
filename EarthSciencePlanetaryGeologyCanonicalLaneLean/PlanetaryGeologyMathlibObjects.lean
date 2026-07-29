import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PlanetaryBody where
  carrier : Type
  topology : TopologicalSpace carrier

structure PlanetaryGeologyAdmittedObject where
  body : PlanetaryBody
  solidSurface : Prop
  activeGeology : Prop
  evidenceOfProcesses : Prop
  conclusion : evidenceOfProcesses

structure PlanetaryGeologyEndgameState where
  object : PlanetaryGeologyAdmittedObject

def PlanetaryGeologyWitnessClosed (O : PlanetaryGeologyAdmittedObject) : Prop :=
  O.evidenceOfProcesses

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
