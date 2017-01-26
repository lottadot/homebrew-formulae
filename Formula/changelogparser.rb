require 'formula'

class Changelogparser < Formula
  desc "CA macOS command line app to parse Changelogs."
  homepage "https://github.com/lottadot/changelogparser"
  url "https://github.com/lottadot/changelogparser/archive/0.1.1.tar.gz"
  version "0.1.1"
  # shasum -a 256
  sha256 "1b0eaf127225d7c5b15973194ccd048fb0705c0cbb11f2d05a48b56869257760"

  depends_on :xcode => ["8.0", :build]
  depends_on 'xcproj' => :recommended
  depends_on "carthage" => :build

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"changelogparser", "--version"
  end
end
