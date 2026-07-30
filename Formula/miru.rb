class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://github.com/Vaishnav-Sabari-Girish/miru"
  url "https://github.com/Vaishnav-Sabari-Girish/miru/releases/download/v0.3.0/miru-v0.3.0-linux-x86_64.tar.gz"
  sha256 "88675e9c0227e47140ebbba7ddb932c7d2373f4fdecd280c44bcf6da178a7440"
  license "MIT"   
  version "0.3.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
