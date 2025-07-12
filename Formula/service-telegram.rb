# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class ServiceTelegram < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-telegram-0.0.6.zip"
  version "0.0.6"
  sha256 "92e17b6873e24e81e38f52323118c3b7fb3d0a6a474a0a1717121ba6f5ac28bd"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-telegram" => "service-telegram"
  end

  test do
    output = shell_output("#{bin}/service-telegram --version")
    assert_match "0.0.6", output
  end
end
