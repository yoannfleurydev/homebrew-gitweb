class Gitweb < Formula
  desc "🌲 Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/v0.3.4.tar.gz"
  sha256 "6cde36b6d52c1881057a3f1bda4fad48a228e57461809013fb9147a0de6e6a8c"
  license "Apache-2.0"

  depends_on "openssl@1.1" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "gitweb 0.3.4", shell_output("#{bin}/gitweb -h").lines.first.strip
  end
end
