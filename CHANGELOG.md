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
- `scripts/recheck.sh`: rebuild at the source digest, kernel and leanchecker
  replay, audit, byte-for-byte comparison of published files.
- Manual re-check workflow and `justfile`.
