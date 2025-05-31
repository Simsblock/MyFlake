{
  description = "Simsblock's Flake";
  
  inputs = {
	#nixpkgs = {
	#	url = "github:NixOs/nixpkgs/nixos-23.05";
	#};
	nixpkgs.url = "github:NixOs/nixpkgs/nixos-24.11";
	home-manager = {
		url = "github:nix-community/home-manager/release-24.11";
		inputs.nixpkgs.follows="nixpkgs"; # inherits nixpkgs
	};
	hyprland = {
		url = "github:hyprwm/Hyprland";
	};
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ...}:
	let
		lib = nixpkgs.lib;
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in {
	nixosConfigurations = {
		nixos = lib.nixosSystem { #host_name (usually)  = ...
			inherit system;
			specialArgs = { inherit inputs; };
			modules = [ ./nixos/configuration.nix ];
		};
	};
	homeConfigurations = {
		nix = home-manager.lib.homeManagerConfiguration { #user_name, home manager config  
			inherit pkgs;
			modules = [ ./home/home.nix ];
		};
	};
  };
}
