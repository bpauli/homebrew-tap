class Wsmcli < Formula
  desc "CLI for AEM Web Site Manager"
  homepage "https://github.com/bpauli/wsmcli"
  version "0.2.0"
  url "https://github.com/bpauli/wsmcli/archive/refs/tags/v#{version}.tar.gz"
  sha256 "27860583b6cbf593ed638dce95095a0f3596b967b6ea03a5a508b92c5dab9582"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "wsmcli", shell_output("#{bin}/wsmcli --help")
  end
end
