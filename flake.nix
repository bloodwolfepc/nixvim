{
  description = "bloodowlfepc neovim config";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          main = {
            inherit pkgs;
            module = import ./config/preset/main;
          };
          minimal = {
            inherit pkgs;
            module = import ./config/preset/minimal;
          };
          main' = nixvim'.makeNixvimWithModule main;
          minimal' = nixvim'.makeNixvimWithModule minimal;
        in
        {
          checks = {
            default = nixvimLib.check.mkTestDerivationFromNixvimModule main;
            minimal = nixvimLib.check.mkTestDerivationFromNixvimModule minimal;
          };

          packages = {
            default = main';
            minimal = minimal';
          };
        };
    };
}
