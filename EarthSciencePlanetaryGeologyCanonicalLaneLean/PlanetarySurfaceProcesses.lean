import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure SurfaceProcessesPackage where
  impactCrateringRecord : Type u
  volcanicFeatures : Type v
  erosionalFeatures : Type w
  craterChronologyEstablished : Prop
  volcanicHistoryReconstructed : Prop
  erosionMechanismsDetermined : Prop

structure SurfaceProcessesEvidence (S : SurfaceProcessesPackage) where
  craterChronologyEstablishedClosed : S.craterChronologyEstablished
  volcanicHistoryReconstructedClosed : S.volcanicHistoryReconstructed
  erosionMechanismsDeterminedClosed : S.erosionMechanismsDetermined

def SurfaceProcessesClosed (S : SurfaceProcessesPackage) : Prop :=
  S.craterChronologyEstablished ∧ S.volcanicHistoryReconstructed ∧ S.erosionMechanismsDetermined

theorem surface_processes_closed_from_evidence (S : SurfaceProcessesPackage)
    (E : SurfaceProcessesEvidence S) : SurfaceProcessesClosed S := by
  exact And.intro E.craterChronologyEstablishedClosed
    (And.intro E.volcanicHistoryReconstructedClosed E.erosionMechanismsDeterminedClosed)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse