class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.7/wio_0.1.7_darwin_64-bit.tar.gz"
  version "0.1.7"
  sha256 "06bba3dee56ea0cb56785988b0191a9674200ea1ffa6b93415b5f559ea3e75a2"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
