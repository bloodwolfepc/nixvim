{ pkgs, lib, config, ...}: { 
  options = {
    configured.lsp.enable = lib.mkEnableOption "enable configured lsp";
  };
  config = lib.mkIf config.configured.lsp.enable {
    plugins = {
      lsp-format.enable = false;
      lsp = {
        enable = true;
        servers = {
          bashls.enable = true;
          clangd.enable = true;
          eslint.enable = true;
          gopls.enable = true;
          html.enable = true;
          jsonls.enable = true;
          marksman.enable = true;
          lua_ls.enable = true;
          nil_ls.enable = true;
          #tsserver.enable = true;
          #ruff-lsp.enable = true;
          pyright.enable = true;
          tailwindcss.enable = true;
          yamlls.enable = true;
          nixd.enable = true;
          #java-language-server.enable = true;
          texlab.enable = true;
          #rust_analyzer = {
          #  enable = true;
          #  installCargo = true;
          #  installRustc = true;
          #  settings = {
          #    checkOnSave = true;
          #    check = {
          #      command = "clippy";
          #    };
          #  };
          #};
        };
      };
      rustaceanvim = {
        enable = true;
        settings = {
          default_settings.rust-analyzer = {
            check = {
              command = "clippy";
              allTargets = true;
            };
            inlayHints = {
              maxLength = 99;
              lifetimeElisionHints.enable = "always";
            };
          };
        };
      };
      nvim-jdtls = {
        enable = true;
        cmd = [ 
          (lib.getExe pkgs.jdt-language-server)
          "-data" "/home/bloodwolfe/jdtdata"
          "-configuration" "/home/bloodwolfe/jdtconf"
        ];
      };
    };
  };
}
