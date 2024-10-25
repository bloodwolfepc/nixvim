{
  keymaps = [
    {
      mode = "n";
      key = "<leader>bn";
      action = "<cmd>bn<cr>";
      options = {
        desc = "buffer next";
      };
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>bp<cr>";
      options = {
        desc = "buffer previous";
      };
    }
    {
      mode = "n";
      key = "<leader>bx";
      action = "<cmd>bdeletecr>";
      options = {
        desc = "buffer delete";
      };
    }
  ];
}
