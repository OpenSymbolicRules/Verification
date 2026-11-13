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
`306a1b65…` on, `calculus` from `e320b583…` on, `integration` from `68dfb6f0…` on):

| File | Content |
|---|---|
| `<set>.report.md`, `<set>.report.json` | Per-rule, per-domain status, metrics, rules not migrated, termination proofs and strategy runs (`report.md`, `report.json` before `a6649bd5…`) |
| `<set>.osr.json` | The rule set |
| `registry.json` | The OpenMath ↔ Lean semantic registry |
| `conformance/<set>.cases.json` | Engine conformance cases |

| Source digest | Rule set | ℝ certified | ℂ certified | Profiles proved terminating | Lean | Mathlib |
|---|---|---|---|---|---|---|
| `sha256:a8eff8f40f45…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:a8eff8f40f45…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:a8eff8f40f45…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:a8eff8f40f45…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:a8eff8f40f45…` | Integration (123 audited; ℝ 100 refuted) | 22/123 | 17/123 | one step | v4.35.0 | `56a00585` |
| `sha256:dfde2079c514…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:dfde2079c514…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:dfde2079c514…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:dfde2079c514…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:dfde2079c514…` | Integration (118 RUBI rules, 105 with residual integrals; 95 counterexamples over ℝ) | 22/118 | 17/118 | one step | v4.35.0 | `56a00585` |
| `sha256:5c32f229fb83…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:5c32f229fb83…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5c32f229fb83…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:5c32f229fb83…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:5c32f229fb83…` | Integration (72 RUBI rules, 59 with residual integrals; 51 counterexamples) | 21/72 | 17/72 | one step | v4.35.0 | `56a00585` |
| `sha256:a603649087b6…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:a603649087b6…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:a603649087b6…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:a603649087b6…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:a603649087b6…` | Integration (47 RUBI rules, 34 with residual integrals; 27 counterexamples) | 20/47 | 16/47 | one step | v4.35.0 | `56a00585` |
| `sha256:aca727e39f95…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:aca727e39f95…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:aca727e39f95…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:aca727e39f95…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:aca727e39f95…` | Integration (35 RUBI rules, 22 with residual integrals; 19 counterexamples) | 16/35 | 12/35 | one step | v4.35.0 | `56a00585` |
| `sha256:4efb181a8bc4…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:4efb181a8bc4…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:4efb181a8bc4…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:4efb181a8bc4…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:4efb181a8bc4…` | Integration (24 RUBI rules, 11 with residual integrals; 12 counterexamples) | 12/24 | 8/24 | one step | v4.35.0 | `56a00585` |
| `sha256:be6f672ab7d9…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:be6f672ab7d9…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:be6f672ab7d9…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:be6f672ab7d9…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:be6f672ab7d9…` | Integration (13 of the 20 RUBI inventory candidates; 8 counterexamples) | 5/13 | 2/13 | one step | v4.35.0 | `56a00585` |
| `sha256:68dfb6f0c742…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:68dfb6f0c742…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:68dfb6f0c742…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:68dfb6f0c742…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:68dfb6f0c742…` | Integration (6 of the 9 RUBI inventory candidates; 4 counterexamples) | 2/6 | 1/6 | one step | v4.35.0 | `56a00585` |
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
just recheck ../Lean reports/a8eff8f40f459ebb9d5f2ed1ace76f96c8587a4b546708194404d4c5d2b24e54
```

The script stops at the first mismatch: source digest, kernel replay, axiom
audit, or any byte of a published file.  The GitHub workflow
`recheck.yml` runs the same steps for a given Lean ref and report.

## License

[MIT](LICENSE.md).
