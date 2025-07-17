# Generated with JReleaser 1.17.0 at 2025-07-17T11:23:41.57021+02:00

class CliNative < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.7/cli-0.0.7-osx-aarch_64.zip"
  version "0.0.7"
  sha256 "9e2fa32342eb1eb9f29145c81da6399fe8707bfaaa8c4585c114b1f4f7ca8226"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cli-native" => "cli-native"
  end

  test do
    output = shell_output("#{bin}/cli-native --version")
    assert_match "0.0.7", output
  end
end
