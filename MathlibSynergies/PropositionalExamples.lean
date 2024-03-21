import Mathlib -- use this if unsure what exactly to import

/-
Propositional Logic
-/

variable (P Q R : Prop)

theorem implication_def' : (P → Q) ↔ (¬ P ∨ Q) := imp_iff_not_or

theorem implication_def : (P → Q) ↔ (¬ P ∨ Q) := by
  constructor
  · intro h
    by_cases hP : P
    · right
      exact h hP
    · left
      exact hP
  · intro h
    intro hP
    rcases h with h | h
    · by_contra
      exact h hP
    exact h

theorem imp_trans (hPQ : P → Q) (hQR : Q → R) : (P → R) := fun a ↦ hQR (hPQ a)

theorem imp_trans' (hPQ : P → Q) (hQR : Q → R) : (P → R) := by
  intro p
  have q := hPQ p
  exact hQR q

theorem and_imp_eq_imp_imp : (P ∧ Q) → R ↔ P → Q → R := by exact and_imp

theorem and_imp_eq_imp_imp' : (P ∧ Q) → R ↔ P → Q → R := by
  constructor
  · intro h
    intro hP
    intro hQ
    have hPQ : P ∧ Q := ⟨hP, hQ⟩
    exact h hPQ
  · intro hPQR
    intro hPQ
    have hP := hPQ.1
    have hQ := hPQ.2
    exact hPQR hP hQ

theorem self_or_not_self (p : Prop) : p ∨ ¬ p := by exact Classical.em p

theorem self_or_not_self' (p : Prop) : p ∨ ¬ p := by
  by_cases h : p
  · left
    exact h
  · right
    exact h


theorem big_negation (p q r : Prop) :
  ¬ ((p ∧ q) ∨ (r ∧ q ∧ r) ∨ (¬ r) → (q ∨ ¬ r)) ↔ (p ∧ q ∨ r ∧ q ∧ r ∨ ¬r) ∧ ¬q ∧ r := by
  push_neg
  rfl

theorem big_negation' (p q r : Prop) :
  ¬ ((p ∧ q) ∨ (r ∧ q ∧ r) ∨ (¬ r) → (q ∨ ¬ r)) ↔ (p ∧ q ∨ r ∧ q ∧ r ∨ ¬r) ∧ ¬q ∧ r := by
  constructor
  · intro h
    rw [not_imp] at h
    constructor
    · exact h.left
    · rw [not_or] at h
      convert h.right
      rw [not_not]
  · intro h
    rw [not_imp]
    constructor
    · exact h.left
    · rw [not_or]
      convert h.right
      rw [not_not]
