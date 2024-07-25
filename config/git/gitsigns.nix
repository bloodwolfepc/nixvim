{
  plugins.gitsigns = {
    enable = true;
    settings = {
      trouble = true;
      #currentLineBlame = false;
      signcolumn = false;
      signs = {
        add = { text = "+"; };
        change = { text = "~"; };
        delete = { text = "_"; };
        topdelete = { text = "‾"; };
        chagedelete = { text = "~"; };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gt";
      action = ":Gitsigns blame_line<CR>"; #TODO if gt then toggle signcolumn and blame per line
      options = {
        silent = true;
        desc = "Git Toggle";
      };
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = ":Gitsigns blame_line<CR>";
      options = {
        silent = true;
        desc = "Git Blame";
      };
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = ":Gitsigns diffthis<CR>";
      options = {
        silent = true;
        desc = "Git Diff";
      };
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = ":Gitsigns preview_hunk<CR>";
      options = {
        silent = true;
        desc = "Git Preview";
      };
    }
    {
      mode = "n";
      key = "<leader>gR";
      action = ":Gitsigns reset_buffer<CR>";
      options = {
        silent = true;
        desc = "Git Reset (buffer)";
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>gr";
      action = ":Gitsigns reset_hunk<CR>";
      options = {
        silent = true;
        desc = "Git Reset (hunk)";
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>gs";
      action = ":Gitsigns stage_hunk<CR>";
      options = {
        silent = true;
        desc = "Git Stage (hunk)";
      };
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = ":Gitsigns stage_buffer<CR>";
      options = {
        silent = true;
        desc = "Git Stage (buffer)";
      };
    }
    {
      mode = "n";
      key = "<leader>gu";
      action = ":Gitsigns undo_stage_hunk<CR>";
      options = {
        silent = true;
        desc = "Git Undo Stage (hunk)";
      };
    }
  ];
}
