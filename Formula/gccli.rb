class Gccli < Formula
  desc "CLI for Garmin Connect — activities, health, workouts, devices, and more"
  homepage "https://github.com/bpauli/gccli"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_arm64.tar.gz"
      sha256 "1083d48b8bc67478f3bc65b142d575d18b35306a1acc4a04fe739a68fc30cf69"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_amd64.tar.gz"
      sha256 "0e26303b3a7c71431ce97cf0a260c5d253d4743a246962c7b57a52dbdf301a9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_arm64.tar.gz"
      sha256 "1aed4c44e1335756329f1f49ba2da76daa357601ff2e668ce8567307b5539a9c"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_amd64.tar.gz"
      sha256 "21c34c1535b6a8d0b7c8131b8b5bee348897714e9a3e473ff59bc2f37d56e2da"
    end
  end

  def install
    bin.install "gccli"
  end

  test do
    assert_match "gccli", shell_output("#{bin}/gccli --help")
  end
end
