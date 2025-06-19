class Markit < Formula
  desc "A blazing-fast CLI to save, search, run, and manage your shell command snippets"
  homepage "https://github.com/Nightstack/markit"
  url "https://github.com/Nightstack/markit/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "be5797a54fba96b7e6c7557fef1ec18228359261274466121b7ea230d0c03498"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/markit", "--help"
  end
end
