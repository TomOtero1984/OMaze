#!/usr/bin/env python3
import json, sys
if len(sys.argv) != 2:
    print("usage: validate_remote_deps.py <remote_deps.json>")
    sys.exit(2)
path = sys.argv[1]
with open(path, 'r', encoding='utf-8') as f:
    data = json.load(f)
errors = []
if not isinstance(data, dict):
    errors.append("Top-level JSON must be an object.")
else:
    for key in ("by_repo","by_label"):
        if key not in data or not isinstance(data[key], dict):
            errors.append(f"Missing or invalid '{key}' object.")
    def check_entry(label, entry):
        if "name" not in entry or not isinstance(entry["name"], str):
            errors.append(f"{label}: missing 'name' (string).")
        if "kind" not in entry or entry["kind"] not in ("FetchContent","FindPackage","ExternalProject","HeaderOnly"):
            errors.append(f"{label}: invalid or missing 'kind'.")
        if entry.get("kind") == "FetchContent":
            if "url" not in entry or not isinstance(entry["url"], str):
                errors.append(f"{label}: FetchContent requires 'url'.")
        if "libs" in entry and not isinstance(entry["libs"], list):
            errors.append(f"{label}: 'libs' must be a list if present.")
    for k, v in data.get("by_repo", {}).items():
        check_entry(f"by_repo[{k}]", v)
    for k, v in data.get("by_label", {}).items():
        check_entry(f"by_label[{k}]", v)
if errors:
    print("❌ Validation failed:")
    for e in errors:
        print(" -", e)
    sys.exit(1)
else:
    print("✅ remote_deps.json looks good.")