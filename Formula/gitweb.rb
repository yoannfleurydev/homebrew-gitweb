class Gitweb < Formula
  desc "Open the current remote repository in your browser"
  homepage "https://github.com/yoannfleurydev/gitweb"
  url "https://github.com/yoannfleurydev/gitweb/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "13e080897926746a18695aefb4ee6b4678f4908bb141249046df212d4249b44e"
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
