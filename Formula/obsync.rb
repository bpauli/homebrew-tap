class Obsync < Formula
  desc "Obsidian Sync CLI for headless Linux servers"
  homepage "https://github.com/bpauli/obsync"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_arm64.tar.gz"
      sha256 "c45442c242416ac016fc15ed84fb8c75148c9bd15c3023eb924893bc17bced51"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_darwin_amd64.tar.gz"
      sha256 "b725ed2f4ef9cef7197316a9d11dbe65b6bcc2c4e51080f203a0e5bbbed6a696"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_arm64.tar.gz"
      sha256 "193237eabbb349cfd6c190ec3d36d626cba881d6f0c10fcd812949df75bec0d3"
    else
      url "https://github.com/bpauli/obsync/releases/download/v#{version}/obsync_#{version}_linux_amd64.tar.gz"
      sha256 "113c1b3e884098d83e7d4393c134f45ca8d655c0228b8fd3f25aa635b9f7e640"
    end
  end

  def install
    bin.install "obsync"
  end

  test do
    assert_match "obsync", shell_output("#{bin}/obsync --help")
  end
end
