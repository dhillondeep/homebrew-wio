class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.9.0/wio_0.9.0_macOS_64bit.tar.gz"
  version "0.9.0"
  sha256 "007815ceecf04924b28ee88c074fe161fd3bf960562b5b5eea9fe551a93d792f"

  def install
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
