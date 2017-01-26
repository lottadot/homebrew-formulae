require 'formula'

class Changelogparser < Formula
  desc "CA macOS command line app to parse Changelogs."
  homepage "https://github.com/lottadot/changelogparser"
  url "https://github.com/lottadot/changelogparser/archive/0.1.3.tar.gz"
  version "0.1.3"
  # shasum -a 256
  sha256 "72794cc72e7b487a1d4a487eb0557a5d364d2213167e437bc0dc674ea8ac758e"

  depends_on :xcode => ["8.0", :build]
  depends_on 'xcproj' => :recommended
  depends_on "carthage" => :build

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"changelogparser", "version"
  end
end
