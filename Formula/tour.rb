class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "05c6682cc828b215acdcba849f9ea64162b36de80436b50580a9fa0f39fe95f6"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "2a73285ed2230ffb5e113e06f436029e1e28f40789b8b3f57ed1212b619728e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "c4fe3ba1d93ec6541063dd94956d4132735ee20b06404534516fb1e8b9787692"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "cebf8f517e432825a072d6b33e41423554e84ab6b7b33cae30626da813dccba5"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
