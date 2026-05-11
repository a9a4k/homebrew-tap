class Tour < Formula
  desc "Local code walkthroughs for the code your AI agent wrote — TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "f293fbcb11324b7d6a7b5dbffe906f58a424be7a4d684d50c87b21f9daf14698"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "0de907812b3d732f17c84998cefd816efb6d49353a58e6aec4103b25959b42e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "78add633b68a4e19cf21af2daa1d8c0b4d75ede2e9fa11ed9ef9ecaef9e6fbe2"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "40b4fda650679fe1c68fc145ce4d1db1531f85bdba2f2ff1dd6c8334185403e4"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
