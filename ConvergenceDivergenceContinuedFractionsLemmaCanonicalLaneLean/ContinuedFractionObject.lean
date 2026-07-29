import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionObject where
  sequence : ℕ → ℝ
  convergents : ℕ → ℚ
  limit : ℝ
  convergenceRate : ℝ
  divergenceWitness : ℕ → ℕ
  conclusion : True

def ConvergenceDivergenceWitnessClosed (O : ContinuedFractionObject) : Prop :=
  True

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse