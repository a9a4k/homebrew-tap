class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "819152a6d5b0cb8512302fb79b11a26f4ef781d07e1460d8d2e2f5f41f7dd1e3"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "3ff55912c50e83ef7b605c4a664d43a5c145cc0698f957140bd861ef425523c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "0ab4c1c4f1329ef5efcdefbe6071f89716f037ce2c30c282289207117b91c57b"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "9c4e38d7b15ad2893fe500d6fabda5b63224aaf39caeccfe5ebc1122805926df"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
