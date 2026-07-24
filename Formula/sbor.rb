class Sbor < Formula
  desc "C Project Manager"
  homepage "https://github.com/Vaishnav-Sabari-Girish/sbor"
  url "https://github.com/Vaishnav-Sabari-Girish/sbor/archive/v0.1.9.tar.gz"
  sha256 "f24cd452bba9f7ada0a5cb5f58c9ba27340b73cb7e66e4474c4ad5efd6676d17"
  license "MIT"
  version "0.1.9"

  depends_on "cmake" => :build

  def install
    # Create build directory
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      bin.install "sbor"
    end
  end

  test do
    # Test that sbor runs and shows help
    assert_match "sbor - C Project Manager", shell_output("#{bin}/sbor 2>&1", 1)
    
    # Test sbor init functionality
    system bin/"sbor", "init", "test_project"
    assert_predicate testpath/"test_project/CMakeLists.txt", :exist?
    assert_predicate testpath/"test_project/src/main.c", :exist?
  end
end
