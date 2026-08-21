class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.5.0/dutis-v2.5.0-macos-universal.tar.gz"
  version "2.5.0"
  sha256 "e90c68465d694ae352937be66813792666a9154d6c65ed8379fb761c29343723"
  license "MIT"

  depends_on :macos
  depends_on "duti"

  def install
    bin.install "dutis"
  end

  test do
    assert_match "Dutis - macOS", shell_output("#{bin}/dutis --help")
  end
end
