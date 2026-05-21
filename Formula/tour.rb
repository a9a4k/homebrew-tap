class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "27b4a90ffe0c5e381d24893169f2a6dc4ad2d0b960d81cd5e1e8faffd6cb8a7e"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "3eacd68957c540dc2b704075da8d871848c24c3e1b5cb4425780bc1d380aa41c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "f1cb368bcb6aff2e8a94058847a6d3a5e07ae6d122964126480254bb2c4e8d33"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "338317d617c7c5f0a11463d841e5e4135bf4f76d52ff2ec584a2e2152785992f"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
