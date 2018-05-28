class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.0/wio_0.1.0_darwin_64-bit.tar.gz"
  version "0.1.0"
  sha256 "81c5a115f7cc69660116cbda3745d8f2c8832fb3d7956b733e3c93e60bb187b8"
  
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
