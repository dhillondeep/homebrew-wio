class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.4.0/wio_darwin_x86_64.tar.gz"
  version "0.4.0"
  sha256 "06e8832fb42210afcaace1ec44c1c9a6f90115ffaaa8488928b900a58e8c19ff"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
