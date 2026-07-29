import PlanetaryGeologyCanonicalLaneLean.RheologyPackage

/-!
# Internal Structure Package
-/

namespace HautevilleHouse
namespace PlanetaryGeologyCanonicalLaneLean

structure InternalStructurePackage {G : GravityPackage}
    {S : SeismicPackage G} {R : RheologyPackage S} where
  crustThickness : Prop
  mantleConvection : Prop
  coreDynamics : Prop
  plateTectonicsActive : Prop

structure InternalStructureEvidence {G : GravityPackage}
    {S : SeismicPackage G} {R : RheologyPackage S}
    (I : InternalStructurePackage G S R) where
  crustThicknessClosed : I.crustThickness
  mantleConvectionClosed : I.mantleConvection
  coreDynamicsClosed : I.coreDynamics
  plateTectonicsActiveClosed : I.plateTectonicsActive

def InternalStructureClosed {G : GravityPackage}
    {S : SeismicPackage G} {R : RheologyPackage S}
    (I : InternalStructurePackage G S R) : Prop :=
  I.crustThickness ∧ I.mantleConvection ∧ I.coreDynamics ∧ I.plateTectonicsActive

theorem internal_structure_closed_from_evidence
    {G : GravityPackage} {S : SeismicPackage G} {R : RheologyPackage S}
    (I : InternalStructurePackage G S R) (E : InternalStructureEvidence I) :
    InternalStructureClosed I := by
  exact And.intro E.crustThicknessClosed
    (And.intro E.mantleConvectionClosed
      (And.intro E.coreDynamicsClosed E.plateTectonicsActiveClosed))

end PlanetaryGeologyCanonicalLaneLean
end HautevilleHouse
