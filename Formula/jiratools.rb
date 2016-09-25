require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.2.0.tar.gz"
  version "0.2.0"
  sha256 "12befdfb1571b148b2e95900843725aedb2fbe29628205e37a6b5706145e152e"

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
