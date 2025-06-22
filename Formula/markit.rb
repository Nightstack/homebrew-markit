class Markit < Formula
  desc "A blazing-fast CLI to save, search, run, and manage your shell command snippets"
  homepage "https://github.com/Nightstack/markit"
  url "https://github.com/Nightstack/markit/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "7e35fa7a218e34f30a4a327b2e84191dff0b783ef56575b32afc91aa0fff8377"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/markit", "--help"
  end
end
