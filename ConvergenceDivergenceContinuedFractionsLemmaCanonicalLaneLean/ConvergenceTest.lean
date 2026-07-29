import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergenceTestPackage where
  testCondition : Prop
  convergenceImplication : Prop

structure ConvergenceTestEvidence (P : ConvergenceTestPackage) where
  testConditionClosed : P.testCondition
  convergenceImplicationClosed : P.convergenceImplication

def ConvergenceTestClosed (P : ConvergenceTestPackage) : Prop :=
  P.testCondition ∧ P.convergenceImplication

theorem convergence_test_closed_from_evidence
    (P : ConvergenceTestPackage) (E : ConvergenceTestEvidence P) :
    ConvergenceTestClosed P := by
  exact And.intro E.testConditionClosed E.convergenceImplicationClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse