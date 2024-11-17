{ config, pkgs, inputs, ... }:

{
  imports = [
    ./plugins.nix
  ];

  programs.neovim = {
    enable = false;
#    plugins = with pkgs.vimPlugins; [ kanagawa-nvim ];
  };

  programs.nixvim = 
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {  
    enable = true;
    
    defaultEditor = true;  
  };

}

