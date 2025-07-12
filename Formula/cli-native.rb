# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class CliNative < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/cli-0.0.6-osx-aarch_64.zip"
  version "0.0.6"
  sha256 "6476cfe3380410f99d01fd31fe418c77f0071c2c6ecd32612a630ac45181af3b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cli-native" => "cli-native"
  end

  test do
    output = shell_output("#{bin}/cli-native --version")
    assert_match "0.0.6", output
  end
end
