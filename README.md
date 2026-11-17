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
| `sha256:dcad68f44784…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:dcad68f44784…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:dcad68f44784…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:dcad68f44784…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:dcad68f44784…` | Integration (123 audited; ℝ 100 refuted; closed conditions decided) | 22/123 | 17/123 | one step | v4.35.0 | `56a00585` |
| `sha256:577cca61ff0a…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:577cca61ff0a…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:577cca61ff0a…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:577cca61ff0a…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:577cca61ff0a…` | Integration (156 audited; ℝ 128 refuted, 5 more binomial proofs) | 27/156 | 17/156 | one step | v4.35.0 | `56a00585` |
| `sha256:29465fa32746…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:29465fa32746…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:29465fa32746…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:29465fa32746…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:29465fa32746…` | Integration (165 audited; ℝ 137 refuted, wider search grid) | 27/165 | 17/165 | one step | v4.35.0 | `56a00585` |
| `sha256:9705f0efef59…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:9705f0efef59…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:9705f0efef59…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:9705f0efef59…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:9705f0efef59…` | Integration (169 audited; 4 more backlog proofs) | 31/169 | 17/169 | one step | v4.35.0 | `56a00585` |
| `sha256:0a34c711e69d…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:0a34c711e69d…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:0a34c711e69d…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:0a34c711e69d…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:0a34c711e69d…` | Integration (171 audited; 2 log rules proved over ℝ) | 33/171 | 17/171 | one step | v4.35.0 | `56a00585` |
| `sha256:d53ec7748d22…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:d53ec7748d22…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:d53ec7748d22…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:d53ec7748d22…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:d53ec7748d22…` | Integration (174 audited; 4.7.8 #3, #4 and 3.1.4 #16 proved) | 36/174 | 17/174 | one step | v4.35.0 | `56a00585` |
| `sha256:029e916d7936…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:029e916d7936…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:029e916d7936…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:029e916d7936…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:029e916d7936…` | Integration (176 audited; 4.1.12 #47, #48 proved) | 38/176 | 17/176 | one step | v4.35.0 | `56a00585` |
| `sha256:a956c4cc0511…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:a956c4cc0511…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:a956c4cc0511…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:a956c4cc0511…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:a956c4cc0511…` | Integration (178 audited; 4.1.12 #53, #54 refuted) | 38/178 | 17/178 | one step | v4.35.0 | `56a00585` |
| `sha256:64f0e4b15d61…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:64f0e4b15d61…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:64f0e4b15d61…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:64f0e4b15d61…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:64f0e4b15d61…` | Integration (180 audited; quadratic reductions proved) | 40/180 | 17/180 | one step | v4.35.0 | `56a00585` |
| `sha256:65358b601e81…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:65358b601e81…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:65358b601e81…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:65358b601e81…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:65358b601e81…` | Integration (182 audited; 1.2.2.2 #19, 3.1.4 #11 refuted) | 40/182 | 17/182 | one step | v4.35.0 | `56a00585` |
| `sha256:5bddaed22d9f…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:5bddaed22d9f…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5bddaed22d9f…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:5bddaed22d9f…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:5bddaed22d9f…` | Integration (183 audited; quartic reduction proved) | 41/183 | 17/183 | one step | v4.35.0 | `56a00585` |
| `sha256:0a089a2ffb0c…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:0a089a2ffb0c…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:0a089a2ffb0c…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:0a089a2ffb0c…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:0a089a2ffb0c…` | Integration (291 audited; EqQ rules via relation1#eq) | 41/291 | 17/291 | one step | v4.35.0 | `56a00585` |
| `sha256:c6220e09fc81…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:c6220e09fc81…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:c6220e09fc81…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:c6220e09fc81…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:c6220e09fc81…` | Integration (295 audited; 1.1.1.2 #4 proved, certified over ℂ) | 42/295 | 18/295 | one step | v4.35.0 | `56a00585` |
| `sha256:22741da99991…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:22741da99991…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:22741da99991…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:22741da99991…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:22741da99991…` | Integration (296 audited; 1.1.3.2 #68 proved) | 43/296 | 18/296 | one step | v4.35.0 | `56a00585` |
| `sha256:b96dae79bd7e…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:b96dae79bd7e…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:b96dae79bd7e…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:b96dae79bd7e…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:b96dae79bd7e…` | Integration (303 audited; seven rewritings proved) | 50/303 | 24/303 | one step | v4.35.0 | `56a00585` |
| `sha256:621dc8cf5100…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:621dc8cf5100…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:621dc8cf5100…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:621dc8cf5100…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:621dc8cf5100…` | Integration (305 audited; 4.7.9 #78, #82 refuted at x = π) | 50/305 | 24/305 | one step | v4.35.0 | `56a00585` |
| `sha256:d5681743e960…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:d5681743e960…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:d5681743e960…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:d5681743e960…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:d5681743e960…` | Integration (310 audited; four EqQ trigonometric identities proved) | 54/310 | 24/310 | one step | v4.35.0 | `56a00585` |
| `sha256:322b4ccaea5c…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:322b4ccaea5c…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:322b4ccaea5c…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:322b4ccaea5c…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:322b4ccaea5c…` | Integration (314 audited; 4.7.7 #34, #35 proved, 1.2.1.2 #54, #59 refuted) | 56/314 | 26/314 | one step | v4.35.0 | `56a00585` |
| `sha256:fbfcffe66b52…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:fbfcffe66b52…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:fbfcffe66b52…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:fbfcffe66b52…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:fbfcffe66b52…` | Integration (316 audited; 3.1.2 #8 and the closed form 4.7.9 #80 proved) | 58/316 | 28/316 | one step | v4.35.0 | `56a00585` |
| `sha256:65b5cda4133b…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:65b5cda4133b…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:65b5cda4133b…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:65b5cda4133b…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:65b5cda4133b…` | Integration (319 audited; 3.3 #15, 1.2.1.2 #101 proved, #103 refuted) | 60/319 | 28/319 | one step | v4.35.0 | `56a00585` |
| `sha256:1255db02172d…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:1255db02172d…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:1255db02172d…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:1255db02172d…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:1255db02172d…` | Integration (320 audited; the by-parts rule 1.1.3.2 #69 proved) | 61/320 | 28/320 | one step | v4.35.0 | `56a00585` |
| `sha256:f3212525693c…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:f3212525693c…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:f3212525693c…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:f3212525693c…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:f3212525693c…` | Integration (320 audited; eight refutations carried to the other domain, none unproved over ℝ) | 61/320 | 28/320 | one step | v4.35.0 | `56a00585` |
| `sha256:4e719fca1fba…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:4e719fca1fba…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:4e719fca1fba…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:4e719fca1fba…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:4e719fca1fba…` | Integration (320 audited; six log rules refuted over ℂ at the branch cut) | 61/320 | 28/320 | one step | v4.35.0 | `56a00585` |
| `sha256:e0a3499e43ac…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:e0a3499e43ac…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:e0a3499e43ac…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:e0a3499e43ac…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:e0a3499e43ac…` | Integration (320 audited; six more branch-cut refutations over ℂ, one complex statement unproved) | 61/320 | 28/320 | one step | v4.35.0 | `56a00585` |
| `sha256:9caf648597b2…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:9caf648597b2…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:9caf648597b2…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:9caf648597b2…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:9caf648597b2…` | Integration (320 audited; none unproved in ℝ or ℂ) | 61/320 | 28/320 | one step | v4.35.0 | `56a00585` |
| `sha256:aba1d4f5cb73…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:aba1d4f5cb73…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:aba1d4f5cb73…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:aba1d4f5cb73…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:aba1d4f5cb73…` | Integration (359 audited; 39 more refuted from a wider inventory) | 61/359 | 28/359 | one step | v4.35.0 | `56a00585` |
| `sha256:f8703dd9658e…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:f8703dd9658e…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:f8703dd9658e…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:f8703dd9658e…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:f8703dd9658e…` | Integration (371 audited; 12 more refuted from random sampling) | 61/371 | 28/371 | one step | v4.35.0 | `56a00585` |
| `sha256:6f5b2f4df674…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:6f5b2f4df674…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:6f5b2f4df674…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:6f5b2f4df674…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:6f5b2f4df674…` | Integration (371 audited; 41 reported not migrated) | 61/371 | 28/371 | one step | v4.35.0 | `56a00585` |
| `sha256:e85967a3fa01…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:e85967a3fa01…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:e85967a3fa01…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:e85967a3fa01…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:e85967a3fa01…` | Integration (373 audited; 1.2.4.1 #1, 1.2.4.2 #1 proved) | 63/373 | 30/373 | one step | v4.35.0 | `56a00585` |
| `sha256:b2ee9abff1c4…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:b2ee9abff1c4…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:b2ee9abff1c4…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:b2ee9abff1c4…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:b2ee9abff1c4…` | Integration (374 audited; 1.2.3.1 #1 proved) | 64/374 | 30/374 | one step | v4.35.0 | `56a00585` |
| `sha256:99ef810376d6…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:99ef810376d6…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:99ef810376d6…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:99ef810376d6…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:99ef810376d6…` | Integration (375 audited; 1.1.3.4 #45 proved) | 65/375 | 30/375 | one step | v4.35.0 | `56a00585` |
| `sha256:fdee9c1b5aa6…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:fdee9c1b5aa6…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:fdee9c1b5aa6…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:fdee9c1b5aa6…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:fdee9c1b5aa6…` | Integration (376 audited; 1.1.3.5 #41 proved) | 66/376 | 31/376 | one step | v4.35.0 | `56a00585` |
| `sha256:93cdf5336d9e…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:93cdf5336d9e…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:93cdf5336d9e…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:93cdf5336d9e…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:93cdf5336d9e…` | Integration (377 audited; 1.1.3.6 #29 proved) | 67/377 | 32/377 | one step | v4.35.0 | `56a00585` |
| `sha256:cbcbcb7e6445…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:cbcbcb7e6445…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:cbcbcb7e6445…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:cbcbcb7e6445…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:cbcbcb7e6445…` | Integration (379 audited; 1.1.3.5 #42, 1.1.3.6 #30 proved) | 69/379 | 34/379 | one step | v4.35.0 | `56a00585` |
| `sha256:c508b1ac2e45…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:c508b1ac2e45…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:c508b1ac2e45…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:c508b1ac2e45…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:c508b1ac2e45…` | Integration (381 audited; 1.2.3.3 #56, #57 proved) | 71/381 | 36/381 | one step | v4.35.0 | `56a00585` |
| `sha256:13c7663e3b95…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:13c7663e3b95…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:13c7663e3b95…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:13c7663e3b95…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:13c7663e3b95…` | Integration (385 audited; 4 strengthened variants proved) | 75/385 | 40/385 | one step | v4.35.0 | `56a00585` |
| `sha256:5df371f55823…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:5df371f55823…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5df371f55823…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:5df371f55823…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:5df371f55823…` | Integration (389 audited; 8 strengthened variants proved) | 79/389 | 44/389 | one step | v4.35.0 | `56a00585` |
| `sha256:5eeda0093947…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:5eeda0093947…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5eeda0093947…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:5eeda0093947…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:5eeda0093947…` | Integration (391 audited; 10 strengthened variants proved) | 81/391 | 46/391 | one step | v4.35.0 | `56a00585` |
| `sha256:4a53a4178929…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:4a53a4178929…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:4a53a4178929…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:4a53a4178929…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:4a53a4178929…` | Integration (394 audited; 13 strengthened variants proved) | 84/394 | 49/394 | one step | v4.35.0 | `56a00585` |
| `sha256:5b1bc665de35…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:5b1bc665de35…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5b1bc665de35…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:5b1bc665de35…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:5b1bc665de35…` | Integration (396 audited; 15 strengthened variants proved) | 86/396 | 51/396 | one step | v4.35.0 | `56a00585` |
| `sha256:86e9259d65be…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:86e9259d65be…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:86e9259d65be…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:86e9259d65be…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:86e9259d65be…` | Integration (401 audited; 20 strengthened variants proved) | 91/401 | 56/401 | one step | v4.35.0 | `56a00585` |
| `sha256:75895afd9708…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:75895afd9708…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:75895afd9708…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:75895afd9708…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:75895afd9708…` | Integration (403 audited; 22 strengthened variants proved) | 93/403 | 58/403 | one step | v4.35.0 | `56a00585` |
| `sha256:301d2a1cf5f6…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:301d2a1cf5f6…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:301d2a1cf5f6…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:301d2a1cf5f6…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:301d2a1cf5f6…` | Integration (405 audited; 24 strengthened variants proved) | 95/405 | 60/405 | one step | v4.35.0 | `56a00585` |
| `sha256:fd5059b98721…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:fd5059b98721…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:fd5059b98721…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:fd5059b98721…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:fd5059b98721…` | Integration (407 audited; 26 strengthened variants proved) | 97/407 | 62/407 | one step | v4.35.0 | `56a00585` |
| `sha256:37b59f6ea341…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:37b59f6ea341…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:37b59f6ea341…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:37b59f6ea341…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:37b59f6ea341…` | Integration (408 audited; 27 strengthened variants proved) | 98/408 | 63/408 | one step | v4.35.0 | `56a00585` |
| `sha256:0f6860881eb0…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:0f6860881eb0…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:0f6860881eb0…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:0f6860881eb0…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:0f6860881eb0…` | Integration (411 audited; 30 strengthened variants proved) | 101/411 | 66/411 | one step | v4.35.0 | `56a00585` |
| `sha256:204e6b722231…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:204e6b722231…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:204e6b722231…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:204e6b722231…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:204e6b722231…` | Integration (534 rules; 33 strengthened variants proved, 120 checked numerically) | 104/534 | 69/534 | one step | v4.35.0 | `56a00585` |
| `sha256:e58b927179d3…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:e58b927179d3…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:e58b927179d3…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:e58b927179d3…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:e58b927179d3…` | Integration (534 rules; 36 strengthened variants proved, 117 checked numerically) | 107/534 | 72/534 | one step | v4.35.0 | `56a00585` |
| `sha256:226324e30275…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:226324e30275…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:226324e30275…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:226324e30275…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:226324e30275…` | Integration (523 rules; 37 strengthened variants proved, 105 checked numerically) | 108/523 | 73/523 | one step | v4.35.0 | `56a00585` |
| `sha256:46cb2cdc397c…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:46cb2cdc397c…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:46cb2cdc397c…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:46cb2cdc397c…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:46cb2cdc397c…` | Integration (523 rules; 41 strengthened variants proved, 101 checked numerically) | 112/523 | 77/523 | one step | v4.35.0 | `56a00585` |
| `sha256:3841969e50e5…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:3841969e50e5…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:3841969e50e5…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:3841969e50e5…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:3841969e50e5…` | Integration (523 rules; 44 strengthened variants proved, 98 checked numerically) | 115/523 | 80/523 | one step | v4.35.0 | `56a00585` |
| `sha256:805237991a1a…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:805237991a1a…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:805237991a1a…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:805237991a1a…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:805237991a1a…` | Integration (523 rules; 49 strengthened variants proved, 93 checked numerically) | 120/523 | 85/523 | one step | v4.35.0 | `56a00585` |
| `sha256:a818d70c68e3…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:a818d70c68e3…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:a818d70c68e3…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:a818d70c68e3…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:a818d70c68e3…` | Integration (523 rules; 55 strengthened variants proved, 87 checked numerically) | 126/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:dbf6b787d411…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:dbf6b787d411…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:dbf6b787d411…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:dbf6b787d411…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:dbf6b787d411…` | Integration (523 rules; 59 strengthened variants proved, 83 checked numerically) | 130/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:143ae8335d2e…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:143ae8335d2e…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:143ae8335d2e…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:143ae8335d2e…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:143ae8335d2e…` | Integration (523 rules; 62 strengthened variants proved, 80 checked numerically) | 133/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:5af3c5a6b195…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:5af3c5a6b195…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:5af3c5a6b195…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:5af3c5a6b195…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:5af3c5a6b195…` | Integration (523 rules; 64 strengthened variants proved, 78 checked numerically) | 135/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:902650917263…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:902650917263…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:902650917263…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:902650917263…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:902650917263…` | Integration (523 rules; 66 strengthened variants proved, 76 checked numerically) | 137/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:c1d90ac558ad…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:c1d90ac558ad…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:c1d90ac558ad…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:c1d90ac558ad…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:c1d90ac558ad…` | Integration (523 rules; 69 strengthened variants proved, 73 checked numerically) | 140/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:6aa69fdc4301…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:6aa69fdc4301…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:6aa69fdc4301…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:6aa69fdc4301…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:6aa69fdc4301…` | Integration (523 rules; 72 strengthened variants proved, 70 checked numerically) | 143/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:f34f1d83b8d8…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:f34f1d83b8d8…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:f34f1d83b8d8…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:f34f1d83b8d8…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:f34f1d83b8d8…` | Integration (523 rules; 74 strengthened variants proved, 68 checked numerically) | 145/523 | 87/523 | one step | v4.35.0 | `56a00585` |
| `sha256:65fee80822c2…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:65fee80822c2…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:65fee80822c2…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:65fee80822c2…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:65fee80822c2…` | Integration (523 rules; 75 strengthened variants proved, 67 checked numerically) | 146/523 | 88/523 | one step | v4.35.0 | `56a00585` |
| `sha256:6430a1e2dab4…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:6430a1e2dab4…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:6430a1e2dab4…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:6430a1e2dab4…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:6430a1e2dab4…` | Integration (523 rules; 83 strengthened variants proved, 59 checked numerically) | 154/523 | 88/523 | one step | v4.35.0 | `56a00585` |
| `sha256:b402cc1ab77b…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:b402cc1ab77b…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:b402cc1ab77b…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:b402cc1ab77b…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:b402cc1ab77b…` | Integration (523 rules; 93 strengthened variants proved, 49 checked numerically) | 164/523 | 90/523 | one step | v4.35.0 | `56a00585` |
| `sha256:4399c47ee59a…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:4399c47ee59a…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:4399c47ee59a…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:4399c47ee59a…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:4399c47ee59a…` | Integration (523 rules; 97 strengthened variants proved, 45 checked numerically) | 168/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:43563e7c467f…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:43563e7c467f…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:43563e7c467f…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:43563e7c467f…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:43563e7c467f…` | Integration (523 rules; 103 strengthened variants proved, 39 checked numerically) | 174/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:2b296f3e8bdf…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:2b296f3e8bdf…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:2b296f3e8bdf…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:2b296f3e8bdf…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:2b296f3e8bdf…` | Integration (523 rules; 106 strengthened variants proved, 36 checked numerically) | 177/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:c859ec26dc25…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:c859ec26dc25…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:c859ec26dc25…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:c859ec26dc25…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:c859ec26dc25…` | Integration (523 rules; 108 strengthened variants proved, 34 checked numerically) | 179/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:ca7e9f18b296…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:ca7e9f18b296…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:ca7e9f18b296…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:ca7e9f18b296…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:ca7e9f18b296…` | Integration (523 rules; 108 strengthened variants proved, 3 more over ℝ only, 31 checked numerically) | 182/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:7ef66d2f558e…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:7ef66d2f558e…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:7ef66d2f558e…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:7ef66d2f558e…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:7ef66d2f558e…` | Integration (523 rules; 108 strengthened variants proved, 5 more over ℝ only, 29 checked numerically) | 184/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:45206732ffde…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:45206732ffde…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:45206732ffde…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:45206732ffde…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:45206732ffde…` | Integration (523 rules; 108 strengthened variants proved, 7 more over ℝ only, 27 checked numerically) | 186/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:2c8aebbb450d…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:2c8aebbb450d…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:2c8aebbb450d…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:2c8aebbb450d…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:2c8aebbb450d…` | Integration (523 rules; 108 strengthened variants proved, 8 more over ℝ only, 26 checked numerically) | 187/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:aa90538a7653…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:aa90538a7653…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:aa90538a7653…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:aa90538a7653…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:aa90538a7653…` | Integration (523 rules; 108 strengthened variants proved, 9 more over ℝ only, 25 checked numerically) | 188/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:00a944143373…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:00a944143373…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:00a944143373…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:00a944143373…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:00a944143373…` | Integration (523 rules; 108 strengthened variants proved, 12 more over ℝ only, 22 checked numerically) | 191/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:70fd8e0ea836…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:70fd8e0ea836…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:70fd8e0ea836…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:70fd8e0ea836…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:70fd8e0ea836…` | Integration (523 rules; 108 strengthened variants proved, 13 more over ℝ only, 21 checked numerically) | 192/523 | 92/523 | one step | v4.35.0 | `56a00585` |
| `sha256:82672d5ce349…` | Trigonometry | 13/13 | 12/13 | 4/4 | v4.35.0 | `56a00585` |
| `sha256:82672d5ce349…` | Algebra (all 20 migrated) | 20/20 | 18/20 | 2/2 | v4.35.0 | `56a00585` |
| `sha256:82672d5ce349…` | Logic (all 39 migrated; domain 𝔹) | 39/39 in 𝔹 | — | 3/3 | v4.35.0 | `56a00585` |
| `sha256:82672d5ce349…` | Calculus (29 of 32; structural premises diagnosed) | 28/29 | 16/29 | one step | v4.35.0 | `56a00585` |
| `sha256:82672d5ce349…` | Integration (523 rules; 108 strengthened variants proved, 15 more over ℝ only, 19 checked numerically) | 194/523 | 92/523 | one step | v4.35.0 | `56a00585` |
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
just recheck ../Lean reports/82672d5ce349f78b427784f6a9880774aef1ce91a1159c38fbad51d150a84dbc
```

The script stops at the first mismatch: source digest, kernel replay, axiom
audit, or any byte of a published file.  The GitHub workflow
`recheck.yml` runs the same steps for a given Lean ref and report.

## License

[MIT](LICENSE.md).
