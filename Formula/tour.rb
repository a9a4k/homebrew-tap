class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "06e914f8b99df7e59084060b2f5cbfe493fe23907abf2c9a4edcdb86714c3512"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "b9214f0296c8e1ee08c22bf6f272ebb688aece3570b80813b553e15f5bf2a15a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "1ab4bb3891d0701f2ae239d8e4499ba5b3073c279fcc4804bb15f06ece38ad3e"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "7474da84ce1d89d30bf0d971f6be0abd1e4fc8dcd395a969a71604c10795b314"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
