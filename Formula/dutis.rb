class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.13.0/dutis-v2.13.0-macos-universal.tar.gz"
  sha256 "da2f2ec4a7d5e25402e7cf6792c663f8e2c4b73758a6c03c6841c1ac1df62906"
  license "MIT"

  depends_on "duti"
  depends_on :macos

  def install
    bin.install "dutis"
    pkgshare.install "skills"
    pkgshare.install "dutis.policy.example.toml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dutis --version")
  end
end
