class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/waterloop/wio/releases/download/v0.2.3/wio_0.2.3_darwin_64-bit.tar.gz"
  version "0.2.3"
  sha256 "22a0798545fc7e00d5ff1688eeac07d78c50c71ae7fa0c50e8906791bf261a0e"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
