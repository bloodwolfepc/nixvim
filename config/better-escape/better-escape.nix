{ lib, config, ...}: { 
  options = {
    configured.better-escape.enable = lib.mkEnableOption "enable configured better-escape";
  };
  config = lib.mkIf config.configured.better-escape.enable {
    plugins.better-escape = {
      enable = true;
      settings = {
        timeout = 200;
      };
    };
  };
}

