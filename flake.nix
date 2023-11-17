{
  description = "Development environment for Guidepost";

  nixConfig.bash-prompt = "\\033[32m\[nix-develop\:$PWD]$\\033[0m ";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05-small";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShells.default = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              erlangR26
              beam.packages.erlangR25.elixir_1_15
            ];
          };
        }
      );
}
