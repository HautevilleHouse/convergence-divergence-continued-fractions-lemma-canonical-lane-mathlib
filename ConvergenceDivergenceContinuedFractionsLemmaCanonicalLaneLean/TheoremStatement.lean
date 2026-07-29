import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionObject where
  partialQuotients : List ℕ
  convergents : List ℚ
  limitExists : Prop
  limitValue : ℚ
  convergenceRate : Prop
  divergenceCondition : Prop
  conclusion : limitExists ∧ convergenceRate ∧ divergenceCondition

structure ConvergenceWitness where
  object : ContinuedFractionObject
  witnessClosed : object.limitExists
  convergenceRateClosed : object.convergenceRate
  divergenceConditionClosed : object.divergenceCondition

def ConvergenceWitnessClosed (O : ContinuedFractionObject) : Prop :=
  O.limitExists ∧ O.convergenceRate ∧ O.divergenceCondition

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse