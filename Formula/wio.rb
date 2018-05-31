class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.5/wio_0.1.5_darwin_64-bit.tar.gz"
  version "0.1.5"
  sha256 "4b8a2d8d7c2e5b9cd30b5463b8310c1c5a029bc07f636281a99b940335409d12"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
