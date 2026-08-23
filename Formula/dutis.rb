class Dutis < Formula
  desc "Manage default applications for file extensions on macOS"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/releases/download/v2.16.0/dutis-v2.16.0-macos-universal.tar.gz"
  sha256 "dfdf87a6aa9a1f38eb4282b119a8b9fa7104262bc42eaef55f9cf0b0ada221b6"
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
