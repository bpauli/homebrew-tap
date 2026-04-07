class Gccli < Formula
  desc "CLI for Garmin Connect — activities, health, workouts, devices, and more"
  homepage "https://github.com/bpauli/gccli"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_arm64.tar.gz"
      sha256 "10c91ec4831d9ffa78b97ca1e14b4bf6b9b95245042548af8a11e2208adc2bca"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_amd64.tar.gz"
      sha256 "1c231e091fcd018048898625d7f1c41ceb7407eaf90a7c37c0c58cf59eee8b51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_arm64.tar.gz"
      sha256 "5667a333e0d6f7ce5563a95df53ae1bf6f25d2622b928506c93a825d2f5335a0"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_amd64.tar.gz"
      sha256 "8e7591bc309ad3e231a941815820d3f8c884529fd92080e60b6d456dfcee2580"
    end
  end

  def install
    bin.install "gccli"
  end

  test do
    assert_match "gccli", shell_output("#{bin}/gccli --help")
  end
end
