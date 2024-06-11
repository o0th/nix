{ home-manager, ... }: {
  home-manager.nixosModules.home-manager
  {
     home-manager.useGlobalPkgs = true;
     home-manager.useUserPackages = true;
     home-manager.users.o0th = import ./o0th.nix;
     home-manager.backupFileExtension = "backup";
     home-manager.extraSpecialArgs = attrs;
  }
}
