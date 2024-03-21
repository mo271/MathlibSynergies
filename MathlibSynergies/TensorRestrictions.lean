import Mathlib.LinearAlgebra.FiniteDimensional
import Mathlib.LinearAlgebra.TensorPower

/-
See
A Tensor Restriction Theorem over Finite Fields
by Andreas Blatter, Jan Draisma, Filip Rupniewski
https://arxiv.org/abs/2211.12319
-/

open TensorProduct

variable {K : Type} [Field K] [Finite K]
variable {V : Type} [AddCommGroup V] [Module K V] [FiniteDimensional K V]
variable {W : Type} [AddCommGroup W] [Module K W] [FiniteDimensional K W]
variable {n : ℕ}

/-- Definition of restriction. -/
def IsRestriction  (S : ⨂[K]^n V) (T : ⨂[K]^n W) : Prop :=
  ∃ φ : V →ₗ[K] W, PiTensorProduct.map (fun _ => φ) S = T

notation S "⪰" T => IsRestriction S T

theorem TensorRestriction (d : ℕ) (V : ℕ → Type)
    [∀ i, AddCommGroup (V i)] [∀ i, Module K (V i)] [∀ i, FiniteDimensional K (V i)]
    (T : ∀ i, ⨂[K]^d (V i)) : ∃ i, ∀ j, i < j ∧ (T i) ⪰ (T j) := by
  sorry
