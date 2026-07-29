import PlanetaryGeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace PlanetaryGeologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def planetaryProjection : Projection PlanetaryEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem planetary_projection_idempotent (x : PlanetaryEndgameState) :
    planetaryProjection.toFun (planetaryProjection.toFun x) = planetaryProjection.toFun x := by
  exact planetaryProjection.idempotent x

end PlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
