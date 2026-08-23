class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.22.0/dutis-v2.22.0-macos-universal.tar.gz"
  sha256 "05deec5b8274d7431a092919acbc775d2213512f7e42b260d757293809d0be81"
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
