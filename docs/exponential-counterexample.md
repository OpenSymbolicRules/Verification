# RUBI 2.3 #1: zero denominator

Report `f6aa232dc43852d8a2337aff7162c39e4fee857b5751dba3044a11c89a5e5bec`
contains `integration.rubi_2_3_r1`, transcribed from the pinned RUBI source with its
original `FreeQ` independence constraint. The pinned source revision
`61e9c18` declares version 4.17.3.0 in `PacletInfo.m`; the v0.1 per-rule
4.16.1 label is historical and has not been independently verified. At `F=2`, `a=b=0`, `c=n=1`, the
integrand is defined on the entire real line, while the replacement contains
the inverse of the zero denominator `b*c*n*log(F)`.

The Lean theorem `OSR.IntegrationExpPower.rubi23r1_counterexample_real`
proves the negation of the original real rule within the existing
integer-power fragment. It does not prove that the rule would match this
instance at runtime in RUBI, where evaluation and rule dispatch may simplify
or redirect the input. The complex case is unproved. General non-integer
powers remain outside the production interpretation, and optional defaults
remain a matching limitation recorded in the exported findings.
