class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.1.4/wio_0.1.4_darwin_64-bit.tar.gz"
  version "0.1.4"
  sha256 "ed59049035b987e8d958d5696fc657c5b43fe8d7bb0ea03f07b76091dad6dc70"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
