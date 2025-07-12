# Generated with JReleaser 1.17.0 at 2025-07-12T08:05:41.041575+02:00

class ServiceSqs < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-sqs-0.0.6.zip"
  version "0.0.6"
  sha256 "11ec7e80c00e765694fe4c69e03bd3f4cff3378d40105cdf01cf9e9d08993fe4"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-sqs" => "service-sqs"
  end

  test do
    output = shell_output("#{bin}/service-sqs --version")
    assert_match "0.0.6", output
  end
end
