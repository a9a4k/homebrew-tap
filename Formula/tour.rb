class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "c8c2e11e4f41067ce0a6dfc6748c4a2ce07f1d69d981460472fd4da0e6e201e2"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "28f461e91e72b3794acafb6b6a5fced9cabbddf087ec29ba906576f5ff8e7ad9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "80868d0b2e2b1ec0dfb2f718ff3a139a5dca2c133fd77f7408d9cc925e1e6d06"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "51abd426cf79f5baa0cc8fdd59a44806553d2ba86ece575b5efb7e0062a4fe7a"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
