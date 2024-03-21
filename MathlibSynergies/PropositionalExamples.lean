import Mathlib -- use this if unsure what exactly to import

/-
Propositional Logic
-/

variable (P Q R : Prop)

theorem implication_def : (P → Q) ↔ (¬ P ∨ Q) := by
  sorry

theorem imp_trans (hPQ : P → Q) (hQR : Q → R) : (P → R) := by
  sorry

theorem and_imp_eq_imp_imp : (P ∧ Q) → R ↔ P → Q → R := by
  sorry

theorem self_or_not_self (p : Prop) : p ∨ ¬ p := by
  sorry

theorem big_negation (p q r : Prop) :
  ¬ ((p ∧ q) ∨ (r ∧ q ∧ r) ∨ (¬ r) → (q ∨ ¬ r)) ↔ (p ∧ q ∨ r ∧ q ∧ r ∨ ¬r) ∧ ¬q ∧ r := by
  sorry
