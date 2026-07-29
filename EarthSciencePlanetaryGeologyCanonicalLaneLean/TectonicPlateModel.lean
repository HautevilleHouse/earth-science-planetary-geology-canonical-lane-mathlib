import EarthSciencePlanetaryGeologyCanonicalLaneLean.PlanetaryGeologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure TectonicPlateModel where
  lithosphereFragmentation : Prop
  mantleConvectionDriven : Prop
  plateBoundaryTypes : Prop
  paleomagneticEvidence : Prop

structure TectonicPlateEvidence (M : TectonicPlateModel) where
  lithosphereFragmentationClosed : M.lithosphereFragmentation
  mantleConvectionDrivenClosed : M.mantleConvectionDriven
  plateBoundaryTypesClosed : M.plateBoundaryTypes
  paleomagneticEvidenceClosed : M.paleomagneticEvidence

def TectonicPlateModelClosed (M : TectonicPlateModel) : Prop :=
  M.lithosphereFragmentation ∧ M.mantleConvectionDriven ∧
  M.plateBoundaryTypes ∧ M.paleomagneticEvidence

theorem tectonic_plate_model_closed_from_evidence (M : TectonicPlateModel) (E : TectonicPlateEvidence M) :
    TectonicPlateModelClosed M := by
  exact And.intro E.lithosphereFragmentationClosed
    (And.intro E.mantleConvectionDrivenClosed
      (And.intro E.plateBoundaryTypesClosed E.paleomagneticEvidenceClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse