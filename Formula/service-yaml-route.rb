# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class ServiceYamlRoute < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-yaml-route-0.0.6.zip"
  version "0.0.6"
  sha256 "738b9e040acc4799fbcc081a92e13c80ad3288bdd386445d4d436addb8b68cae"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-yaml-route" => "service-yaml-route"
  end

  test do
    output = shell_output("#{bin}/service-yaml-route --version")
    assert_match "0.0.6", output
  end
end
