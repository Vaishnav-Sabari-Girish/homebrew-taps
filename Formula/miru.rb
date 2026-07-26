class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://github.com/Vaishnav-Sabari-Girish/miru"
  url "https://github.com/Vaishnav-Sabari-Girish/miru/releases/download/v0.2.0/miru-v0.2.0-linux-x86_64.tar.gz"
  sha256 "e1822817c729126f78dc17e896627f0cdea2888d66e69ee42f3f1202ec16c7ee"
  license "MIT"   
  version "0.2.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
