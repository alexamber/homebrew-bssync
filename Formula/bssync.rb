class Bssync < Formula
  desc "Two-way sync between local markdown files and a BookStack wiki"
  homepage "https://github.com/alexamber/bssync"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexamber/bssync/releases/download/v0.3.2/bssync-macos-arm64.tar.gz"
      sha256 "77bc20495f867dc2e0f0e1d753b8fce95503ba6bcc323f1e26b0a33a81b43e45"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bssync"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexamber/bssync/releases/download/v0.3.2/bssync-linux-x86_64.tar.gz"
      sha256 "3db07b859d8f940cc994e67a17494c9a2fe56b3e21e999a43c69755ff9fe92f5"

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
