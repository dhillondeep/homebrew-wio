class Wio < Formula
  desc "An Iot Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.3.2/wio_darwin_x86_64.tar.gz"
  version "0.3.2"
  sha256 "5886765fcf63edf843edbac1069f5a04b87c54c9357e52d90de9e7d8c04b2233"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
