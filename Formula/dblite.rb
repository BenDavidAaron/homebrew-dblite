class Dblite < Formula
  desc "A single file key value store, like SQLite meets Redis"
  homepage "https://github.com/bendavidaaron/dblite"
  url "https://github.com/BenDavidAaron/dblite/releases/download/v0.1.3/dblite-0.1.3.tar.gz"
  sha256 "72433c02c4dda1c984c817c7a3de995e98824e87166e3f7d98b03697c369de9d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dblite", "--help"
  end
end
