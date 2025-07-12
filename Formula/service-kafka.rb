# Generated with JReleaser 1.17.0 at 2025-07-12T08:05:41.041575+02:00

class ServiceKafka < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-kafka-0.0.6.zip"
  version "0.0.6"
  sha256 "21d5d15636cf3ff427440190a8745a1642707d5ef8e58074dd6cbc90864e16a3"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-kafka" => "service-kafka"
  end

  test do
    output = shell_output("#{bin}/service-kafka --version")
    assert_match "0.0.6", output
  end
end
