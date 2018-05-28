class Wio < Formula
    desc "Embedded development environment"
    homepage "https://github.com/dhillondeep/wio"
    url "https://github.com/dhillondeep/wio/releases/download/v0.1.0/wio_0.1.0_darwin_64-bit.tar.gz"
    sha256 "01b3639afb5611d7254e04f7f465bb8f948ca4c3f1b42b65ec4a80232fe0d1c4"
    version "0.1.0"
  
    depends_on "node" "make" "cmake" "osx-cross/avr" "avr-gcc" "avrdude"
  
    bottle :unneeded
  
    def install
      bin.install "wio"
    end
  end
