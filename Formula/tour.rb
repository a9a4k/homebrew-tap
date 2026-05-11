class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "ae8be848d37e4a012ff87cbdbcfc695cee11f8e00fc609d0ebefc7e800b6d029"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "599fc1bfda0d1948de56c6b06a8a23c0474a4f4ad7d3555c3c10ff22d066b9bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "fbb230ff6a4d946da3818d7694418ce2c1de6418148a66503d47ed1942655cad"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "f9093b7a6e7940fb6d3ecb8c200fd9b051f144e81eec0b808a2e7b09025f9824"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
