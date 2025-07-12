# Generated with JReleaser 1.17.0 at 2025-07-12T08:05:41.041575+02:00

class ServiceHttp < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-http-0.0.6.zip"
  version "0.0.6"
  sha256 "b330135fc4cba9620a807e70eb19f7076c371ca7fe39791c255e70fb9262c9b6"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-http" => "service-http"
  end

  test do
    output = shell_output("#{bin}/service-http --version")
    assert_match "0.0.6", output
  end
end
