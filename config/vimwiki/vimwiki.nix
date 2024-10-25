{ pkgs, lib, config, ...}: { 
  options = {
    configured.vimwiki.enable = lib.mkEnableOption "Enable configured vimwiki";
  };
  config = lib.mkIf config.configured.vimwiki.enable {
    extraPlugins = with pkgs.vimPlugins; [
      vimwiki
    ];
    #extraConfigLua = ''

    #  g:vimwiki_list = [{"path":"~/notebook/", "syntax": "markdown", "ext": ".md"}]
    #'';
  #extraConfigLua =''
  #init = function()
  #   g:vimwiki_list = [{'path': '$HOME/Notebook'
  #  \ 'syntax': 'markdown, 'ext': 'md'}]
  #  --vim.g.vimwiki_ext2syntax = {'.md' : 'markdown'}
  #end,
  #'';

  };
}
