# Tangent recurrence proofs

Local report `a266601e4806a3561eaf650e9ed2b5f5e58a0da0bad6e0f87ef831c9250c7617`
promotes strengthened RUBI 4.3.1.1 rules #1, #5, #6 and #10. All four
compile for the real and complex interpretations and are certified over the
reals. Rule #5 is also certified over the complex numbers. The remaining three
use the fragment's restricted complex order interpretation, whose OpenMath
mapping is unsupported; they are not certified over the complex numbers.

The rules retain their explicit nonzero denominator guards, and #6 retains its
coefficient equality. The original unguarded rules remain refuted. The proofs
cover the residual-integrand definedness and integer-power semantics of the
fragment. Lean 4.35.0 and Mathlib revision
`56a005855ea17e0b0958f73ec801ae140b0a1679` remain unchanged.

Subsequent report `b49e0c13ad60eab91fadeccdf47495fdb00a6013a3cc0d86fe6a178d3add8a57`
proves the strengthened negative-power recurrence 4.3.1.1 #11 and the two
product rules 4.3.2.1 #3–4. All three are certified over ℝ; the two product
rules are also certified over ℂ. The negative-power complex theorem compiles
but remains uncertified because the complex order mapping is unsupported.
Its integrand's definedness supplies the nonzero power base on a neighborhood.
