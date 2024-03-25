let
  pkgs = import <nixpkgs> { };
  ocamlPackages = pkgs.ocaml-ng.ocamlPackages_5_1;
in
pkgs.mkShell {
  # build tools
  nativeBuildInputs =
    (with pkgs; [ opam ]) ++
    (with ocamlPackages; [ ocaml ocamlformat findlib dune_2 ocaml-lsp utop ]);
  # dependencies
  buildInputs = with ocamlPackages; [ ];
}
