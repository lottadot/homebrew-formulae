require 'formula'

class Changelogparser < Formula
  desc "CA macOS command line app to parse Changelogs."
  homepage "https://github.com/lottadot/changelogparser"
  url "https://github.com/lottadot/changelogparser/archive/0.1.0.tar.gz"
  version "0.1.0"
  # shasum -a 256
  sha256 "178045c5d0a960b2b54b4fb74c98d3247cfb6085adba2ceca0694bfd641ee7d0"

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
