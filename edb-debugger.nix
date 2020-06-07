with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "edb-debugger";
  src = pkgs.fetchFromGitHub {
    owner = "canselcik";
    repo = "edb-debugger";
    rev = "29ce1805352cd96125d812bfefea6560dc8e44da";
    sha256 = "0scks2cq965px2s8h27w78vyh519yyh5djzj42rda1rafmzps91d";
    fetchSubmodules = true;
  };
  buildInputs = [ pkgconfig cmake boost capstone qt512.full double-conversion libGL graphviz ];
}
