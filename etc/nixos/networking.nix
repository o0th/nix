{ config, pkgs, ... }:
{
  # Set machine hostname
  networking.hostName = "nix";

  # Enable networking
  networking.networkmanager.enable = true;
}
