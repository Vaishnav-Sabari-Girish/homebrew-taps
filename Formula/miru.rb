class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.6.0/miru-v0.6.0-linux-x86_64.tar.gz"
  sha256 "7e058a38a75b59cc7f4af13e025690cc5a01fdb09208f15d5d679bb8a96c3e67"
  license "MIT"   
  version "0.6.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
