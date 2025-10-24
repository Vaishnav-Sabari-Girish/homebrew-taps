class Sbor < Formula
  desc "C Project Manager"
  homepage "https://github.com/Vaishnav-Sabari-Girish/sbor"
  url "https://github.com/Vaishnav-Sabari-Girish/sbor/archive/v0.1.0.tar.gz"
  sha256 "7e7895e0736623939e5e8ae80c78147bc001428ed04eb837f3f938d6fcb45d0a"
  license "MIT"

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
