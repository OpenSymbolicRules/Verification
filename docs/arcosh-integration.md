# Square-root product integration

Report `d3ff86cef805c42a7fb3d5a124ea8b956415d3d79c4b6cd6179eb813ee878b44`
includes a Lean proof over ℝ of RUBI 1.1.1.2 #21 under its original conditions
`a + c = 0`, `b - d = 0`, and `a > 0`. Where the integrand is defined near a
point, the two square roots and denominator entail `b*x > a` and `b ≠ 0`.
These follow from the original statement rather than additional assumptions.

The complex status remains unproved: the current interpretation does not
support complex square roots or `arccosh`, so compiling the corresponding
vacuous statement would not establish the intended identity.
