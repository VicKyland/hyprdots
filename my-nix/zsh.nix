{ config, ... }:

{

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = 
      let
        dDir = "/etc/nixos";
        hmDir = "/.my-nix";
      in {
        # Default
        conf = "sudo nvim ${dDir}/configuration.nix";
        pkgs = "sudo nvim ${dDir}/packages.nix";
        rbnix = "sudo nixos-rebuild -I nixos-config=${dDir}/configuration.nix switch";
        
        # other
        ll = "ls -l";
    };
    
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
      ];
      theme = "refined";
    };
  
  };

}
