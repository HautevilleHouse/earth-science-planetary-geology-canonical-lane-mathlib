import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure SedimentaryBasinPackage {G : PlanetaryGeologyAdmittedObject} (I : IgneousPetrologyPackage G) where
  basinFormation : Prop
  sedimentationProcesses : Prop
  stratigraphy : Prop
  diagenesis : Prop

structure SedimentaryBasinEvidence {G : PlanetaryGeologyAdmittedObject} {I : IgneousPetrologyPackage G} (S : SedimentaryBasinPackage I) where
  basinFormationClosed : S.basinFormation
  sedimentationProcessesClosed : S.sedimentationProcesses
  stratigraphyClosed : S.stratigraphy
  diagenesisClosed : S.diagenesis

def SedimentaryBasinClosed {G : PlanetaryGeologyAdmittedObject} {I : IgneousPetrologyPackage G} (S : SedimentaryBasinPackage I) : Prop :=
  S.basinFormation ∧ S.sedimentationProcesses ∧ S.stratigraphy ∧ S.diagenesis

theorem sedimentary_basin_closed_from_evidence
    {G : PlanetaryGeologyAdmittedObject} {I : IgneousPetrologyPackage G}
    (S : SedimentaryBasinPackage I) (E : SedimentaryBasinEvidence S) :
    SedimentaryBasinClosed S := by
  exact And.intro E.basinFormationClosed
    (And.intro E.sedimentationProcessesClosed
      (And.intro E.stratigraphyClosed E.diagenesisClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
