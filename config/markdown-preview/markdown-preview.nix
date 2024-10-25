{ lib, config, ...}: { 
  options = {
    configured.markdown-preview.enable = lib.mkEnableOption "enable configured markdown-preview";
  };
  config = lib.mkIf config.configured.markdown-preview.enable {
    plugins.markdown-preview = {
      enable = true;
        settings = {
          browser = "firefox";
          theme = "dark";
        };
      };
    keymaps = [
      { 
        mode = "n";
        key = "<leader>md"; 
        action = "<cmd>MarkdownPreview<cr>"; 
        options.desc = "Markdown Preview"; 
      }
    ];
  };
}
