class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/bootstrap-v1.2.10/gritpack-1.2.10-aarch64-apple-darwin.tar.gz"
  version "1.2.10"
  sha256 "6a18b44fa31fbbd9f0d67ed9012c1c272f04d765cef6be1016aa146a4704c0f9"
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
