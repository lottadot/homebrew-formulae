require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.3.2.tar.gz"
  version "0.3.3"
  # shasum -a 256
  sha256 "e0d9a9a347386b4c1861d37556d532e9fa10c2a82bf4e1858408331f08808c04"

  depends_on :xcode => ["8.0", :build]
  depends_on 'xcproj' => :recommended
  depends_on "carthage" => :build

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"jiratools", "--version"
  end
end
