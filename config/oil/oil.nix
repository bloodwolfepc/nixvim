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
        preview = {
          border = "single";
        };
        float = {
          border = "single";
        };
        keymaps = {
          "g?" = "actions.show_help";
          "<CR>" = "actions.select";
          "<C-\\>" = "actions.select_vsplit";
          "<C-enter>" = "actions.select_split";
          "<C-t>" = "actions.select_tab";
          "<C-p>" = "actions.preview";
          "<C-c>" = "actions.close";
          "<C-r>" = "actions.refresh";
          "-" = "actions.parent";
          "_" = "actions.open_cwd";
          "`" = "actions.cd";
          "~" = "actions.tcd";
          "gs" = "actions.change_sort";
          "gx" = "actions.open_external";
          "g." = "actions.toggle_hidden";
          "x" = "actions.close";
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>o";
        action = "<cmd>Oil<CR>";
        options = {
          desc = "oil";
          silent = true;
        };
      }
    ];
  };
}

