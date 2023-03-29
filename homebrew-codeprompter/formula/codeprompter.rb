class Codeprompter < Formula
  desc "Generates a prompt file for Rust, Go, and JavaScript projects"
  homepage "https://github.com/ctagard/CodePrompter"
  url "https://github.com/ctagard/ctagard-homebrew-codeprompter/archive/refs/tags/publish.tar.gz"
  sha256 "b72de62cda7f83eb26a97fcf3c5a5888356f895195fe820f40816a2abb438ad7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/codeprompter"
  end

  test do
    system "#{bin}/codeprompter", "--version"
  end
end