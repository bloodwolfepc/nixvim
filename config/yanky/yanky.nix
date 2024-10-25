{ lib, config, ...}: { 
  options = {
    configured.yanky.enable = lib.mkEnableOption "Enable configured yanky";
  };
  config = lib.mkIf config.configured.yanky.enable {
    plugins.yanky = { 
      enable = true;
      settings = {
        on_yank = true;
        timer = 200;
      };
    };
  };
}
