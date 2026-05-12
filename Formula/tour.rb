class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "2eab42f8ddad147eb494f4b1d57a29708629afe115d956b417d5d3f5da90e22a"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "00b10b8d00300dd8f6d6bcdf43b325c0595c5ae32f29b7d524ef0f6790b934ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "8b68e11a0cfb58c7eb213fdc74d729bda9a645c33e17dc04e051d9cf2cc13b76"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "88b0f9eef4429aa3f4063cc76a09b30652ef4b6f3c5d745fdff141cfc34bbc54"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
