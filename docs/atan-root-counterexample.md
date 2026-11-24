# Arctangent integration counterexample

Report `659662bbba3f0cb1523df0f877e7ccfcd3725eecf5dfdc8afbbf5d2693602503`
records the original RUBI 5.3.7 #19 rule with its original equality condition.
For `a = 2`, `b = -1`, `c = 1` and `x = -1`, the condition holds and the
integrand is defined near `x`, but the result requires the real logarithm of
a negative arctangent. Lean checks this counterexample. The complex case is
unproved because the current fragment does not interpret complex square roots.

The generated report records the Lean source digest, toolchain and Mathlib
revision. Schema and source-faithfulness checks complement, but do not replace,
the formal proof.
