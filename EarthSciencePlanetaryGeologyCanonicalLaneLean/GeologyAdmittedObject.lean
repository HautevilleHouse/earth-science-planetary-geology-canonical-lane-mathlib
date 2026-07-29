import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure GeologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeologyAdmittedObject where
  space : GeologySpace
  terrestrialBody : Prop
  differentiatedInterior : Prop
  coreModel : Type
  coreTopology : TopologicalSpace coreModel
  magneticFieldGenerated : Prop
  conclusion : magneticFieldGenerated

structure GeologyEndgameState where
  object : GeologyAdmittedObject

def GeologyWitnessClosed (O : GeologyAdmittedObject) : Prop :=
  O.magneticFieldGenerated

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse