class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.2/gritpack-1.2.2-aarch64-apple-darwin.tar.gz"
  version "1.2.2"
  sha256 "c0bd853614c11a251eb84f5608385298dba20526540a4c2ecdc97de5cf3d6100"
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
