# Default-profile Integration migration

Report `59116c55fdead1066ba630ce3c7f58a823cce5d52290ddfbeec7a1174d53db35`
was generated from Lean commit `371d9721e7a615f3ead8aa2aa1420d07f0e174ff`
using Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`.
Its 3,001 Integration entries include 118 additional original source IDs.
One has a checked real proof, six have checked real counterexamples and 111
remain open over the reals. On the complex domain, the batch has three
counterexamples, eight open cases and 107 unsupported records.
Each new declaration retains its source locator and its independence and
algebraic conditions. Seven source occurrences reuse an audited statement.
Two independent exports reproduced the files byte for byte.

Reproduce the published report with the pinned Lean checkout:

```sh
scripts/recheck.sh ../Lean reports/59116c55fdead1066ba630ce3c7f58a823cce5d52290ddfbeec7a1174d53db35
```

## Complete source intervals

Report `72893a660f9747315e08b32279b1ba98434614c735b4e4061c75b4fa6704229c`
was generated from Lean commit `ef5044bc9435e75da7e6320a7cf73946d18e2698` and covers
3,015 Integration entries. It uses the same Lean and Mathlib versions
as the preceding report. Under the reals, 488 entries are certified, 1,560
have checked counterexamples and 967 remain open. Over the complex numbers,
297 have proofs (157 certified), 365 have counterexamples, 2,184 remain
open and 169 lack a registered interpretation.

Thirty-nine new original source rules require literal integer parameters.
Separately, 34 original statements had lost a bound during translation.
Twenty-four can be expressed with both comparisons, of which ten retain
a real counterexample under the corrected conditions. Ten other source
identities require strictly fractional exponents in the pattern. The
migration ledger records that limitation. Fifteen associated variants
were withdrawn. Historical reports retain the evidence for their earlier
statements.
