class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/waterloop/wio/releases/download/v0.2.2/wio_0.2.2_darwin_64-bit.tar.gz"
  version "0.2.2"
  sha256 "48ed1709a0ba87b90cb762ac4491d8e3344a87c4b88c90b99d52a7bfdb7a6300"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
