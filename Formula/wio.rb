class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.3/wio_0.1.3_darwin_64-bit.tar.gz"
  version "0.1.3"
  sha256 "4dd2629509610147502d68a664752da7fbc910aaa8f5e3221768b44024ad6dfe"
  
  depends_on "make"
  depends_on "cmake"
  depends_on "node"
  depends_on "avr-gcc"
  depends_on "avrdude"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
