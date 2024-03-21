import Mathlib


#eval (1 / 2)

#eval (1 / 2 : ℕ)

#eval ((1 : ℚ) / 2)

#eval (5 - 7)

#eval (5 - 7 + 7)


#eval Nat.digits 10 123456

#eval Nat.digits 123456 10

#eval 1/(1 - 2) + 1 = 1

example : ¬ Even 3 := by
  rw [← Nat.odd_iff_not_even]
  use 1
  norm_num

example : Even (3 : ℚ) := by
  use 3 / 2
  rfl
