# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed
- Correct the source-version description for the RUBI 2.3 #1 witness: the
  pinned source declares 4.17.3.0; the v0.1 4.16.1 label is historical.

### Added
- Report `59116c55…` includes 118 additional original Integration source entries and their per-domain status.
- Report `f6aa232d…`: rebuild the exponential counterexample with the
  corrected pinned source-version description.
- Report `cf1481f2…`: RUBI 2.3 #1 is migrated with a Lean-checked real
  counterexample in the integer-power fragment; its complex status is unproved.
- Report `44c78f0d…`: RUBI 7.3.7 #19 is migrated with a Lean-checked real
  counterexample; its complex status is unproved.
- Report `d3ff86ce…`: RUBI 1.1.1.2 #21 is proved and certified over ℝ
  under its original conditions; its complex status is unproved.
- Report `659662bb…`: RUBI 5.3.7 #19 is migrated with a Lean-checked real
  counterexample; its complex status is unproved.
- Report `ded3200b…`: strengthened integration substitution rule 3.1.2 #7 is
  proved and certified over ℝ and ℂ.
- Report `16fbcf98…`: strengthened integration rule 3.1.2 #2 is refuted over
  ℂ at the principal logarithm's branch cut, with its real proof retained.
- Report `57aac641…`: strengthened integration rule 3.1.2 #2 is proved over
  ℝ, including the substitution; its complex case remains unproved.
- Report `4e6b4e27…`: an independently proved order-free generalization of
  integration rule 1.1.3.4 #16 is certified over ℝ and ℂ; the original remains.
- Report `4da74784…`: an independently proved order-free generalization of
  integration rule 1.1.3.4 #27 is certified over ℝ and ℂ; the original remains.
- Report `8ab03171…`: an independently proved order-free generalization of
  integration rule 1.1.3.4 #29 is certified over ℝ and ℂ; the original remains.
- Report `45bd9d80…`: an independently proved order-free generalization of
  integration rule 1.1.3.4 #28 is certified over ℝ and ℂ; the original remains.
- Report `69091961…`: recursive Integration rules 1.1.3.4 #28 and #29 are
  proved over ℝ and ℂ; 817 remain unproved over ℝ. Their complex mappings
  are unsupported and their complex proofs are not certified.
- Report `545316d7…`: recursive Integration rule 1.1.3.4 #27 is proved over
  ℝ and ℂ; 819 rules remain unproved over ℝ. Its complex mapping is unsupported.
- Report `5443a884…`: recursive Integration rule 1.1.3.4 #16 is proved over
  ℝ and ℂ; 820 rules remain unproved over ℝ. Its complex mapping is unsupported.
- Report `36b2732a…`: Integration rule 1.1.3.4 #15 is proved over ℝ
  and ℂ; 821 rules remain unproved over ℝ.
- Report `c707d4e1…`: recursive Integration rule 1.1.1.3 #19 is proved
  over ℝ and ℂ; 822 rules remain unproved over ℝ.
- Report `45f886b8…`: four more strengthened Integration variants are
  proved over ℝ and ℂ; 2875 rules, of which 823 remain unproved over ℝ.
- Report `38e58e7c…`: 39 more strengthened variants (827 in all) are
  distributed unproved after exact checks; 2875 rules.
- Report `092c7818…`: 184 more strengthened variants (788 in
  all) are distributed unproved, checked exactly; 2836 rules.
- Report `892bbf86…`: 604 strengthened variants checked
  numerically are distributed unproved; 2652 rules.
- Report `71235dd0…`: conditions on derivative rules; the
  strengthened power rule `calculus.derivative.power_nonzero` is proved.
- Report `0300f840…`: residual integrals at a substitution;
  275 RUBI rules with `Subst` are refuted; 2048 rules.
- Report `3067be61…`: 54 more RUBI rules (compound conditions in
  conjunctive normal form) are refuted; 1773 rules.
- Report `8fd3f445…`: 33 RUBI rules with `Or` conditions are
  refuted; 1719 rules.
- Report `aba9a1af…`: conditions relation1#geq and logic1#or;
  77 more RUBI rules are refuted; 1686 rules.
