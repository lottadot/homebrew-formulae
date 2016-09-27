require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.3.1.tar.gz"
  version "0.3.1"
  sha256 "ef97bfdbd3a7e29c1f3368a91af805ee53b59cdb6b8cb896c14c6ce9f3113ccb"

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
