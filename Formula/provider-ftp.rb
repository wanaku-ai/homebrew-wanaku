# Generated with JReleaser 1.17.0 at 2025-07-12T08:05:41.041575+02:00

class ProviderFtp < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-provider-ftp-0.0.6.zip"
  version "0.0.6"
  sha256 "f22cca8c256eff57ae413acc2f964eb9ace9eb7fef865d59caefd551fd9e6d76"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/provider-ftp" => "provider-ftp"
  end

  test do
    output = shell_output("#{bin}/provider-ftp --version")
    assert_match "0.0.6", output
  end
end
