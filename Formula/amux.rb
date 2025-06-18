class Amux < Formula
  desc "Agent Multiplexer - workspace management for AI agents"
  homepage "https://github.com/choplin/amux"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_darwin_amd64.tar.gz"
      sha256 "3e2ec660fe7bab25affd66905b5fde5bd80ba676159a982022cdca6f9336b35a"
    else
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_darwin_arm64.tar.gz"
      sha256 "0b412a960af130c53f9e8f853953f2087ada8f532e7abf398e77a655c206b957"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_linux_amd64.tar.gz"
      sha256 "6f777147b8208ea65386f6067a7596b55cd5f6ad9aac9eed5ec937dbd98af827"
    else
      url "https://github.com/choplin/amux/releases/download/v0.1.0/amux_0.1.0_linux_arm64.tar.gz"
      sha256 "558c73d3b701150c82960fe634ee3ba19955fa0d23e176a0da5857675fac3678"
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
