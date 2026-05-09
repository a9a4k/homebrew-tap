class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "cd1f19b57664d5f408253264200f657eed9214fe5737058c13fd4f1d08288fee"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "46680014ff1dc50410ce9c5c9e2189b046f810a8b15d68db4d157ec7166422ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "00d32406828336070fc132683c530f7ec1bec9763aae1b527e69a9913c2360ae"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "4eba32bbba2705ca4a78b41da272d5b5faec83f88de1bdd44403a46e536cf0be"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
