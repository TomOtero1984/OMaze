
#!/usr/bin/env bash
set -euo pipefail
OUT="${1:-full_bazel_graph.json}"
EXCLUDES_FILE="${2:-}"
QUERY_BASE="kind('rule', //...)"
if [[ -n "${EXCLUDES_FILE}" && -f "${EXCLUDES_FILE}" ]]; then
  while IFS= read -r PKG; do
    [[ -z "$PKG" ]] && continue
    [[ "$PKG" =~ ^# ]] && continue
    QUERY_BASE="${QUERY_BASE} except //${PKG}/..."
  done < "${EXCLUDES_FILE}"
fi
echo ">>> bazel query: ${QUERY_BASE}"
bazel query "${QUERY_BASE}" --output=streamed_jsonproto --keep_going --nohost_deps --noimplicit_deps > "${OUT}"
echo "Wrote ${OUT}"
