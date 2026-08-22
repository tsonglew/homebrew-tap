class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.11.0/dutis-v2.11.0-macos-universal.tar.gz"
  sha256 "99e38f66d0114a0ca1e689cbfee46b0f4d52ab575843390c8d53eb01cc303796"
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
