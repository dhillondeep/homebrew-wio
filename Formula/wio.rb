class Wio < Formula
  desc "An IOT Development Environment"
  homepage "https://github.com/wio/wio"
  url "https://github.com/wio/wio/releases/download/v0.4.0/wio_darwin_x86_64.tar.gz"
  version "0.4.0"
  sha256 "b724adc1fac7098ac0ec0e2ef2b025941a553353487c58eb748ae45ed80a4fd4"

  def install
    prefix.install Dir["toolchain"]
    bin.install "wio"
  end

  test do
    system "#{bin}/wio --version"
  end
end
