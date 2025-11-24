class Recalletta < Formula
  desc "Persistent memory system for Claude Code sessions"
  homepage "https://recalletta.ai"
  url "https://github.com/recalletta/homebrew-recalletta/releases/download/v0.5.1/recalletta-v0.5.1-universal-apple-darwin.tar.gz"
  sha256 "a9490c00de30540cf90e9e5c57bd5507af2f0df169224036ef4c937fe866eb20"
  version "0.5.1"
  license "MIT"

  def install
    bin.install "recalletta-universal" => "recalletta"
  end

  test do
    system "#{bin}/recalletta", "--version"
  end
end
