import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergentContinuedFractionPackage where
  index : ℕ
  approximant : ℚ
  errorBound : Prop

structure ConvergentContinuedFractionEvidence (P : ConvergentContinuedFractionPackage) where
  indexPositive : P.index ≥ 0
  approximantRational : True
  errorBoundClosed : P.errorBound

def ConvergentContinuedFractionClosed (P : ConvergentContinuedFractionPackage) : Prop :=
  P.index ≥ 0 ∧ P.errorBound

theorem convergent_continued_fraction_closed_from_evidence
    (P : ConvergentContinuedFractionPackage) (E : ConvergentContinuedFractionEvidence P) :
    ConvergentContinuedFractionClosed P := by
  exact And.intro E.indexPositive E.errorBoundClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse