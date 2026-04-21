class Bssync < Formula
  desc "Two-way sync between local markdown files and a BookStack wiki"
  homepage "https://github.com/alexamber/bssync"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexamber/bssync/releases/download/v0.3.0/bssync-macos-arm64.tar.gz"
      sha256 "2ad1bed11f61b22f93cd6427aa2b49967618774cc46d7e3ceb7999e7c923c185"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"bssync"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexamber/bssync/releases/download/v0.3.0/bssync-linux-x86_64.tar.gz"
      sha256 "af035c28e4f712ef5722a244213095d5adf7cd545b99285e3cbaa5dadac012ec"

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
