class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "87373c82c3d6ff6affb535a3bfb3cc1b1f077a06d69f1dbc928719463f2db9f7"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "42970076742bf43cecf1b6fb2dd5f3a59f99cba20d3bb55cdebb756e968b1616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "2c8a69c0fcfb39aeeb02cd114836f3ebc06fd294b7b7d07be786b277327f7744"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "a6db1a9d0725bd848b78082a3cf7410d9ac67f32789bc6347090ff5bbf471a96"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
