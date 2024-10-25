{ lib, config, ...}: { 
  options = {
    configured.treesitter.enable = lib.mkEnableOption "enable configured treesitter";
  };
  config = lib.mkIf config.configured.treesitter.enable {
    plugins = { 
      treesitter = {
        enable = true;
        settings = {
          #highlight.enable = false;
          indent.enable = true;
          #autopairs.enable = false;
          #folding.enable = false;
        };
        folding = false;
        nixvimInjections = true;
      };
      #treesitter-context.enable = false;
      #treesitter-textobjects.enable = false;
      ts-autotag.enable = true;
      ts-context-commentstring.enable = true;
    };
  };
}
