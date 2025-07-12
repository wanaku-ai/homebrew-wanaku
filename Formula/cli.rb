# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class Cli < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/cli-0.0.6.zip"
  version "0.0.6"
  sha256 "384789e8d8820834ed2891c4938cdbdee6002cf8feb388fa2c0caa015867f1dc"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cli" => "cli"
  end

  test do
    output = shell_output("#{bin}/cli --version")
    assert_match "0.0.6", output
  end
end
