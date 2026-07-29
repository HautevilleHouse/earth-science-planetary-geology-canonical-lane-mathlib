import EarthSciencePlanetaryGeologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

def ConstrainedPlanetaryGeologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_planetary_geology_endgame (A : AdmissibleClass) :
    ConstrainedPlanetaryGeologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse