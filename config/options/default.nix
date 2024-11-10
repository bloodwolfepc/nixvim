{
  config = {
    viAlias = true;
    globals.mapleader = " ";
    clipboard.register = "unnamedplus";
    clipboard.providers.wl-copy.enable = true;
    opts = { 
      termguicolors = true;
      backup = false;
      undofile = true;
      undodir = "/tmp/vim-undo";
      cmdheight = 1;
      conceallevel = 0;
      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      breakindent = true;
      pumheight = 10;
      pumblend = 10;
      showmode = true;
      showtabline = 2;
      smartcase = true;
      smartindent = true;
      splitbelow = true;
      splitright = true;
      swapfile = false;
      timeoutlen = 300; #higher times needed for surround-nvim
      updatetime = 50;
      writebackup = false;
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
      cursorline = false;
      number = true;
      laststatus = 3;
      showcmd = false;
      ruler = false;
      relativenumber = true;
      numberwidth = 4;
      signcolumn = "number";
      wrap = false;
      scrolloff = 0;
      sidescrolloff = 8;
      title = true;
      colorcolumn = "100";
    };
    extraConfigLua = ''      
      
      vim.opt.shortmess:append "c"
      
      vim.cmd "set whichwrap+=<,>,[,],h,l"
      vim.cmd [[set iskeyword+=-]]
      vim.cmd 'colorscheme vim'
      
      vim.g.netrw_banner = 0
      vim.g.netrw_mouse = 2
      vim.g.editorconfig = true --UNKNOWN

      vim.g.rust_recommended_style = false
    '';
  };
}
