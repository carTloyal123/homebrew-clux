class Clux < Formula
  desc "Terminal multiplexer with reliable hyperlinks, scrollback, and fast rendering"
  homepage "https://github.com/carTloyal123/clux"
  version "0.1.7"
  license "MIT"

  # Prebuilt bottles from the clux release pipeline. Each archive holds both
  # the clux client and the clux-server it spawns as a sibling.
  on_macos do
    on_arm do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.7/clux-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "6b0427e06c2f18a173a8ceaf525691887878544d48db65aa050e9bb5cd06f067"
    end
    on_intel do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.7/clux-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "ac6f36ace57c8a844749034ace324bf1fcf9bd588515eb66c31ad4d80f29648a"
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
