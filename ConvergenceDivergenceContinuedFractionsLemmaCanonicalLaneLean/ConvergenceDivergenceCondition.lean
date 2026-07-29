import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergenceDivergenceCondition where
  continuedFractionSequence : Type u
  convergenceRadii : Type v
  divergenceSet : Type w
  convergenceRadiusDefined : Prop
  divergenceDetected : Prop
  qualityOfApproximation : Prop

structure ConvergenceDivergenceEvidence (C : ConvergenceDivergenceCondition) where
  convergenceRadiusDefinedClosed : C.convergenceRadiusDefined
  divergenceDetectedClosed : C.divergenceDetected
  qualityOfApproximationClosed : C.qualityOfApproximation

def ConvergenceDivergenceConditionClosed (C : ConvergenceDivergenceCondition) : Prop :=
  C.convergenceRadiusDefined ∧ C.divergenceDetected ∧ C.qualityOfApproximation

theorem convergence_divergence_condition_closed_from_evidence
    (C : ConvergenceDivergenceCondition) (E : ConvergenceDivergenceEvidence C) :
    ConvergenceDivergenceConditionClosed C := by
  exact And.intro E.convergenceRadiusDefinedClosed
    (And.intro E.divergenceDetectedClosed E.qualityOfApproximationClosed)

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse