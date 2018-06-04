class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/waterloop/wio/releases/download/v0.2.1/wio_0.2.1_darwin_64-bit.tar.gz"
  version "0.2.1"
  sha256 "41dc9d2c52552d82e13b74e2802f2efa9e1b2606eff70660e3c0ac85544a26fa"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
