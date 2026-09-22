class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v0.10.0/miru-v0.10.0-linux-x86_64.tar.gz"
  sha256 "4b346937811b4efe37bd20cf0106cbdf34a063a2b93f6c70e7a3d06dd4e449a3"
  license "MIT"   
  version "0.10.0"

  depends_on :linux 

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "${bin}/miru-daemon", "--help"
  end
end
