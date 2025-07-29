class Comchan < Formula
  desc "A Blazingly Fast Serial monitor written in Rust with Plotting support"
  homepage "https://github.com/Vaishnav-Sabari-Girish/ComChan"
  url "https://github.com/Vaishnav-Sabari-Girish/ComChan/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "14f19c38c4330df8c5bf9012467f638a89a72251b8ebe13d46d4bb20af131942"
  license "MIT"   
  version "0.2.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/comchan", "--version"
  end
end
