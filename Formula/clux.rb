class Clux < Formula
  desc "Terminal multiplexer with reliable hyperlinks, scrollback, and fast rendering"
  homepage "https://github.com/carTloyal123/clux"
  version "0.1.10"
  license "MIT"

  # Prebuilt bottles from the clux release pipeline. Each archive holds both
  # the clux client and the clux-server it spawns as a sibling.
  on_macos do
    on_arm do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.10/clux-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "08422deab0eb5decae236f02bb9879237bb3db11cacb2d69fe9e0ad22dc49eca"
    end
    on_intel do
      url "https://github.com/carTloyal123/clux/releases/download/v0.1.10/clux-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "32fb0e724a34d343806dd6176ba51f7f4852ce2ce799e448eb324574568a694a"
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
