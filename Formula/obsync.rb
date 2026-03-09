class Obsync < Formula
  desc "Obsidian Sync CLI for headless Linux servers"
  homepage "https://github.com/bpauli/obsync"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_arm64.tar.gz"
      sha256 "8f5123d9c696e1eb0cfa39c0e138b7e1a568bd9305fdd969c7ba2d7013d71b4d"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_amd64.tar.gz"
      sha256 "e0542a25ab0ce8bd2c0827096636492b0137277715c52ea9a27858b2d65bd942"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_arm64.tar.gz"
      sha256 "e7e2ad981c1973540e69d8db228abc8a0cbc01eba1c5908e44262fefcd8240e3"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_amd64.tar.gz"
      sha256 "9cb1decdfe048ab5148659780bb7bb6dfae5f1c8e2fc0ec7f24747716a4667fd"
    end
  end

  def install
    bin.install "obsync"
  end

  test do
    assert_match "obsync", shell_output("#{bin}/obsync --help")
  end
end
