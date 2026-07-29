import PlanetaryGeologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace PlanetaryGeologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PlanetarySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PlanetaryAdmittedObject where
  space : PlanetarySpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure PlanetaryEndgameState where
  object : PlanetaryAdmittedObject

def PlanetaryWitnessClosed (O : PlanetaryAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end PlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
