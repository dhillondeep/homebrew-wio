class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.6.1/wio_darwin_x86_64.tar.gz"
  version "0.6.1"
  sha256 "d09136d8384a7d30ad3c1a2713758a613957bdf71a8d1a6efd865d020a35fe26"

  def install
    prefix.install Dir["toolchain"]
    File.rename("wio_darwin_x86_64", "wio")
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
