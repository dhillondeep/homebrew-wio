class Wio < Formula
  desc "Embedded development environment"
  homepage "https://github.com/dhillondeep/wio"
  url "https://github.com/waterloop/wio/releases/download/v0.2.0/wio_0.2.0_darwin_64-bit.tar.gz"
  version "0.2.0"
  sha256 "a03f8e5e0dd00bdd4c3720ca4027a96c503dacd7957b7249b389abd87d63729e"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
