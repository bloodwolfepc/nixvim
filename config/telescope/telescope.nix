{
  plugins.project-nvim.enable = true;
  plugins.project-nvim.enableTelescope = true;
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      media-files.enable = true;
      ui-select.enable = true;
      ui-select.settings.specific_opts.codeactions = true;
      undo.enable = true; #TODO set mappings for yank_additions, yank_deletions, and restore in I an N
    };
    settings = {
      defaults.mappings.i."<esc>".__raw= ''
        function (...)
          return require("telescope.actions").close(...)
        end
      '';
    };
  };
#TODO oldfiles, git_files, git_commits, git_status, autocommands
# commands, diagnostics, help_tags, highlights, (document diagnostics) diagnostics bufnr=0
# make a way for visual mode to never move the cursor after selection, maybe
# make a bind that changes the cwd to buffer
  keymaps = [
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "Fuzzy Files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fH";
      action = "<cmd>lua require('telescope.builtin').find_files({cwd = '~/'})<CR>";
      options = {
        desc = "Fuzzy Files (home)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fR";
      action = "<cmd>lua require('telescope.builtin').find_files({cwd = '/'})<CR>";
      options = {
        desc = "Fuzzy Files (root)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fP";
      action = "<cmd>lua require('telescope.builtin').find_files({cwd = '~/Projects'})<CR>";
      options = {
        desc = "Fuzzy Files (Projects)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fD";
      action = "<cmd>lua require('telescope.builtin').find_files({cwd = '/mnt'})<CR>";
      options = {
        desc = "Fuzzy Files (mnt 'drives')";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fN";
      action = "<cmd>lua require('telescope.builtin').find_files({cwd = '/nix'})<CR>";
      options = {
        desc = "Fuzzy Files (nix)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>lua require('telescope.builtin').find_files({cwd = '/tmp'})<CR>";
      options = {
        desc = "Fuzzy Files (/tmp 'ephemeral)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "Fuzzy Grep Files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "Fuzzy Grep (alternate)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '~/'})<CR>";
      options = {
        desc = "Fuzzy Grep Files (home)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '/'})<CR>";
      options = {
        desc = "Fuzzy Grep Files (root)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fp";
      action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '~/Projects'})<CR>";
      options = {
        desc = "Fuzzy Grep Files (Projects)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '/mnt'})<CR>";
      options = {
        desc = "Fuzzy Grep Files (mnt 'drives')";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fn";
      action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '/nix'})<CR>";
      options = {
        desc = "Fuzzy Grep Files (nix)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>lua require('telescope.builtin').live_grep({cwd = '/tmp'})<CR>";
      options = {
        desc = "Fuzzy Grep Files (/tmp 'ephemeral)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fs";
      action = "<cmd>Telescope projects<CR>";
      options = {
        desc = "Fuzzy Switch (project)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<cmd>Telescope command_history<CR>";
      options = {
        desc = "Fuzzy Command History";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fl";
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      options = {
        desc = "Fuzzy Local (search buffer)";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fk";
      action = "<cmd>Telescope keymaps<CR>";
      options = {
        desc = "Fuzzy Keymaps";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fM";
      action = "<cmd>Telescope man_pages<CR>";
      options = {
        desc = "Fuzzy Manual";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fm";
      action = "<cmd>Telescope marks<CR>";
      options = {
        desc = "Fuzzy Marks";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>Telescope todo-comments<cr>";
      options = {
        silent = true;
        desc = "Fuzzy Todo";
      };
    }
    {
      mode = "n";
      key = "<leader>fO";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        desc = "Fuzzy Buffers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fo";
      action = "<cmd>lua require('telescope.builtin').live_grep({grep_open_files=true})<cr>";
      options = {
        desc = "Fuzzy On-line (Grep Though Active Buffers)";
      };
    }
  ];
}

