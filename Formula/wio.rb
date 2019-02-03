class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.7.1/wio_darwin_x86_64.tar.gz"
  version "0.7.1"
  sha256 "69a1943fd4a02933b9bc4440695b72867825e3fb898d6e4d427988a70200f792"

  def install
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
