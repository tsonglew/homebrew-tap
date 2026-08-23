class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.14.0/dutis-v2.14.0-macos-universal.tar.gz"
  sha256 "91deee74f47b88537152d2740888ad0242eac2df9e441f4b31a19082ba58276e"
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
