import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean

structure DiophantineApproximationBridgePackage where
  approximationConstant : Prop
  bestApproximationProperty : Prop
  dirichletTheorem : Prop
  hurwitzTheorem : Prop

structure DiophantineApproximationBridgeEvidence (D : DiophantineApproximationBridgePackage) where
  approximationConstantClosed : D.approximationConstant
  bestApproximationPropertyClosed : D.bestApproximationProperty
  dirichletTheoremClosed : D.dirichletTheorem
  hurwitzTheoremClosed : D.hurwitzTheorem

def DiophantineApproximationBridgeClosed (D : DiophantineApproximationBridgePackage) : Prop :=
  D.approximationConstant ∧ D.bestApproximationProperty ∧ D.dirichletTheorem ∧ D.hurwitzTheorem

theorem diophantine_approximation_bridge_closed_from_evidence (D : DiophantineApproximationBridgePackage) (E : DiophantineApproximationBridgeEvidence D) : DiophantineApproximationBridgeClosed D :=
  And.intro E.approximationConstantClosed (And.intro E.bestApproximationPropertyClosed (And.intro E.dirichletTheoremClosed E.hurwitzTheoremClosed))

end ConvergenceDivergenceContinuedFractionsLemmaCanonicalLaneLean
end HautevilleHouse