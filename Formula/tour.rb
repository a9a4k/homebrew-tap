class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "7d7fc99fdc56021a1f22cdf75dca43abbaa0e25a0ffd51ea6308f5a38092dcaa"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "def6ee4797c2c7b3e03c32fd594822798ec43fae440d67f28e470b9ffa25fe0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "7aba7693aac4b55fb01556858312e09a80e1e69ee74d9778440a98a3972bc73a"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "93712c74f09065cde9cfb5051e81733511f82fd9747eed23fdb4c086f9de47e4"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
