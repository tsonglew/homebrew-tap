class VibeHero < Formula
  desc "Your MacBook notch is a pixel-art RPG, and your token usage is the sword"
  homepage "https://github.com/tsonglew/VibeHero"
  url "https://github.com/tsonglew/VibeHero/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7937cfa2ad7654d71d3044ddc4df5cec8005cea4503489725105304232fd5821"
  license "MIT"

  depends_on macos: :sonoma

  def install
    # SwiftPM's own build sandbox cannot run inside Homebrew's sandbox, so
    # disable it at build time. The Makefile is the single source of truth
    # for how the .app bundle is assembled.
    inreplace "Makefile", "$(SWIFT) build -c release", "$(SWIFT) build -c release --disable-sandbox"
    system "make", "app", "DEVELOPER_DIR=#{MacOS.active_developer_dir}"
    prefix.install ".build/app/Vibe Hero.app"
  end

  def caveats
    <<~EOS
      Vibe Hero is built from source on your machine, so it is unsigned and
      macOS shows no Gatekeeper prompt. To finish the installation:

        cp -R "#{opt_prefix}/Vibe Hero.app" /Applications
        open "/Applications/Vibe Hero.app"
    EOS
  end

  test do
    assert_path_exists prefix/"Vibe Hero.app/Contents/MacOS/Vibe Hero"
    assert_path_exists prefix/"Vibe Hero.app/Contents/Info.plist"
  end
end
