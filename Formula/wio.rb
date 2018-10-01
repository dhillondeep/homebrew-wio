class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.5.0/wio_darwin_x86_64.tar.gz"
  version "0.5.0"
  sha256 "51eac0f39fadc38ccc0be44e7baa38b91c6d0c955926e68f64f2686179ab0925"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
