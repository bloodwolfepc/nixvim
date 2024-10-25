{ lib, config, ...}: {
  imports = [
    #../imports.nix
    ../../imports.nix
    ../../imports.nix
  ];
  configured = {
    telescope.enable = false;
  };
}
