class Clux < Formula
  desc "Terminal multiplexer with reliable hyperlinks, scrollback, and fast rendering"
  homepage "https://github.com/carTloyal123/clux"
  version "0.1.9"
  license "MIT"

  # Prebuilt bottles from the clux release pipeline. Each archive holds both
  # the clux client and the clux-server it spawns as a sibling.
  on_macos do
    on_arm do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.9/clux-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "3313e74a2670504bc74b32912091142b1469537deb7a81b7d0395f1c7e5312c2"
    end
    on_intel do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.9/clux-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "22d9cdc9e351ab0c338a6dc26ea44d1be7f2fb5fbd7089a79cf16736d918c67a"
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
