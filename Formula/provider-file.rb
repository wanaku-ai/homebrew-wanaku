# Generated with JReleaser 1.17.0 at 2025-07-12T08:30:03.029988+02:00

class ProviderFile < Formula
  desc "Wanaku MCP Router"
  homepage "https://wanaku.ai"
  url "https://github.com/wanaku-ai/wanaku/releases/download/v0.0.6/wanaku-provider-file-0.0.6.zip"
  version "0.0.6"
  sha256 "5081458f1b12a488077a261bda17c74cb63786fd91c6970a74df96f2146a1f36"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/provider-file" => "provider-file"
  end

  test do
    output = shell_output("#{bin}/provider-file --version")
    assert_match "0.0.6", output
  end
end
