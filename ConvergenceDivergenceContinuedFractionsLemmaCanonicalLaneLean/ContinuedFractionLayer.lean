import ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean.ConvergenceDivergenceObject

/-!
# Continued Fraction Layer: convergence and divergence conditions
-/

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ContinuedFractionLayer (C : ContinuedFractionObject) where
  continuedFraction : ℕ → ℝ
  partialDenominators : ℕ → ℕ
  recurrenceRelation : Prop
  convergenceRate : Prop
  divergenceRate : Prop
  limitCharacterization : Prop
  recurrenceRelationTerm : recurrenceRelation
  convergenceRateTerm : convergenceRate
  divergenceRateTerm : divergenceRate
  limitCharacterizationTerm : limitCharacterization

structure ContinuedFractionLayerEvidence (C : ContinuedFractionObject) (L : ContinuedFractionLayer C) where
  recurrenceRelationClosed : L.recurrenceRelation
  convergenceRateClosed : L.convergenceRate
  divergenceRateClosed : L.divergenceRate
  limitCharacterizationClosed : L.limitCharacterization

def ContinuedFractionLayerClosed (C : ContinuedFractionObject) (L : ContinuedFractionLayer C) : Prop :=
  L.recurrenceRelation ∧ L.convergenceRate ∧ L.divergenceRate ∧ L.limitCharacterization

theorem continued_fraction_layer_closed_from_evidence
    (C : ContinuedFractionObject) (L : ContinuedFractionLayer C)
    (E : ContinuedFractionLayerEvidence C L) : ContinuedFractionLayerClosed C L := by
  exact And.intro E.recurrenceRelationClosed
    (And.intro E.convergenceRateClosed
      (And.intro E.divergenceRateClosed E.limitCharacterizationClosed))

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse