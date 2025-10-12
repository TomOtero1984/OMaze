{
  description = "OMaze dev shell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = builtins.currentSystem; };
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.ocaml
          pkgs.dune
        ];
      };
    };
}
