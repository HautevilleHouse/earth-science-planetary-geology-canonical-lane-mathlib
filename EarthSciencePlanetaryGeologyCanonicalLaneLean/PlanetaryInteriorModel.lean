import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlanetaryInteriorPackage where
  seismicVelocityProfile : Type u
  thermalState : Type v
  compositionalLayers : Type w
  velocityModelConstrained : Prop
  heatFlowModeled : Prop
  compositionalDelineationResolved : Prop

structure InteriorEvidence (I : PlanetaryInteriorPackage) where
  velocityModelConstrainedClosed : I.velocityModelConstrained
  heatFlowModeledClosed : I.heatFlowModeled
  compositionalDelineationResolvedClosed : I.compositionalDelineationResolved

def InteriorClosed (I : PlanetaryInteriorPackage) : Prop :=
  I.velocityModelConstrained ∧ I.heatFlowModeled ∧ I.compositionalDelineationResolved

theorem interior_closed_from_evidence (I : PlanetaryInteriorPackage)
    (E : InteriorEvidence I) : InteriorClosed I := by
  exact And.intro E.velocityModelConstrainedClosed
    (And.intro E.heatFlowModeledClosed E.compositionalDelineationResolvedClosed)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse