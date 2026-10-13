class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.12.0/miru-v0.12.0-linux-x86_64.tar.gz"
  sha256 "f71fbc108cd5f7f48657a7ac2cb3abb84b2814ca69a008fdf925c9609dadfd3b"
  license "MIT"   
  version "0.12.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
