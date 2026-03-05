class Obsync < Formula
  desc "Obsidian Sync CLI for headless Linux servers"
  homepage "https://github.com/bpauli/obsync"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_arm64.tar.gz"
      sha256 "6283260785680f35b1bc149cefec730f9853db043d3c1dfb748ab9e9e31e282f"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_amd64.tar.gz"
      sha256 "5427c90d7a14f73cb0601a310b1829e5fd42243e582230c7c53046aa1cbc63f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_arm64.tar.gz"
      sha256 "0a94be48a8355c0ee7d697fbef15d4d053e05cb3329875f4d61ed4b1560bb6e2"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_amd64.tar.gz"
      sha256 "70c97b24a3afd0cc03dc218b35ca068a806bfdb1d22f41d161b6f37315a0fe70"
    end
  end

  def install
    bin.install "obsync"
  end

  test do
    assert_match "obsync", shell_output("#{bin}/obsync --help")
  end
end
