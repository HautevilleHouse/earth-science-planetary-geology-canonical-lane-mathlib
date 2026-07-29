import EarthSciencePlanetaryGeologyCanonicalLaneLean.PlanetaryGeologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure ImpactCratering where
  impactEvent : Prop
  craterFormationProcess : Prop
  shockMetamorphism : Prop
  ejectaDistribution : Prop
  ageDating : Prop

structure ImpactCrateringEvidence (I : ImpactCratering) where
  impactEventClosed : I.impactEvent
  craterFormationProcessClosed : I.craterFormationProcess
  shockMetamorphismClosed : I.shockMetamorphism
  ejectaDistributionClosed : I.ejectaDistribution
  ageDatingClosed : I.ageDating

def ImpactCrateringClosed (I : ImpactCratering) : Prop :=
  I.impactEvent ∧ I.craterFormationProcess ∧
  I.shockMetamorphism ∧ I.ejectaDistribution ∧ I.ageDating

theorem impact_cratering_closed_from_evidence (I : ImpactCratering) (E : ImpactCrateringEvidence I) :
    ImpactCrateringClosed I := by
  exact And.intro E.impactEventClosed
    (And.intro E.craterFormationProcessClosed
      (And.intro E.shockMetamorphismClosed
        (And.intro E.ejectaDistributionClosed E.ageDatingClosed)))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse