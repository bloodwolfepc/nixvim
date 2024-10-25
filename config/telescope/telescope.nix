{ lib, config, ...}: { 
  options = {
    configured.telescope.enable = lib.mkEnableOption "Enable configured telescope";
  };
  config = lib.mkIf config.configured.telescope.enable {
    plugins.project-nvim.enable = true;
    plugins.project-nvim.enableTelescope = true;
    plugins.telescope = {
      enable = true;
      extensions = {
        media-files.enable = true;
        undo.enable = true;
        fzf-native = {
          enable = true;
          settings = {
            fuzzy = true;
            override_generic_sorter = true;
            override_file_sorter = true;
            case_made = "smart_case";
          };
        };
        ui-select = { 
          enable = true;
          settings = {  
            specific_opts.codeactions = true;
          };
        };
      };
      settings = {
        defaults.mappings.i."jk".__raw= ''
          function (...)
            return require("telescope.actions").close(...)
          end
        '';
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>sh";
        action = "<cmd>lua require('telescope.builtin').find_files({cwd = '~/'})<CR>";
        options = {
          desc = "find files ~/";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>sf";
        action = "<cmd>Telescope find_files<CR>";
        options = {
          desc = "find files";
          silent = true;
        };
      } 
      {
        mode = "n";
        key = "<leader>sb";
        action = "<cmd>Telescope buffers<CR>";
        options = {
          desc = "find buffers";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader><space>";
        action = "<cmd>Telescope live_grep<CR>";
        options = {
          desc = "live grep";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '~/'})<CR>";
        options = {
          desc = "grep files ~/";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fp";
        action = "<cmd>Telescope projects<CR>";
        options = {
          desc = "find projects";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fc";
        action = "<cmd>Telescope command_history<CR>";
        options = {
          desc = "command history";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
        options = {
          desc = "search buffer";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fk";
        action = "<cmd>Telescope keymaps<CR>";
        options = {
          desc = "find keymaps";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fd";
        action = "<cmd>Telescope man_pages<CR>";
        options = {
          desc = "search manual";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>fm";
        action = "<cmd>Telescope marks<CR>";
        options = {
          desc = "search marks";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>ft";
        action = "<cmd>Telescope todo-comments<cr>";
        options = {
          silent = true;
          desc = "find todo comments";
        };
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>lua require('telescope.builtin').live_grep({grep_open_files=true})<cr>";
        options = {
          desc = "grep active buffers";
        };
      }
    ];
  };
}

