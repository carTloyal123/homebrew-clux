class Clux < Formula
  desc "Terminal multiplexer with reliable hyperlinks, scrollback, and fast rendering"
  homepage "https://github.com/carTloyal123/clux"
  version "0.1.6"
  license "MIT"

  # Prebuilt bottles from the clux release pipeline. Each archive holds both the
  # clux client and the clux-server it spawns as a sibling.
  on_macos do
    on_arm do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.6/clux-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "125bb037cc9ff4ed2f0d8e60a9a8e9c94ee8583c5c189645d887edb726b7f97d"
    end
    on_intel do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.6/clux-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "5e2d1152612c26e18478fa26857f552dba04c586392620a11652a1ece1b0dc10"
    end
  end

  def install
    bin.install "clux"
    bin.install "clux-server"
  end

  test do
    assert_match "clux #{version}", shell_output("#{bin}/clux --version")
  end
end
