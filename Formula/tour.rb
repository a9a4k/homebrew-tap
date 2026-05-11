class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "fef5ed10c7feaf62e0525b3f98398b5dce17b5f3f664af9f5d40f631dd7d2e6c"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "798742cfb26b5c6cd377d61a0b38e7f587fba254eaae818a7546321bc1f4524b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "5b8f508a26c04dd7495dd5d18e6b3b1d57b58411ca0ee5199c2359b8d60e4a59"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "dc03e024abc6a13358ba6949ccf4d161751fe5daf35f9d79834c4283366e45ba"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
