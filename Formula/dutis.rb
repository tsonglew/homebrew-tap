class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.7.0/dutis-v2.7.0-macos-universal.tar.gz"
  sha256 "529d2ac83db16872a805d7afe436fadd60506e76c68df688d0d7e23670c667da"
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
