{ config, pkgs, hy3, ... }: {
  #home.username = "o0th";
  #home.homeDirectory = "/home/o0th";
  programs.git = {
    enable = true;
    userName = "o0th";
    userEmail = "o0th@pm.me";
  };

  wayland.windowManager.hyprland = {
    plugins = [ hy3.packages.x86_64-linux.hy3 ];
  };
}
