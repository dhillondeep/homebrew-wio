class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.8.0/wio_darwin_x86_64.tar.gz"
  version "0.8.0"
  sha256 "89d91095533d2d6fbd44bfcfdfa8b44e4f6860e4a4c814e76f962058d7e14bbe"

  def install
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio -v"
  end
end
