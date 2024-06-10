{ config, lib, pkgs, ... }:
{
  # systemd
  config.boot.loader.systemd-boot.enable = true;
  config.boot.loader.efi.canTouchEfiVariables = true;

  # nvidia
  config.boot.kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ];
  config.hardware.nvidia.powerManagement.enable = true;
  config.hardware.nvidia.open = false;
}
