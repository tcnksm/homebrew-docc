require "formula"

class Docc < Formula
  homepage "https://github.com/tcnksm/docc"
  version '0.1.1'

  if Hardware.is_64_bit?
    url "https://github.com/tcnksm/docc/releases/download/v0.1.1/docc_0.1.1_darwin_amd64.zip"
    sha1 "eaad2915415c5ceb3e3fb613420be62a856da46a" # $ shasum docc_0.1.0_darwin_amd64.zip
  else
    url "https://github.com/tcnksm/docc/releases/download/v0.1.1/docc_0.1.1_darwin_386.zip"
    sha1 "6d8558d8589d7dcf034bf76035da1868248ddccc"
  end

  depends_on :arch => :intel

  def install
    bin.install 'docc'
  end
end
