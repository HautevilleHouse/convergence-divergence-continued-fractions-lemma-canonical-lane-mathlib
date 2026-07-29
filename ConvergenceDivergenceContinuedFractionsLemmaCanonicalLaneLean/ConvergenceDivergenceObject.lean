import ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

structure ContinuedFractionObject where
  space : Type
  topology : TopologicalSpace space
  continuedFraction : ℕ → ℝ
  limitExists : Prop
  limitValue : ℝ
  convergenceRegion : Prop
  divergenceRegion : Prop
  conclusion : limitExists ∨ divergenceRegion

structure ContinuedFractionWitness where
  object : ContinuedFractionObject
  witnessClosed : object.limitExists ∨ object.divergenceRegion
  witnessClosedTerm : witnessClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse