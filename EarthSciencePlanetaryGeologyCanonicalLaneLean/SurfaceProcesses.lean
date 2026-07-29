import PlanetaryGeologyCanonicalLaneLean.AtmospherePackage

/-!
# Surface Processes Package
-/

namespace HautevilleHouse
namespace PlanetaryGeologyCanonicalLaneLean

structure SurfaceProcessesPackage {A : AtmospherePackage}
    {H : HydrospherePackage A} {B : BiospherePackage H} where
  erosionRate : Prop
  sedimentation : Prop
  weathering : Prop
  impactCratering : Prop

structure SurfaceProcessesEvidence {A : AtmospherePackage}
    {H : HydrospherePackage A} {B : BiospherePackage H}
    (S : SurfaceProcessesPackage A H B) where
  erosionRateClosed : S.erosionRate
  sedimentationClosed : S.sedimentation
  weatheringClosed : S.weathering
  impactCrateringClosed : S.impactCratering

def SurfaceProcessesClosed {A : AtmospherePackage}
    {H : HydrospherePackage A} {B : BiospherePackage H}
    (S : SurfaceProcessesPackage A H B) : Prop :=
  S.erosionRate ∧ S.sedimentation ∧ S.weathering ∧ S.impactCratering

theorem surface_processes_closed_from_evidence
    {A : AtmospherePackage} {H : HydrospherePackage A} {B : BiospherePackage H}
    (S : SurfaceProcessesPackage A H B) (E : SurfaceProcessesEvidence S) :
    SurfaceProcessesClosed S := by
  exact And.intro E.erosionRateClosed
    (And.intro E.sedimentationClosed
      (And.intro E.weatheringClosed E.impactCrateringClosed))

end PlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
