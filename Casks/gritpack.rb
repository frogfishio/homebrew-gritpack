cask "gritpack" do
  version "1.2.1"
  sha256 "fc3223c0fc2e487c9a1c2f4290a83c3c974e7a7f33f498d0cb84767438db880b"

  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v#{version}/gritpack-#{version}-aarch64-apple-darwin.tar.gz"
  name "Gritpack"
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"

  depends_on arch: :arm64

  binary "gritpack"

  caveats <<~EOS
    Gritpack includes both client and server commands. Run:
      gritpack --help
  EOS
end
