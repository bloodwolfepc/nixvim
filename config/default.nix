{
  imports = [

  ./opt.nix
  ./keymaps.nix

  ./completion/cmp.nix
  ./completion/wilder.nix
  ./completion/copilot.nix
  ./completion/luasnip.nix
  ./completion/surround.nix

  ./external/neocord.nix
  ./external/wakatime.nix
  ./external/markdown-preview.nix
  ./external/gpt.nix

  #./filesystem/nvim-tree.nix
  #./filesystem/neo-tree.nix
  ./filesystem/oil.nix

  ./git/neogit.nix
  ./git/lazygit.nix
  ./git/diffview.nix
  ./git/gitsigns.nix

  ./language/lsp.nix
  ./language/lspsaga.nix
  ./language/lint.nix
  ./language/lspsaga.nix
  ./language/none-ls.nix
  ./language/trouble.nix
  ./language/conform-nvim.nix

  ./navigation/better-escape.nix
  ./navigation/hardtime.nix
  ./navigation/vim-be-good.nix

  ./telescope/telescope.nix

  ./utils/undotree.nix
  ./utils/which-key.nix
  #./utils/toggleterm.nix
  ./utils/persistence.nix
  ./utils/comment-nvim.nix
  ./utils/todo-comments.nix
  ./utils/tmux-navigator.nix
  ./utils/vimwiki.nix
  ./utils/marks.nix

  ./visual/alpha.nix
  ./visual/yanky.nix
  ./visual/fidget.nix
  ./visual/lualine.nix
  ./visual/bufferline.nix
  ./visual/illuminate.nix
  ./visual/nvim-colorizer.nix
  ./visual/indent-blankline.nix
  ./visual/notify.nix


  ./debug/dap.nix
  ];
}
