class Obsync < Formula
  desc "Obsidian Sync CLI for headless Linux servers"
  homepage "https://github.com/bpauli/obsync"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_arm64.tar.gz"
      sha256 "39b390149fd0aa44e084728c9a44b1d8f1636d572ca9c20b3d8c23a017103846"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_amd64.tar.gz"
      sha256 "aecf6eeba2485275ec028c4419107897213f6ee03947c9ca91cb64edda5b0f64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_arm64.tar.gz"
      sha256 "7cc613f587158eda9ebb3e0032b71caf91337e0f3dc89cf47471811f52ecd8ee"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_amd64.tar.gz"
      sha256 "1f43d8f3aba0a05c25aa229d77678d6c4ee3dbb4586edf732f33554452db00d9"
    end
  end

  def install
    bin.install "obsync"
  end

  test do
    assert_match "obsync", shell_output("#{bin}/obsync --help")
  end
end
