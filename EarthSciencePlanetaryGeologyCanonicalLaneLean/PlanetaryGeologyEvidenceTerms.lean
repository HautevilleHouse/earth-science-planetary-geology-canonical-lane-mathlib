import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure IgneousPetrologyEvidenceTerms {G : PlanetaryGeologyAdmittedObject}
    (P : IgneousPetrologyPackage G) (E : IgneousPetrologyEvidence P) where
  magmaCompositionClosed : E.magmaCompositionClosed
  crystallizationSequenceClosed : E.crystallizationSequenceClosed
  intrusiveExtrusiveStructuresClosed : E.intrusiveExtrusiveStructuresClosed
  volatileContentClosed : E.volatileContentClosed
  packageClosed : IgneousPetrologyClosed P

def IgneousPetrologyPackage.evidenceTerms {G : PlanetaryGeologyAdmittedObject}
    (P : IgneousPetrologyPackage G) (E : IgneousPetrologyEvidence P) : IgneousPetrologyEvidenceTerms P E :=
  { magmaCompositionClosed := E.magmaCompositionClosed
    crystallizationSequenceClosed := E.crystallizationSequenceClosed
    intrusiveExtrusiveStructuresClosed := E.intrusiveExtrusiveStructuresClosed
    volatileContentClosed := E.volatileContentClosed
    packageClosed := igneous_petrology_closed_from_evidence P E
  }

structure SedimentaryBasinEvidenceTerms {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} (S : SedimentaryBasinPackage I) (E : SedimentaryBasinEvidence S) where
  basinFormationClosed : E.basinFormationClosed
  sedimentationProcessesClosed : E.sedimentationProcessesClosed
  stratigraphyClosed : E.stratigraphyClosed
  diagenesisClosed : E.diagenesisClosed
  packageClosed : SedimentaryBasinClosed S

def SedimentaryBasinPackage.evidenceTerms {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} (S : SedimentaryBasinPackage I) (E : SedimentaryBasinEvidence S) : SedimentaryBasinEvidenceTerms S E :=
  { basinFormationClosed := E.basinFormationClosed
    sedimentationProcessesClosed := E.sedimentationProcessesClosed
    stratigraphyClosed := E.stratigraphyClosed
    diagenesisClosed := E.diagenesisClosed
    packageClosed := sedimentary_basin_closed_from_evidence S E
  }

structure TectonicProcessesEvidenceTerms {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    (T : TectonicProcessesPackage I S) (E : TectonicProcessesEvidence T) where
  plateMotionClosed : E.plateMotionClosed
  faultingAndFoldingClosed : E.faultingAndFoldingClosed
  mountainBuildingClosed : E.mountainBuildingClosed
  metamorphismClosed : E.metamorphismClosed
  packageClosed : TectonicProcessesClosed T

def TectonicProcessesPackage.evidenceTerms {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    (T : TectonicProcessesPackage I S) (E : TectonicProcessesEvidence T) : TectonicProcessesEvidenceTerms T E :=
  { plateMotionClosed := E.plateMotionClosed
    faultingAndFoldingClosed := E.faultingAndFoldingClosed
    mountainBuildingClosed := E.mountainBuildingClosed
    metamorphismClosed := E.metamorphismClosed
    packageClosed := tectonic_processes_closed_from_evidence T E
  }

structure GeologicTimeScaleEvidenceTerms {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    {T : TectonicProcessesPackage I S}
    (C : GeologicTimeScalePackage I S T) (E : GeologicTimeScaleEvidence C) where
  absoluteDatingClosed : E.absoluteDatingClosed
  relativeDatingClosed : E.relativeDatingClosed
  stratigraphicCorrelationClosed : E.stratigraphicCorrelationClosed
  eventChronologyClosed : E.eventChronologyClosed
  packageClosed : GeologicTimeScaleClosed C

def GeologicTimeScalePackage.evidenceTerms {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    {T : TectonicProcessesPackage I S}
    (C : GeologicTimeScalePackage I S T) (E : GeologicTimeScaleEvidence C) : GeologicTimeScaleEvidenceTerms C E :=
  { absoluteDatingClosed := E.absoluteDatingClosed
    relativeDatingClosed := E.relativeDatingClosed
    stratigraphicCorrelationClosed := E.stratigraphicCorrelationClosed
    eventChronologyClosed := E.eventChronologyClosed
    packageClosed := geologic_time_scale_closed_from_evidence C E
  }

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
