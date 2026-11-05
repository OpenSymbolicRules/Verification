# Entry points for independent re-verification of OSR releases.

# Re-check a published report against an OpenSymbolicRules/Lean checkout.
recheck lean report:
	scripts/recheck.sh {{lean}} {{report}}

# List published reports with their metrics.
list:
	for r in reports/*/report.json; do python3 -c 'import json,sys; d=json.load(open(sys.argv[1])); m=d["metrics"]; print(d["build"]["source_digest"], "real certified", m["real"]["certified"], "complex certified", m["complex"]["certified"])' "$r"; done
