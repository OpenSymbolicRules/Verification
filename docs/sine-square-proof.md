# Sine-square primitive

The local report `7bf0b2e9a1faead989a4b3201345d8d418107c1d7eefae35c3d21f9762767a11`
records Lean proofs over ℝ and ℂ for
`integration.rubi_4_1_1_1_r11_nondegenerate`. The rule integrates
`(a + b sin(c + d x))^2` under its explicit condition `d ≠ 0`. The proof
checks neighborhood definedness and the derivative using the sine and cosine
derivatives and the Pythagorean identity.

This is the already-distributed strengthened variant, not the original RUBI
rule. The original remains refuted for a vanishing denominator. The Lean
proofs use version 4.35.0 and Mathlib revision
`56a005855ea17e0b0958f73ec801ae140b0a1679`.
