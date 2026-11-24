# Inverse hyperbolic tangent integration counterexample

Report `44c78f0d4620e4e30098e8fd3925bd6cd95b82c12d74f7c5795d4ede3287cf44`
records RUBI 7.3.7 #19 with its original equality condition. For `a = 3`,
`b = c = 1` and `x = -1`, the condition holds and the integrand is defined in
a neighbourhood, but the result requires the real logarithm of the negative
value `artanh(-1/2)`. Lean checks this counterexample.

The complex case is unproved because the current fragment does not interpret
complex square roots or `arctanh`. The report records the Lean source digest,
toolchain and Mathlib revision.
