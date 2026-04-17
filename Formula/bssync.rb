class Bssync < Formula
  desc "Two-way sync between local markdown files and a BookStack wiki"
  homepage "https://github.com/alexamber/bssync"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexamber/bssync/releases/download/v0.2.0/bssync-macos-arm64.tar.gz"
      sha256 "a3e37402b984f45d539ae5137207bf551a9cd7fc1e293d787b82a2916af38c43"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bssync"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexamber/bssync/releases/download/v0.2.0/bssync-linux-x86_64.tar.gz"
      sha256 "f4c89d72fe474325243da1e60c84af3f8d0f6e4cf80ea70115292d9c529eea8b"

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
