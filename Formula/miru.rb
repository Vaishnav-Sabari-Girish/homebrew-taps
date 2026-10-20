class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.13.0/miru-v0.13.0-linux-x86_64.tar.gz"
  sha256 "21314c87e747d36039aa68ee4f7952c5d6ccc106effb3f77e09fc2efc0689634"
  license "MIT"   
  version "0.13.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
