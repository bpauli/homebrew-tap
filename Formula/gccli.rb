class Gccli < Formula
  desc "CLI for Garmin Connect — activities, health, workouts, devices, and more"
  homepage "https://github.com/bpauli/gccli"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_arm64.tar.gz"
      sha256 "78d675df63b580d2bae0ff6a9f79f1341badd8efae385e6d006fdbc89bebba8e"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_amd64.tar.gz"
      sha256 "5b94ac5482857fbb38866f58ca35ef14fe3c669478ff0227da75ae80a2b66748"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_arm64.tar.gz"
      sha256 "b0132b2de543ef99ecd00c4deb27a9e49559e36dd46cadc27a29f7ac12e309fb"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_amd64.tar.gz"
      sha256 "f63d072fed71caf3f9d3d2b7ea684e3b82ab4763608caf14c3c09149dea6af31"
    end
  end

  def install
    bin.install "gccli"
  end

  test do
    assert_match "gccli", shell_output("#{bin}/gccli --help")
  end
end
