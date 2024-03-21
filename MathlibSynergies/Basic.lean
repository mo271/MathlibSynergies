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
  sorry

-- hint: use `Nat.ofDigits_mod 10 3 (Nat.digits 10 n)`
theorem three_divisibility_rule (n : ℕ) : 3 ∣ n ↔ 3 ∣ (Nat.digits 10 n).sum := by
  sorry
