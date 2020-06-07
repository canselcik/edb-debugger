with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "edb-debugger";
  src = nixpkgs.fetchGit {
    url = "git@github.com:canselcik/edb-debugger.git";
    ref = "master";
  };
  buildInputs = [ pkgconfig cmake boost capstone qt512.full double-conversion libGL graphviz ];
}
