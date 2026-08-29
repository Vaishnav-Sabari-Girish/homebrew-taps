class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.7.0/miru-v0.7.0-linux-x86_64.tar.gz"
  sha256 "c7505096059614ca06984aa288cb1169c6505ba73c3d8bbe4ba1aa336520da1e"
  license "MIT"   
  version "0.7.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
