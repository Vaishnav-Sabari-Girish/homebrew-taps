class Comchan < Formula
  desc "A Blazingly Fast Serial monitor written in Rust with Plotting support"
  homepage "https://github.com/Vaishnav-Sabari-Girish/ComChan"
  url "https://github.com/Vaishnav-Sabari-Girish/ComChan/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "5b070515b81ab1325ccea6e042c3d4c9e1d3d1111c05bf41554ec60959120a95"
  license "MIT"   
  version "0.2.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/comchan", "--version"
  end
end
