require "formula"

class Docc < Formula
  homepage "https://github.com/tcnksm/docc"
  version '0.1.0'

  if Hardware.is_64_bit?
    url "https://github.com/tcnksm/docc/releases/download/v0.1.0/docc_0.1.0_darwin_amd64.zip"
    sha1 "7b987855cccf3a030bc4f529b0e2cc8dd10cb916" # $ shasum docc_0.1.0_darwin_amd64.zip
  else
    url "https://github.com/tcnksm/docc/releases/download/v0.1.0/docc_0.1.0_darwin_386.zip"
    sha1 "965b03cfa75bf2afc21788f3cfd40cfee1b4fe7a"
  end

  depends_on :arch => :intel

  def install
    bin.install 'docc'
  end
end
