class Markit < Formula
  desc "A blazing-fast CLI to save, search, run, and manage your shell command snippets"
  homepage "https://github.com/Nightstack/markit"
  url "https://github.com/Nightstack/markit/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "1c8fa5d5a29a3bb118acb60ec4395758645c09a74cde8489d33e672d002fc4ce"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/markit", "--help"
  end
end
