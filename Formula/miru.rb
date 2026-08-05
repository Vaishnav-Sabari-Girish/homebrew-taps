class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://github.com/Vaishnav-Sabari-Girish/miru"
  url "https://github.com/Vaishnav-Sabari-Girish/miru/releases/download/v0.4.0/miru-v0.4.0-linux-x86_64.tar.gz"
  sha256 "bf034bcc07bab6cbdadb7a2b7c490f03e2e6a4675babf807970c335138fbb488"
  license "MIT"   
  version "0.4.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
