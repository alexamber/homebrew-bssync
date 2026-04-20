class Bssync < Formula
  desc "Two-way sync between local markdown files and a BookStack wiki"
  homepage "https://github.com/alexamber/bssync"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexamber/bssync/releases/download/v0.2.1/bssync-macos-arm64.tar.gz"
      sha256 "92c7dc2f44eed73d44d44fe44109638ff94eeed8510d17d8ad927d56e136262b"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bssync"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexamber/bssync/releases/download/v0.2.1/bssync-linux-x86_64.tar.gz"
      sha256 "9acd5a41ace8ac2609b1a31a0792f02b2f7bd051d3bc739f4c3c7ac4bb11c1fc"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bssync"
      end
    end
  end

  test do
    assert_match "bssync #{version}", shell_output("#{bin}/bssync --version")
  end
end
