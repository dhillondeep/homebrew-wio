class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.0/wio_0.1.0_darwin_64-bit.tar.gz"
  version "0.1.0"
  sha256 "994b8111319aca9dcfbec2cbae3d2d048226296faae0bfaed9ffcbf2fed8628e"
  
  depends_on "make"
  depends_on "cmake"
  depends_on "node"
  depends_on "avr-gcc"
  depends_on "avrdude"

  def install
    bin.install "program"
  end

  test do
    system "#{bin}/wio --version"
  end
end
