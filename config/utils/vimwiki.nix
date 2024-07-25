{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    vimwiki
    cmp-vimwiki-tags
  ];
  #extraConfigLua =''
  #init = function()
  #   g:vimwiki_list = [{'path': '$HOME/Notebook'
  #  \ 'syntax': 'markdown, 'ext': 'md'}]
  #  --vim.g.vimwiki_ext2syntax = {'.md' : 'markdown'}
  #end,
  #'';
}

