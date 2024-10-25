{ lib, config, ...}: { 
  options = {
    configured.lualine.enable = lib.mkEnableOption "Enable configured lualine";
  };
  config = lib.mkIf config.configured.lualine.enable {
    plugins.lualine = {
      enable = true;
      settings ={ 
        options = {
          globalstatus = true;
          icons_nabled = false;
          theme = null;
        };
      };
    };
  };
}
