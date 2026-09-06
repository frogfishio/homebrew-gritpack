class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.1/gritpack-1.2.1-aarch64-apple-darwin.tar.gz"
  version "1.2.1"
  sha256 "fc3223c0fc2e487c9a1c2f4290a83c3c974e7a7f33f498d0cb84767438db880b"
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
