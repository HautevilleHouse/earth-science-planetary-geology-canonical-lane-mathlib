import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlanetaryGeologyCanonicalLaneLean

structure MantlePlumePackage where
  hotspotVolcanism : Prop
  mantlePlumeOriginates : Prop
  plumeBeneathLithosphere : Prop
  volcanicChainFormed : Prop

structure MantlePlumeEvidence (M : MantlePlumePackage) where
  hotspotVolcanismClosed : M.hotspotVolcanism
  mantlePlumeOriginatesClosed : M.mantlePlumeOriginates
  plumeBeneathLithosphereClosed : M.plumeBeneathLithosphere
  volcanicChainFormedClosed : M.volcanicChainFormed

def MantlePlumeClosed (M : MantlePlumePackage) : Prop :=
  M.hotspotVolcanism ∧ M.mantlePlumeOriginates ∧ M.plumeBeneathLithosphere ∧ M.volcanicChainFormed

theorem mantle_plume_closed_from_evidence (M : MantlePlumePackage) (E : MantlePlumeEvidence M) :
    MantlePlumeClosed M := by
  exact And.intro E.hotspotVolcanismClosed
    (And.intro E.mantlePlumeOriginatesClosed
      (And.intro E.plumeBeneathLithosphereClosed E.volcanicChainFormedClosed))

end EarthSciencePlanetaryGeologyCanonicalLaneLean
end HautevilleHouse