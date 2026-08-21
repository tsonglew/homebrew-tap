class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/refs/tags/v2.3.1.tar.gz"
  sha256 "5201a76871da32ae6d10dbb8d808810eee55c834ed93297cc49f793b6c42bdfd"
  license "MIT"

  depends_on "rust" => :build
  depends_on "duti"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Dutis - macOS", shell_output("#{bin}/dutis --help")
  end
end
