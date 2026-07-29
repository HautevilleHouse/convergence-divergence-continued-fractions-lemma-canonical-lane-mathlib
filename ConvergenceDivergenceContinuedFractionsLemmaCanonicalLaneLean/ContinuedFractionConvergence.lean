import ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionConvergencePackage where
  coefficientSequence : Type u
  partialQuotients : coefficientSequence → ℕ
  convergents : ℕ → ℚ
  limitExists : Prop
  limitValue : ℚ
  convergenceRate : Prop

structure ContinuedFractionConvergenceEvidence (C : ContinuedFractionConvergencePackage) where
  limitExistsClosed : C.limitExists
  convergenceRateClosed : C.convergenceRate

def ContinuedFractionConvergenceClosed (C : ContinuedFractionConvergencePackage) : Prop :=
  C.limitExists ∧ C.convergenceRate

theorem continued_fraction_convergence_closed_from_evidence
    (C : ContinuedFractionConvergencePackage) (E : ContinuedFractionConvergenceEvidence C) :
    ContinuedFractionConvergenceClosed C := by
  exact And.intro E.limitExistsClosed E.convergenceRateClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse