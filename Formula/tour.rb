class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "af8538e86a20882f302b15d0f6ef6b87935ba4cc52b04e98f4be2d49483e44de"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "ecdca13ee10913e328ee1d2270fc14fc356d5d48538909d7647a03803c2e5d8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "8c1c05b95207a0a981e9e9d229de96bfa7281d02ad1a6404f627a2db32897b0f"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "8cdb342f673bfd352534f21cb5ed93fa86e01fbba990b7f1a808ffa45fa6c463"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
