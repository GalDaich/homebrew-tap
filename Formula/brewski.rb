class Brewski < Formula
  desc "Update, clean, and check a Homebrew installation"
  homepage "https://github.com/GalDaich/brewski"
  url "https://github.com/GalDaich/brewski/releases/download/v0.1.3/brewski-0.1.3.tar.gz"
  sha256 "abe78ab6dec7eb0a213955ccb8b61ec2464bc72755b5a151bab2382a90c13df9"
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
