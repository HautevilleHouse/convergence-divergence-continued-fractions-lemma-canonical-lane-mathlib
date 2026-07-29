import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure LurothExpansionClassification where
  lurothSeries : Type u
  periodDetected : Prop
  convergenceClassified : Prop
  divergenceClassified : Prop

structure LurothExpansionEvidence (L : LurothExpansionClassification) where
  periodDetectedClosed : L.periodDetected
  convergenceClassifiedClosed : L.convergenceClassified
  divergenceClassifiedClosed : L.divergenceClassified

def LurothExpansionClassificationClosed (L : LurothExpansionClassification) : Prop :=
  L.periodDetected ∧ L.convergenceClassified ∧ L.divergenceClassified

theorem luroth_expansion_classification_closed_from_evidence
    (L : LurothExpansionClassification) (E : LurothExpansionEvidence L) :
    LurothExpansionClassificationClosed L := by
  exact And.intro E.periodDetectedClosed
    (And.intro E.convergenceClassifiedClosed E.divergenceClassifiedClosed)

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse