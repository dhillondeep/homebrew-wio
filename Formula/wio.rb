class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.4.0/wio_darwin_x86_64.tar.gz"
  version "0.4.0"
  sha256 "6579f6f553d45feb79543664c3eaac122e5d9328b6753758b70e67857a1e1cd3"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
