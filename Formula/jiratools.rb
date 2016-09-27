require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "31edb819a855545472feed753c99db6369f5fc6c2141a1539db40ad3e1aa8d1a"

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
