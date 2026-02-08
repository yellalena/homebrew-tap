class Vkscape < Formula
  desc "CLI/TUI tool for downloading your VK archive"
  homepage "https://github.com/yellalena/vkscape"
  url "https://github.com/yellalena/vkscape/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "125a2c0f8a4c7c9092bd736411986f670a7188b5e9504b4107ee122f839ca791"
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
