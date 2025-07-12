# Generated with JReleaser 1.17.0 at 2025-07-12T08:05:41.041575+02:00

class ServiceTavily < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-tavily-0.0.6.zip"
  version "0.0.6"
  sha256 "2855b4073425eccf92af18ed98535f76c494db01d0b5590ff95de8eebdd36d4a"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-tavily" => "service-tavily"
  end

  test do
    output = shell_output("#{bin}/service-tavily --version")
    assert_match "0.0.6", output
  end
end
