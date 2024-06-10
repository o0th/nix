{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      <home-manager/nixos>
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # nVidia
  boot.kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ];
  hardware.nvidia.powerManagement.enable = true;
  hardware.nvidia.open = false;

  # Hostname
  networking.hostName = "nixos"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Zurich";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --remember-session --cmd Hyprland";
	user = "greeter";
      };
    };
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Hyprland
  programs.hyprland.enable = true;

  # Fish
  programs.fish = { 
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
  };

  # Starship
  programs.starship = {
    enable = true;
    settings = {
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
    };
  };

  # tmux
  programs.tmux = {
    enable = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Packages
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    neovim
    git

    kitty
    dolphin
    wofi

    firefox
    qutebrowser

    pavucontrol

    spotify
    telegram-desktop
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Hasklig" ]; })
  ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.o0th = with pkgs; {
    isNormalUser = true;
    description = "o0th";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [];
    shell = pkgs.fish;
  };

  home-manager.users.o0th = { pkgs, ... }: {
    programs.git = {
      enable = true;
      userName = "o0th";
      userEmail = "o0th@pm.me";
    };

    home.stateVersion = "24.05";
  };

  system.stateVersion = "24.05";
}
