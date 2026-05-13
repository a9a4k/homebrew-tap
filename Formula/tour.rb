class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "a8c904d0fcda6e82d75b297ac42114a1c81a2c20f288f73f48f8a347fc861eed"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "b187b72a178f64382a807b90ae4befcf6b5562b5b668f713c7b72a4c44f8038a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "e1248c4608d9831166e5832baafd4d2abe52c140fc6dfa25fc7f09e9768b7fb7"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "4f56a06f5f14b75caf11d6f716ecc246f062cc10e6c7c0a89f272b585e55ab33"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
