class Gitweb < Formula
  desc "🌲 Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/v0.3.2.tar.gz"
  sha256 "9a8887fe063fd619a40c15c099f47fddcb82b73720e3e87ccf76499e296d3591"
  license "Apache-2.0"

  depends_on "openssl@1.1" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "gitweb 0.3.2", shell_output("#{bin}/gitweb -h").lines.first.strip
  end
end
