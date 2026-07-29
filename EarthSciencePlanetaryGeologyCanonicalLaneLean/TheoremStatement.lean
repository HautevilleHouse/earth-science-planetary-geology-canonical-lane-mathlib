import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure GeologyAdmittedObject where
  planetModel : Type
  interiorStructure : Prop
  crustalDynamics : Prop
  tectonicProcesses : Prop
  magneticFieldGeneration : Prop
  atmosphereEvolution : Prop
  conclusion : crustalDynamics ∧ tectonicProcesses ∧ magneticFieldGeneration

def GeologyWitnessClosed (O : GeologyAdmittedObject) : Prop :=
  O.crustalDynamics ∧ O.tectonicProcesses ∧ O.magneticFieldGeneration

theorem geology_witness_closed_from_object (O : GeologyAdmittedObject) :
    GeologyWitnessClosed O := by
  exact O.conclusion

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse