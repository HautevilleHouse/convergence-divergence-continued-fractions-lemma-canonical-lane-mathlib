import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure RationalApproximationQuality where
  rationalSequence : Type u
  approximationError : Type v
  errorBound : Prop
  qualityIndex : Prop
  convergenceRate : Prop

structure RationalApproximationEvidence (R : RationalApproximationQuality) where
  errorBoundClosed : R.errorBound
  qualityIndexClosed : R.qualityIndex
  convergenceRateClosed : R.convergenceRate

def RationalApproximationQualityClosed (R : RationalApproximationQuality) : Prop :=
  R.errorBound ∧ R.qualityIndex ∧ R.convergenceRate

theorem rational_approximation_quality_closed_from_evidence
    (R : RationalApproximationQuality) (E : RationalApproximationEvidence R) :
    RationalApproximationQualityClosed R := by
  exact And.intro E.errorBoundClosed
    (And.intro E.qualityIndexClosed E.convergenceRateClosed)

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse