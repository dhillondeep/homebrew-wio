class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/wio/wio/releases/download/v0.3.0/wio_0.3.0_darwin_64-bit.tar.gz"
  version "0.3.0"
  sha256 "e38e04708c78c61d07e3cd0e060febda63021c5a13ae08499ebc478a8669c526"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
