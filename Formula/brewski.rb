class Brewski < Formula
  desc "Update, clean, and check a Homebrew installation"
  homepage "https://github.com/GalDaich/brewski"
  url "https://github.com/GalDaich/brewski/releases/download/v0.1.1/brewski-0.1.1.tar.gz"
  sha256 "3e4e6980be5c89937bed4462a1c079bce46545d88641f2ca80ae515826a95f64"
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
