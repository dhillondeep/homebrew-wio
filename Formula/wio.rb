class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.9.0/wio_0.9.0_macOS_64bit.tar.gz"
  version "0.9.0"
  sha256 "0f2f65741a885a2a5e8fd93add09e0fe520d1a315e0544638fd17c743d0d34fb"

  def install
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
