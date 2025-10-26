class Sbor < Formula
  desc "C Project Manager"
  homepage "https://github.com/Vaishnav-Sabari-Girish/sbor"
  url "https://github.com/Vaishnav-Sabari-Girish/sbor/archive/v0.1.8.tar.gz"
  sha256 "30e8fd120d3c083e5d4326b60c0b3b75fdc2b14f5ed3345f59e1a482e29fe41e"
  license "MIT"
  version "0.1.8"

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
