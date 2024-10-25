{ lib, config, ...}: { 
  options = {
    configured.treesitter.enable = lib.mkEnableOption "enable configured treesitter";
  };
  config = lib.mkIf config.configured.treesitter.enable {
    plugins = { treesitter = {
      enable = true;
      #indent.enable = true;
      folding = true;
      nixvimInjections = true;
    };
      treesitter-context.enable = true;
      treesitter-textobjects.enable = false;
      ts-autotag.enable = true;
      ts-context-commentstring.enable = true;
    };
  };
}
