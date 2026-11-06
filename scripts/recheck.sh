#!/usr/bin/env bash
# Independently re-check a published verification report.
#
# Usage: scripts/recheck.sh <OpenSymbolicRules/Lean checkout> <report directory>
#
# 1. the checkout must have the source digest recorded in the report;
# 2. the build replays every proof in the Lean kernel;
# 3. leanchecker replays every module a second time;
# 4. the export re-runs the audit and must reproduce every published file
#    byte for byte.
set -euo pipefail

lean=$(cd "$1" && pwd)
report=$(cd "$2" && pwd)

# Every report of the directory must record the same source digest
# (`report.json` before rule sets had their own reports).
expected=$(python3 - "$report" <<'PY'
import glob, json, os, sys
paths = sorted(glob.glob(os.path.join(sys.argv[1], "*report.json")))
if not paths:
    sys.exit("no report in " + sys.argv[1])
digests = {json.load(open(p))["build"]["source_digest"] for p in paths}
if len(digests) != 1:
    sys.exit(f"reports disagree on the source digest: {sorted(digests)}")
print(digests.pop())
PY
)
actual="sha256:$(cd "$lean" && scripts/source-digest.sh)"
if [ "$expected" != "$actual" ]; then
  echo "source digest mismatch: report $expected, checkout $actual" >&2
  exit 1
fi

cd "$lean"
just setup
just build
just check
out=$(mktemp -d)
just export "$out"

status=0
while IFS= read -r -d '' f; do
  rel=${f#"$report"/}
  if cmp -s "$f" "$out/$rel"; then
    echo "identical: $rel"
  else
    echo "DIFFERENT: $rel" >&2
    status=1
  fi
done < <(find "$report" -type f -print0 | sort -z)

[ "$status" -eq 0 ] && echo "recheck OK: $expected"
exit "$status"
