# OpenSymbolicRules — Verification

Published verification reports of the OSR rule sets, and an independent
re-check that rebuilds them from source.

A `"certified": true` record in an OSR v1 rule set is a claim.  This repository
lets anyone confirm it without trusting the publisher: the re-check rebuilds
`OpenSymbolicRules/Lean` at the report's source digest, replays every proof in
the Lean kernel, replays the modules again with `leanchecker`, re-runs the
audit, and requires every published file to be reproduced byte for byte.

## Reports

`reports/<sha256 source digest>/` holds, for one source state:

| File | Content |
|---|---|
| `report.md`, `report.json` | Per-rule, per-domain status, metrics, termination proofs and strategy runs |
| `trigonometry.osr.json` | The rule set |
| `registry.json` | The OpenMath ↔ Lean semantic registry |
| `conformance/trigonometry.cases.json` | Engine conformance cases |

| Source digest | ℝ certified | ℂ certified | Profiles proved terminating | Lean | Mathlib |
|---|---|---|---|---|---|
| `sha256:6b9f920f9221…` | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:13f7a913cefe…` | 13/13 | 12/13 | 0/4 (tested only) | v4.35.0 | `56a00585` |

## Re-checking a report

Requirements: [elan](https://github.com/leanprover/elan),
[just](https://github.com/casey/just), Python 3, about 3 GB of memory per
`leanchecker` replay.

```bash
git clone https://github.com/OpenSymbolicRules/Lean
# check out the commit whose scripts/source-digest.sh output matches the report
just recheck ../Lean reports/6b9f920f9221af366e267b5d50f762204aa1624a62efa94c802c76fea3a10108
```

The script stops at the first mismatch: source digest, kernel replay, axiom
audit, or any byte of a published file.  The GitHub workflow
`recheck.yml` runs the same steps for a given Lean ref and report.

## License

[MIT](LICENSE.md).
