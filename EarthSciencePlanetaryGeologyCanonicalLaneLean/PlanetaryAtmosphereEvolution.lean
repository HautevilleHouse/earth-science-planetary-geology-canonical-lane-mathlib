import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlanetaryAtmospherePackage where
  atmosphericLayer : Type u
  compositionData : Type v
  escapeMechanism : Type w
  primordialCompositionResolved : Prop
  evolutionTrajectoryModeled : Prop
  escapeProcessesIdentified : Prop

structure AtmosphereEvidence (A : PlanetaryAtmospherePackage) where
  primordialCompositionResolvedClosed : A.primordialCompositionResolved
  evolutionTrajectoryModeledClosed : A.evolutionTrajectoryModeled
  escapeProcessesIdentifiedClosed : A.escapeProcessesIdentified

def AtmosphereClosed (A : PlanetaryAtmospherePackage) : Prop :=
  A.primordialCompositionResolved ∧ A.evolutionTrajectoryModeled ∧ A.escapeProcessesIdentified

theorem atmosphere_closed_from_evidence (A : PlanetaryAtmospherePackage)
    (E : AtmosphereEvidence A) : AtmosphereClosed A := by
  exact And.intro E.primordialCompositionResolvedClosed
    (And.intro E.evolutionTrajectoryModeledClosed E.escapeProcessesIdentifiedClosed)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse