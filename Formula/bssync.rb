class Bssync < Formula
  desc "Two-way sync between local markdown files and a BookStack wiki"
  homepage "https://github.com/alexamber/bssync"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexamber/bssync/releases/download/v0.1.0/bssync-macos-arm64"
      sha256 "4725b75db84d9c32a77f0145bd3875b982fa5d31d1de3bd48ba5f972bd171ee4"

      def install
        bin.install "bssync-macos-arm64" => "bssync"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexamber/bssync/releases/download/v0.1.0/bssync-linux-x86_64"
      sha256 "ccf48336b07a0cd1ec1d3d2a6b045073095705e2ef9f7026f7538898df7cb7ae"

      def install
        bin.install "bssync-linux-x86_64" => "bssync"
      end
    end
  end

  test do
    assert_match "bssync #{version}", shell_output("#{bin}/bssync --version")
  end
end
