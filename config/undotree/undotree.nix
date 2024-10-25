{ lib, config, ...}: { 
  options = {
    configured.undotree.enable = lib.mkEnableOption "enable configured undotree";
  };
  config = lib.mkIf config.configured.undotree.enable {
    plugins.undotree = {
      enable = true;
      settings = {
        AutoOpenDiff = true;
        FocusOnToggle = true;
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>ut";
        action = "<cmd>UndotreeToggle<CR>";
        options = {
          silent = true;
          desc = "undotree";
        };
      }
    ];
  };
}
