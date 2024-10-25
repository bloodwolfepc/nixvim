{ pkgs, lib, config, ...}: { 
  options = {
    configured.lazygit.enable = lib.mkEnableOption "enable configured lazygit";
  };
  config = lib.mkIf config.configured.lazygit.enable {
    extraPlugins = with pkgs.vimPlugins; [
      lazygit-nvim
    ];

    extraConfigLua = ''
      require("telescope").load_extension("lazygit")
    '';

    keymaps = [
      {
        mode = "n";
        key = "<leader>gl";
        action = "<cmd>LazyGit<CR>";
        options = {
          desc = "LazyGit (root dir)";
        };
      }
    ];
  };
}
