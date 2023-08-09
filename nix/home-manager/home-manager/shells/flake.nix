{
  description = "Shells";
  nixConfig.bash-prompt = "nixsh -> ";
  inputs = { nixpkgs.url = "github:nixos/nixpkgs/22.11"; };

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux.pkgs;
    in {
      devShells.x86_64-linux = rec {
        rust = pkgs.mkShell {
          buildInputs = [
            pkgs.rustc
            pkgs.rustup
            pkgs.cargo
            pkgs.rustcat
          ];
        };
	c = pkgs.mkShell {
	   nativeBuildInputs = [
	   	pkgs.clang
	   ];
	   buildInputs = [
	    pkgs.glibc
	    pkgs.clang
	    pkgs.clangStdenv
	    pkgs.libclang
	    pkgs.libgccjit
	    ];
	};
	ocaml = pkgs.mkShell {
		buildInputs = [
		pkgs.ocaml
		pkgs.opam
		pkgs.ocaml-crunch
		pkgs.dune_3
		];
	};
#        default = c; # if you want to have a default one
      };
    };
}
