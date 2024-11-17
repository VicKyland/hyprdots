{ config, pkgs, inputs, ... }:

{
  imports = [  ];
 
  programs.nixvim = {

    plugins = {
      
      neo-tree = {
        enable = true;
        filesystem.followCurrentFile.enabled = true;
        closeIfLastWindow = true;
      };

      comment = {
        enable = true;
        settings = {
          opleader.line = "gcc";
          toggler.line = "gcc";
        };
      };
  
      barbar = {
        enable = true;
        
        keymaps = {
          #next = "<TAB>";
          #previous = "<S-TAB>";
        };
        
        settings = {
          auto_hide = 0;
          clickable = true;
        };
      };
  
      telescope = {
        enable = true;
      };

      lsp = {
        enable = true;
      };
    
    };

    extraPlugins = with pkgs.vimPlugins; [
      kanagawa-nvim
    ];

    colorscheme = "kanagawa";
    
  };

}

