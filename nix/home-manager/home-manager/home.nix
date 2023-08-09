{ config, pkgs, ... }:

{
  home.username = "wijiler";
  home.homeDirectory = "/home/wijiler";

  home.stateVersion = "22.11"; # Please read the comment before changing.

  home.packages = [
  	pkgs.git
	pkgs.nodejs
	pkgs.kitty
	pkgs.nerdfonts
	pkgs.zsh
	pkgs.xclip
  ];
  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  imports = [ 
  ./neovim.nix 
  ];  
  }
