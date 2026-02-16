class Wsmcli < Formula
  desc "CLI for AEM Web Site Manager"
  homepage "https://github.com/bpauli/wsmcli"
  version "0.1.0"
  url "https://github.com/bpauli/wsmcli/archive/refs/tags/v#{version}.tar.gz"
  sha256 "ffa8e5a058365fdec25397caf8dbc4f67d183cd846473fd939d0edfac8e36db7"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "wsmcli", shell_output("#{bin}/wsmcli --help")
  end
end
