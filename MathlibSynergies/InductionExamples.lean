import Mathlib

open BigOperators

#eval  ∑ i in (Finset.range 5), (2 * i + 1)

theorem sum_of_odd_numbers (n : ℕ) : ∑ i in (Finset.range n), (2 * i + 1) = n ^ 2 := by
  induction' n with n hn
  · rfl
  · rw [Finset.sum_range_succ]
    rw [hn]
    rw [Nat.succ_eq_add_one]
    ring

theorem power_of_seventeen : ∀ n : ℕ, ∃ (a  b : ℕ),  17 ^ n = a ^ 2 + b ^ 2 := by
  refine Nat.twoStepInduction ?base_case_0 ?base_case1 ?induction_step
  · use 0, 1
    norm_num
  · use 1, 4
    norm_num
  · intro n hn
    intro _
    rw [pow_succ, pow_succ, ← mul_assoc]
    rcases hn with ⟨a', b', hn⟩
    use 17 * a', 17 * b'
    rw [hn]
    ring


theorem power_of_k_eq_sum_of_squares (n : ℕ) (k : ℕ) (hk : ∃ (x y : ℕ), k = x ^ 2 + y ^ 2) :
    ∃ (a  b : ℕ),  k ^ n = a ^ 2 + b ^ 2 := by
  revert n
  refine Nat.twoStepInduction ?base_case_0 ?base_case1 ?induction_step
  · use 0, 1
    norm_num
  · rcases hk with ⟨a, b, hk⟩
    use a, b
    convert hk
    exact pow_one _
  · intro n hn
    intro _
    rw [pow_succ, pow_succ, ← mul_assoc]
    rcases hn with ⟨a', b', hn⟩
    use k * a', k * b'
    rw [hn]
    ring

theorem odd_or_even (n : ℕ) : Even n ∨ Odd n := by
  rw [Nat.odd_iff_not_even]
  exact Classical.em _

theorem odd_or_even' (n : ℕ) : Even n ∨ Odd n := by
  induction' n with n hn
  · left
    exact even_zero
  · rcases hn with h | h
    · right
      rcases h with ⟨k, hk⟩
      use k
      rw [hk]
      rw [Nat.succ_eq_add_one]
      rw [two_mul]
    · left
      rcases h with ⟨k, hk⟩
      use (k + 1)
      rw [hk]
      rw [Nat.succ_eq_add_one]
      ring
