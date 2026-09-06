cask "gritpack" do
  version "1.2.2"
  sha256 "c0bd853614c11a251eb84f5608385298dba20526540a4c2ecdc97de5cf3d6100"

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
