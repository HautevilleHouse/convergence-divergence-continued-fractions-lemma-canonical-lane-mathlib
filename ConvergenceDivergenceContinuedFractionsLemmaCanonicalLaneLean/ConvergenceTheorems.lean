import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergencePackage where
  ratioTestPasses : Prop
  rootTestPasses : Prop
  integralTestPasses : Prop
  comparisonTestPasses : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  ratioTestPassesClosed : C.ratioTestPasses
  rootTestPassesClosed : C.rootTestPasses
  integralTestPassesClosed : C.integralTestPasses
  comparisonTestPassesClosed : C.comparisonTestPasses

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.ratioTestPasses ∧ C.rootTestPasses ∧ C.integralTestPasses ∧ C.comparisonTestPasses

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.ratioTestPassesClosed (And.intro E.rootTestPassesClosed (And.intro E.integralTestPassesClosed E.comparisonTestPassesClosed))

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse