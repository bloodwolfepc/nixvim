{ lib, config, ... }: {
  options = {
    configured.vimtex.enable = lib.mkEnableOption "Enable configured vimtex";
  };
  config = lib.mkIf config.configured.vimtex.enable {
    plugins.vimtex = {
      enable = true;
    };
  };
}
