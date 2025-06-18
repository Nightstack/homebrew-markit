class Markit < Formula
  desc "A blazing-fast CLI to save, search, run, and manage your shell command snippets"
  homepage "https://github.com/Nightstack/markit"
  url "https://github.com/Nightstack/markit/archive/refs/tags/v1.1.8.tar.gz"
  sha256 "d076d502d1effbbf507b613f8aa89c722e694d8bd0fc0f8251b1b79e20086d4d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/markit", "--help"
  end
end
