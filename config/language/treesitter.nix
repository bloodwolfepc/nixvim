{
  config.plugins = {
    treesitter = {
      enable = true;
      indent = true;
      folding = true;
      nixvimInjections = true;
    };
    treesitter-context.enable = true;
    treesitter-textobject.enable = false;
    ts-autotag.enable = true;
    ts-context-commentstring.enable = true;
  };
}
