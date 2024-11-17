{ config, pkgs, inputs, ... }:

{
  imports = [
    ./zsh.nix
    ./neovim/neovim.nix
#    ./alacritty.nix
  ];
  
}

