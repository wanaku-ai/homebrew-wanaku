# Generated with JReleaser 1.17.0 at 2025-07-12T08:05:41.041575+02:00

class ProviderS3 < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-provider-s3-0.0.6.zip"
  version "0.0.6"
  sha256 "42e658ad26a3dfdc334185742eab9703f2ed47773b99b8acd164b2f57e684e1e"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/provider-s3" => "provider-s3"
  end

  test do
    output = shell_output("#{bin}/provider-s3 --version")
    assert_match "0.0.6", output
  end
end
