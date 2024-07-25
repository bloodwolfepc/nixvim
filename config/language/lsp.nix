
{ lib, pkgs, ... }:
{
  config.plugins = {
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
        lua-ls.enable = true;
        nil-ls.enable = true;
        #tsserver.enable = true;
        #ruff-lsp.enable = true;
        pyright.enable = true;
        tailwindcss.enable = true;
        yamlls.enable = true;
        nixd.enable = true;
        #java-language-server.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
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
      #data = "/home/bloodwolfe/jdtlsdata/";
      #configuration = "/home/bloodwolfe/jdtlsconfig/";
    };

  };
}
