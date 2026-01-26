{ nixpkgs, ... }:
let
  inherit (nixpkgs.lib) genAttrs;
in rec {
  forAllSystems = genAttrs nixpkgs.lib.systems.flakeExposed;

  forAllPkgs = f: forAllSystems (system: f nixpkgs.legacyPackages.${system});
}
