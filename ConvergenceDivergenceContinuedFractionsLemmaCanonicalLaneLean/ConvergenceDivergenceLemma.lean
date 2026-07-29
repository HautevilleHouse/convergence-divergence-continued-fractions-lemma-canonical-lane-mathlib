import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergenceDivergenceLemmaPackage where
  convergentCase : Prop
  divergentCase : Prop
  lemmaStatement : Prop

structure ConvergenceDivergenceLemmaEvidence (P : ConvergenceDivergenceLemmaPackage) where
  convergentCaseClosed : P.convergentCase
  divergentCaseClosed : P.divergentCase
  lemmaStatementClosed : P.lemmaStatement

def ConvergenceDivergenceLemmaClosed (P : ConvergenceDivergenceLemmaPackage) : Prop :=
  P.convergentCase ∧ P.divergentCase ∧ P.lemmaStatement

theorem convergence_divergence_lemma_closed_from_evidence
    (P : ConvergenceDivergenceLemmaPackage) (E : ConvergenceDivergenceLemmaEvidence P) :
    ConvergenceDivergenceLemmaClosed P := by
  exact And.intro E.convergentCaseClosed (And.intro E.divergentCaseClosed E.lemmaStatementClosed)

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse