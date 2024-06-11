{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    };
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ... } @attrs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [
	./configuration.nix
        ./bootloader.nix

	home-manager.nixosModules.home-manager
	{
           home-manager.useGlobalPkgs = true;
           home-manager.useUserPackages = true;
           home-manager.users.o0th = import ./o0th.nix;
	   home-manager.backupFileExtension = "backup";
	   home-manager.extraSpecialArgs = attrs;
	}
      ];
    };
  };
}
