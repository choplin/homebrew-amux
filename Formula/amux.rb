class Amux < Formula
  desc "Agent Multiplexer - workspace management for AI agents"
  homepage "https://github.com/choplin/amux"
  version "0.0.0"
  license "MIT"

  # Placeholder - will be updated when first release is published
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/choplin/amux/releases/download/v0.0.0/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/choplin/amux/releases/download/v0.0.0/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/choplin/amux/releases/download/v0.0.0/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/choplin/amux/releases/download/v0.0.0/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  depends_on "git"

  def install
    odie "No release available yet. This formula will be updated when the first release is published."
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end