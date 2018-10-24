class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.6.0/wio_darwin_x86_64.tar.gz"
  version "0.6.0"
  sha256 "37bbea7e0a2951fc97eb4bdc68ba322bbc4c1b189d971e0bc5d5f47a252633b1"

  def install
    prefix.install Dir["toolchain"]
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
