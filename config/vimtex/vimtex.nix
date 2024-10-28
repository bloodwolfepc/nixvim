{ lib, config, ... }: {
  options = {
    configured.vimtex.enable = lib.mkEnableOption "Enable configured vimtex";
  };
  config = lib.mkIf config.configured.vimtex.enable {
    plugins.vimtex = {
      enable = true;
      settings = {
        view_method = "zathura";
        quickfix_enabled = true;
        quickfix_open_on_warinig = false;
        quickfix_ignore_filters = [
          "Underfull"
          "Overfull"
          "specifier changed to"
          "Token not allowed in a PDF string"
        ];
      };
    };
  };
}
