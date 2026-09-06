# Gritpack

This is the official public binary distribution repository for Gritpack. It
contains the Homebrew tap and the generated APT and RPM repositories; Gritpack
source code is maintained separately.

Gritpack is currently available for macOS Apple Silicon, Linux AMD64, and Linux
ARM64. The same executable provides the command-line client, package server,
private Cargo registry, and compiler-facing interfaces.

## Homebrew on macOS Apple Silicon

```sh
brew tap frogfishio/gritpack
brew trust --formula frogfishio/gritpack/gritpack
brew install --formula frogfishio/gritpack/gritpack
gritpack --version
```

Upgrade later with
`brew upgrade --formula frogfishio/gritpack/gritpack`.

## APT on Debian or Ubuntu

```sh
sudo install -d -m 0755 /etc/apt/keyrings
curl -fsSLo /tmp/gritpack-repository.gpg \
  https://frogfishio.github.io/homebrew-gritpack/repository-signing-key.gpg
sudo install -m 0644 /tmp/gritpack-repository.gpg \
  /etc/apt/keyrings/gritpack.gpg
curl -fsSLo /tmp/gritpack.sources \
  https://frogfishio.github.io/homebrew-gritpack/gritpack.sources
sudo install -m 0644 /tmp/gritpack.sources \
  /etc/apt/sources.list.d/gritpack.sources
sudo apt update
sudo apt install gritpack
gritpack --version
```

The repository supports `amd64` and `arm64`. Its Deb822 source binds the
repository to the dedicated Frogfish signing key rather than adding a global
APT trust anchor.

## DNF on RHEL 9+, Rocky Linux, AlmaLinux, or Fedora

```sh
curl -fsSLo /tmp/gritpack.repo \
  https://frogfishio.github.io/homebrew-gritpack/gritpack.repo
sudo install -m 0644 /tmp/gritpack.repo \
  /etc/yum.repos.d/gritpack.repo
sudo dnf install gritpack
gritpack --version
```

The repository supports `x86_64` and `aarch64`. DNF authenticates its metadata
and package hashes with the dedicated Frogfish repository key.

## Direct downloads

[GitHub Releases](https://github.com/frogfishio/homebrew-gritpack/releases)
provide versioned platform archives, `.deb` packages, `.rpm` packages,
`SHA256SUMS`, and the detached `SHA256SUMS.asc` OpenPGP signature.

Download the checksum files and the required archive, then verify that archive:

```sh
archive='gritpack-VERSION-TARGET.tar.gz' # replace VERSION and TARGET
gpg --verify SHA256SUMS.asc SHA256SUMS
grep "  ${archive}$" SHA256SUMS | sha256sum --check -
```

Release archives contain `gritpack`, `LICENSE`, and `README.md`. Prebuilt
binaries are distributed under the bundled license.

## Release security

- Release checksums and Linux repository metadata are signed with a dedicated
  Frogfish OpenPGP key.
- macOS production binaries are Developer ID signed, timestamped, built with
  hardened runtime, and accepted by Apple's notarization service before
  publication.
- Release artifacts are immutable. A failed release is corrected with a new
  version rather than replacing an existing tag or asset.

The current installation paths are exercised on macOS Apple Silicon, Debian 12
on AMD64 and ARM64, and Rocky Linux 9 on x86_64 and aarch64.
