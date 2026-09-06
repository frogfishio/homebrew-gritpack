cask "gritpack" do
  version "1.2.0"
  sha256 "20aec8b2a450b3c78a793fcbcb385f8aa643760d34f2c34e65a1b982a7f4e454"

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
