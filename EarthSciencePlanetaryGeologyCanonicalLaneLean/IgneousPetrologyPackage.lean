import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure IgneousPetrologyPackage (G : PlanetaryGeologyAdmittedObject) where
  magmaComposition : Prop
  crystallizationSequence : Prop
  intrusiveExtrusiveStructures : Prop
  volatileContent : Prop

structure IgneousPetrologyEvidence {G : PlanetaryGeologyAdmittedObject} (P : IgneousPetrologyPackage G) where
  magmaCompositionClosed : P.magmaComposition
  crystallizationSequenceClosed : P.crystallizationSequence
  intrusiveExtrusiveStructuresClosed : P.intrusiveExtrusiveStructures
  volatileContentClosed : P.volatileContent

def IgneousPetrologyClosed {G : PlanetaryGeologyAdmittedObject} (P : IgneousPetrologyPackage G) : Prop :=
  P.magmaComposition ∧ P.crystallizationSequence ∧ P.intrusiveExtrusiveStructures ∧ P.volatileContent

theorem igneous_petrology_closed_from_evidence
    {G : PlanetaryGeologyAdmittedObject} (P : IgneousPetrologyPackage G)
    (E : IgneousPetrologyEvidence P) : IgneousPetrologyClosed P := by
  exact And.intro E.magmaCompositionClosed
    (And.intro E.crystallizationSequenceClosed
      (And.intro E.intrusiveExtrusiveStructuresClosed E.volatileContentClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
