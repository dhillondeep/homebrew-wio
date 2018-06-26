class Wio < Formula
  desc "An Iot Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/dhillondeep/wio/releases/download/v0.3.2/wio_0.3.2_darwin_x86_64.tar.gz"
  version "0.3.2"
  sha256 "5a9975662e144f5381fe9e074dae7cccd9687491c6c0759ff0169c5b89aa19fd"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
