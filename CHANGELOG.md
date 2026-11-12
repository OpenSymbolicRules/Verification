# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
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
