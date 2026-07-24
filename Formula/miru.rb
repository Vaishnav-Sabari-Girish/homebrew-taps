class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://github.com/Vaishnav-Sabari-Girish/miru"
  url "https://github.com/Vaishnav-Sabari-Girish/miru/releases/download/v0.1.0/miru-v0.1.0-linux-x86_64.tar.gz"
  sha256 "15be729f3420e39e2220b7e32defb3e6f7650c715fdc1a6181c25038a013d117"
  license "MIT"   
  version "0.1.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
