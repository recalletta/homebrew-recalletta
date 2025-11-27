class Recalletta < Formula
  desc "Persistent memory system for Claude Code sessions"
  homepage "https://recalletta.ai"
  version "0.5.2"
  license "Proprietary"

  on_macos do
    url "https://github.com/recalletta/homebrew-recalletta/releases/download/v0.5.2/recalletta-v0.5.2-universal-apple-darwin.tar.gz"
    sha256 "853d2f17075e8ea644e28e5dc4d57cd140c9a4f405a32ed87102902a7bcd5677"

    def install
      bin.install "recalletta-universal" => "recalletta"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/recalletta/homebrew-recalletta/releases/download/v0.5.2/recalletta-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9e20a6be0b173b69a445f8d65b5fe91a84c7b9ba2af57eac00401a91f4088f6"

      def install
        bin.install "recalletta"
      end
    end
  end

  test do
    system "#{bin}/recalletta", "--version"
  end
end
