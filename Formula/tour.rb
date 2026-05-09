class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "b702e97bbc262af0b81a48e417c4217911d15da6d78d2e95a8766d3eb118078b"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "ea13a6e7b2a42272bfd3e8a226f46442ecfbbf5a8c4eb9c139e4788e7f28d27e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "224cce004bc1496dee90267d2cf0c75b3a1a3464d9876c18bd17fb044eef3f61"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "57cff18bf5b6fd18ef6bf6e167e98d97e0285772cd31498fdce653eb69a9a96b"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
