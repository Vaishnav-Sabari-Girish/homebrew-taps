class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.11.0/miru-v0.11.0-linux-x86_64.tar.gz"
  sha256 "2e7acc8c8fb07c05ba57fd73b97d114ada47e452938244f765e53dc8b70f8e4a"
  license "MIT"   
  version "0.10.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
