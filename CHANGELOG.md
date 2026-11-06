# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
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

### Changed
- `scripts/recheck.sh` reads the source digest from every `*report.json` of
  the report directory and requires them to agree.
- `scripts/recheck.sh`: rebuild at the source digest, kernel and leanchecker
  replay, audit, byte-for-byte comparison of published files.
- Manual re-check workflow and `justfile`.
