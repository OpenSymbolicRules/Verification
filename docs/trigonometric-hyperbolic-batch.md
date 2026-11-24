# Trigonometric and hyperbolic proof batch

Local report `503ac29d333bec24c7ec8d735f6ffd4a3f1d99572006538258c2dcc23606cafb`
promotes eight existing strengthened variants:

- 4.1.1.1 #2, 4.1.7 #1 and #10: real and complex proofs under their existing
  nonzero denominator conditions, using the sine/cosine derivatives and
  Pythagorean or double-angle identities.
- 4.5.1.1 #4: a real proof of the cosecant primitive under `d ≠ 0`; the
  complex case is unproved because the relevant mappings are unsupported.
- 5.3.6 #13 and #55: real proofs for exponential-arctangent primitives under
  their existing equality and nonzero conditions; their complex cases are
  unproved.
- 6.1.13 #7 and #8: real and complex proofs for hyperbolic primitives under
  their original equality and appended nonzero condition.

These are strengthened variants. Their original unguarded source rules remain
separate refuted entries. Lean 4.35.0 and Mathlib revision
`56a005855ea17e0b0958f73ec801ae140b0a1679` check the proofs. The report is
prepared locally and has not been published.

The subsequent local report
`c3e5210412db9659fb0b629173ec1f3f83f8c83b5aee6d9adaa5ca6614fa81e8`
also proves the strengthened recursive rules 6.1.13 #9 and #10 over ℝ and
ℂ. Their statements verify residual-integrand definedness and quantify over
all admissible residual primitives. The original unguarded rules remain
separate refuted entries.
