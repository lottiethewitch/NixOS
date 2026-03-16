{
  someBuildHelper = { name, sha256 }:
    stdenv.mkDerivation {
      inherit name;
      outputHashMode = "recursive";
      outputHashAlgo = "sha256";
      outputHash = sha256;
      builder = writeShellScript "builder.sh" ''
        echo "hi, my name is ''${0}" # escape bash variable
        echo "hi, my hash is ${sha256}" # use nix variable
        echo "hello world" >output.txt
      '';
    };
}
