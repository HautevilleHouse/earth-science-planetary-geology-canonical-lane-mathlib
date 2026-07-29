import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlanetaryStratigraphyPackage where
  crustalLayer : Type u
  mantleLayer : Type v
  coreLayer : Type w
  layerBoundariesResolved : Prop
  chronologicalOrdering : Prop
  boundaryTransitionsModeled : Prop

structure StratigraphyEvidence (P : PlanetaryStratigraphyPackage) where
  layerBoundariesResolvedClosed : P.layerBoundariesResolved
  chronologicalOrderingClosed : P.chronologicalOrdering
  boundaryTransitionsModeledClosed : P.boundaryTransitionsModeled

def StratigraphyClosed (P : PlanetaryStratigraphyPackage) : Prop :=
  P.layerBoundariesResolved ∧ P.chronologicalOrdering ∧ P.boundaryTransitionsModeled

theorem stratigraphy_closed_from_evidence (P : PlanetaryStratigraphyPackage)
    (E : StratigraphyEvidence P) : StratigraphyClosed P := by
  exact And.intro E.layerBoundariesResolvedClosed
    (And.intro E.chronologicalOrderingClosed E.boundaryTransitionsModeledClosed)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse