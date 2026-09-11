class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.9.0/miru-v0.9.0-linux-x86_64.tar.gz"
  sha256 "a46fd11803e9b9e4b9e40563bdd072ab77f83364b1c5f86cc2c5a029456b2d01"
  license "MIT"   
  version "0.9.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
