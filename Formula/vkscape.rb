class Vkscape < Formula
  desc "CLI/TUI tool for downloading your VK archive"
  homepage "https://github.com/yellalena/vkscape"
  url "https://github.com/yellalena/vkscape/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b81f1518360a1007a0e87618a9fc126f3f6afe53af1a4767b46e0cff4bc49c71"
  license ""

  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"vkscape", "."
  end

  test do
    system "#{bin}/vkscape", "--help"
  end
end
