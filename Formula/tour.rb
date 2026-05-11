class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "7f0c9b568f534992aaca535d7a763fe3fccfc3acc60dbb20f970e7eb0c69a12b"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "e0def58f6e28d440480941b25d142b83eb8b253e461253ef22fa9eeec6c8f1d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "5dd5a3813b1949ffff2262009740aa2e1e7ae788691e417b8b43043ee79b0c0e"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "caef112ba995c5bcb39dfd6de9a73378d65b817b57f3fc1edb164423cc9a93dc"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
