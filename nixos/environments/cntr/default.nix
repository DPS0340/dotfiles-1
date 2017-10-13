with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    rustc
    cargo
    rustracer
    rustfmt
    lldb
    fuse
    bc
    gdbm
    xfsprogs
    libtool
    autoreconfHook
    pkgconfig
    m4
    bashInteractive
    dbench
  ] ++ xfstests.buildInputs
    ++ xfstests.nativeBuildInputs;
  hardeningDisable = [ "format" ];
  DUMP_OUTPUT="true";
}
