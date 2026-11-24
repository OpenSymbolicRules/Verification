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

Report `bde33f4342b0c416f11487c0b1fb7e1d7044bcbfa50bc9248c19a82657cca6e3`
adds three certified real proofs for strengthened RUBI 4.3.2.1 #7, #8 and
#19. The complex theorems compile; #19 is certified and #7–8 remain
uncertified due to the unsupported complex order mapping. Rule #19 explicitly
checks both residual integrands and the denominator requirements. The
original unguarded rules remain refuted.

Report `bdada8ffbd8970793bbdc79d7507bd56d0b0c4c8e3aa615ea9ba32b7ca70541a`
adds four certified real proofs for strengthened RUBI 4.3.2.1 #20–21 and
4.3.3.1 #4–5. Their complex theorems compile but are not certified because
complex order mapping is unsupported. Negative exponents use a nonzero base
derived from integrand definedness; nonnegative exponents also cover a zero
base. Original unguarded rules remain refuted.

Report `19edc70fb9fb2526a6b4c699b0aea47418cec273ac87594b9d87fee2e4ae8976`
adds four certified real and complex proofs for strengthened RUBI 4.3.3.1
#2 and #19 and 4.3.4.1 #3–4. The quadratic-factor proofs cover every integer
exponent in the fragment, including a zero base when the exponent is
nonnegative. Negative exponents use nonzero bases derived from integrand
definedness. Original unguarded rules remain refuted over the reals.
