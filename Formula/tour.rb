class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "04a2cc0bc8b897e991b072de94940493830a00ffdad40e8b84739ccfb96fbb15"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "64a3ad7d9efd51565d33e6c86ffd0bba043a4be102beaa7b63733b1844eca2c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "7908555cf3f17d68188edff679e07ec1d485361060d72fd8add34247e31ffb50"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "b0f769d88948c337ed61f65d42a320b498d73bfc84928863e4c88987b207373e"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
