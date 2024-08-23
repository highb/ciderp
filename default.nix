{ pkgs ? import <nixpkgs> { }
, pkgsLinux ? import <nixpkgs> { system = "x86_64-linux"; }
}:


pkgs.dockerTools.buildImage {
  name = "ciderp";
  config = {
    Cmd = [ "${pkgsLinux.hello}/bin/hello" ];
  };
}
