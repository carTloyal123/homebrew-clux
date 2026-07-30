class Clux < Formula
  desc "Terminal multiplexer with reliable hyperlinks, scrollback, and fast rendering"
  homepage "https://github.com/carTloyal123/clux"
  version "0.1.8"
  license "MIT"

  # Prebuilt bottles from the clux release pipeline. Each archive holds both
  # the clux client and the clux-server it spawns as a sibling.
  on_macos do
    on_arm do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.8/clux-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "19b33a87e65ed94a9ba09b5073497cb32dce3367a0165a2f2fc446728f5ca02d"
    end
    on_intel do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.8/clux-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "5f87e37bab116e1d7be2af4ab548e64d6c85162c2309ae43529106c2fda9ee79"
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
