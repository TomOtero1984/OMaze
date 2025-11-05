
#!/usr/bin/env python3
import re, sys
if len(sys.argv) != 3:
    print("usage: extract_excludes_from_errors.py <bazel_error_log.txt> <excludes.txt>")
    sys.exit(2)
inp, outp = sys.argv[1], sys.argv[2]
pkgs = set()
pkg_re1 = re.compile(r"package contains errors:\s*([^\s:]+)")
pkg_re2 = re.compile(r"error loading package '([^']+)'")
with open(inp, "r", encoding="utf-8", errors="ignore") as f:
    for line in f:
        m1 = pkg_re1.search(line)
        if m1: pkgs.add(m1.group(1).strip("/"))
        m2 = pkg_re2.search(line)
        if m2: pkgs.add(m2.group(1).strip("/"))
norm = sorted(set(p.lstrip("/").lstrip("//") for p in pkgs))
with open(outp, "w", encoding="utf-8") as f:
    for p in norm:
        print(p, file=f)
print(f"Wrote {len(norm)} excludes to {outp}")
