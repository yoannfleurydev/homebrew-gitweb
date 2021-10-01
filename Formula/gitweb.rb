class Gitweb < Formula
  desc "🌲 Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/v0.3.2.tar.gz"
  sha256 "484b1c56973e06c2ad7b33ccdaafa8ef6fba236681c7f8cd04027738b5335cd3"
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
