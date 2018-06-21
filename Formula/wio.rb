class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/wio/wio/releases/download/v0.3.1/wio_0.3.1_darwin_64-bit.tar.gz"
  version "0.3.1"
  sha256 "8e5c6ca0f244604c0dcc296cd2b598715f91d1051d64452754fd94162e98e283"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
