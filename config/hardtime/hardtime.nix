{ lib, config, ...}: { 
  options = {
    configured.hardtime.enable = lib.mkEnableOption "enable configured hardtime";
  };
  config = lib.mkIf config.configured.hardtime.enable {
    plugins.hardtime = {
      enable = true;
      settings = {
        enabled = true;
        disableMouse = true;
        disabledFiletypes = ["neo-tree" "qf" "netrw" "NvimTree" "Oil" ];
        hint = false;
        maxCount = 2;
        maxTime = 1000;
        restrictionMode = "block";
        #restrictedKeys = {
        #  "h" = ["n" "x"];
        #  "j" = ["n" "x"];
        #  "k" = ["n" "x"];
        #  "l" = ["n" "x"];
        #  "-" = ["n" "x"];
        #  "+" = ["n" "x"];
        #  "gj" = ["n" "x"];
        #  "gk" = ["n" "x"];
        #  "<CR>" = ["n" "x"];
        #  "<C-M>" = ["n" "x"];
        #  "<C-N>" = ["n" "x"];
        #  "<C-P>" = ["n" "x"];
        #};
      };
    };
  };
}
