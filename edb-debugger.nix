with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "edb-debugger";
  src = pkgs.fetchFromGitHub {
    owner = "canselcik";
    repo = "edb-debugger";
    rev = "c04556fd887b613005a866442adbfe780211b8b5";
    sha256 = "0a892mms1lbj556yk7qk5ddi5hhg5z4awbciva9w2g70kh6274w3";
    fetchSubmodules = true;
  };
  buildInputs = [ pkgconfig cmake boost capstone qt512.full double-conversion libGL graphviz ];
}
