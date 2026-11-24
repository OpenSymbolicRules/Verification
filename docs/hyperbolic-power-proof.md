# Recursive hyperbolic power proofs

Local report `02d52b0a148909d34eb312a9e8a5e15a5822ecb5b22dcfa7a459199a3453643d`
promotes the strengthened variants RUBI 6.1.13 #11–14. Lean proves the real
and complex statements, including the definedness of their residual integrals
and the case where the power base is zero. The existing conditions include
`m > 1` and `2*c ≠ 0`; the integer-exponent fragment makes the reduced
exponents nonnegative. The original unguarded rules remain refuted.

The complex theorems use the current fragment's interpretation of the order
condition: real-part comparison restricted to real-valued complex numbers.
The registry marks this complex order mapping **unsupported**, so the four
complex results are not OSR-certified even though their Lean statements
compile. The four real results are certified. Lean 4.35.0 and Mathlib
revision `56a005855ea17e0b0958f73ec801ae140b0a1679` are unchanged.

The subsequent local report
`11f685fd517a56f606d7d108f8b5870b14d51ea5262f7d863a924c3779f88ae7`
also proves strengthened rules 6.1.13 #15–18 for negative exponents. The
integrand's definedness enforces a nonzero base on a neighborhood; the proofs
check all residual integrands and denominators. All four are certified over
ℝ. Their complex theorems compile for the fragment's restricted order, but
are not OSR-certified because the complex order mapping is unsupported.
