class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.9.0/wio_0.9.0_macOS_64bit.tar.gz"
  version "0.9.0"
  sha256 "82d1d7a7dcc249879e2172a0cbf4f70c9df323d72630ae0884ecfe41495cf014"

  def install
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
