# MathlibSynergies

Materials for the hands-on Lean session during the [Combinatorial Coworkspace 2024](https://www.combinatorial-cowork.space/)


## Abstract

[Lean](https://lean-lang.org/) is a language based on [dependent type theory](https://en.wikipedia.org/wiki/Dependent_type), which can be used to express formal proofs. Its most extensive mathematical library, [mathlib](https://leanprover-community.github.io/index.html), contains many theorems and definitions and theorems from various areas of math.

The plan for this hands-on session:

- Understand why it might be beneficial to use a theorem prover and how it works.
- Demo the current capabilities of Lean/mathlib and its ecosystem.
- Get you hands dirty by trying it out yourself: you'll have the opportunity to prove a lemma!

## Prerequisites

We don't assume any familiarity with Lean/mathlib.
However, you will need some way to run Lean on your computer.
There are different options:

 - *The best way*: [Install lean on your computer](https://leanprover-community.github.io/get_started.html)
 - *The fast way*: [Try lean online](https://live.lean-lang.org/)
 - *Another way*: [Use gitpod](https://gitpod.io/new/#/https://github.com/mo271/MathlibSynergies)

 If you are new to Lean/mathlib, a fun way to begin is by playing the [the natural number game](https://adam.math.hhu.de/)!

In order to start with the files in this repo, you install lean on your computer (see link above)
you clone this repo and run
```shell
lake exe cache get
lake build
code .
```
The last step only opens vscode in case you want to use that.


## Resources

Docs, Tutorials, search engines

 - [mathlib4 documentation](https://leanprover-community.github.io/mathlib4_docs/)
 - [Mathematics in Lean tutorial](https://leanprover-community.github.io/mathematics_in_lean/)
 - [Moogle: Semantic search over mathlib4](https://www.moogle.ai/)
 - [Loogle searches of Lean and Mathlib definitions and theorems.](https://loogle.lean-lang.org/)

Example projects:

  - [The Polynomial Freiman-Ruzsa Conjecture](https://teorth.github.io/pfr/) [blueprint](https://teorth.github.io/pfr/blueprint/)
  - [Sphere eversion](https://leanprover-community.github.io/sphere-eversion/) [blueprint](https://leanprover-community.github.io/sphere-eversion/blueprint/index.html)
  - [Prime number theorem](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/), [blueprint](https://alexkontorovich.github.io/PrimeNumberTheoremAnd/web/)
  - Your next project here!
