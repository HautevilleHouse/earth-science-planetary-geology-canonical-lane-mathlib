import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure TectonicProcessesPackage {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I} where
  plateMotion : Prop
  faultingAndFolding : Prop
  mountainBuilding : Prop
  metamorphism : Prop

structure TectonicProcessesEvidence {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    (T : TectonicProcessesPackage I S) where
  plateMotionClosed : T.plateMotion
  faultingAndFoldingClosed : T.faultingAndFolding
  mountainBuildingClosed : T.mountainBuilding
  metamorphismClosed : T.metamorphism

def TectonicProcessesClosed {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    (T : TectonicProcessesPackage I S) : Prop :=
  T.plateMotion ∧ T.faultingAndFolding ∧ T.mountainBuilding ∧ T.metamorphism

theorem tectonic_processes_closed_from_evidence
    {G : PlanetaryGeologyAdmittedObject} {I : IgneousPetrologyPackage G}
    {S : SedimentaryBasinPackage I} (T : TectonicProcessesPackage I S)
    (E : TectonicProcessesEvidence T) : TectonicProcessesClosed T := by
  exact And.intro E.plateMotionClosed
    (And.intro E.faultingAndFoldingClosed
      (And.intro E.mountainBuildingClosed E.metamorphismClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
