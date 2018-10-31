class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.6.2/wio_darwin_x86_64.tar.gz"
  version "0.6.2"
  sha256 "85e46f3aba2a3d760b5c905d7f1536586baec3dbde2c6e8fd2dd3feeab217f3f"

  def install
    prefix.install Dir["toolchain"]
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
