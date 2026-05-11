class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "950611d05f7a2d578b217f7068b72223a6bedfbd63d610245615c1b89e6e19dd"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "98854515bc923e0282b73bc57fac481a01c5fb5d5a174c8b9781c7d9c7103f49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "fe3aaace81f1e89ce04cae6f61b05ac83c6a7e46ce449df50d4832b8d7a9b3e4"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "bcc8b8a9b877a52d886543561326a5fce8411fce19701ff3fae09dd4163e3139"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
