{
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-24.05;
  inputs.home-manager.url = github:nix-community/home-manager/release-24.05;

  outputs = { self, nixpkgs, ... }@attrs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [ ./configuration.nix ];
    };
  };
}

