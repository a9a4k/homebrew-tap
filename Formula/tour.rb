class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "cd7f61a70dc9e66c5d23c7376116ec725344a77b8c1d38fa42e64de1a6e9fa7e"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "e29ab6e55f82677d1edb2a619dfc0c5bf948ff153d1f19f4f7f8d05bafe3d247"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "59649fa61d0ad26e120fd481ef05411bb2b4f24c2c3f398337eb15445a6f1a11"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "0ce2b48cb086f008a464a68f35969d94c959b0c5f8eb72122d73ddd8dd43f4f2"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
