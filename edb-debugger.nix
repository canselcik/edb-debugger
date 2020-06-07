with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "edb-debugger";
  src = pkgs.fetchFromGitHub {
    owner = "canselcik";
    repo = "edb-debugger";
    rev = "f552269818e5b4eb906cea73e8f15691c7866cd9";
    sha256 = "0a892mms1lbj556yk7qk5ddi5hhg5z4awbciva9w2g70kh6274w3";
  };

  buildInputs = [ pkgconfig cmake boost capstone qt512.full double-conversion libGL graphviz ];
}
