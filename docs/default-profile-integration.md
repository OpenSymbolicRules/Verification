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
