class Amux < Formula
  desc "Agent Multiplexer - workspace management for AI agents"
  homepage "https://github.com/choplin/amux"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_darwin_amd64.tar.gz"
      sha256 ""
    else
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_linux_amd64.tar.gz"
      sha256 ""
    else
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_linux_arm64.tar.gz"
      sha256 ""
    end
  end

  depends_on "git"

  def install
    bin.install "amux"
  end

  test do
    # Test version command
    assert_match version.to_s, shell_output("\#{bin}/amux version")

    # Test help command
    assert_match "Agent Multiplexer", shell_output("\#{bin}/amux --help")
  end
end
