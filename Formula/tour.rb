class Tour < Formula
  desc "Local code review at AI speed — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "3.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "b38066fe0ad832f346030bba7794f9b644559e83a4c0e9948dbb46c10cb22a2b"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "823a16ba59b8db872b37082441b3acdcf8a81295ad35e8d4ed55b70c2b7a701d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "ea5d32c193477533ba9d05a5f2bf2ccce7c131f18d143d1b45aa66f3751c0a1d"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "e4756590a811f275e4a1421bb0ab72bf9e213e59d1ada7bff42d73f42f1cedad"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
