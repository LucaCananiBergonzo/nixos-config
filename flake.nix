{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
  };

  outputs = inputs@{ self, nixpkgs }: {
    nixosConfigurations = {
      lucaPC = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
      };
    };
  };
}
