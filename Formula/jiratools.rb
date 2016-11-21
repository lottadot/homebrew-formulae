require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.3.2.tar.gz"
  version "0.3.2"
  # shasum -a 256
  sha256 "a93acd0393c252b044db38a22b187adcb05e111125412686bd4e9b4c5d423491"

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
