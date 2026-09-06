class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.0/gritpack-1.2.0-aarch64-apple-darwin.tar.gz"
  version "1.2.0"
  sha256 "20aec8b2a450b3c78a793fcbcb385f8aa643760d34f2c34e65a1b982a7f4e454"
  license "LicenseRef-Gritpack-Proprietary"

  depends_on arch: :arm64

  def install
    bin.install "gritpack"
    prefix.install "LICENSE"
    doc.install "README.md"
  end

  test do
    assert_match "gritpack #{version}+build-", shell_output("#{bin}/gritpack --version")
  end
end
