class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.0.3/gritpack-1.0.3-aarch64-apple-darwin.tar.gz"
  version "1.0.3"
  sha256 "37cf706963964ebd6030bc0c9b96ef49197113d1d2a2e4e4ff44162576a4000d"
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
