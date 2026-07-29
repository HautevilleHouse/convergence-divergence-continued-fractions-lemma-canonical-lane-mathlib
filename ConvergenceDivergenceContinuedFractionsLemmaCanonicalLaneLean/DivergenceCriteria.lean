import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure DivergenceCriteriaPackage where
  liouvilleApproximation : Prop
  rothTheorem : Prop
  divergenceCondition : Prop
  measureOfApproximation : Prop

structure DivergenceCriteriaEvidence (D : DivergenceCriteriaPackage) where
  liouvilleApproximationClosed : D.liouvilleApproximation
  rothTheoremClosed : D.rothTheorem
  divergenceConditionClosed : D.divergenceCondition
  measureOfApproximationClosed : D.measureOfApproximation

def DivergenceCriteriaClosed (D : DivergenceCriteriaPackage) : Prop :=
  D.liouvilleApproximation ∧ D.rothTheorem ∧ D.divergenceCondition ∧ D.measureOfApproximation

theorem divergence_criteria_closed_from_evidence (D : DivergenceCriteriaPackage) (E : DivergenceCriteriaEvidence D) : DivergenceCriteriaClosed D :=
  And.intro E.liouvilleApproximationClosed (And.intro E.rothTheoremClosed (And.intro E.divergenceConditionClosed E.measureOfApproximationClosed))

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse