class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "c43814ffc6b314ddb1c47c7399bceb0dbbafa670eda401bb3939539118aab010"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "de5a795ecf747aee66f9922ed1a3f77316ccea8a9aa3689d8dc6cfcbee6862d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "656624b6fb2aaaaa7fbbb3c04ea2b92efa10eea2ef4e822248d4235a902c2f29"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "ddb75d650b08d344bd68211afb55ee5e2786209a987b03dc41f24d025696e2a5"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
