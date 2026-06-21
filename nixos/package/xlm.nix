{ fetchurl, stdenv }:

stdenv.mkDerivation {
	name = "xlm-core";
	src = fetchurl {
		url = "https://github.com/Blooym/xlm/releases/latest/download/xlm-x86_64-unknown-linux-gnu";
		sha256 = "sha256:b839f633b5ae4cea65346e51a0d89d5c2cf6e93e3fc1f46de75d3e3081628691";
	};
  
        installPhase = '' 
		echo "[Step: 2] Configuring XLM as a Steam Tool"
		chmod +x /tmp/xlm
		/tmp/xlm install-steam-tool --xlm-updater-disable --extra-launch-args="--run-as-steam-compat-tool=true" --steam-compat-path ~/.steam/root/compatibilitytools.d/

		echo "[Step: 3] Cleanup XLM binary"
		rm /tmp/xlm
	'';
  }
