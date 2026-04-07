class Gccli < Formula
  desc "CLI for Garmin Connect — activities, health, workouts, devices, and more"
  homepage "https://github.com/bpauli/gccli"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_arm64.tar.gz"
      sha256 "a9f1f680f004f5343482ca02df2007d7497546d300b2c8d2550c548d883a7524"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_darwin_amd64.tar.gz"
      sha256 "46b15fa1e3275883a555d8a7e1225c18344f3ca54584b5c4a4b8c07f48a90097"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_arm64.tar.gz"
      sha256 "b5f09ce71a3e0deb607714e79a4d50b8546459ae7eee68af44c56938a49c405b"
    else
      url "https://github.com/bpauli/gccli/releases/download/v#{version}/gccli_#{version}_linux_amd64.tar.gz"
      sha256 "6070f788f61ef5b445f69da0da782c71c6577008482764ce5e4e4b1a265da6f7"
    end
  end

  def install
    bin.install "gccli"
  end

  test do
    assert_match "gccli", shell_output("#{bin}/gccli --help")
  end
end
