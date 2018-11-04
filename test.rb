class Test < Formula
  desc "A graphical user interface to create the geometry of a scenario simulated by JuPedSim"
  homepage "https://www.jupedsim.org/"
  head "https://github.com/chraibi/homebrew-test.git"

  depends_on "cmake" => :build

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", "..", "-DCMAKE_BUILD_TYPE=Release"
    # system "make", "install"
    system "make"
    bin.install "test"
    #bin.install_symlink bin/ => "protoc-gen-objcgrpc"
  end
end
