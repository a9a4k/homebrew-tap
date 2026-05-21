class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "b09f9ca83af90d456fee55f4009d172e31c0082a65a6e6c8caea19272cd2bdba"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "7d1f7a6f740eeae34b78e56836ded610384c27c21f613978a14aef4229b60ff1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "f6bd46f2863352d564780d3f12e0df946275d0defddc0bf607890b22c536752b"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "45d679d816f61e6f2565d7dcb733615a57c3eca21ee8e29b494909d1d22a1b0c"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
