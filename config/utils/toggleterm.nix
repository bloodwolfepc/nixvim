{
  plugins.toggleterm = {
    enable = false;
    hideNumbers = false;
    shadeTerminals = false;
    startInInsert = true;
    terminalMappings = true;
    persistMode = true;
    insertMappings = true;
    closeOnExit = true;
    autoScroll = true;
    shell = "zsh";
    direction = "horizontal";
    size = ''
      function(term)
        if term.direction == "horizontal" then
          return 15
      elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end
    '';
  };
}
