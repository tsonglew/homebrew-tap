class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.24.0/dutis-v2.24.0-macos-universal.tar.gz"
  sha256 "f7f95d897a82f57f201b58c955df8bee1fdcb027044e63c7adfc4727845d6cf5"
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
