class Gitweb < Formula
  desc "Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "6adb3ccf023107699939d8b5a48a7e5b52449528d1ba671ecf3e0e6daf29ffa1"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitweb --version")
  end
end
