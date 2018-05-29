class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.0/wio_0.1.0_darwin_64-bit.tar.gz"
  version "0.1.0"
  sha256 "68e7d18921c9f202bec2087ee27a58ba967b9a9717c220fd251397f1f7721ec9"
  
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
