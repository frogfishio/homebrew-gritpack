cask "gritpack" do
  version "1.1.0"
  sha256 "4cb87e54311f9e72b3ce7813240c79cde29e3e13814085240f7ac8d448bc03c8"

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
