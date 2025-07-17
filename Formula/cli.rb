# Generated with JReleaser 1.17.0 at 2025-07-17T11:23:41.57021+02:00

class Cli < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.7/cli-0.0.7.zip"
  version "0.0.7"
  sha256 "b70e6673a6449992cd4b2c26940e4d0b9b73e418ccca3ef07734aec183b78d0d"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cli" => "cli"
  end

  test do
    output = shell_output("#{bin}/cli --version")
    assert_match "0.0.7", output
  end
end
