class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.3/wio_0.1.3_darwin_64-bit.tar.gz"
  version "0.1.3"
  sha256 "e5e3c64f2d2c32cb7f16c7795949836ec8e9a31c06847db3ff6e90fb98d53246"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
