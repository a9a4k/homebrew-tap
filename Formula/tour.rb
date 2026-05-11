class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "5344e30b3d3c147b4ffd9b1c942bbc96f6857f42e21eb1fad84a294598e279bf"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "92529582edde97bd61cc3267227f11026e9b8e991fdbf3cc16d50ea9d7ab287a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "50cbf001533b109b6df981848b9f90e4c438b033733bac3b3bab4c4d91b2aeb4"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "c5ceb4256dcefe44088999d1ba732d2199aa2855ec13d6fecefe0d242397a128"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
