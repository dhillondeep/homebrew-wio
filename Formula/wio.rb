class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.9.0/wio_0.9.0_macOS_64bit.tar.gz"
  version "0.9.0"
  sha256 "86bb14681bfa5b20662613ecca161ad58af901f5a5630f2aa027c5e1b4d7f347"

  def install
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
