class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.9.0/dutis-v2.9.0-macos-universal.tar.gz"
  sha256 "4038bc7625693ebfe3a32b38df04881e2d06c075264a38408ac667a45b1e4019"
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