- Report `729cb367…`: 10 more RUBI rules are refuted; 1609 rules.
- Report `5eb8810a…`: 14 more RUBI rules are proved; 1599 rules.
- Report `7183eddd…`: 11 more RUBI rules are proved; 1585 rules.
- Report `3a175e77…`: 65 more RUBI rules (with `Acoth` and `Acot`)
  are refuted and eight duplicate entries removed; 1574 rules.
- Report `1808a90b…`: 11 more RUBI rules are proved (linear
  splits); 1517 rules.
- Report `6d698eb6…`: 12 more RUBI rules (with `Acoth`) are refuted
  and 200 more are reported as not migrated; 1506 rules.
- Report `0fcb0e06…`: 114 more RUBI rules are refuted (trig signs
  decided at a point); 1494 rules.
- Report `47ab2cab…`: 185 more RUBI rules (written with inert trig
  functions) are refuted; 1380 rules.
- Report `39e18436…`: five more RUBI rules are proved over ℝ
  and ℂ; 1195 rules.
- Report `8bdb4536…`: 91 more RUBI rules (89 written with `Simp`)
  are refuted; 1190 rules.
- Report `046abffd…`: 24 RUBI rules written with `E^u` are migrated
  (14 proved, 10 refuted); 1099 rules.
- Report `091039ab…`: 279 more RUBI rules are reported as not
  migrated (320 in all) and one more is refuted; 1075 rules.
- Report `cea7b8c1…`: 40 more RUBI rules are migrated and
  refuted; 1074 rules.
- Report `292461d9…`: three more RUBI rules are migrated and
  refuted; 1034 rules.
- Report `c183135e…`: nine more RUBI rules are migrated and
  refuted; 1031 rules.
- Report `a882d460…`: five more RUBI rules are migrated, two
  proved and three refuted; 1022 rules.
- Report `2c80798e…`: ten more RUBI rules are migrated and
  refuted; 1017 rules.
- Report `41cc6232…`: six more RUBI rules are migrated, five
  proved and one refuted; 1007 rules.
- Report `eea66e08…`: four more RUBI rules are migrated, three
  refuted and one proved; 1001 rules.
- Report `0caffa06…`: eight more RUBI rules are migrated, five
  proved and three refuted; 997 rules.
- Report `e79b3e32…`: 21 more RUBI rules are migrated, 19 proved
  and two refuted over ℝ; 989 rules.
- Report `0c1101a8…`: 48 more RUBI rules are migrated and proved
  over ℝ, eight over ℂ too; 968 rules.
- Report `d285fa25…`: six RUBI splits with a shifted exponent are
  migrated and proved over ℝ; 920 rules.
- Report `7f700cf4…`: eight more RUBI linear splits are migrated and
  proved over ℝ; 914 rules.
- Report `bba020e2…`: two arctanh splits into logarithms are migrated
  and proved over ℝ; 906 rules.
- Report `cf523cae…`: six more RUBI rules over square roots are migrated
  and proved over ℝ; 904 rules.
- Report `d9ebd02b…`: five more RUBI rules are migrated and proved over
  ℝ by integration by parts; 898 rules.
- Report `ff17058b…`: ten more RUBI rules are migrated and proved over ℝ
  by integration by parts; 893 rules.
- Report `b4b80ded…`: 19 more RUBI rules not considered before are
  migrated and refuted over ℝ; 883 rules.
- Report `8dc11a68…`: 14 more RUBI rules not considered before are
  migrated and proved (4 also over ℂ); 864 rules.
- Report `574f2788…`: 247 RUBI rules not considered before are migrated
  and refuted (all over ℝ, 53 over ℂ); 850 rules.
- Report `5ea2f5e8…`: the nine rules migrated in `37faa87a…` gain the
  `independence:` finding the Integration faithfulness check requires.
