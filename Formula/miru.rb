class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.5.0/miru-v0.5.0-linux-x86_64.tar.gz"
  sha256 "216b1dad7b109af70a44bcc8c3ad0050751c570c0b965623016f345f592a4d18"
  license "MIT"   
  version "0.5.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
