class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "de1807b0417502f27788e2658680efd30046e324c99140f33e6b4d21c7c1f6da"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "c5969572bc6955552f9c24f3cbeb14fa44516a181bde5edc62667cbe1ca63f24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "9b5f394bfa7481e2a2d0089fbf98e2fa561d5d94e37e997a096b72f7ed2d6701"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "6c7d9ee71053b94f7aaa37bdc3fd205407b08f69f45a841e65c3a9b871de935c"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
