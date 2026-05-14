class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "fd3a80b3c6578afdfef3d7d75a4ae3c85f8b9cccb0ef65ba77d1dd5b93893e42"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "f16cb4832557924b529a60ed27f0a294f5181f74048cded4ff4e869fcc696350"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "c0507ef282b3ad3fea109b6479a625c999f70d21dd61a6d1812dc33404fd40cb"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "d03b9642bc1e9fb25b01df6b7c56ad8cb3666a18d962a40c20cbfa0e0fd9d778"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
