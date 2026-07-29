import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionPackage where
  partialDenominators : ℕ → ℕ
  convergentSequence : ℕ → ℚ
  limitExists : Prop
  limitValue : ℚ
  convergenceRate : Prop

structure ContinuedFractionEvidence (C : ContinuedFractionPackage) where
  limitExistsClosed : C.limitExists
  convergenceRateClosed : C.convergenceRate

def ContinuedFractionClosed (C : ContinuedFractionPackage) : Prop :=
  C.limitExists ∧ C.convergenceRate

theorem continued_fraction_closed_from_evidence (C : ContinuedFractionPackage) (E : ContinuedFractionEvidence C) : ContinuedFractionClosed C :=
  And.intro E.limitExistsClosed E.convergenceRateClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse