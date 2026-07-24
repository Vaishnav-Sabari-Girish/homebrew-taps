class Comchan < Formula
  desc "A Blazingly Fast Serial monitor written in Rust with Plotting support"
  homepage "https://github.com/Vaishnav-Sabari-Girish/ComChan"
  url "https://github.com/Vaishnav-Sabari-Girish/ComChan/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "54c60eaa4f5941a9252a22ad92886a4f3dd70f9f0f231427fe3bdb60b38f7ae1"
  license "MIT"   
  version "0.2.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/comchan", "--version"
  end
end
