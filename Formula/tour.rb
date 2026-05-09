class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "e46790bd7c5f196528db57b934c44a087927235f3fcce84acb986019a38dcb58"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "b8888c8afa54a2a046c08342d3b574f68c0bbb50d6788a05420f462e4a71643e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "2a8d5e0ab4a8f0893f9d9a22f0ce5d964e2967fd8e1bbad13824b46d1e5035a0"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "a091f4a744da70a8ce06132bcad247612f81d491393d60a97fde39ed5e0727ef"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
