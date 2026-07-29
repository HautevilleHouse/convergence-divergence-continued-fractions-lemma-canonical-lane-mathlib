import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure DivergenceTestPackage where
  testCondition : Prop
  divergenceImplication : Prop

structure DivergenceTestEvidence (P : DivergenceTestPackage) where
  testConditionClosed : P.testCondition
  divergenceImplicationClosed : P.divergenceImplication

def DivergenceTestClosed (P : DivergenceTestPackage) : Prop :=
  P.testCondition ∧ P.divergenceImplication

theorem divergence_test_closed_from_evidence
    (P : DivergenceTestPackage) (E : DivergenceTestEvidence P) :
    DivergenceTestClosed P := by
  exact And.intro E.testConditionClosed E.divergenceImplicationClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse