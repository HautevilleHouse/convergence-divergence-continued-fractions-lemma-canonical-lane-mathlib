import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergentDivergentObject where
  carrier : Type u
  coefficientSequence : carrier → ℕ
  limitAdmitted : Prop
  conclusion : limitAdmitted

def ConvergentDivergentClosed (O : ConvergentDivergentObject) : Prop :=
  O.limitAdmitted

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse