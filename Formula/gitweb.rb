class Gitweb < Formula
  desc "🌲 Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/v0.3.1.tar.gz"
  sha256 "f0246bb34524fed66929956c1aaedf385205c9ccb5c8b5fc68c2938052224206"
  license "Apache-2.0"

  depends_on "openssl@1.1" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "gitweb 0.3.1", shell_output("#{bin}/gitweb -h").lines.first.strip
  end
end
