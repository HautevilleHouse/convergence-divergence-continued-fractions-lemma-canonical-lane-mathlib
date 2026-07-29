import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure ConvergenceCriteriaPackage where
  denominatorGrowth : Prop
  parcyRelation : Prop
  serretTheorem : Prop
  convergenceCharacterization : Prop

structure ConvergenceCriteriaEvidence (C : ConvergenceCriteriaPackage) where
  denominatorGrowthClosed : C.denominatorGrowth
  parcyRelationClosed : C.parcyRelation
  serretTheoremClosed : C.serretTheorem
  convergenceCharacterizationClosed : C.convergenceCharacterization

def ConvergenceCriteriaClosed (C : ConvergenceCriteriaPackage) : Prop :=
  C.denominatorGrowth ∧ C.parcyRelation ∧ C.serretTheorem ∧ C.convergenceCharacterization

theorem convergence_criteria_closed_from_evidence (C : ConvergenceCriteriaPackage) (E : ConvergenceCriteriaEvidence C) : ConvergenceCriteriaClosed C :=
  And.intro E.denominatorGrowthClosed (And.intro E.parcyRelationClosed (And.intro E.serretTheoremClosed E.convergenceCharacterizationClosed))

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse