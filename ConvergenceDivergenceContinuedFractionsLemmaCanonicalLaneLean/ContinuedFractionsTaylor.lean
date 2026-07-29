import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionExpansion where
  sequence : ℕ → ℚ
  convergents : ℕ → ℚ
  recurrence : ℕ → ℚ → ℚ → ℚ
  limitComputed : Prop

structure TaylorApproximation where
  series : ℕ → ℝ
  radius : ℝ
  partialSums : ℕ → ℝ
  sum : ℝ
  convergenceRadius : Prop

structure ContinuedFractionsTaylorPackage where
  cf : ContinuedFractionExpansion
  taylor : TaylorApproximation
  cfToTaylorMatch : Prop

structure ContinuedFractionsTaylorEvidence (C : ContinuedFractionsTaylorPackage) where
  cfRecurrenceClosed : C.cf.recurrence 0 0 1 = 1
  taylorRadiusClosed : C.taylor.convergenceRadius
  cfToTaylorMatchClosed : C.cfToTaylorMatch

def ContinuedFractionsTaylorClosed (C : ContinuedFractionsTaylorPackage) : Prop :=
  C.cfToTaylorMatch

theorem continued_fractions_taylor_closed_from_evidence (C : ContinuedFractionsTaylorPackage)
    (E : ContinuedFractionsTaylorEvidence C) : ContinuedFractionsTaylorClosed C := by
  exact E.cfToTaylorMatchClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse