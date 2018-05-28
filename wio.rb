class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.0/wio_0.1.0_darwin_64-bit.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.1.0"
  sha256 "b28a3c4335ce681f642c164819e7c5aaadda1453e46462260b800ee913dccbb2"
  
  depends_on "make"
  depends_on "cmake"
  depends_on "node"
  depends_on "osx-cross/avr"
  depends_on "avr-gcc"
  depends_on "avrdude"

  def install
    bin.install "program"
    ...
  end

  test do
    system "#{bin}/wio --version"
    ...
  end
end
