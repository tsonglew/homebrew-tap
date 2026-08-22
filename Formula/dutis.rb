class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.10.0/dutis-v2.10.0-macos-universal.tar.gz"
  sha256 "9994ef36ae3729e2638e12d2094e3b3d2459c464ee3ad18c96dc2146d3d7e5c6"
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
