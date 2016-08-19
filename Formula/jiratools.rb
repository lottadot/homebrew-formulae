class Jiratools < Formula
  desc "Collection of command-line tool(s) for Jira."
  homepage "https://github.com/lottadot/jiratools"
  url "https://github.com/lottadot/jiratools/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "23438f08548b9a8c8a5bf907122ec0ec00b2c7791f623fb3b1d8a517ac69c100"

  depends_on :xcode => ["7.3", :build]

  def install
    system "make", "prefix_install"
  end

  test do
    system bin/"jiratools"
  end
end
