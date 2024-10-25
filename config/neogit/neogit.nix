{ lib, config, ...}: { 
  options = {
    configured.neogit.enable = lib.mkEnableOption "enable configured neogit";
  };
  config = lib.mkIf config.configured.neogit.enable {
    plugins.neogit = {
      enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>gg";
        action = "<cmd>Neogit<CR>";
      }
    ];
  };
}
