import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure GeologicTimeScalePackage {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    {T : TectonicProcessesPackage I S} where
  absoluteDating : Prop
  relativeDating : Prop
  stratigraphicCorrelation : Prop
  eventChronology : Prop

structure GeologicTimeScaleEvidence {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    {T : TectonicProcessesPackage I S} (C : GeologicTimeScalePackage I S T) where
  absoluteDatingClosed : C.absoluteDating
  relativeDatingClosed : C.relativeDating
  stratigraphicCorrelationClosed : C.stratigraphicCorrelation
  eventChronologyClosed : C.eventChronology

def GeologicTimeScaleClosed {G : PlanetaryGeologyAdmittedObject}
    {I : IgneousPetrologyPackage G} {S : SedimentaryBasinPackage I}
    {T : TectonicProcessesPackage I S} (C : GeologicTimeScalePackage I S T) : Prop :=
  C.absoluteDating ∧ C.relativeDating ∧ C.stratigraphicCorrelation ∧ C.eventChronology

theorem geologic_time_scale_closed_from_evidence
    {G : PlanetaryGeologyAdmittedObject} {I : IgneousPetrologyPackage G}
    {S : SedimentaryBasinPackage I} {T : TectonicProcessesPackage I S}
    (C : GeologicTimeScalePackage I S T) (E : GeologicTimeScaleEvidence C) :
    GeologicTimeScaleClosed C := by
  exact And.intro E.absoluteDatingClosed
    (And.intro E.relativeDatingClosed
      (And.intro E.stratigraphicCorrelationClosed E.eventChronologyClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
