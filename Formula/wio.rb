class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.6/wio_0.1.6_darwin_64-bit.tar.gz"
  version "0.1.6"
  sha256 "f81a4f930683b094c08ce89f6b3202487d2578c6f3c383facbd334793a07b5c2"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
