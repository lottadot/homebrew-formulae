require 'formula'

class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "eaf22f122aae533893770e8133d834352b5a81e414481d947f0e29ada2399207"

  depends_on :xcode => ["7.3", :build]
  depends_on 'xcproj' => :recommended
  depends_on 'carthage'

  def install
    system "make", "prefix_install"
  end

  test do
    system bin/"jiratools", "--version"
  end
end
