class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.21.0/dutis-v2.21.0-macos-universal.tar.gz"
  sha256 "dd1514b486e5ed40a90108b76d3eed8d839ecab7d4809af11647230c3d1a39c4"
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
