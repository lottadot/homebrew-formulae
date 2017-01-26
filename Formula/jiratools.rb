require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.3.5.tar.gz"
  version "0.3.5"
  # shasum -a 256
  sha256 "57e86f313dae1b40b1b1780056a3c1687443d0c1f10e2ea3dedb88d2f2b6d599"

  depends_on :xcode => ["8.0", :build]
  depends_on 'xcproj' => :recommended
  depends_on "carthage" => :build

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"jiratools", "version"
  end
end
