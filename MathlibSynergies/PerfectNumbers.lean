import Mathlib

open BigOperators

#eval (12 : ℕ).divisors
#eval (12 : ℕ).properDivisors

def PerfectNumber (n : ℕ) : Bool :=
  ∑ i in n.properDivisors, i = n ∧ 0 < n

theorem twenty_eight : PerfectNumber 28 := by
  sorry

#eval (List.range 1000).filter <| fun k => PerfectNumber k
