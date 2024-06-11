{ config, pkgs, hy3, ... }: {
  home.username = "o0th";
  home.homeDirectory = "/home/o0th";

  wayland.windowManager.hyprland = {
    plugins = [ hy3.packages.x86_64-linux.hy3 ];
  };
}