- Report `37faa87a…`: nine RUBI rules not considered before (1.2.1.2
  #93–95, 1.2.3.3 #41/#42/#47, 1.2.3.4 #92/#93/#100) are migrated and proved
  over ℝ and ℂ; 603 rules.
- Report `be992810…`: seven more variants (1.3.1 #4, 1.3.2 #1 and five
  2.3 exponential rules) are added and proved over ℝ and ℂ; 594 rules.
- Report `59e5b849…`: six variants with tighter exponent bounds or more
  nonzero conditions are added and proved, five over ℝ and ℂ and one over ℝ
  only; 587 rules.
- Report `3bcfa359…`: eight variants excluding a zero of their numerical check
  are added and proved, one over ℝ and ℂ and seven over ℝ only; 581 rules.
- Report `be9100af…`: eight more variants sampled with their equalities solved
  are added and proved, four over ℝ and ℂ and four over ℝ only; 573 rules.
- Report `83ab90fe…`: fifteen variants sampled with their equalities solved are
  added and proved over ℝ and ℂ; 565 rules.
- Report `2f2be88e…`: eight variants corrected after the pole probe are added
  and proved, one over ℝ and ℂ and seven over ℝ only; 550 rules.
- Report `76ee6db2…`: strengthened variants of nineteen refuted named rules are
  added and proved, thirteen over ℝ and ℂ and six over ℝ only; 542 rules.
- Report `f4757237…`: the last twelve variants first checked numerically are
  proved, seven over ℝ and ℂ and five over ℝ only; none remains unproved over ℝ.
  The variant of 3.3 #22 now also appends `n ≠ 0`.
- Report `66207331…`: 2.1 #9 and #10, first checked numerically, are proved over
  ℝ and ℂ, certified over ℝ; 12 variants remain unproved.
- Report `e2341d4f…`: 1.2.3.1 #5, first checked numerically, is proved over ℝ
  and ℂ, certified over ℝ; 14 variants remain unproved.
- Report `6c3f89a0…`: 3.5 #16 and #21, first checked numerically, are proved
  and certified over ℝ; their complex domain stays unproved. 15 variants
  remain unproved.
- Report `d33d44ab…`: 3.1.5 #28, first checked numerically, is proved and
  certified over ℝ; its complex domain stays unproved. 17 variants remain
  unproved.
- Report `63a96db2…`: 3.1.2 #3, first checked numerically, is proved and
  certified over ℝ; its complex domain stays unproved. 18 variants remain
  unproved.
- Report `82672d5c…`: 4.7.8 #47 and #48, first checked numerically, are
  proved and certified over ℝ; their complex domain stays unproved. 19
  variants remain unproved.
- Report `70fd8e0e…`: 3.1.3 #7, first checked numerically, is proved and
  certified over ℝ; its complex domain stays unproved. 21 variants remain
  unproved.
- Report `00a94414…`: 3.1.3 #10, 3.1.4 #13 and 3.1.5 #9, first checked
  numerically, are proved and certified over ℝ; their complex domain stays
  unproved. 22 variants remain unproved.
- Report `aa90538a…`: 3.1.3 #1, first checked numerically, is proved and
  certified over ℝ; its complex domain stays unproved. 25 variants remain
  unproved.
- Report `2c8aebbb…`: the variant of `log_power_over_linear_square`, first
  checked numerically, is proved and certified over ℝ; its complex domain
  stays unproved. 26 variants remain unproved.
- Report `45206732…`: 3.1.4 #2 and 3.1.5 #3, first checked numerically, are
  proved and certified over ℝ; their complex domain stays unproved. 27
  variants remain unproved.
- Report `7ef66d2f…`: 3.1.4 #12 and 3.1.5 #8, first checked numerically, are
  proved and certified over ℝ; their complex domain stays unproved. 29
  variants remain unproved.
- Report `ca7e9f18…`: 3.1.1 #3 and 3.1.2 #5 and #6, first checked
  numerically, are proved and certified over ℝ; their complex domain stays
  unproved. 31 variants remain unproved.
- Report `c859ec26…`: 4.1.12 #33 and #34, first checked numerically, are
  proved, certified over ℝ; 34 remain unproved.
- Report `2b296f3e…`: three tangent variants first checked numerically
  (4.7.9 #16, #27, #30) are proved, certified over ℝ; 36 remain unproved.
- Report `43563e7c…`: six logarithmic variants first checked numerically
  (3.1.4 #9, #17, #18 and 3.1.5 #13, #16, #17) are proved, certified over ℝ;
  39 remain unproved.
- Report `4399c47e…`: 4.7.9 #11 and #12 and 2.3 #32 and #33, first checked
  numerically, are proved (2.3 #32 and #33 certified over ℝ and ℂ); 45 remain
  unproved.
- Report `b402cc1a…`: ten 4.1.13 variants first checked numerically are
  proved (#1 and #2 certified over ℝ and ℂ, the others over ℝ); 49 remain
  unproved.
- Report `6430a1e2…`: eight trigonometric variants first checked numerically
  (4.7.9 #1, #2, #25, #26 and 4.7.6 #1, #2, #16, #17) are proved, certified
  over ℝ; 59 remain unproved.
- Report `65fee808…`: 1.2.1.2 #54, first checked numerically, is proved and
  certified over ℝ and ℂ; 67 variants remain unproved.
- Report `f34f1d83…`: two variants first checked numerically (1.2.1.2 #45
  and #39) are proved, certified over ℝ; 68 remain unproved.
- Report `6aa69fdc…`: three variants first checked numerically (1.1.3.5 #30,
  1.2.1.2 #43 and #44) are proved, certified over ℝ; 70 remain unproved.
- Report `c1d90ac5…`: three variants first checked numerically (1.1.3.5 #24,
  #25 and #26) are proved, certified over ℝ; 73 remain unproved.
- Report `90265091…`: two variants first checked numerically (1.1.1.3 #13
  and #14) are proved, certified over ℝ; 76 remain unproved.
- Report `5af3c5a6…`: two variants first checked numerically (1.2.2.1 #5,
  1.2.1.2 #102) are proved, certified over ℝ; 78 remain unproved.
- Report `143ae833…`: three variants first checked numerically (1.2.1.3 #15,
  1.2.1.1 #5, 1.2.2.2 #17) are proved, certified over ℝ; 80 remain unproved.
- Report `dbf6b787…`: four variants first checked numerically (1.1.1.3 #12,
  1.1.1.4 #38, 1.2.1.2 #12, 1.2.1.3 #16) are proved, certified over ℝ; 83
  remain unproved.
- Report `a818d70c…`: six variants first checked numerically (1.2.1.6 #9,
  1.2.1.3 #36, 1.2.2.4 #55 to #58) are proved; over ℂ the four 1.2.2.4 proofs
  are not certified (order conditions). 87 remain unproved.
- Report `80523799…`: five variants first checked numerically (1.2.1.6 #5, #6,
  #7, #8 and #10) are proved and certified; 93 remain unproved.
- Report `3841969e…`: three variants first checked numerically (1.2.3.3 #12,
  #19 and #20) are proved and certified; 98 remain unproved.
- Report `46cb2cdc…`: four variants first checked numerically (1.1.3.4 #17,
  1.2.1.3 #35, 1.2.2.4 #11 and #12) are proved and certified; 101 remain unproved.
- Report `226324e3…`: 11 unproved variants refuted by a pole probe are withdrawn
  (523 rules, 105 unproved); the variant of 1.1.3.4 #24 is proved and certified.
- Report `e58b9271…`: three variants first checked numerically (1.2.2.3 #7, #8,
  1.1.3.3 #15) are proved and certified over ℝ and ℂ; 117 remain unproved.
- Report `204e6b72…`: Integration distributes 534 rules; 120 strengthened variants
  are unproved, checked numerically over ℝ, and three more (1.2.1.2 #1, 1.2.1.3
  #19 and #20) are proved and certified over ℝ and ℂ.
- Report `0f686088…`: Integration audits 411 rules; the first strengthened
  variants of rules with residual integrals (1.2.1.2 #20, #103, #104) are
  proved and certified over ℝ and ℂ.
- Report `37b59f6e…`: Integration audits 408 rules; the strengthened variant of
  1.2.1.3 #24 is proved and certified over ℝ and ℂ.
- Report `fd5059b9…`: Integration audits 407 rules; strengthened variants of
  1.1.1.3 #9 and 1.2.1.3 #25 proved and certified over ℝ and ℂ.
- Report `301d2a1c…`: Integration audits 405 rules; strengthened variants of
  1.2.1.3 #13 and 1.1.1.7 #6 proved and certified over ℝ and ℂ.
- Report `75895afd…`: Integration audits 403 rules; strengthened variants of
  1.2.3.5 #2 and 1.2.1.3 #14 proved and certified over ℝ and ℂ.
- Report `86e9259d…`: Integration audits 401 rules; strengthened variants of
  1.2.1.2 #55, 4.1.12 #81 and #82, 1.2.1.4 #65 and #66 proved and certified
  over ℝ and ℂ.
- Report `5b1bc665…`: Integration audits 396 rules; strengthened variants of
  1.1.1.3 #2 and 1.2.1.1 #3 proved and certified over ℝ and ℂ.
- Report `4a53a417…`: Integration audits 394 rules; strengthened variants of
  1.2.1.2 #4, 1.2.1.3 #1 and 1.2.1.4 #1 proved and certified over ℝ and ℂ.
- Report `5eeda009…`: Integration audits 391 rules; strengthened variants of
  1.1.3.3 #10 and 1.1.3.4 #14 proved and certified over ℝ and ℂ.
- Report `5df371f5…`: Integration audits 389 rules; four more strengthened
  variants (1.1.1.2 #1, 1.1.3.2 #3, 1.1.3.1 #3, 1.1.3.2 #6) proved and
  certified over ℝ and ℂ.
- Report `13c7663e…`: Integration audits 385 rules; four strengthened variants
  (1.1.1.1 #4, 9.1 #9, 4.1.13 #11, #12 with a non-degeneracy condition)
  proved and certified over ℝ and ℂ.
- Report `c508b1ac…`: Integration audits 381 rules; 1.2.3.3 #56 and #57
  proved and certified over ℝ and ℂ.
- Report `cbcbcb7e…`: Integration audits 379 rules; 1.1.3.5 #42 and 1.1.3.6 #30
  proved and certified over ℝ and ℂ.
- Report `93cdf533…`: Integration audits 377 rules; 1.1.3.6 #29 proved and
  certified over ℝ and ℂ.
- Report `fdee9c1b…`: Integration audits 376 rules; 1.1.3.5 #41 proved and
  certified over ℝ and ℂ.
- Report `99ef8103…`: Integration audits 375 rules; 1.1.3.4 #45 proved over
  ℝ and ℂ (certified over ℝ).
- Report `b2ee9abf…`: Integration audits 374 rules; 1.2.3.1 #1 proved over ℝ
  and ℂ (certified over ℝ).
- Report `e85967a3…`: Integration audits 373 rules; 1.2.4.1 #1 and 1.2.4.2 #1
  proved and certified over ℝ and ℂ.
- Report `6f5b2f4d…`: 27 RUBI rules whose integrand is nowhere defined in the
  fragment (half-integer exponents) reported as not migrated (41 in all).
- Report `f8703dd9…`: Integration audits 371 rules; 12 more refuted in both
  domains from random-sampling proposals.
- Report `aba1d4f5…`: Integration audits 359 rules; 39 more RUBI rules from a
  wider inventory pass are refuted (38 in both domains).
- Report `9caf6485…`: 3.2.3 #5 refuted over ℂ; no Integration statement is
  left unproved in either domain.
- Report `e0a3499e…`: six by-parts Integration rules refuted over ℂ at the
  branch cut of `log`; one complex statement (3.2.3 #5) remains unproved.
- Report `4e719fca…`: six Integration rules with `log` refuted over ℂ at the
  branch cut of the principal logarithm; 7 complex statements remain
  unproved.
- Report `f3212525…`: eight one-domain refutations of the Integration audit
  carried to the other domain (3.1.5 #33 over ℝ; 3.4 #9, 4.7.6 #2, 1.2.2.2
  #19, 3.5 #14, #17, #22, #23 over ℂ); no real statement is left unproved.
- Report `1255db02…`: Integration audits 320 rules. 1.1.3.2 #69 is proved over
  ℝ and ℂ (certified over ℝ). The other rule sets are unchanged apart from
  the source digest.
- Report `65b5cda4…`: Integration audits 319 rules. 3.3 #15 and 1.2.1.2 #101
  are proved over ℝ and ℂ (certified over ℝ), and 1.2.1.2 #103 is refuted
  in both domains. The other rule sets are unchanged apart from the source
  digest.
- Report `fbfcffe6…`: Integration audits 316 rules. 3.1.2 #8 and 4.7.9 #80
  are proved and certified over ℝ and ℂ. The other rule sets are unchanged
  apart from the source digest.
- Report `322b4cca…`: Integration audits 314 rules. 4.7.7 #34 and #35 are
  proved and certified over ℝ and ℂ; 1.2.1.2 #54 and #59 are refuted in
  both domains at `d = b = 0`. The other rule sets are unchanged apart from
  the source digest.
- Report `d5681743…`: Integration audits 310 rules. 4.7.9 #9, #10 and
  4.7.7 #26, #27 are proved over ℝ and ℂ (certified over ℝ), and 4.7.7 #32
  is refuted in both domains at `x = π`. The other rule sets are unchanged
  apart from the source digest.
- Report `621dc8cf…`: Integration audits 305 rules; 4.7.9 #78 and #82 are
  refuted over ℝ and ℂ at `x = π`. The other rule sets are unchanged apart
  from the source digest.
- Report `b96dae79…`: Integration audits 303 rules; seven rewritings into a
  residual integral are proved over ℝ and ℂ (six certified over ℂ). The other
  rule sets are unchanged apart from the source digest.
- Report `22741da9…`: Integration audits 296 rules; 1.1.3.2 #68 is proved
  over ℝ and ℂ. The other rule sets are unchanged apart from the source
  digest.
- Report `c6220e09…`: Integration audits 295 rules; 1.1.1.2 #4 is proved
  (certified over ℝ and ℂ), 3.2.1 #7 and 4.7.8 #47, #48 are refuted. The other
  rule sets are unchanged apart from the source digest.
- Report `0a089a2f…`: the registry gains `relation1#eq`, so every rule set's
  report changes digest; Integration audits 291 rules, 108 of them with `EqQ`
  conditions, refuted over ℝ (102 also over ℂ).
- Report `5bddaed2…`: Integration audits 183 rules; 1.2.2.1 #4 is proved
  over ℝ and ℂ. The other rule sets are unchanged apart from the source
  digest.
- Report `65358b60…`: Integration audits 182 rules; 1.2.2.2 #19 is refuted
  over ℝ and 3.1.4 #11 over ℝ and ℂ. The other rule sets are unchanged apart
  from the source digest.
- Report `64f0e4b1…`: Integration audits 180 rules; 1.2.1.1 #7 and
  1.2.1.2 #11 are proved over ℝ and ℂ. The other rule sets are unchanged
  apart from the source digest.
- Report `a956c4cc…`: Integration audits 178 rules; 4.1.12 #53 and #54
  are refuted over ℝ and ℂ (division by `b` at `b = 0`). The other rule sets
  are unchanged apart from the source digest.
- Report `029e916d…`: Integration audits 176 rules; 4.1.12 #47 and #48
  are proved over ℝ and ℂ. The other rule sets are unchanged apart from the
  source digest.
- Report `d53ec774…`: Integration audits 174 rules; 4.7.8 #3 and #4 are
  proved over ℝ and 3.1.4 #16 over ℝ and ℂ. The other rule sets are
  unchanged apart from the source digest.
- Report `0a34c711…`: Integration audits 171 rules; two logarithmic
  rules are proved over ℝ (unproved over ℂ). The other rule sets are
  unchanged apart from the source digest.
- Report `9705f0ef…`: Integration audits 169 rules; four backlog rules
  are proved over ℝ and ℂ (certified over ℝ). The other rule sets are
  unchanged apart from the source digest.
- Report `29465fa3…`: Integration audits 165 rules; nine more are refuted
  in both domains by witnesses from a wider search grid. The other rule
  sets are unchanged apart from the source digest.
- Report `577cca61…`: Integration audits 156 rules. Five recursive binomial
  rules are proved over ℝ and ℂ (certified over ℝ), and 28 more are refuted
  in both domains. The other rule sets are unchanged apart from the source
  digest.
- Report `dcad68f4…`: the calculus rewriter decides closed conditions
  exactly (`OSR.Cond.decide?`); five new Integration conformance cases
  exercise it.  Rules, certification and the registry are unchanged apart
  from the source digest.
- Report `a8eff8f4…`: 123 Integration rules, including five further
  RUBI 4.16.1 refutations over both ℝ and ℂ. Real totals: 22 proved,
  100 refuted, one unproved; complex totals: 18 proved (17 certified),
  96 refuted, nine unproved. Validation runs on the Converix M75Q worker
  with Lean 4.35.0 and Mathlib `56a00585`.
- Report `dfde2079…`: 46 more Integration rules: 118 rules, ℝ 22/118 and
  ℂ 17/118 certified, 95 and 91 counterexamples.  The other rule sets and
  the registry are unchanged apart from the source digest.
- Report `5c32f229…`: 25 more Integration rules: 72 rules, ℝ 21/72 and
  ℂ 17/72 certified, 51 counterexamples.  The other rule sets and the
  registry are unchanged apart from the source digest.
- Report `a6036490…`: twelve more Integration rules with residual integrals:
  47 rules, ℝ 20/47 and ℂ 16/47 certified, 27 counterexamples.  The other
  rule sets and the registry are unchanged apart from the source digest.
- Report `aca727e3…`: eleven more Integration rules with residual integrals:
  35 rules, ℝ 16/35 and ℂ 12/35 certified, 19 counterexamples.  The other
  rule sets and the registry are unchanged apart from the source digest.
- Report `4efb181a…`: the Integration rule set gains eleven RUBI rules with
  residual integrals `int(λx. H)(x)` (Specification V1-E-002b): 24 rules,
  ℝ 12/24 and ℂ 8/24 certified, 12 counterexamples.  The other rule sets and
  the registry are unchanged apart from the source digest.
- Report `be6f672a…`: the Integration rule set gains seven RUBI rules with
  `NeQ` conditions (13 of 20 inventory candidates; ℝ 5/13, ℂ 2/13 certified;
  8 counterexamples). The other rule sets and the registry are unchanged
  apart from the source digest.
- Report `68dfb6f0…`: adds the Integration rule set, the first RUBI rules
  stated as antiderivatives (`calculus1#int`, now in the registry): of the
  nine `FreeQ`-only inventory candidates, 2 are proved over ℝ (1 over ℂ),
  4 are refuted by Lean counterexamples and 3 are not migrated.  The four
  other rule sets are unchanged apart from the source digest.
- Report `4032322e…`: diagnose the missing operand differentiability
  premises of all three structural Calculus rules, backed by Lean witnesses.
  Certification counts remain unchanged.
- Verification report of the Trigonometry pilot (ℝ 13/13 certified, ℂ 12/13).
- Report `6b9f920f…`: same rules and certification, plus audited termination
  proofs of the four Trigonometry profiles.
- Report `5ba7794e…`: Lean sources with the proof that the export is faithful
  at the OpenMath object level; generated files unchanged except the digest.
- Report `a6649bd5…`: adds the Algebra rule set (15 of 20 rules; ℝ 15/15,
  ℂ 14/15 certified) and its conformance cases; reports are per rule set.
- Report `f495f360…`: negative integer exponents; Algebra migrates 16 of 20
  rules (ℝ 16/16, ℂ 15/16 certified).
- Report `0dd4fefa…`: integer exponents and integer conditions; Algebra
  migrates all 20 rules (ℝ 20/20, ℂ 18/20 certified).
- Report `306a1b65…`: adds the Logic rule set (31 propositional rules,
  certified in the boolean domain; 8 quantifier rules not migrated).
- Report `7992c5b2…`: Logic quantifiers (OMBIND) with capture-free rule
  statements; 35 of 39 Logic rules.
- Report `e320b583…`: adds the Calculus rule set (12 derivative and limit
  rules; ℝ 12/12, ℂ 10/12 certified), rechecked on wulfenix.
- Report `b7a7ddbe…`: the fragment gains further functions; Calculus migrates
  26 of 32 rules (ℝ 25/26, ℂ 14/26 certified).
- Report `afe0d4a7…`: the derivative of arctanh is proved; Calculus ℝ 26/26.
- Report `c4653df4…`: FreeQ as independence constraints; all 39 Logic rules.
- Report `2f26c426…`: FreeQ in Calculus (29 of 32 rules); the v0.1 power
  rule is refuted (status `counterexample`).

### Changed
- `scripts/recheck.sh` reads the source digest from every `*report.json` of
  the report directory and requires them to agree.
- `scripts/recheck.sh`: rebuild at the source digest, kernel and leanchecker
  replay, audit, byte-for-byte comparison of published files.
- Manual re-check workflow and `justfile`.
