import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure DivergentContinuedFractionPackage where
  index : ℕ
  approximant : ℚ
  divergenceWitness : Prop

structure DivergentContinuedFractionEvidence (P : DivergentContinuedFractionPackage) where
  indexPositive : P.index ≥ 0
  divergenceWitnessClosed : P.divergenceWitness

def DivergentContinuedFractionClosed (P : DivergentContinuedFractionPackage) : Prop :=
  P.index ≥ 0 ∧ P.divergenceWitness

theorem divergent_continued_fraction_closed_from_evidence
    (P : DivergentContinuedFractionPackage) (E : DivergentContinuedFractionEvidence P) :
    DivergentContinuedFractionClosed P := by
  exact And.intro E.indexPositive E.divergenceWitnessClosed

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse