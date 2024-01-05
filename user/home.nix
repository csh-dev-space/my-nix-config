{ config, pkgs, ... }:

{
  home.username = "csh";
  home.homeDirectory = "/home/csh";
  home.stateVersion = "23.11"; 
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  

    ############################################################################
    
    # Version-Control
    git

    # Text-Editors
    neovim vscode-fhs

    # Shell
    fish
    
    # Terminal-Emulators
    terminator kitty

    # Terminal-Tools
    htop pfetch

    # Terminal-Multiplexing & Session-Management
    abduco dvtm

    # Rust-Utilities
    bat eza procs fd ripgrep
    # Astro-Nvim
    bottom lazygit

    # Utils
    tree unzip 

    ############################################################################
    
    # Browsers
    qutebrowser

    # MultiMedia
    flameshot mpv

    # Office & Notes
    libreoffice cherrytree #obsidian

    # Networking
    curl openvpn

    # Password-Manager
    keepass keepassxc

    ############################################################################
    
    # Programming-Languages
    nodejs_21 typescript python3

    # NodeJs Global Packages
    nodePackages.nodemon
    nodePackages.ts-node
    nest-cli

    # Compilers
    ghc gcc

  ];

  programs.git = {
    enable = true;
    userName = "Chethan S H";
    userEmail = "chethan.sh@gmail.com";
  };

}
