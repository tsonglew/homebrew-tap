class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.6.0/dutis-v2.6.0-macos-universal.tar.gz"
  sha256 "db6292da49fae84a6fbfcee63b374e8490a0d0d495ff64a8266deb412b6bc2d1"
  license "MIT"

  depends_on "duti"
  depends_on :macos

  def install
    bin.install "dutis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dutis --version")
  end
end
