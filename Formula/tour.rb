class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "babd5d47839a4910c1a8441ec9082c21cbc51cc675624e062ef680770aa9a6b6"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "f49d4fa97b8b9ceb4a02fa49a9f85a586ff6c7709d76babbffc08a283f5d3187"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "78ca63c928008190361da9145e1109809923a019a0371c717437d5ce6de265f5"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "2b78863d0a90fe4efa74aca03eccb1c7d47c2ebdadf2fe90f2b7c9764420cd4d"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
