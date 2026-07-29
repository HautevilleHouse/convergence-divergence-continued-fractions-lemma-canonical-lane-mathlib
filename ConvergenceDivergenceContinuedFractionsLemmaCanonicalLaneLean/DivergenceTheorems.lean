import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure DivergencePackage where
  termTestNotZero : Prop
  ratioTestFails : Prop
  pSeriesDiverging : Prop

structure DivergenceEvidence (D : DivergencePackage) where
  termTestNotZeroClosed : D.termTestNotZero
  ratioTestFailsClosed : D.ratioTestFails
  pSeriesDivergingClosed : D.pSeriesDiverging

def DivergenceClosed (D : DivergencePackage) : Prop :=
  D.termTestNotZero ∧ D.ratioTestFails ∧ D.pSeriesDiverging

theorem divergence_closed_from_evidence (D : DivergencePackage) (E : DivergenceEvidence D) :
    DivergenceClosed D := by
  exact And.intro E.termTestNotZeroClosed (And.intro E.ratioTestFailsClosed E.pSeriesDivergingClosed)

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse