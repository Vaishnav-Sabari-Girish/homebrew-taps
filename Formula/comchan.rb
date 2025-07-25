class Comchan < Formula
  desc "A Blazingly Fast Serial monitor written in Rust with Plotting support"
  homepage "https://github.com/Vaishnav-Sabari-Girish/ComChan"
  url "https://github.com/Vaishnav-Sabari-Girish/ComChan/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cff3ee5fb05063abe1534689a7a32bebaf50a8982007b033c81abf9a7acd4505"
  license "MIT"   
  version "0.2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/comchan", "--version"
  end
end
