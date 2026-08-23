class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.17.0/dutis-v2.17.0-macos-universal.tar.gz"
  sha256 "5ac748bcd745b5249d4bb857cf26c4ff63e14ba60279034d765e3ec65b146afb"
  license "MIT"

  depends_on "duti"
  depends_on :macos

  def install
    bin.install "dutis", "dutis-event-http"
    pkgshare.install "skills"
    pkgshare.install "dutis.policy.example.toml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dutis --version")
    assert_match version.to_s, shell_output("#{bin}/dutis-event-http --version")
  end
end
