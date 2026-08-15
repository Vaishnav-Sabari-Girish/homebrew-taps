class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.5.0/miru-v0.5.0-linux-x86_64.tar.gz"
  sha256 "fde9dc19036b9fdf9a0f844c3548cd5bca2889999cb37b058674cda2999bfc96"
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
