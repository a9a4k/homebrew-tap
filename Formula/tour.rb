class Tour < Formula
  desc "Local code review tool with AI annotations: TUI + webapp over a pinned git diff"
  homepage "https://github.com/a9a4k/tour"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-arm64"
      sha256 "93615d46ccfbc3bf7b18a8cdfefa26207f51ea4c1de687f5ba69e60b2af61cac"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-darwin-x64"
      sha256 "ecb295364faf01c5ab7ae8bfa63bf0eaed50c40104e709a5e28f5aedd3fa621a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-arm64"
      sha256 "aa32db0258fcd9d3f297c76b687e3c8b79759cb3edbfe7f21c0e1da837bd2138"
    end
    on_intel do
      url "https://github.com/a9a4k/tour/releases/download/v#{version}/tour-linux-x64"
      sha256 "4ce46dbc943161ab47fba8018bac4301132bfdd460ee28f29bec4173583ce95c"
    end
  end

  def install
    bin.install Dir["*"].first => "tour"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tour --version")
  end
end
