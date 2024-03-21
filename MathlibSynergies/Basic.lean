import Mathlib

-- Doing some calculations
def n := 8

#eval ((Finset.Ico 1 n).filter (fun i => i ∣ n)).card = 0

def N := 100

#eval (Finset.range N).filter (fun n => ((Finset.Ico 1 n).filter (fun i => i ∣ n)).card = 1)

/-
Proving statements in groups and rings
-/

theorem two_mul_3_add_5 : 2 * (3 + 5) = 2 * 3 + 2 * 5 := by
  exact mul_add 2 3 5

#check mul_add 2 3 5

theorem two_mul_3_add_5' : 2 * (3 + 5) = 2 * 3 + 2 * 5 := mul_add 2 3 5

theorem square_diff_nonneg (a b : ℤ) : 0 ≤ a ^ 2 - 2 * a * b + b ^ 2 := by
  have :  a ^ 2 - 2 * a * b + b ^ 2 = (a - b) ^ 2 := by ring
  rw [this]
  exact sq_nonneg (a - b)


theorem square_diff_nonneg' (a b : ℤ) : 0 ≤ a ^ 2 - 2 * a * b + b ^ 2 := by
  convert sq_nonneg (a - b)
  ring

-- hint: use `Nat.ofDigits_mod 10 3 (Nat.digits 10 n)`
theorem three_divisibility_rule (n : ℕ) : 3 ∣ n ↔ 3 ∣ (Nat.digits 10 n).sum := by
  have h10 : 10 % 3 = 1 := by rfl
  have := Nat.ofDigits_mod 10 3 (Nat.digits 10 n)
  rw [← Nat.ofDigits_digits 10 n]
  rw [Nat.dvd_iff_mod_eq_zero]
  rw [this]
  rw [h10]
  rw [Nat.ofDigits_one]
  rw [Nat.dvd_iff_mod_eq_zero]
  rw [Nat.ofDigits_digits 10 n]

theorem euclid : ∀ n : ℕ, ∃ p : ℕ, p.Prime ∧ n < p := by
  sorry
