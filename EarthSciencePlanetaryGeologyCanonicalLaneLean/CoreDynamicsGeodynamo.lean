import EarthSciencePlanetaryGeologyCanonicalLaneLean.PlanetaryGeologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure CoreDynamicsGeodynamo where
  outerCoreConvection : Prop
  innerCoreSolidification : Prop
  magneticFieldGeneration : Prop
  secularVariationObserved : Prop

structure CoreDynamicsEvidence (C : CoreDynamicsGeodynamo) where
  outerCoreConvectionClosed : C.outerCoreConvection
  innerCoreSolidificationClosed : C.innerCoreSolidification
  magneticFieldGenerationClosed : C.magneticFieldGeneration
  secularVariationObservedClosed : C.secularVariationObserved

def CoreDynamicsGeodynamoClosed (C : CoreDynamicsGeodynamo) : Prop :=
  C.outerCoreConvection ∧ C.innerCoreSolidification ∧
  C.magneticFieldGeneration ∧ C.secularVariationObserved

theorem core_dynamics_geodynamo_closed_from_evidence (C : CoreDynamicsGeodynamo) (E : CoreDynamicsEvidence C) :
    CoreDynamicsGeodynamoClosed C := by
  exact And.intro E.outerCoreConvectionClosed
    (And.intro E.innerCoreSolidificationClosed
      (And.intro E.magneticFieldGenerationClosed E.secularVariationObservedClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse