# RUBI 2.3 #1: zero denominator

Report `cf1481f2c57257ddbbfe4500fb6adedb7f49b7663df5a5519c1941ee305a1b6b`
contains `integration.rubi_2_3_r1`, transcribed from RUBI 4.16.1 with its
original `FreeQ` independence constraint. At `F=2`, `a=b=0`, `c=n=1`, the
integrand is defined on the entire real line, while the replacement contains
the inverse of the zero denominator `b*c*n*log(F)`.

The Lean theorem `OSR.IntegrationExpPower.rubi23r1_counterexample_real`
proves the negation of the original real rule within the existing
integer-power fragment. It does not prove that the rule would match this
instance at runtime in RUBI, where evaluation and rule dispatch may simplify
or redirect the input. The complex case is unproved. General non-integer
powers remain outside the production interpretation, and optional defaults
remain a matching limitation recorded in the exported findings.
