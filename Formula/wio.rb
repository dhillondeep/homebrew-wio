class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.0/wio_0.1.0_darwin_64-bit.tar.gz"
  version "0.1.0"
  sha256 "1ca16111a09138a83e18e968e4ea400ada85ce747d91252def2f0f75eea26502"
  
  depends_on "make"
  depends_on "cmake"
  depends_on "node"
  depends_on "avr-gcc"
  depends_on "avrdude"

  def install
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
