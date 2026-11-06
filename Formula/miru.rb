class Miru < Formula
  desc "A zooming daemon for wayland"
  homepage "https://codeberg.org/Vaishnav-Sabari-Girish/miru"
  version "0.15.0"
  url "https://codeberg.org/Vaishnav-Sabari-Girish/miru/releases/download/v#{version}/miru-v#{version}-linux-x86_64.tar.gz"
  sha256 "4399b273be3a87a24d16c53fa3dea916cee84b1a6892bb67d192c3cda7930b27"
  license "MIT"

  depends_on :linux

  def install
    bin.install "miru-daemon"
    bin.install "miructl"
  end

  test do
    system "#{bin}/miru-daemon", "--help"
  end
end
