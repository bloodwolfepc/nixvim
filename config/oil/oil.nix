{ lib, config, ...}: { 
  options = {
    configured.oil.enable = lib.mkEnableOption "enable configured oil";
  };
  config = lib.mkIf config.configured.oil.enable {
    plugins.oil = {
      enable = true;
      settings = {
        view_options.show_hidden = true;
        use_default_keymaps = true;
        delete_to_trash = true;
        default_file_explorer = true;
      };
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>o";
        action = "<cmd>Oil<CR>";
        options = {
          desc = "Oil";
          silent = true;
        };
      }
    ];
  };
}

