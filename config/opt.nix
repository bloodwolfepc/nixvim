{
  config = {
    viAlias = true;
    globals.mapleader = " ";
    clipboard.register = "unnamedplus";
    clipboard.providers.wl-copy.enable = true;
    opts = { 
      termguicolors = true;
      backup = false; # creates a backup file
      undofile = true; # enable persistent undo
      undodir = "/tmp/vim-undo"; #location of undo file
      #clipboard = "unnamedplus"; # allows neovim to access the system clipboard
      cmdheight = 1; # more space in the neovim command line for displaying messages
      #--opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
      conceallevel = 0; # so that `` is visible in markdown files
      #-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
      hlsearch = true; # highlight all matches on previous search pattern
      incsearch = true; #UNKNOWN
      ignorecase = true; # ignore case in search patterns
      #-- opt.mouse = "a" -- allow the mouse to be used in neovim
      breakindent = true; # UNKNOWN
      pumheight = 10; # pop up menu height
      pumblend = 10; #UNKNOWN
      showmode = true; # show current mode
      showtabline = 2; #always show tabs
      smartcase = true; # smart case
      smartindent = true; # make indenting smarter
      splitbelow = true; # force all horizontal splits to go below current window
      splitright = true; # force all vertical splits to go to the right of current window
      swapfile = false; #  creates a swapfile
      timeoutlen = 10;  #time to wait for a mapped sequence to complete (in milliseconds)
      updatetime = 50; # faster completion (4000ms default)
      writebackup = false; # if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
      expandtab = true; # convert tabs to spaces
      shiftwidth = 2; # the number of spaces inserted for each indentation
      tabstop = 2; # insert spaces for a tab
      softtabstop = 2;# UNKNOWN
      cursorline = false; # highlight the current line
      number = true; # set numbered lines
      laststatus = 3; #UNKNOWN
      showcmd = false; #UNKNOWN
      ruler = false; #UNKNOWN
      relativenumber = true; # set relative numbered lines
      numberwidth = 4; # set number column width to 2 {default 4}
      signcolumn = "number"; # always show the sign column, otherwise it would shift the text each time --TODO: number?, this would require configuration of gitsigns
      wrap = false; # display lines as one long line
      scrolloff = 0;
      sidescrolloff = 8;
      #opt.guifont = "monospace:h17"; # the font used in graphical neovim applications
      title = true; # UNKNOWN
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
    '';
  };
}


    
#        --vim.opt.iskeyword:append("-")
#--local hl = vim.api.nvim_set_hl
#
#-- Gitsigns
#--hl(0, "GitGutterAdd", { fg = theme.base0B, bg = theme.base00 })
#--hl(0, "GitGutterChange", { fg = theme.base0D, bg = theme.base00 })
#--hl(0, "GitGutterDelete", { fg = theme.base08, bg = NONE })
#--hl(0, "GitGutterChangeDelete", { fg = theme.base0E, bg = theme.base00 })
#--
#-- LSP
#--hl(0, "DiagnosticError", { fg = theme.base08, bg = theme.base00 })
#--hl(0, "DiagnosticSignError", { fg = theme.base08, bg = theme.base00 })
#--hl(0, "DiagnosticSignHint", { fg = theme.base0C, bg = theme.base00 })
#--hl(0, "DiagnosticSignInfo", { fg = theme.base05, bg = theme.base00 })
#--hl(0, "DiagnosticSignWarn", { fg = theme.base0A, bg = theme.base00 })
#'';
#  };
#}
 
