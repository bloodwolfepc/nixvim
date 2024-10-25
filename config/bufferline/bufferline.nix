{ lib, config, ...}: { 
  options = {
    configured.bufferline.enable = lib.mkEnableOption "Enable configured bufferline";
  };
  config = lib.mkIf config.configured.bufferline.enable {
    plugins.bufferline.enable = true;
  };
}

