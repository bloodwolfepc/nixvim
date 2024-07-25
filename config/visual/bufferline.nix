{
  plugins.bufferline.enable = true;
#TODO configure bufferline left to right as prev to next
  keymaps = [
    {
      mode = "n";
      key = "<S-k>";
      action = "<cmd>bn<cr>";
      options = {
        desc = "Buffer Next";
      };
    }
    {
      mode = "n";
      key = "<S-j>";
      action = "<cmd>bp<cr>";
      options = {
        desc = "Buffer Previous";
      };
    }
  ];
}

