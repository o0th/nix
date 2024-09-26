{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./bootloader.nix
    ./networking.nix
    ./nvidia.nix
    ./audio.nix
    ./dm.nix
    ./hyprland.nix
    ./fonts.nix
    ./nixvim.nix
  ];

  # Set your time zone.
  time.timeZone = "Europe/Zurich";
  time.hardwareClockInLocalTime = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
      layout = "us";
      variant = "";
  };

  programs.fish.enable = true;
  programs.starship.enable = true;
  programs.ssh.startAgent = true;
  virtualisation.docker.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.o0th = with pkgs; {
    isNormalUser = true;
    description = "o0th";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.fish;
    openssh.authorizedKeys.keyFiles = [
      /home/o0th/.ssh/github.com
    ];

    packages = with pkgs; [
      git
      tmux
      kitty

      wl-clipboard
      ripgrep

      qutebrowser
      firefox

      telegram-desktop
      spotify
      discord

      docker
      docker-compose

      nodejs
      nodejs.pkgs.pnpm

      rustup
      zig
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    gcc
  ];

  system.stateVersion = "24.05";
}
