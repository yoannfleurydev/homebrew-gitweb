class Gitweb < Formula
  desc "🌲 Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/v0.3.5.tar.gz"
  sha256 "65414eeefc7bb7b7970799cdfd2156d8393deb0707674670c47c95e6d3364c96"
  license "Apache-2.0"

  depends_on "openssl@1.1" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "gitweb 0.3.5", shell_output("#{bin}/gitweb -h").lines.first.strip
  end
end
