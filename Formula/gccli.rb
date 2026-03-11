class Gccli < Formula
  desc "CLI for Garmin Connect — activities, health, workouts, devices, and more"
  homepage "https://github.com/bpauli/gccli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_arm64.tar.gz"
      sha256 "8f14afdf763bbda2afb77073f737f4fa7bd8b82ea11c33fbe8eb61b77ac0fb45"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_amd64.tar.gz"
      sha256 "7353d79a8bcc233cfd8a6a6962ad7f3fc722e02e8a411cafae5532bd09b2cf59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_arm64.tar.gz"
      sha256 "f94662edb2598329d201f0868b3d82aebdb7365e1db7408c80175755bca543b1"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_amd64.tar.gz"
      sha256 "133251b34cb4b2d6447192ee05e628e14b57a100206782577bf929a029af06c3"
    end
  end

  def install
    bin.install "gccli"
  end

  test do
    assert_match "gccli", shell_output("#{bin}/gccli --help")
  end
end
