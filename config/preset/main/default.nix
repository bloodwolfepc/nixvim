{ pkgs, lib, config, ...}: {
  imports = [
    ../../imports.nix
  ];
  configured = {
    alpha.enable = true;
    bufferline.enable = true;
    cmp.enable = true;
    conform.enable = true;
    dap.enable = true;
    gitsigns.enable = true;
    hardtime.enable = true;
    indent-blankline.enable = true;
    lazygit.enable = true;
    lint.enable = true;
    lsp.enable = true;
    lualine.enable = true;
    luasnip.enable = true;
    markdown-preview.enable = true;
    neogit.enable = true;
    oil.enable = true;
    telescope.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    undotree.enable = true;
    vimtex.enable = true;
    vimwiki.enable = true;
    yanky.enable = true;
  };
  plugins = {
    web-devicons.enable = true;
    fidget.enable = true;
    nvim-colorizer.enable = true;
    illuminate.enable = true;
    marks.enable = true;
    persistence.enable = true;
    tmux-navigator.enable = true;
    comment.enable = true;
    todo-comments.enable = true;
    which-key.enable = true;
    wilder.enable = true;
    nvim-surround.enable = true;
    none-ls.enable = true;
    lspsaga.enable = true;
    diffview.enable = true;

  };
  extraPlugins = with pkgs.vimPlugins; [
    eyeliner-nvim
  ];
}

#toggleterm
#wakatime
#neocord
#copilot-lua
#lspsaga
