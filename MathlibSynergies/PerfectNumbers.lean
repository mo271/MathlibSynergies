import Mathlib

open BigOperators

#eval (12 : ℕ).divisors
#eval (12 : ℕ).properDivisors

def PerfectNumber (n : ℕ) : Bool :=
  ∑ i in n.properDivisors, i = n ∧ 0 < n

theorem twenty_eight : PerfectNumber 28 := by
  decide

theorem twenty_eight' : PerfectNumber 28 := by
  unfold PerfectNumber
  norm_num
  have : (28 : ℕ).properDivisors = [1, 2, 4, 7, 14].toFinset := by decide
  rw [this]
  decide

#eval (List.range 1000).filter <| fun k => PerfectNumber k
