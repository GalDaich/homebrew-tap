class Brewski < Formula
  desc "Update, clean, and check a Homebrew installation"
  homepage "https://github.com/GalDaich/brewski"
  url "https://github.com/GalDaich/brewski/releases/download/v0.1.0/brewski-0.1.0.tar.gz"
  sha256 "e08cef2d5181a8ad5e76beb543be14869b7ca42c4c86a7dce03db1bf11327535"
  license "MIT"

  depends_on :macos

  def install
    bin.install "bin/brewski"
  end

  test do
    assert_match "brewski #{version}", shell_output("#{bin}/brewski --version")
    assert_match "Usage:", shell_output("#{bin}/brewski --help")
  end
end
