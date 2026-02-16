class Wsmcli < Formula
  desc "CLI for AEM Web Site Manager"
  homepage "https://github.com/bpauli/wsmcli"
  version "0.1.0"
  url "https://github.com/bpauli/wsmcli/archive/refs/tags/v#{version}.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "wsmcli", shell_output("#{bin}/wsmcli --help")
  end
end
