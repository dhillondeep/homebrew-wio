class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.5.1/wio_darwin_x86_64.tar.gz"
  version "0.5.1"
  sha256 "4393b018205bddcf4854f4e568fc8b7a853ba47c5291112d940b2ef62c1e3c9e"

  def install
    prefix.install Dir["toolchain"]
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
