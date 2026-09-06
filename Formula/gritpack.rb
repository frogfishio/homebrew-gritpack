class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.1.0/gritpack-1.1.0-aarch64-apple-darwin.tar.gz"
  version "1.1.0"
  sha256 "4cb87e54311f9e72b3ce7813240c79cde29e3e13814085240f7ac8d448bc03c8"
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
