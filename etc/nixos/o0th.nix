{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home.username = "o0th";
  home.homeDirectory = "/home/o0th";

  home.packages = with pkgs; [
    systemd
  ];

  programs.git = {
    enable = true;
    userName = "o0th";
    userEmail = "o0th@pm.me";
  };

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.conf;
    # plugins = [ hy3.packages.x86_64-linux.hy3 ];
  };

  home.stateVersion = "24.05";
}
