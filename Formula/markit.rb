class Markit < Formula
  desc "A blazing-fast CLI to save, search, run, and manage your shell command snippets"
  homepage "https://github.com/Nightstack/markit"
  url "https://github.com/Nightstack/markit/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dfdf8529c86e7b79fa49dc898cc7085daf5991db30a396a7b7c897241a6eba97"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/markit", "--help"
  end
end
