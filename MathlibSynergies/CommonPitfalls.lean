import Mathlib


#eval (1 / 2)

#eval (1 / 2 : ℕ)

#eval ((1 : ℚ) / 2)

#eval (5 - 7)

#eval (5 - 7 + 7)


#eval Nat.digits 10 123456

#eval Nat.digits 123456 10

def n := 7

#eval ((Finset.Ico 1 n).filter (fun i => i ∣ n)).card = 0

def N := 1000

#eval (Finset.range N).filter (fun n => ((Finset.Ico 1 n).filter (fun i => i ∣ n)).card = 1)
