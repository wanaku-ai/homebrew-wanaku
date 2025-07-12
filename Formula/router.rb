# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class Router < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-router-0.0.6.zip"
  version "0.0.6"
  sha256 "f7e6eaeb432cbac1db037d0c79447140ff0048658069418dc1e1e38c842bee53"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/router" => "router"
  end

  test do
    output = shell_output("#{bin}/router --version")
    assert_match "0.0.6", output
  end
end
