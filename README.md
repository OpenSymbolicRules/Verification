# OpenSymbolicRules — Verification

Published verification reports of the OSR rule sets, and an independent
re-check that rebuilds them from source.

A `"certified": true` record in an OSR v1 rule set is a claim.  This repository
lets anyone confirm it without trusting the publisher: the re-check rebuilds
`OpenSymbolicRules/Lean` at the report's source digest, replays every proof in
the Lean kernel, replays the modules again with `leanchecker`, re-runs the
audit, and requires every published file to be reproduced byte for byte.

## Reports

`reports/<sha256 source digest>/` holds, for one source state and each rule
set `<set>` (`trigonometry`, and `algebra` from `a6649bd5…` on):

| File | Content |
|---|---|
| `<set>.report.md`, `<set>.report.json` | Per-rule, per-domain status, metrics, rules not migrated, termination proofs and strategy runs (`report.md`, `report.json` before `a6649bd5…`) |
| `<set>.osr.json` | The rule set |
| `registry.json` | The OpenMath ↔ Lean semantic registry |
| `conformance/<set>.cases.json` | Engine conformance cases |

| Source digest | Rule set | ℝ certified | ℂ certified | Profiles proved terminating | Lean | Mathlib |
|---|---|---|---|---|---|---|
| `sha256:0dd4fefaab18…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:0dd4fefaab18…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:f495f360d39a…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:f495f360d39a…` | Algebra (16 of 20 migrated) | 16/16 | 15/16 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:a6649bd5fb8c…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:a6649bd5fb8c…` | Algebra (15 of 20 migrated) | 15/15 | 14/15 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5ba7794ee165…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:6b9f920f9221…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:13f7a913cefe…` | Trigonometry | 13/13 | 12/13 | 0/4 (tested only) | v4.35.0 | `56a00585` |

## Re-checking a report

Requirements: [elan](https://github.com/leanprover/elan),
[just](https://github.com/casey/just), Python 3, about 3 GB of memory per
`leanchecker` replay.

```bash
git clone https://github.com/OpenSymbolicRules/Lean
# check out the commit whose scripts/source-digest.sh output matches the report
just recheck ../Lean reports/0dd4fefaab184e183edb107e7dd902b07d769a769ea8c20687e1872b49f6f5d8
```

The script stops at the first mismatch: source digest, kernel replay, axiom
audit, or any byte of a published file.  The GitHub workflow
`recheck.yml` runs the same steps for a given Lean ref and report.

## License

[MIT](LICENSE.md).
