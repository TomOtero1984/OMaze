
#!/usr/bin/env python3
import json, os, platform, shutil, subprocess, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
MANIFEST = json.loads((HERE / "deps_manifest.json").read_text())

def have_cmd(cmd):
    return shutil.which(cmd) is not None

def call(cmd):
    print(">", " ".join(cmd))
    return subprocess.call(cmd) == 0

def cmake_find_package(name):
    # Try a tiny configure run that calls find_package(name)
    test_dir = HERE / ".cmake_check" / name
    test_dir.mkdir(parents=True, exist_ok=True)
    (test_dir / "CMakeLists.txt").write_text(f"cmake_minimum_required(VERSION 3.20)\nproject(check)\nfind_package({name} QUIET)\n")
    return call(["cmake", "-S", str(test_dir), "-B", str(test_dir / "b")])

def detect_os():
    s = platform.system().lower()
    if "darwin" in s: return "mac"
    if "windows" in s: return "win"
    return "linux"

def install_with_manager(dep, osname):
    m = dep.get("managers", {})
    if osname == "mac" and m.get("brew"):
        if have_cmd("brew"):
            return call(["brew", "install"] + m["brew"].split())
        else:
            print("brew not found; install Homebrew from https://brew.sh/")
            return False
    if osname == "linux" and m.get("apt"):
        if have_cmd("apt-get"):
            pkgs = m["apt"].split()
            return call(["sudo", "apt-get", "update"]) and call(["sudo", "apt-get", "install", "-y"] + pkgs)
        else:
            print("apt-get not found; please install packages with your distro's manager.")
            return False
    if osname == "win" and m.get("choco"):
        if have_cmd("choco"):
            return call(["choco", "install", "-y", m["choco"]])
        else:
            print("choco not found; install Chocolatey from https://chocolatey.org/")
            return False
    return False

def main():
    osname = detect_os()
    missing = []
    for dep in MANIFEST["deps"]:
        fpkg = dep.get("find_package")
        if fpkg:
            print(f"Checking {fpkg} via find_package...")
            ok = cmake_find_package(fpkg)
            if ok:
                print(f"  {fpkg}: OK")
                continue
            print(f"  {fpkg}: missing")
            installed = install_with_manager(dep, osname)
            if installed and cmake_find_package(fpkg):
                print(f"  {fpkg}: installed and found")
                continue
        # fallbacks for header-only or vendored
        missing.append(dep["id"])

    print("\nSummary:")
    if missing:
        print("Missing or to be vendored:", ", ".join(missing))
        print("For vendored deps (e.g., FP16/XNNPACK/ARM_NEON_2_X86_SSE/cpuinfo/ComputeLibrary), prefer source build or FetchContent.")
    else:
        print("All required deps satisfied by system installers.")

if __name__ == "__main__":
    sys.exit(0 if main() is None else 0)
