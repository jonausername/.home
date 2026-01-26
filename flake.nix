{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
  let mkOutput = (import ./lib/files.nix inputs).importNixFileWithArgs inputs ./.;
  in {
    homeConfigurations."jona" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = mkOutput "modules";
    };

    lib = mkOutput "lib";
  };
}
