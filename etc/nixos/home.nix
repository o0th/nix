{ home-manager, ... } @args: {
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.extraSpecialArgs = args;
  home-manager.users.o0th = import ./o0th.nix;
}
