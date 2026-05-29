class Tour < Formula
  desc "Local code review at AI speed — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "ab7ac761e94a9114f4f88d58086e49065a785047c51488e5f7541057452a6fa2"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "fb7be5cd821ebd42ceef8b0de3157c801fa380ec155a6af4a3202e9090812772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "6a629d52b208403a04ed79d91c87cf2f131f3fa7212c740d05dc46e973579c56"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "254be7d736c616f1efd269ac6989ec9700f50f4b2faa6ab535365939d23e9127"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
