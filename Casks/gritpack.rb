cask "gritpack" do
  version "1.0.3"
  sha256 "37cf706963964ebd6030bc0c9b96ef49197113d1d2a2e4e4ff44162576a4000d"

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
