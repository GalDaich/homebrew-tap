class Brewski < Formula
  desc "Update, clean, and check a Homebrew installation"
  homepage "https://github.com/GalDaich/brewski"
  url "https://github.com/GalDaich/brewski/releases/download/v0.1.2/brewski-0.1.2.tar.gz"
  sha256 "931addea8739aa1740c4f2e27d7051b4b13a8e435a8188bf7091fbbcd8fc802e"
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
