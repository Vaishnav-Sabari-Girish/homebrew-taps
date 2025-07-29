class Comchan < Formula
  desc "A Blazingly Fast Serial monitor written in Rust with Plotting support"
  homepage "https://github.com/Vaishnav-Sabari-Girish/ComChan"
  url "https://github.com/Vaishnav-Sabari-Girish/ComChan/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "f23e7abc29a66273ba7e2d635d4cb1e06550c164dbb4683e12babf0e906c941e"
  license "MIT"   
  version "0.2.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/comchan", "--version"
  end
end
