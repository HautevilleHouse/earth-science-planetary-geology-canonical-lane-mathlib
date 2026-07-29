import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure PlanetaryGeologyAdmittedObject where
  celestialBody : Type
  geologyModel : Prop
  observationalEvidence : Prop
  conclusion : geologyModel ∧ observationalEvidence

structure AdmissibleClass where
  object : PlanetaryGeologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.geologyModel ∧ A.object.observationalEvidence) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse