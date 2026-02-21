# frozen_string_literal: true

class Rubish < Formula
  desc "A UNIX shell written in pure Ruby"
  homepage "https://github.com/amatsuda/rubish"
  head "https://github.com/amatsuda/rubish.git", branch: "master"
  license "MIT"

  depends_on "ruby"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/rubish"
  end

  test do
    assert_match "hello", shell_output("#{bin}/rubish -c 'echo hello'")
  end
end
