class Bssync < Formula
  desc "Two-way sync between local markdown files and a BookStack wiki"
  homepage "https://github.com/alexamber/bssync"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexamber/bssync/releases/download/v0.3.1/bssync-macos-arm64.tar.gz"
      sha256 "a452e66d00e31f6d2640b700486b79757c18fc385b01d83ebe30c7ce93c36ef0"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bssync"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexamber/bssync/releases/download/v0.3.1/bssync-linux-x86_64.tar.gz"
      sha256 "b20b4b9be9fea8b05e36796a5f7a04cc20bb78993dbd67428b891bed88b734be"

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
