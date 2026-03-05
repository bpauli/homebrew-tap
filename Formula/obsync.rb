class Obsync < Formula
  desc "Obsidian Sync CLI for headless Linux servers"
  homepage "https://github.com/bpauli/obsync"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_arm64.tar.gz"
      sha256 "d7a39219b3e4a2e33213e0c6124785d51d59d985c16f7bb3c36c26efbe615359"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_amd64.tar.gz"
      sha256 "ef1c74d79982953666bb75cd82efb01cdd5c551134c1e0c2b2ae8fc6fe17f69b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_arm64.tar.gz"
      sha256 "9bf298ffbf69967294fa90ec0836685e3dbccfb4be72ce2ba20afe4e5623308b"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_amd64.tar.gz"
      sha256 "c0c9e4779deb4be59e6be40c1e9c68c0773a5d77e3f546ee5eb2f272e3a42425"
    end
  end

  def install
    bin.install "obsync"
  end

  test do
    assert_match "obsync", shell_output("#{bin}/obsync --help")
  end
end
