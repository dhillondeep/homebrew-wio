class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.5.0/wio_darwin_x86_64.tar.gz"
  version "0.5.0"
  sha256 "fc356f2c220f533c9575c59d0b8d60bbfabd42611b890374ca5d0b6ee51b552d"

  def install
    prefix.install Dir["toolchain"]
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
