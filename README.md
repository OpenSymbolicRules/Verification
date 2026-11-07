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
set `<set>` (`trigonometry`, `algebra` from `a6649bd5…` on, `logic` from
`306a1b65…` on, `calculus` from `e320b583…` on):

| File | Content |
|---|---|
| `<set>.report.md`, `<set>.report.json` | Per-rule, per-domain status, metrics, rules not migrated, termination proofs and strategy runs (`report.md`, `report.json` before `a6649bd5…`) |
| `<set>.osr.json` | The rule set |
| `registry.json` | The OpenMath ↔ Lean semantic registry |
| `conformance/<set>.cases.json` | Engine conformance cases |

| Source digest | Rule set | ℝ certified | ℂ certified | Profiles proved terminating | Lean | Mathlib |
|---|---|---|---|---|---|---|
| `sha256:4032322efc3d…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:4032322efc3d…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:4032322efc3d…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:4032322efc3d…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:2f26c4262ba9…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:2f26c4262ba9…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:2f26c4262ba9…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:2f26c4262ba9…` | Calculus (29 of 32; 1 counterexample) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:c4653df4c27f…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:c4653df4c27f…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:c4653df4c27f…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:c4653df4c27f…` | Calculus (26 of 32 migrated) | 26/26 | 14/26 | one step | v4.35.0 | `56a00585` |
| `sha256:afe0d4a7805d…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:afe0d4a7805d…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:afe0d4a7805d…` | Logic (35 of 39 migrated; domain 𝔹) | 35/35 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:afe0d4a7805d…` | Calculus (26 of 32 migrated) | 26/26 | 14/26 | one step | v4.35.0 | `56a00585` |
| `sha256:b7a7ddbeb3f6…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:b7a7ddbeb3f6…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:b7a7ddbeb3f6…` | Logic (35 of 39 migrated; domain 𝔹) | 35/35 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:b7a7ddbeb3f6…` | Calculus (26 of 32 migrated) | 25/26 | 14/26 | one step | v4.35.0 | `56a00585` |
| `sha256:e320b5833b74…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:e320b5833b74…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:e320b5833b74…` | Logic (35 of 39 migrated; domain 𝔹) | 35/35 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:e320b5833b74…` | Calculus (12 of 32 migrated) | 12/12 | 10/12 | one step | v4.35.0 | `56a00585` |
| `sha256:7992c5b278b1…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:7992c5b278b1…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:7992c5b278b1…` | Logic (35 of 39 migrated; domain 𝔹) | 35/35 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:306a1b65a6a0…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:306a1b65a6a0…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:306a1b65a6a0…` | Logic (31 of 39 migrated; domain 𝔹) | 31/31 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
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
just recheck ../Lean reports/4032322efc3dc671f601de5f9124ab46d6567273a5939e45939cd9c522035a4e
```

The script stops at the first mismatch: source digest, kernel replay, axiom
audit, or any byte of a published file.  The GitHub workflow
`recheck.yml` runs the same steps for a given Lean ref and report.

## License

[MIT](LICENSE.md).
