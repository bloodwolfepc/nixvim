{ lib, config, ...}: { 
  options = {
    configured.indent-blankline.enable = lib.mkEnableOption "enable configured indent-blankline";
  };
  config = lib.mkIf config.configured.indent-blankline.enable {
    plugins.indent-blankline = {
      enable = true;
      settings = {
        scope = {
          enabled = true;
          show_start = true;
        };
      };
    };
  };
}

