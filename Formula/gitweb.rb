class Gitweb < Formula
  desc "Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "a5c21d9435f6543e017f12318a311ccb42e7ef0775dddbe8150e16d408b66b32"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    generate_completions_from_executable(bin/"gitweb", shell_parameter_format: :clap)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitweb --version")
  end
end
