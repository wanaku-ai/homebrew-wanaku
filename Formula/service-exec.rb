# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class ServiceExec < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-tool-service-exec-0.0.6.zip"
  version "0.0.6"
  sha256 "2af73f452df4200dcab6fc16beeb707fce8e16eda48d691fa77f04d25542ed7d"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/service-exec" => "service-exec"
  end

  test do
    output = shell_output("#{bin}/service-exec --version")
    assert_match "0.0.6", output
  end
end
