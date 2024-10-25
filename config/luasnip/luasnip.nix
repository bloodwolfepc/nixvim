{ lib, config, ...}: { 
  options = {
    configured.luasnip.enable = lib.mkEnableOption "enable configured luasnip";
  };
  config = lib.mkIf config.configured.luasnip.enable {
    plugins = { 
      luasnip = {
        enable = true;
        fromLua = [
          {
            paths = [ 
              #/home/bloodwolfe/snippets 
              ./snippets
            ];
          }
        ];
        settings = {
          enable_autosnippets = true;
          store_selection_keys = "<Tab>";
          region_check_events = "InsertEnter";
          delete_check_events = "InsertLeave";
        };
      };
      friendly-snippets.enable = true;
    };
  };
}
